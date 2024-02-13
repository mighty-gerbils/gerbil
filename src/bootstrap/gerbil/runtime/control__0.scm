(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707840753)
  (begin
    (define make-promise
      (lambda (_thunk64922_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64922_))))
    (define call-with-parameters
      (lambda (_thunk64870_ . _rest64871_)
        (let* ((_rest6487264883_ _rest64871_)
               (_E6487564887_
                (lambda () (error '"No clause matching" _rest6487264883_))))
          (let ((_K6487764903_
                 (lambda (_rest64898_ _val64899_ _param64900_)
                   (let ((__tmp78928
                          (if (let () (declare (not safe)) (null? _rest64898_))
                              _thunk64870_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64870_
                                       _rest64898_)))))
                     (declare (not safe))
                     (##parameterize1 _param64900_ _val64899_ __tmp78928))))
                (_K6487664892_ (lambda () (_thunk64870_))))
            (let ((_try-match6487464895_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6487264883_))
                         (let () (declare (not safe)) (_thunk64870_))
                         (let () (declare (not safe)) (_E6487564887_))))))
              (if (let () (declare (not safe)) (##pair? _rest6487264883_))
                  (let ((_tl6487964908_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6487264883_)))
                        (_hd6487864906_
                         (let ()
                           (declare (not safe))
                           (##car _rest6487264883_))))
                    (if (let () (declare (not safe)) (##pair? _tl6487964908_))
                        (let ((_tl6488164915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6487964908_)))
                              (_hd6488064913_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6487964908_))))
                          (let ((_param64911_ _hd6487864906_)
                                (_val64918_ _hd6488064913_)
                                (_rest64920_ _tl6488164915_))
                            (let ()
                              (declare (not safe))
                              (_K6487764903_
                               _rest64920_
                               _val64918_
                               _param64911_))))
                        (let () (declare (not safe)) (_E6487564887_))))
                  (let () (declare (not safe)) (_try-match6487464895_))))))))
    (define with-unwind-protect
      (lambda (_K64863_ _fini64864_)
        (let ((_once64866_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64866_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64866_ '#t)))
           _K64863_
           _fini64864_))))
    (define keyword-dispatch
      (lambda (_kwt64760_ _K64761_ . _all-args64762_)
        (if _kwt64760_
            (if (let () (declare (not safe)) (vector? _kwt64760_))
                '#!void
                (error '"expected vector" _kwt64760_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64761_))
            '#!void
            (error '"expected procedure" _K64761_))
        (let ((_keys64764_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64766_ ((_rest64768_ _all-args64762_)
                          (_args64769_ '#f)
                          (_tail64770_ '#f))
            (let* ((_rest6477164779_ _rest64768_)
                   (_else6477364787_
                    (lambda ()
                      (if _args64769_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64770_ '()))
                            (let ((__tmp78929
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64764_ _args64769_))))
                              (declare (not safe))
                              (##apply _K64761_ __tmp78929)))
                          (_K64761_ _keys64764_))))
                   (_K6477564851_
                    (lambda (_hd-rest64790_ _hd64791_)
                      (if (keyword? _hd64791_)
                          (let* ((_hd-rest6479264799_ _hd-rest64790_)
                                 (_E6479464803_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6479264799_)))
                                 (_K6479564811_
                                  (lambda (_rest64806_ _val64807_)
                                    (if _kwt64760_
                                        (let ((_pos64809_
                                               (let ((__tmp78933
                                                      (keyword-hash _hd64791_))
                                                     (__tmp78932
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64760_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78933
                                                  __tmp78932))))
                                          (if (let ((__tmp78934
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64760_
                                                        _pos64809_))))
                                                (declare (not safe))
                                                (eq? _hd64791_ __tmp78934))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64761_
                                                     _hd64791_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64764_ _hd64791_))
                                        (error '"Duplicate keyword argument"
                                               _K64761_
                                               _hd64791_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64764_
                                       _hd64791_
                                       _val64807_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64766_
                                       _rest64806_
                                       _args64769_
                                       _tail64770_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6479264799_))
                                (let ((_hd6479664814_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6479264799_)))
                                      (_tl6479764816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6479264799_))))
                                  (let* ((_val64819_ _hd6479664814_)
                                         (_rest64821_ _tl6479764816_))
                                    (declare (not safe))
                                    (_K6479564811_ _rest64821_ _val64819_)))
                                (let () (declare (not safe)) (_E6479464803_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64791_ '#!key))
                              (let* ((_hd-rest6482264829_ _hd-rest64790_)
                                     (_E6482464833_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6482264829_)))
                                     (_K6482564839_
                                      (lambda (_rest64836_ _val64837_)
                                        (if _args64769_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64770_
                                                 _hd-rest64790_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64766_
                                                 _rest64836_
                                                 _args64769_
                                                 _hd-rest64790_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64766_
                                               _rest64836_
                                               _hd-rest64790_
                                               _hd-rest64790_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6482264829_))
                                    (let ((_hd6482664842_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6482264829_)))
                                          (_tl6482764844_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6482264829_))))
                                      (let* ((_val64847_ _hd6482664842_)
                                             (_rest64849_ _tl6482764844_))
                                        (declare (not safe))
                                        (_K6482564839_
                                         _rest64849_
                                         _val64847_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6482464833_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64791_ '#!rest))
                                  (if _args64769_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64770_
                                           _hd-rest64790_))
                                        (let ((__tmp78931
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64764_
                                                       _args64769_))))
                                          (declare (not safe))
                                          (##apply _K64761_ __tmp78931)))
                                      (let ((__tmp78930
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64764_
                                                     _hd-rest64790_))))
                                        (declare (not safe))
                                        (##apply _K64761_ __tmp78930)))
                                  (if _args64769_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64770_ _rest64768_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64766_
                                           _hd-rest64790_
                                           _args64769_
                                           _rest64768_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64766_
                                         _hd-rest64790_
                                         _rest64768_
                                         _rest64768_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6477164779_))
                  (let ((_hd6477664854_
                         (let ()
                           (declare (not safe))
                           (##car _rest6477164779_)))
                        (_tl6477764856_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6477164779_))))
                    (let* ((_hd64859_ _hd6477664854_)
                           (_hd-rest64861_ _tl6477764856_))
                      (declare (not safe))
                      (_K6477564851_ _hd-rest64861_ _hd64859_)))
                  (let () (declare (not safe)) (_else6477364787_))))))))
    (define keyword-rest
      (lambda (_kwt64751_ . _drop64752_)
        (for-each
         (lambda (_kw64754_)
           (let () (declare (not safe)) (table-set! _kwt64751_ _kw64754_)))
         _drop64752_)
        (let ((__tmp78935
               (lambda (_k64756_ _v64757_ _r64758_)
                 (let ((__tmp78936
                        (let ()
                          (declare (not safe))
                          (cons _v64757_ _r64758_))))
                   (declare (not safe))
                   (cons _k64756_ __tmp78936)))))
          (declare (not safe))
          (hash-fold __tmp78935 '() _kwt64751_))))))
