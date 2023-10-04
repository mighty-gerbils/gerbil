(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1696372335)
  (begin
    (define make-promise
      (lambda (_thunk9108_)
        (let () (declare (not safe)) (##make-delay-promise _thunk9108_))))
    (define call-with-parameters
      (lambda (_thunk9056_ . _rest9057_)
        (let* ((_rest90589069_ _rest9057_)
               (_E90619073_
                (lambda () (error '"No clause matching" _rest90589069_))))
          (let ((_K90639089_
                 (lambda (_rest9084_ _val9085_ _param9086_)
                   (let ((__tmp9120
                          (if (let () (declare (not safe)) (null? _rest9084_))
                              _thunk9056_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk9056_
                                       _rest9084_)))))
                     (declare (not safe))
                     (##parameterize1 _param9086_ _val9085_ __tmp9120))))
                (_K90629078_ (lambda () (_thunk9056_))))
            (let ((_try-match90609081_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest90589069_))
                         (let () (declare (not safe)) (_thunk9056_))
                         (let () (declare (not safe)) (_E90619073_))))))
              (if (let () (declare (not safe)) (##pair? _rest90589069_))
                  (let ((_tl90659094_
                         (let () (declare (not safe)) (##cdr _rest90589069_)))
                        (_hd90649092_
                         (let () (declare (not safe)) (##car _rest90589069_))))
                    (if (let () (declare (not safe)) (##pair? _tl90659094_))
                        (let ((_tl90679101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl90659094_)))
                              (_hd90669099_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl90659094_))))
                          (let ((_param9097_ _hd90649092_)
                                (_val9104_ _hd90669099_)
                                (_rest9106_ _tl90679101_))
                            (let ()
                              (declare (not safe))
                              (_K90639089_ _rest9106_ _val9104_ _param9097_))))
                        (let () (declare (not safe)) (_E90619073_))))
                  (let () (declare (not safe)) (_try-match90609081_))))))))
    (define with-unwind-protect
      (lambda (_K9049_ _fini9050_)
        (let ((_once9052_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once9052_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once9052_ '#t)))
           _K9049_
           _fini9050_))))
    (define keyword-dispatch
      (lambda (_kwt8946_ _K8947_ . _all-args8948_)
        (if _kwt8946_
            (if (let () (declare (not safe)) (vector? _kwt8946_))
                '#!void
                (error '"expected vector" _kwt8946_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8947_))
            '#!void
            (error '"expected procedure" _K8947_))
        (let ((_keys8950_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8952_ ((_rest8954_ _all-args8948_)
                         (_args8955_ '#f)
                         (_tail8956_ '#f))
            (let* ((_rest89578965_ _rest8954_)
                   (_else89598973_
                    (lambda ()
                      (if _args8955_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8956_ '()))
                            (let ((__tmp9121
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8950_ _args8955_))))
                              (declare (not safe))
                              (##apply _K8947_ __tmp9121)))
                          (_K8947_ _keys8950_))))
                   (_K89619037_
                    (lambda (_hd-rest8976_ _hd8977_)
                      (if (keyword? _hd8977_)
                          (let* ((_hd-rest89788985_ _hd-rest8976_)
                                 (_E89808989_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest89788985_)))
                                 (_K89818997_
                                  (lambda (_rest8992_ _val8993_)
                                    (if _kwt8946_
                                        (let ((_pos8995_
                                               (let ((__tmp9125
                                                      (keyword-hash _hd8977_))
                                                     (__tmp9124
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8946_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9125
                                                  __tmp9124))))
                                          (if (let ((__tmp9126
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8946_
                                                        _pos8995_))))
                                                (declare (not safe))
                                                (eq? _hd8977_ __tmp9126))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8947_
                                                     _hd8977_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8950_ _hd8977_))
                                        (error '"Duplicate keyword argument"
                                               _K8947_
                                               _hd8977_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8950_
                                       _hd8977_
                                       _val8993_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8952_
                                       _rest8992_
                                       _args8955_
                                       _tail8956_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest89788985_))
                                (let ((_hd89829000_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest89788985_)))
                                      (_tl89839002_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest89788985_))))
                                  (let* ((_val9005_ _hd89829000_)
                                         (_rest9007_ _tl89839002_))
                                    (declare (not safe))
                                    (_K89818997_ _rest9007_ _val9005_)))
                                (let () (declare (not safe)) (_E89808989_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8977_ '#!key))
                              (let* ((_hd-rest90089015_ _hd-rest8976_)
                                     (_E90109019_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest90089015_)))
                                     (_K90119025_
                                      (lambda (_rest9022_ _val9023_)
                                        (if _args8955_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8956_
                                                 _hd-rest8976_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8952_
                                                 _rest9022_
                                                 _args8955_
                                                 _hd-rest8976_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8952_
                                               _rest9022_
                                               _hd-rest8976_
                                               _hd-rest8976_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest90089015_))
                                    (let ((_hd90129028_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest90089015_)))
                                          (_tl90139030_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest90089015_))))
                                      (let* ((_val9033_ _hd90129028_)
                                             (_rest9035_ _tl90139030_))
                                        (declare (not safe))
                                        (_K90119025_ _rest9035_ _val9033_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E90109019_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8977_ '#!rest))
                                  (if _args8955_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8956_
                                           _hd-rest8976_))
                                        (let ((__tmp9123
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8950_
                                                       _args8955_))))
                                          (declare (not safe))
                                          (##apply _K8947_ __tmp9123)))
                                      (let ((__tmp9122
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8950_
                                                     _hd-rest8976_))))
                                        (declare (not safe))
                                        (##apply _K8947_ __tmp9122)))
                                  (if _args8955_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8956_ _rest8954_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8952_
                                           _hd-rest8976_
                                           _args8955_
                                           _rest8954_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8952_
                                         _hd-rest8976_
                                         _rest8954_
                                         _rest8954_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest89578965_))
                  (let ((_hd89629040_
                         (let () (declare (not safe)) (##car _rest89578965_)))
                        (_tl89639042_
                         (let () (declare (not safe)) (##cdr _rest89578965_))))
                    (let* ((_hd9045_ _hd89629040_)
                           (_hd-rest9047_ _tl89639042_))
                      (declare (not safe))
                      (_K89619037_ _hd-rest9047_ _hd9045_)))
                  (let () (declare (not safe)) (_else89598973_))))))))
    (define keyword-rest
      (lambda (_kwt8937_ . _drop8938_)
        (for-each
         (lambda (_kw8940_)
           (let () (declare (not safe)) (table-set! _kwt8937_ _kw8940_)))
         _drop8938_)
        (let ((__tmp9127
               (lambda (_k8942_ _v8943_ _r8944_)
                 (let ((__tmp9128
                        (let () (declare (not safe)) (cons _v8943_ _r8944_))))
                   (declare (not safe))
                   (cons _k8942_ __tmp9128)))))
          (declare (not safe))
          (hash-fold __tmp9127 '() _kwt8937_))))))
