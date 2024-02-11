(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707651231)
  (begin
    (define make-promise
      (lambda (_thunk64399_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64399_))))
    (define call-with-parameters
      (lambda (_thunk64347_ . _rest64348_)
        (let* ((_rest6434964360_ _rest64348_)
               (_E6435264364_
                (lambda () (error '"No clause matching" _rest6434964360_))))
          (let ((_K6435464380_
                 (lambda (_rest64375_ _val64376_ _param64377_)
                   (let ((__tmp78105
                          (if (let () (declare (not safe)) (null? _rest64375_))
                              _thunk64347_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64347_
                                       _rest64375_)))))
                     (declare (not safe))
                     (##parameterize1 _param64377_ _val64376_ __tmp78105))))
                (_K6435364369_ (lambda () (_thunk64347_))))
            (let ((_try-match6435164372_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6434964360_))
                         (let () (declare (not safe)) (_thunk64347_))
                         (let () (declare (not safe)) (_E6435264364_))))))
              (if (let () (declare (not safe)) (##pair? _rest6434964360_))
                  (let ((_tl6435664385_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6434964360_)))
                        (_hd6435564383_
                         (let ()
                           (declare (not safe))
                           (##car _rest6434964360_))))
                    (if (let () (declare (not safe)) (##pair? _tl6435664385_))
                        (let ((_tl6435864392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6435664385_)))
                              (_hd6435764390_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6435664385_))))
                          (let ((_param64388_ _hd6435564383_)
                                (_val64395_ _hd6435764390_)
                                (_rest64397_ _tl6435864392_))
                            (let ()
                              (declare (not safe))
                              (_K6435464380_
                               _rest64397_
                               _val64395_
                               _param64388_))))
                        (let () (declare (not safe)) (_E6435264364_))))
                  (let () (declare (not safe)) (_try-match6435164372_))))))))
    (define with-unwind-protect
      (lambda (_K64340_ _fini64341_)
        (let ((_once64343_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64343_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64343_ '#t)))
           _K64340_
           _fini64341_))))
    (define keyword-dispatch
      (lambda (_kwt64237_ _K64238_ . _all-args64239_)
        (if _kwt64237_
            (if (let () (declare (not safe)) (vector? _kwt64237_))
                '#!void
                (error '"expected vector" _kwt64237_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64238_))
            '#!void
            (error '"expected procedure" _K64238_))
        (let ((_keys64241_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64243_ ((_rest64245_ _all-args64239_)
                          (_args64246_ '#f)
                          (_tail64247_ '#f))
            (let* ((_rest6424864256_ _rest64245_)
                   (_else6425064264_
                    (lambda ()
                      (if _args64246_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64247_ '()))
                            (let ((__tmp78106
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64241_ _args64246_))))
                              (declare (not safe))
                              (##apply _K64238_ __tmp78106)))
                          (_K64238_ _keys64241_))))
                   (_K6425264328_
                    (lambda (_hd-rest64267_ _hd64268_)
                      (if (keyword? _hd64268_)
                          (let* ((_hd-rest6426964276_ _hd-rest64267_)
                                 (_E6427164280_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6426964276_)))
                                 (_K6427264288_
                                  (lambda (_rest64283_ _val64284_)
                                    (if _kwt64237_
                                        (let ((_pos64286_
                                               (let ((__tmp78110
                                                      (keyword-hash _hd64268_))
                                                     (__tmp78109
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64237_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78110
                                                  __tmp78109))))
                                          (if (let ((__tmp78111
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64237_
                                                        _pos64286_))))
                                                (declare (not safe))
                                                (eq? _hd64268_ __tmp78111))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64238_
                                                     _hd64268_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64241_ _hd64268_))
                                        (error '"Duplicate keyword argument"
                                               _K64238_
                                               _hd64268_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64241_
                                       _hd64268_
                                       _val64284_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64243_
                                       _rest64283_
                                       _args64246_
                                       _tail64247_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6426964276_))
                                (let ((_hd6427364291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6426964276_)))
                                      (_tl6427464293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6426964276_))))
                                  (let* ((_val64296_ _hd6427364291_)
                                         (_rest64298_ _tl6427464293_))
                                    (declare (not safe))
                                    (_K6427264288_ _rest64298_ _val64296_)))
                                (let () (declare (not safe)) (_E6427164280_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64268_ '#!key))
                              (let* ((_hd-rest6429964306_ _hd-rest64267_)
                                     (_E6430164310_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6429964306_)))
                                     (_K6430264316_
                                      (lambda (_rest64313_ _val64314_)
                                        (if _args64246_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64247_
                                                 _hd-rest64267_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64243_
                                                 _rest64313_
                                                 _args64246_
                                                 _hd-rest64267_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64243_
                                               _rest64313_
                                               _hd-rest64267_
                                               _hd-rest64267_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6429964306_))
                                    (let ((_hd6430364319_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6429964306_)))
                                          (_tl6430464321_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6429964306_))))
                                      (let* ((_val64324_ _hd6430364319_)
                                             (_rest64326_ _tl6430464321_))
                                        (declare (not safe))
                                        (_K6430264316_
                                         _rest64326_
                                         _val64324_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6430164310_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64268_ '#!rest))
                                  (if _args64246_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64247_
                                           _hd-rest64267_))
                                        (let ((__tmp78108
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64241_
                                                       _args64246_))))
                                          (declare (not safe))
                                          (##apply _K64238_ __tmp78108)))
                                      (let ((__tmp78107
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64241_
                                                     _hd-rest64267_))))
                                        (declare (not safe))
                                        (##apply _K64238_ __tmp78107)))
                                  (if _args64246_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64247_ _rest64245_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64243_
                                           _hd-rest64267_
                                           _args64246_
                                           _rest64245_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64243_
                                         _hd-rest64267_
                                         _rest64245_
                                         _rest64245_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6424864256_))
                  (let ((_hd6425364331_
                         (let ()
                           (declare (not safe))
                           (##car _rest6424864256_)))
                        (_tl6425464333_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6424864256_))))
                    (let* ((_hd64336_ _hd6425364331_)
                           (_hd-rest64338_ _tl6425464333_))
                      (declare (not safe))
                      (_K6425264328_ _hd-rest64338_ _hd64336_)))
                  (let () (declare (not safe)) (_else6425064264_))))))))
    (define keyword-rest
      (lambda (_kwt64228_ . _drop64229_)
        (for-each
         (lambda (_kw64231_)
           (let () (declare (not safe)) (table-set! _kwt64228_ _kw64231_)))
         _drop64229_)
        (let ((__tmp78112
               (lambda (_k64233_ _v64234_ _r64235_)
                 (let ((__tmp78113
                        (let ()
                          (declare (not safe))
                          (cons _v64234_ _r64235_))))
                   (declare (not safe))
                   (cons _k64233_ __tmp78113)))))
          (declare (not safe))
          (hash-fold __tmp78112 '() _kwt64228_))))))
