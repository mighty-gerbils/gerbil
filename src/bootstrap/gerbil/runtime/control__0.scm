(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1701718632)
  (begin
    (define make-promise
      (lambda (_thunk7081_)
        (let () (declare (not safe)) (##make-delay-promise _thunk7081_))))
    (define call-with-parameters
      (lambda (_thunk7029_ . _rest7030_)
        (let* ((_rest70317042_ _rest7030_)
               (_E70347046_
                (lambda () (error '"No clause matching" _rest70317042_))))
          (let ((_K70367062_
                 (lambda (_rest7057_ _val7058_ _param7059_)
                   (let ((__tmp7093
                          (if (let () (declare (not safe)) (null? _rest7057_))
                              _thunk7029_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk7029_
                                       _rest7057_)))))
                     (declare (not safe))
                     (##parameterize1 _param7059_ _val7058_ __tmp7093))))
                (_K70357051_ (lambda () (_thunk7029_))))
            (let ((_try-match70337054_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest70317042_))
                         (let () (declare (not safe)) (_thunk7029_))
                         (let () (declare (not safe)) (_E70347046_))))))
              (if (let () (declare (not safe)) (##pair? _rest70317042_))
                  (let ((_tl70387067_
                         (let () (declare (not safe)) (##cdr _rest70317042_)))
                        (_hd70377065_
                         (let () (declare (not safe)) (##car _rest70317042_))))
                    (if (let () (declare (not safe)) (##pair? _tl70387067_))
                        (let ((_tl70407074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl70387067_)))
                              (_hd70397072_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl70387067_))))
                          (let ((_param7070_ _hd70377065_)
                                (_val7077_ _hd70397072_)
                                (_rest7079_ _tl70407074_))
                            (let ()
                              (declare (not safe))
                              (_K70367062_ _rest7079_ _val7077_ _param7070_))))
                        (let () (declare (not safe)) (_E70347046_))))
                  (let () (declare (not safe)) (_try-match70337054_))))))))
    (define with-unwind-protect
      (lambda (_K7022_ _fini7023_)
        (let ((_once7025_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once7025_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once7025_ '#t)))
           _K7022_
           _fini7023_))))
    (define keyword-dispatch
      (lambda (_kwt6919_ _K6920_ . _all-args6921_)
        (if _kwt6919_
            (if (let () (declare (not safe)) (vector? _kwt6919_))
                '#!void
                (error '"expected vector" _kwt6919_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K6920_))
            '#!void
            (error '"expected procedure" _K6920_))
        (let ((_keys6923_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp6925_ ((_rest6927_ _all-args6921_)
                         (_args6928_ '#f)
                         (_tail6929_ '#f))
            (let* ((_rest69306938_ _rest6927_)
                   (_else69326946_
                    (lambda ()
                      (if _args6928_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail6929_ '()))
                            (let ((__tmp7094
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys6923_ _args6928_))))
                              (declare (not safe))
                              (##apply _K6920_ __tmp7094)))
                          (_K6920_ _keys6923_))))
                   (_K69347010_
                    (lambda (_hd-rest6949_ _hd6950_)
                      (if (keyword? _hd6950_)
                          (let* ((_hd-rest69516958_ _hd-rest6949_)
                                 (_E69536962_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest69516958_)))
                                 (_K69546970_
                                  (lambda (_rest6965_ _val6966_)
                                    (if _kwt6919_
                                        (let ((_pos6968_
                                               (let ((__tmp7098
                                                      (keyword-hash _hd6950_))
                                                     (__tmp7097
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt6919_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp7098
                                                  __tmp7097))))
                                          (if (let ((__tmp7099
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt6919_
                                                        _pos6968_))))
                                                (declare (not safe))
                                                (eq? _hd6950_ __tmp7099))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K6920_
                                                     _hd6950_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys6923_ _hd6950_))
                                        (error '"Duplicate keyword argument"
                                               _K6920_
                                               _hd6950_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys6923_
                                       _hd6950_
                                       _val6966_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp6925_
                                       _rest6965_
                                       _args6928_
                                       _tail6929_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest69516958_))
                                (let ((_hd69556973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest69516958_)))
                                      (_tl69566975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest69516958_))))
                                  (let* ((_val6978_ _hd69556973_)
                                         (_rest6980_ _tl69566975_))
                                    (declare (not safe))
                                    (_K69546970_ _rest6980_ _val6978_)))
                                (let () (declare (not safe)) (_E69536962_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd6950_ '#!key))
                              (let* ((_hd-rest69816988_ _hd-rest6949_)
                                     (_E69836992_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest69816988_)))
                                     (_K69846998_
                                      (lambda (_rest6995_ _val6996_)
                                        (if _args6928_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail6929_
                                                 _hd-rest6949_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp6925_
                                                 _rest6995_
                                                 _args6928_
                                                 _hd-rest6949_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp6925_
                                               _rest6995_
                                               _hd-rest6949_
                                               _hd-rest6949_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest69816988_))
                                    (let ((_hd69857001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest69816988_)))
                                          (_tl69867003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest69816988_))))
                                      (let* ((_val7006_ _hd69857001_)
                                             (_rest7008_ _tl69867003_))
                                        (declare (not safe))
                                        (_K69846998_ _rest7008_ _val7006_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E69836992_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd6950_ '#!rest))
                                  (if _args6928_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail6929_
                                           _hd-rest6949_))
                                        (let ((__tmp7096
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys6923_
                                                       _args6928_))))
                                          (declare (not safe))
                                          (##apply _K6920_ __tmp7096)))
                                      (let ((__tmp7095
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys6923_
                                                     _hd-rest6949_))))
                                        (declare (not safe))
                                        (##apply _K6920_ __tmp7095)))
                                  (if _args6928_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail6929_ _rest6927_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp6925_
                                           _hd-rest6949_
                                           _args6928_
                                           _rest6927_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp6925_
                                         _hd-rest6949_
                                         _rest6927_
                                         _rest6927_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest69306938_))
                  (let ((_hd69357013_
                         (let () (declare (not safe)) (##car _rest69306938_)))
                        (_tl69367015_
                         (let () (declare (not safe)) (##cdr _rest69306938_))))
                    (let* ((_hd7018_ _hd69357013_)
                           (_hd-rest7020_ _tl69367015_))
                      (declare (not safe))
                      (_K69347010_ _hd-rest7020_ _hd7018_)))
                  (let () (declare (not safe)) (_else69326946_))))))))
    (define keyword-rest
      (lambda (_kwt6910_ . _drop6911_)
        (for-each
         (lambda (_kw6913_)
           (let () (declare (not safe)) (table-set! _kwt6910_ _kw6913_)))
         _drop6911_)
        (let ((__tmp7100
               (lambda (_k6915_ _v6916_ _r6917_)
                 (let ((__tmp7101
                        (let () (declare (not safe)) (cons _v6916_ _r6917_))))
                   (declare (not safe))
                   (cons _k6915_ __tmp7101)))))
          (declare (not safe))
          (hash-fold __tmp7100 '() _kwt6910_))))))
