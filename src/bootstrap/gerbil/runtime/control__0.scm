(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1695206877)
  (begin
    (define make-promise
      (lambda (_thunk8232_)
        (let () (declare (not safe)) (##make-delay-promise _thunk8232_))))
    (define call-with-parameters
      (lambda (_thunk8180_ . _rest8181_)
        (let* ((_rest81828193_ _rest8181_)
               (_E81858197_
                (lambda () (error '"No clause matching" _rest81828193_))))
          (let ((_K81878213_
                 (lambda (_rest8208_ _val8209_ _param8210_)
                   (let ((__tmp8244
                          (if (null? _rest8208_)
                              _thunk8180_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk8180_
                                       _rest8208_)))))
                     (declare (not safe))
                     (##parameterize1 _param8210_ _val8209_ __tmp8244))))
                (_K81868202_ (lambda () (_thunk8180_))))
            (let ((_try-match81848205_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest81828193_))
                         (_thunk8180_)
                         (_E81858197_)))))
              (if (let () (declare (not safe)) (##pair? _rest81828193_))
                  (let ((_tl81898218_
                         (let () (declare (not safe)) (##cdr _rest81828193_)))
                        (_hd81888216_
                         (let () (declare (not safe)) (##car _rest81828193_))))
                    (if (let () (declare (not safe)) (##pair? _tl81898218_))
                        (let ((_tl81918225_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl81898218_)))
                              (_hd81908223_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl81898218_))))
                          (let ((_param8221_ _hd81888216_)
                                (_val8228_ _hd81908223_)
                                (_rest8230_ _tl81918225_))
                            (_K81878213_ _rest8230_ _val8228_ _param8221_)))
                        (_E81858197_)))
                  (_try-match81848205_)))))))
    (define with-unwind-protect
      (lambda (_K8173_ _fini8174_)
        (let ((_once8176_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once8176_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once8176_ '#t)))
           _K8173_
           _fini8174_))))
    (define keyword-dispatch
      (lambda (_kwt8070_ _K8071_ . _all-args8072_)
        (if _kwt8070_
            (if (vector? _kwt8070_)
                '#!void
                (error '"expected vector" _kwt8070_))
            '#!void)
        (if (procedure? _K8071_) '#!void (error '"expected procedure" _K8071_))
        (let ((_keys8074_ (make-table 'test: eq? 'hash: keyword-hash)))
          (let _lp8076_ ((_rest8078_ _all-args8072_)
                         (_args8079_ '#f)
                         (_tail8080_ '#f))
            (let* ((_rest80818089_ _rest8078_)
                   (_else80838097_
                    (lambda ()
                      (if _args8079_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8080_ '()))
                            (let ((__tmp8245 (cons _keys8074_ _args8079_)))
                              (declare (not safe))
                              (##apply _K8071_ __tmp8245)))
                          (_K8071_ _keys8074_))))
                   (_K80858161_
                    (lambda (_hd-rest8100_ _hd8101_)
                      (if (keyword? _hd8101_)
                          (let* ((_hd-rest81028109_ _hd-rest8100_)
                                 (_E81048113_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest81028109_)))
                                 (_K81058121_
                                  (lambda (_rest8116_ _val8117_)
                                    (if _kwt8070_
                                        (let ((_pos8119_
                                               (let ((__tmp8247
                                                      (keyword-hash _hd8101_))
                                                     (__tmp8246
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8070_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp8247
                                                  __tmp8246))))
                                          (if (eq? _hd8101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _kwt8070_
                                                      _pos8119_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8071_
                                                     _hd8101_)))
                                        '#!void)
                                    (if (hash-key? _keys8074_ _hd8101_)
                                        (error '"Duplicate keyword argument"
                                               _K8071_
                                               _hd8101_)
                                        '#!void)
                                    (table-set! _keys8074_ _hd8101_ _val8117_)
                                    (_lp8076_
                                     _rest8116_
                                     _args8079_
                                     _tail8080_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest81028109_))
                                (let ((_hd81068124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest81028109_)))
                                      (_tl81078126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest81028109_))))
                                  (let* ((_val8129_ _hd81068124_)
                                         (_rest8131_ _tl81078126_))
                                    (_K81058121_ _rest8131_ _val8129_)))
                                (_E81048113_)))
                          (if (eq? _hd8101_ '#!key)
                              (let* ((_hd-rest81328139_ _hd-rest8100_)
                                     (_E81348143_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest81328139_)))
                                     (_K81358149_
                                      (lambda (_rest8146_ _val8147_)
                                        (if _args8079_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8080_
                                                 _hd-rest8100_))
                                              (_lp8076_
                                               _rest8146_
                                               _args8079_
                                               _hd-rest8100_))
                                            (_lp8076_
                                             _rest8146_
                                             _hd-rest8100_
                                             _hd-rest8100_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest81328139_))
                                    (let ((_hd81368152_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest81328139_)))
                                          (_tl81378154_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest81328139_))))
                                      (let* ((_val8157_ _hd81368152_)
                                             (_rest8159_ _tl81378154_))
                                        (_K81358149_ _rest8159_ _val8157_)))
                                    (_E81348143_)))
                              (if (eq? _hd8101_ '#!rest)
                                  (if _args8079_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8080_
                                           _hd-rest8100_))
                                        (let ((__tmp8248
                                               (cons _keys8074_ _args8079_)))
                                          (declare (not safe))
                                          (##apply _K8071_ __tmp8248)))
                                      (let ((__tmp8249
                                             (cons _keys8074_ _hd-rest8100_)))
                                        (declare (not safe))
                                        (##apply _K8071_ __tmp8249)))
                                  (if _args8079_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8080_ _rest8078_))
                                        (_lp8076_
                                         _hd-rest8100_
                                         _args8079_
                                         _rest8078_))
                                      (_lp8076_
                                       _hd-rest8100_
                                       _rest8078_
                                       _rest8078_))))))))
              (if (let () (declare (not safe)) (##pair? _rest80818089_))
                  (let ((_hd80868164_
                         (let () (declare (not safe)) (##car _rest80818089_)))
                        (_tl80878166_
                         (let () (declare (not safe)) (##cdr _rest80818089_))))
                    (let* ((_hd8169_ _hd80868164_)
                           (_hd-rest8171_ _tl80878166_))
                      (_K80858161_ _hd-rest8171_ _hd8169_)))
                  (_else80838097_)))))))
    (define keyword-rest
      (lambda (_kwt8061_ . _drop8062_)
        (for-each
         (lambda (_kw8064_) (table-set! _kwt8061_ _kw8064_))
         _drop8062_)
        (hash-fold
         (lambda (_k8066_ _v8067_ _r8068_)
           (cons _k8066_ (cons _v8067_ _r8068_)))
         '()
         _kwt8061_)))))
