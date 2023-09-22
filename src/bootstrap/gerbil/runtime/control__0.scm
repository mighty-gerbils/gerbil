(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1695392652)
  (begin
    (define make-promise
      (lambda (_thunk9104_)
        (let () (declare (not safe)) (##make-delay-promise _thunk9104_))))
    (define call-with-parameters
      (lambda (_thunk9052_ . _rest9053_)
        (let* ((_rest90549065_ _rest9053_)
               (_E90579069_
                (lambda () (error '"No clause matching" _rest90549065_))))
          (let ((_K90599085_
                 (lambda (_rest9080_ _val9081_ _param9082_)
                   (let ((__tmp9116
                          (if (let () (declare (not safe)) (null? _rest9080_))
                              _thunk9052_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk9052_
                                       _rest9080_)))))
                     (declare (not safe))
                     (##parameterize1 _param9082_ _val9081_ __tmp9116))))
                (_K90589074_ (lambda () (_thunk9052_))))
            (let ((_try-match90569077_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest90549065_))
                         (let () (declare (not safe)) (_thunk9052_))
                         (let () (declare (not safe)) (_E90579069_))))))
              (if (let () (declare (not safe)) (##pair? _rest90549065_))
                  (let ((_tl90619090_
                         (let () (declare (not safe)) (##cdr _rest90549065_)))
                        (_hd90609088_
                         (let () (declare (not safe)) (##car _rest90549065_))))
                    (if (let () (declare (not safe)) (##pair? _tl90619090_))
                        (let ((_tl90639097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl90619090_)))
                              (_hd90629095_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl90619090_))))
                          (let ((_param9093_ _hd90609088_)
                                (_val9100_ _hd90629095_)
                                (_rest9102_ _tl90639097_))
                            (let ()
                              (declare (not safe))
                              (_K90599085_ _rest9102_ _val9100_ _param9093_))))
                        (let () (declare (not safe)) (_E90579069_))))
                  (let () (declare (not safe)) (_try-match90569077_))))))))
    (define with-unwind-protect
      (lambda (_K9045_ _fini9046_)
        (let ((_once9048_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once9048_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once9048_ '#t)))
           _K9045_
           _fini9046_))))
    (define keyword-dispatch
      (lambda (_kwt8942_ _K8943_ . _all-args8944_)
        (if _kwt8942_
            (if (let () (declare (not safe)) (vector? _kwt8942_))
                '#!void
                (error '"expected vector" _kwt8942_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8943_))
            '#!void
            (error '"expected procedure" _K8943_))
        (let ((_keys8946_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8948_ ((_rest8950_ _all-args8944_)
                         (_args8951_ '#f)
                         (_tail8952_ '#f))
            (let* ((_rest89538961_ _rest8950_)
                   (_else89558969_
                    (lambda ()
                      (if _args8951_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8952_ '()))
                            (let ((__tmp9117
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8946_ _args8951_))))
                              (declare (not safe))
                              (##apply _K8943_ __tmp9117)))
                          (_K8943_ _keys8946_))))
                   (_K89579033_
                    (lambda (_hd-rest8972_ _hd8973_)
                      (if (keyword? _hd8973_)
                          (let* ((_hd-rest89748981_ _hd-rest8972_)
                                 (_E89768985_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest89748981_)))
                                 (_K89778993_
                                  (lambda (_rest8988_ _val8989_)
                                    (if _kwt8942_
                                        (let ((_pos8991_
                                               (let ((__tmp9121
                                                      (keyword-hash _hd8973_))
                                                     (__tmp9120
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8942_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9121
                                                  __tmp9120))))
                                          (if (let ((__tmp9122
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8942_
                                                        _pos8991_))))
                                                (declare (not safe))
                                                (eq? _hd8973_ __tmp9122))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8943_
                                                     _hd8973_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8946_ _hd8973_))
                                        (error '"Duplicate keyword argument"
                                               _K8943_
                                               _hd8973_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8946_
                                       _hd8973_
                                       _val8989_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8948_
                                       _rest8988_
                                       _args8951_
                                       _tail8952_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest89748981_))
                                (let ((_hd89788996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest89748981_)))
                                      (_tl89798998_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest89748981_))))
                                  (let* ((_val9001_ _hd89788996_)
                                         (_rest9003_ _tl89798998_))
                                    (declare (not safe))
                                    (_K89778993_ _rest9003_ _val9001_)))
                                (let () (declare (not safe)) (_E89768985_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8973_ '#!key))
                              (let* ((_hd-rest90049011_ _hd-rest8972_)
                                     (_E90069015_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest90049011_)))
                                     (_K90079021_
                                      (lambda (_rest9018_ _val9019_)
                                        (if _args8951_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8952_
                                                 _hd-rest8972_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8948_
                                                 _rest9018_
                                                 _args8951_
                                                 _hd-rest8972_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8948_
                                               _rest9018_
                                               _hd-rest8972_
                                               _hd-rest8972_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest90049011_))
                                    (let ((_hd90089024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest90049011_)))
                                          (_tl90099026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest90049011_))))
                                      (let* ((_val9029_ _hd90089024_)
                                             (_rest9031_ _tl90099026_))
                                        (declare (not safe))
                                        (_K90079021_ _rest9031_ _val9029_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E90069015_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8973_ '#!rest))
                                  (if _args8951_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8952_
                                           _hd-rest8972_))
                                        (let ((__tmp9119
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8946_
                                                       _args8951_))))
                                          (declare (not safe))
                                          (##apply _K8943_ __tmp9119)))
                                      (let ((__tmp9118
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8946_
                                                     _hd-rest8972_))))
                                        (declare (not safe))
                                        (##apply _K8943_ __tmp9118)))
                                  (if _args8951_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8952_ _rest8950_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8948_
                                           _hd-rest8972_
                                           _args8951_
                                           _rest8950_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8948_
                                         _hd-rest8972_
                                         _rest8950_
                                         _rest8950_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest89538961_))
                  (let ((_hd89589036_
                         (let () (declare (not safe)) (##car _rest89538961_)))
                        (_tl89599038_
                         (let () (declare (not safe)) (##cdr _rest89538961_))))
                    (let* ((_hd9041_ _hd89589036_)
                           (_hd-rest9043_ _tl89599038_))
                      (declare (not safe))
                      (_K89579033_ _hd-rest9043_ _hd9041_)))
                  (let () (declare (not safe)) (_else89558969_))))))))
    (define keyword-rest
      (lambda (_kwt8933_ . _drop8934_)
        (for-each
         (lambda (_kw8936_)
           (let () (declare (not safe)) (table-set! _kwt8933_ _kw8936_)))
         _drop8934_)
        (let ((__tmp9123
               (lambda (_k8938_ _v8939_ _r8940_)
                 (let ((__tmp9124
                        (let () (declare (not safe)) (cons _v8939_ _r8940_))))
                   (declare (not safe))
                   (cons _k8938_ __tmp9124)))))
          (declare (not safe))
          (hash-fold __tmp9123 '() _kwt8933_))))))
