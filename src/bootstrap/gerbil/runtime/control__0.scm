(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708337962)
  (begin
    (define make-promise
      (lambda (_thunk70104_)
        (let () (declare (not safe)) (##make-delay-promise _thunk70104_))))
    (define call-with-parameters
      (lambda (_thunk70052_ . _rest70053_)
        (let* ((_rest7005470065_ _rest70053_)
               (_E7005770069_
                (lambda () (error '"No clause matching" _rest7005470065_))))
          (let ((_K7005970085_
                 (lambda (_rest70080_ _val70081_ _param70082_)
                   (let ((__tmp74102
                          (if (let () (declare (not safe)) (null? _rest70080_))
                              _thunk70052_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk70052_
                                       _rest70080_)))))
                     (declare (not safe))
                     (##parameterize1 _param70082_ _val70081_ __tmp74102))))
                (_K7005870074_ (lambda () (_thunk70052_))))
            (let ((_try-match7005670077_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7005470065_))
                         (let () (declare (not safe)) (_thunk70052_))
                         (let () (declare (not safe)) (_E7005770069_))))))
              (if (let () (declare (not safe)) (##pair? _rest7005470065_))
                  (let ((_tl7006170090_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7005470065_)))
                        (_hd7006070088_
                         (let ()
                           (declare (not safe))
                           (##car _rest7005470065_))))
                    (if (let () (declare (not safe)) (##pair? _tl7006170090_))
                        (let ((_tl7006370097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7006170090_)))
                              (_hd7006270095_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7006170090_))))
                          (let ((_param70093_ _hd7006070088_)
                                (_val70100_ _hd7006270095_)
                                (_rest70102_ _tl7006370097_))
                            (let ()
                              (declare (not safe))
                              (_K7005970085_
                               _rest70102_
                               _val70100_
                               _param70093_))))
                        (let () (declare (not safe)) (_E7005770069_))))
                  (let () (declare (not safe)) (_try-match7005670077_))))))))
    (define with-unwind-protect
      (lambda (_K70045_ _fini70046_)
        (let ((_once70048_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once70048_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once70048_ '#t)))
           _K70045_
           _fini70046_))))
    (define keyword-dispatch
      (lambda (_kwt69942_ _K69943_ . _all-args69944_)
        (if _kwt69942_
            (if (let () (declare (not safe)) (vector? _kwt69942_))
                '#!void
                (error '"expected vector" _kwt69942_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K69943_))
            '#!void
            (error '"expected procedure" _K69943_))
        (let ((_keys69946_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp69948_ ((_rest69950_ _all-args69944_)
                          (_args69951_ '#f)
                          (_tail69952_ '#f))
            (let* ((_rest6995369961_ _rest69950_)
                   (_else6995569969_
                    (lambda ()
                      (if _args69951_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail69952_ '()))
                            (let ((__tmp74103
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys69946_ _args69951_))))
                              (declare (not safe))
                              (##apply _K69943_ __tmp74103)))
                          (_K69943_ _keys69946_))))
                   (_K6995770033_
                    (lambda (_hd-rest69972_ _hd69973_)
                      (if (keyword? _hd69973_)
                          (let* ((_hd-rest6997469981_ _hd-rest69972_)
                                 (_E6997669985_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6997469981_)))
                                 (_K6997769993_
                                  (lambda (_rest69988_ _val69989_)
                                    (if _kwt69942_
                                        (let ((_pos69991_
                                               (let ((__tmp74107
                                                      (keyword-hash _hd69973_))
                                                     (__tmp74106
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt69942_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp74107
                                                  __tmp74106))))
                                          (if (let ((__tmp74108
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt69942_
                                                        _pos69991_))))
                                                (declare (not safe))
                                                (eq? _hd69973_ __tmp74108))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K69943_
                                                     _hd69973_)))
                                        '#!void)
                                    (if (let ((__tmp74109
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys69946_
                                                  _hd69973_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp74109 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K69943_
                                               _hd69973_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys69946_
                                       _hd69973_
                                       _val69989_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp69948_
                                       _rest69988_
                                       _args69951_
                                       _tail69952_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6997469981_))
                                (let ((_hd6997869996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6997469981_)))
                                      (_tl6997969998_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6997469981_))))
                                  (let* ((_val70001_ _hd6997869996_)
                                         (_rest70003_ _tl6997969998_))
                                    (declare (not safe))
                                    (_K6997769993_ _rest70003_ _val70001_)))
                                (let () (declare (not safe)) (_E6997669985_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd69973_ '#!key))
                              (let* ((_hd-rest7000470011_ _hd-rest69972_)
                                     (_E7000670015_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7000470011_)))
                                     (_K7000770021_
                                      (lambda (_rest70018_ _val70019_)
                                        (if _args69951_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail69952_
                                                 _hd-rest69972_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp69948_
                                                 _rest70018_
                                                 _args69951_
                                                 _hd-rest69972_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp69948_
                                               _rest70018_
                                               _hd-rest69972_
                                               _hd-rest69972_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7000470011_))
                                    (let ((_hd7000870024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7000470011_)))
                                          (_tl7000970026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7000470011_))))
                                      (let* ((_val70029_ _hd7000870024_)
                                             (_rest70031_ _tl7000970026_))
                                        (declare (not safe))
                                        (_K7000770021_
                                         _rest70031_
                                         _val70029_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7000670015_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd69973_ '#!rest))
                                  (if _args69951_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail69952_
                                           _hd-rest69972_))
                                        (let ((__tmp74105
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys69946_
                                                       _args69951_))))
                                          (declare (not safe))
                                          (##apply _K69943_ __tmp74105)))
                                      (let ((__tmp74104
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys69946_
                                                     _hd-rest69972_))))
                                        (declare (not safe))
                                        (##apply _K69943_ __tmp74104)))
                                  (if _args69951_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail69952_ _rest69950_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp69948_
                                           _hd-rest69972_
                                           _args69951_
                                           _rest69950_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp69948_
                                         _hd-rest69972_
                                         _rest69950_
                                         _rest69950_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6995369961_))
                  (let ((_hd6995870036_
                         (let ()
                           (declare (not safe))
                           (##car _rest6995369961_)))
                        (_tl6995970038_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6995369961_))))
                    (let* ((_hd70041_ _hd6995870036_)
                           (_hd-rest70043_ _tl6995970038_))
                      (declare (not safe))
                      (_K6995770033_ _hd-rest70043_ _hd70041_)))
                  (let () (declare (not safe)) (_else6995569969_))))))))
    (define keyword-rest
      (lambda (_kwt69934_ . _drop69935_)
        (let ((_rest69937_ '()))
          (let ((__tmp74110
                 (lambda (_k69939_ _v69940_)
                   (if (memq _k69939_ _drop69935_)
                       '#!void
                       (set! _rest69937_
                             (let ((__tmp74111
                                    (let ()
                                      (declare (not safe))
                                      (cons _v69940_ _rest69937_))))
                               (declare (not safe))
                               (cons _k69939_ __tmp74111)))))))
            (declare (not safe))
            (raw-table-for-each _kwt69934_ __tmp74110))
          _rest69937_)))))
