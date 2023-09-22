(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1695377590)
  (begin
    (define make-promise
      (lambda (_thunk9092_)
        (let () (declare (not safe)) (##make-delay-promise _thunk9092_))))
    (define call-with-parameters
      (lambda (_thunk9040_ . _rest9041_)
        (let* ((_rest90429053_ _rest9041_)
               (_E90459057_
                (lambda () (error '"No clause matching" _rest90429053_))))
          (let ((_K90479073_
                 (lambda (_rest9068_ _val9069_ _param9070_)
                   (let ((__tmp9104
                          (if (let () (declare (not safe)) (null? _rest9068_))
                              _thunk9040_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk9040_
                                       _rest9068_)))))
                     (declare (not safe))
                     (##parameterize1 _param9070_ _val9069_ __tmp9104))))
                (_K90469062_ (lambda () (_thunk9040_))))
            (let ((_try-match90449065_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest90429053_))
                         (let () (declare (not safe)) (_thunk9040_))
                         (let () (declare (not safe)) (_E90459057_))))))
              (if (let () (declare (not safe)) (##pair? _rest90429053_))
                  (let ((_tl90499078_
                         (let () (declare (not safe)) (##cdr _rest90429053_)))
                        (_hd90489076_
                         (let () (declare (not safe)) (##car _rest90429053_))))
                    (if (let () (declare (not safe)) (##pair? _tl90499078_))
                        (let ((_tl90519085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl90499078_)))
                              (_hd90509083_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl90499078_))))
                          (let ((_param9081_ _hd90489076_)
                                (_val9088_ _hd90509083_)
                                (_rest9090_ _tl90519085_))
                            (let ()
                              (declare (not safe))
                              (_K90479073_ _rest9090_ _val9088_ _param9081_))))
                        (let () (declare (not safe)) (_E90459057_))))
                  (let () (declare (not safe)) (_try-match90449065_))))))))
    (define with-unwind-protect
      (lambda (_K9033_ _fini9034_)
        (let ((_once9036_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once9036_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once9036_ '#t)))
           _K9033_
           _fini9034_))))
    (define keyword-dispatch
      (lambda (_kwt8930_ _K8931_ . _all-args8932_)
        (if _kwt8930_
            (if (let () (declare (not safe)) (vector? _kwt8930_))
                '#!void
                (error '"expected vector" _kwt8930_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8931_))
            '#!void
            (error '"expected procedure" _K8931_))
        (let ((_keys8934_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8936_ ((_rest8938_ _all-args8932_)
                         (_args8939_ '#f)
                         (_tail8940_ '#f))
            (let* ((_rest89418949_ _rest8938_)
                   (_else89438957_
                    (lambda ()
                      (if _args8939_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8940_ '()))
                            (let ((__tmp9105
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8934_ _args8939_))))
                              (declare (not safe))
                              (##apply _K8931_ __tmp9105)))
                          (_K8931_ _keys8934_))))
                   (_K89459021_
                    (lambda (_hd-rest8960_ _hd8961_)
                      (if (keyword? _hd8961_)
                          (let* ((_hd-rest89628969_ _hd-rest8960_)
                                 (_E89648973_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest89628969_)))
                                 (_K89658981_
                                  (lambda (_rest8976_ _val8977_)
                                    (if _kwt8930_
                                        (let ((_pos8979_
                                               (let ((__tmp9109
                                                      (keyword-hash _hd8961_))
                                                     (__tmp9108
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8930_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9109
                                                  __tmp9108))))
                                          (if (let ((__tmp9110
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8930_
                                                        _pos8979_))))
                                                (declare (not safe))
                                                (eq? _hd8961_ __tmp9110))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8931_
                                                     _hd8961_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8934_ _hd8961_))
                                        (error '"Duplicate keyword argument"
                                               _K8931_
                                               _hd8961_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8934_
                                       _hd8961_
                                       _val8977_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8936_
                                       _rest8976_
                                       _args8939_
                                       _tail8940_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest89628969_))
                                (let ((_hd89668984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest89628969_)))
                                      (_tl89678986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest89628969_))))
                                  (let* ((_val8989_ _hd89668984_)
                                         (_rest8991_ _tl89678986_))
                                    (declare (not safe))
                                    (_K89658981_ _rest8991_ _val8989_)))
                                (let () (declare (not safe)) (_E89648973_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8961_ '#!key))
                              (let* ((_hd-rest89928999_ _hd-rest8960_)
                                     (_E89949003_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest89928999_)))
                                     (_K89959009_
                                      (lambda (_rest9006_ _val9007_)
                                        (if _args8939_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8940_
                                                 _hd-rest8960_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8936_
                                                 _rest9006_
                                                 _args8939_
                                                 _hd-rest8960_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8936_
                                               _rest9006_
                                               _hd-rest8960_
                                               _hd-rest8960_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest89928999_))
                                    (let ((_hd89969012_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest89928999_)))
                                          (_tl89979014_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest89928999_))))
                                      (let* ((_val9017_ _hd89969012_)
                                             (_rest9019_ _tl89979014_))
                                        (declare (not safe))
                                        (_K89959009_ _rest9019_ _val9017_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E89949003_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8961_ '#!rest))
                                  (if _args8939_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8940_
                                           _hd-rest8960_))
                                        (let ((__tmp9107
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8934_
                                                       _args8939_))))
                                          (declare (not safe))
                                          (##apply _K8931_ __tmp9107)))
                                      (let ((__tmp9106
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8934_
                                                     _hd-rest8960_))))
                                        (declare (not safe))
                                        (##apply _K8931_ __tmp9106)))
                                  (if _args8939_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8940_ _rest8938_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8936_
                                           _hd-rest8960_
                                           _args8939_
                                           _rest8938_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8936_
                                         _hd-rest8960_
                                         _rest8938_
                                         _rest8938_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest89418949_))
                  (let ((_hd89469024_
                         (let () (declare (not safe)) (##car _rest89418949_)))
                        (_tl89479026_
                         (let () (declare (not safe)) (##cdr _rest89418949_))))
                    (let* ((_hd9029_ _hd89469024_)
                           (_hd-rest9031_ _tl89479026_))
                      (declare (not safe))
                      (_K89459021_ _hd-rest9031_ _hd9029_)))
                  (let () (declare (not safe)) (_else89438957_))))))))
    (define keyword-rest
      (lambda (_kwt8921_ . _drop8922_)
        (for-each
         (lambda (_kw8924_)
           (let () (declare (not safe)) (table-set! _kwt8921_ _kw8924_)))
         _drop8922_)
        (let ((__tmp9111
               (lambda (_k8926_ _v8927_ _r8928_)
                 (let ((__tmp9112
                        (let () (declare (not safe)) (cons _v8927_ _r8928_))))
                   (declare (not safe))
                   (cons _k8926_ __tmp9112)))))
          (declare (not safe))
          (hash-fold __tmp9111 '() _kwt8921_))))))
