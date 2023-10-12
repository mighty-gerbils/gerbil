(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1697117311)
  (begin
    (define make-promise
      (lambda (_thunk9160_)
        (let () (declare (not safe)) (##make-delay-promise _thunk9160_))))
    (define call-with-parameters
      (lambda (_thunk9108_ . _rest9109_)
        (let* ((_rest91109121_ _rest9109_)
               (_E91139125_
                (lambda () (error '"No clause matching" _rest91109121_))))
          (let ((_K91159141_
                 (lambda (_rest9136_ _val9137_ _param9138_)
                   (let ((__tmp9172
                          (if (let () (declare (not safe)) (null? _rest9136_))
                              _thunk9108_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk9108_
                                       _rest9136_)))))
                     (declare (not safe))
                     (##parameterize1 _param9138_ _val9137_ __tmp9172))))
                (_K91149130_ (lambda () (_thunk9108_))))
            (let ((_try-match91129133_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest91109121_))
                         (let () (declare (not safe)) (_thunk9108_))
                         (let () (declare (not safe)) (_E91139125_))))))
              (if (let () (declare (not safe)) (##pair? _rest91109121_))
                  (let ((_tl91179146_
                         (let () (declare (not safe)) (##cdr _rest91109121_)))
                        (_hd91169144_
                         (let () (declare (not safe)) (##car _rest91109121_))))
                    (if (let () (declare (not safe)) (##pair? _tl91179146_))
                        (let ((_tl91199153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl91179146_)))
                              (_hd91189151_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl91179146_))))
                          (let ((_param9149_ _hd91169144_)
                                (_val9156_ _hd91189151_)
                                (_rest9158_ _tl91199153_))
                            (let ()
                              (declare (not safe))
                              (_K91159141_ _rest9158_ _val9156_ _param9149_))))
                        (let () (declare (not safe)) (_E91139125_))))
                  (let () (declare (not safe)) (_try-match91129133_))))))))
    (define with-unwind-protect
      (lambda (_K9101_ _fini9102_)
        (let ((_once9104_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once9104_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once9104_ '#t)))
           _K9101_
           _fini9102_))))
    (define keyword-dispatch
      (lambda (_kwt8998_ _K8999_ . _all-args9000_)
        (if _kwt8998_
            (if (let () (declare (not safe)) (vector? _kwt8998_))
                '#!void
                (error '"expected vector" _kwt8998_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8999_))
            '#!void
            (error '"expected procedure" _K8999_))
        (let ((_keys9002_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp9004_ ((_rest9006_ _all-args9000_)
                         (_args9007_ '#f)
                         (_tail9008_ '#f))
            (let* ((_rest90099017_ _rest9006_)
                   (_else90119025_
                    (lambda ()
                      (if _args9007_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail9008_ '()))
                            (let ((__tmp9173
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys9002_ _args9007_))))
                              (declare (not safe))
                              (##apply _K8999_ __tmp9173)))
                          (_K8999_ _keys9002_))))
                   (_K90139089_
                    (lambda (_hd-rest9028_ _hd9029_)
                      (if (keyword? _hd9029_)
                          (let* ((_hd-rest90309037_ _hd-rest9028_)
                                 (_E90329041_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest90309037_)))
                                 (_K90339049_
                                  (lambda (_rest9044_ _val9045_)
                                    (if _kwt8998_
                                        (let ((_pos9047_
                                               (let ((__tmp9177
                                                      (keyword-hash _hd9029_))
                                                     (__tmp9176
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8998_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9177
                                                  __tmp9176))))
                                          (if (let ((__tmp9178
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8998_
                                                        _pos9047_))))
                                                (declare (not safe))
                                                (eq? _hd9029_ __tmp9178))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8999_
                                                     _hd9029_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys9002_ _hd9029_))
                                        (error '"Duplicate keyword argument"
                                               _K8999_
                                               _hd9029_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys9002_
                                       _hd9029_
                                       _val9045_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp9004_
                                       _rest9044_
                                       _args9007_
                                       _tail9008_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest90309037_))
                                (let ((_hd90349052_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest90309037_)))
                                      (_tl90359054_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest90309037_))))
                                  (let* ((_val9057_ _hd90349052_)
                                         (_rest9059_ _tl90359054_))
                                    (declare (not safe))
                                    (_K90339049_ _rest9059_ _val9057_)))
                                (let () (declare (not safe)) (_E90329041_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd9029_ '#!key))
                              (let* ((_hd-rest90609067_ _hd-rest9028_)
                                     (_E90629071_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest90609067_)))
                                     (_K90639077_
                                      (lambda (_rest9074_ _val9075_)
                                        (if _args9007_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail9008_
                                                 _hd-rest9028_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp9004_
                                                 _rest9074_
                                                 _args9007_
                                                 _hd-rest9028_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp9004_
                                               _rest9074_
                                               _hd-rest9028_
                                               _hd-rest9028_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest90609067_))
                                    (let ((_hd90649080_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest90609067_)))
                                          (_tl90659082_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest90609067_))))
                                      (let* ((_val9085_ _hd90649080_)
                                             (_rest9087_ _tl90659082_))
                                        (declare (not safe))
                                        (_K90639077_ _rest9087_ _val9085_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E90629071_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd9029_ '#!rest))
                                  (if _args9007_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail9008_
                                           _hd-rest9028_))
                                        (let ((__tmp9175
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys9002_
                                                       _args9007_))))
                                          (declare (not safe))
                                          (##apply _K8999_ __tmp9175)))
                                      (let ((__tmp9174
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys9002_
                                                     _hd-rest9028_))))
                                        (declare (not safe))
                                        (##apply _K8999_ __tmp9174)))
                                  (if _args9007_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail9008_ _rest9006_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp9004_
                                           _hd-rest9028_
                                           _args9007_
                                           _rest9006_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp9004_
                                         _hd-rest9028_
                                         _rest9006_
                                         _rest9006_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest90099017_))
                  (let ((_hd90149092_
                         (let () (declare (not safe)) (##car _rest90099017_)))
                        (_tl90159094_
                         (let () (declare (not safe)) (##cdr _rest90099017_))))
                    (let* ((_hd9097_ _hd90149092_)
                           (_hd-rest9099_ _tl90159094_))
                      (declare (not safe))
                      (_K90139089_ _hd-rest9099_ _hd9097_)))
                  (let () (declare (not safe)) (_else90119025_))))))))
    (define keyword-rest
      (lambda (_kwt8989_ . _drop8990_)
        (for-each
         (lambda (_kw8992_)
           (let () (declare (not safe)) (table-set! _kwt8989_ _kw8992_)))
         _drop8990_)
        (let ((__tmp9179
               (lambda (_k8994_ _v8995_ _r8996_)
                 (let ((__tmp9180
                        (let () (declare (not safe)) (cons _v8995_ _r8996_))))
                   (declare (not safe))
                   (cons _k8994_ __tmp9180)))))
          (declare (not safe))
          (hash-fold __tmp9179 '() _kwt8989_))))))
