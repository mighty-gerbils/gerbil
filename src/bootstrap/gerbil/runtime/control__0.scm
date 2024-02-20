(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708418154)
  (begin
    (define make-promise
      (lambda (_thunk61027_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61027_))))
    (define call-with-parameters
      (lambda (_thunk60975_ . _rest60976_)
        (let* ((_rest6097760988_ _rest60976_)
               (_E6098060992_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6097760988_)))))
          (let ((_K6098261008_
                 (lambda (_rest61003_ _val61004_ _param61005_)
                   (let ((__tmp61039
                          (if (let () (declare (not safe)) (null? _rest61003_))
                              _thunk60975_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk60975_
                                       _rest61003_)))))
                     (declare (not safe))
                     (##parameterize1 _param61005_ _val61004_ __tmp61039))))
                (_K6098160997_ (lambda () (_thunk60975_))))
            (let ((_try-match6097961000_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6097760988_))
                         (let () (declare (not safe)) (_thunk60975_))
                         (let () (declare (not safe)) (_E6098060992_))))))
              (if (let () (declare (not safe)) (##pair? _rest6097760988_))
                  (let ((_tl6098461013_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6097760988_)))
                        (_hd6098361011_
                         (let ()
                           (declare (not safe))
                           (##car _rest6097760988_))))
                    (if (let () (declare (not safe)) (##pair? _tl6098461013_))
                        (let ((_tl6098661020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6098461013_)))
                              (_hd6098561018_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6098461013_))))
                          (let ((_param61016_ _hd6098361011_)
                                (_val61023_ _hd6098561018_)
                                (_rest61025_ _tl6098661020_))
                            (let ()
                              (declare (not safe))
                              (_K6098261008_
                               _rest61025_
                               _val61023_
                               _param61016_))))
                        (let () (declare (not safe)) (_E6098060992_))))
                  (let () (declare (not safe)) (_try-match6097961000_))))))))
    (define with-unwind-protect
      (lambda (_K60968_ _fini60969_)
        (let ((_once60971_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once60971_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once60971_ '#t)))
           _K60968_
           _fini60969_))))
    (define keyword-dispatch
      (lambda (_kwt60865_ _K60866_ . _all-args60867_)
        (if _kwt60865_
            (if (let () (declare (not safe)) (vector? _kwt60865_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60865_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60866_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60866_)))
        (let ((_keys60869_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60871_ ((_rest60873_ _all-args60867_)
                          (_args60874_ '#f)
                          (_tail60875_ '#f))
            (let* ((_rest6087660884_ _rest60873_)
                   (_else6087860892_
                    (lambda ()
                      (if _args60874_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60875_ '()))
                            (let ((__tmp61040
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60869_ _args60874_))))
                              (declare (not safe))
                              (##apply _K60866_ __tmp61040)))
                          (_K60866_ _keys60869_))))
                   (_K6088060956_
                    (lambda (_hd-rest60895_ _hd60896_)
                      (if (keyword? _hd60896_)
                          (let* ((_hd-rest6089760904_ _hd-rest60895_)
                                 (_E6089960908_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6089760904_))))
                                 (_K6090060916_
                                  (lambda (_rest60911_ _val60912_)
                                    (if _kwt60865_
                                        (let ((_pos60914_
                                               (let ((__tmp61044
                                                      (keyword-hash _hd60896_))
                                                     (__tmp61043
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60865_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61044
                                                  __tmp61043))))
                                          (if (let ((__tmp61045
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60865_
                                                        _pos60914_))))
                                                (declare (not safe))
                                                (eq? _hd60896_ __tmp61045))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60866_
                                                       _hd60896_))))
                                        '#!void)
                                    (if (let ((__tmp61046
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60869_
                                                  _hd60896_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61046 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60866_
                                                 _hd60896_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60869_
                                       _hd60896_
                                       _val60912_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60871_
                                       _rest60911_
                                       _args60874_
                                       _tail60875_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6089760904_))
                                (let ((_hd6090160919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6089760904_)))
                                      (_tl6090260921_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6089760904_))))
                                  (let* ((_val60924_ _hd6090160919_)
                                         (_rest60926_ _tl6090260921_))
                                    (declare (not safe))
                                    (_K6090060916_ _rest60926_ _val60924_)))
                                (let () (declare (not safe)) (_E6089960908_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60896_ '#!key))
                              (let* ((_hd-rest6092760934_ _hd-rest60895_)
                                     (_E6092960938_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6092760934_))))
                                     (_K6093060944_
                                      (lambda (_rest60941_ _val60942_)
                                        (if _args60874_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60875_
                                                 _hd-rest60895_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60871_
                                                 _rest60941_
                                                 _args60874_
                                                 _hd-rest60895_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60871_
                                               _rest60941_
                                               _hd-rest60895_
                                               _hd-rest60895_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6092760934_))
                                    (let ((_hd6093160947_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6092760934_)))
                                          (_tl6093260949_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6092760934_))))
                                      (let* ((_val60952_ _hd6093160947_)
                                             (_rest60954_ _tl6093260949_))
                                        (declare (not safe))
                                        (_K6093060944_
                                         _rest60954_
                                         _val60952_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6092960938_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60896_ '#!rest))
                                  (if _args60874_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60875_
                                           _hd-rest60895_))
                                        (let ((__tmp61042
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60869_
                                                       _args60874_))))
                                          (declare (not safe))
                                          (##apply _K60866_ __tmp61042)))
                                      (let ((__tmp61041
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60869_
                                                     _hd-rest60895_))))
                                        (declare (not safe))
                                        (##apply _K60866_ __tmp61041)))
                                  (if _args60874_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60875_ _rest60873_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60871_
                                           _hd-rest60895_
                                           _args60874_
                                           _rest60873_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60871_
                                         _hd-rest60895_
                                         _rest60873_
                                         _rest60873_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6087660884_))
                  (let ((_hd6088160959_
                         (let ()
                           (declare (not safe))
                           (##car _rest6087660884_)))
                        (_tl6088260961_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6087660884_))))
                    (let* ((_hd60964_ _hd6088160959_)
                           (_hd-rest60966_ _tl6088260961_))
                      (declare (not safe))
                      (_K6088060956_ _hd-rest60966_ _hd60964_)))
                  (let () (declare (not safe)) (_else6087860892_))))))))
    (define keyword-rest
      (lambda (_kwt60857_ . _drop60858_)
        (let ((_rest60860_ '()))
          (let ((__tmp61047
                 (lambda (_k60862_ _v60863_)
                   (if (memq _k60862_ _drop60858_)
                       '#!void
                       (set! _rest60860_
                             (let ((__tmp61048
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60863_ _rest60860_))))
                               (declare (not safe))
                               (cons _k60862_ __tmp61048)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60857_ __tmp61047))
          _rest60860_)))))
