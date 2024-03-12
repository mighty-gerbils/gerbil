(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710238837)
  (begin
    (define make-promise
      (lambda (_thunk61021_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61021_))))
    (define call-with-parameters
      (lambda (_thunk60969_ . _rest60970_)
        (let* ((_rest6097160982_ _rest60970_)
               (_E6097460986_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6097160982_)))))
          (let ((_K6097661002_
                 (lambda (_rest60997_ _val60998_ _param60999_)
                   (let ((__tmp61033
                          (if (let () (declare (not safe)) (null? _rest60997_))
                              _thunk60969_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk60969_
                                       _rest60997_)))))
                     (declare (not safe))
                     (##parameterize1 _param60999_ _val60998_ __tmp61033))))
                (_K6097560991_ (lambda () (_thunk60969_))))
            (let ((_try-match6097360994_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6097160982_))
                         (let () (declare (not safe)) (_thunk60969_))
                         (let () (declare (not safe)) (_E6097460986_))))))
              (if (let () (declare (not safe)) (##pair? _rest6097160982_))
                  (let ((_tl6097861007_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6097160982_)))
                        (_hd6097761005_
                         (let ()
                           (declare (not safe))
                           (##car _rest6097160982_))))
                    (if (let () (declare (not safe)) (##pair? _tl6097861007_))
                        (let ((_tl6098061014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6097861007_)))
                              (_hd6097961012_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6097861007_))))
                          (let ((_param61010_ _hd6097761005_)
                                (_val61017_ _hd6097961012_)
                                (_rest61019_ _tl6098061014_))
                            (let ()
                              (declare (not safe))
                              (_K6097661002_
                               _rest61019_
                               _val61017_
                               _param61010_))))
                        (let () (declare (not safe)) (_E6097460986_))))
                  (let () (declare (not safe)) (_try-match6097360994_))))))))
    (define with-unwind-protect
      (lambda (_K60962_ _fini60963_)
        (let ((_once60965_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once60965_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once60965_ '#t)))
           _K60962_
           _fini60963_))))
    (define keyword-dispatch
      (lambda (_kwt60859_ _K60860_ . _all-args60861_)
        (if _kwt60859_
            (if (let () (declare (not safe)) (vector? _kwt60859_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60859_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60860_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60860_)))
        (let ((_keys60863_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60865_ ((_rest60867_ _all-args60861_)
                          (_args60868_ '#f)
                          (_tail60869_ '#f))
            (let* ((_rest6087060878_ _rest60867_)
                   (_else6087260886_
                    (lambda ()
                      (if _args60868_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60869_ '()))
                            (let ((__tmp61034
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60863_ _args60868_))))
                              (declare (not safe))
                              (##apply _K60860_ __tmp61034)))
                          (_K60860_ _keys60863_))))
                   (_K6087460950_
                    (lambda (_hd-rest60889_ _hd60890_)
                      (if (keyword? _hd60890_)
                          (let* ((_hd-rest6089160898_ _hd-rest60889_)
                                 (_E6089360902_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6089160898_))))
                                 (_K6089460910_
                                  (lambda (_rest60905_ _val60906_)
                                    (if _kwt60859_
                                        (let ((_pos60908_
                                               (let ((__tmp61038
                                                      (keyword-hash _hd60890_))
                                                     (__tmp61037
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60859_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61038
                                                  __tmp61037))))
                                          (if (let ((__tmp61039
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60859_
                                                        _pos60908_))))
                                                (declare (not safe))
                                                (eq? _hd60890_ __tmp61039))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60860_
                                                       _hd60890_))))
                                        '#!void)
                                    (if (let ((__tmp61040
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60863_
                                                  _hd60890_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61040 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60860_
                                                 _hd60890_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60863_
                                       _hd60890_
                                       _val60906_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60865_
                                       _rest60905_
                                       _args60868_
                                       _tail60869_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6089160898_))
                                (let ((_hd6089560913_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6089160898_)))
                                      (_tl6089660915_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6089160898_))))
                                  (let* ((_val60918_ _hd6089560913_)
                                         (_rest60920_ _tl6089660915_))
                                    (declare (not safe))
                                    (_K6089460910_ _rest60920_ _val60918_)))
                                (let () (declare (not safe)) (_E6089360902_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60890_ '#!key))
                              (let* ((_hd-rest6092160928_ _hd-rest60889_)
                                     (_E6092360932_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6092160928_))))
                                     (_K6092460938_
                                      (lambda (_rest60935_ _val60936_)
                                        (if _args60868_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60869_
                                                 _hd-rest60889_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60865_
                                                 _rest60935_
                                                 _args60868_
                                                 _hd-rest60889_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60865_
                                               _rest60935_
                                               _hd-rest60889_
                                               _hd-rest60889_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6092160928_))
                                    (let ((_hd6092560941_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6092160928_)))
                                          (_tl6092660943_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6092160928_))))
                                      (let* ((_val60946_ _hd6092560941_)
                                             (_rest60948_ _tl6092660943_))
                                        (declare (not safe))
                                        (_K6092460938_
                                         _rest60948_
                                         _val60946_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6092360932_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60890_ '#!rest))
                                  (if _args60868_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60869_
                                           _hd-rest60889_))
                                        (let ((__tmp61036
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60863_
                                                       _args60868_))))
                                          (declare (not safe))
                                          (##apply _K60860_ __tmp61036)))
                                      (let ((__tmp61035
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60863_
                                                     _hd-rest60889_))))
                                        (declare (not safe))
                                        (##apply _K60860_ __tmp61035)))
                                  (if _args60868_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60869_ _rest60867_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60865_
                                           _hd-rest60889_
                                           _args60868_
                                           _rest60867_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60865_
                                         _hd-rest60889_
                                         _rest60867_
                                         _rest60867_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6087060878_))
                  (let ((_hd6087560953_
                         (let ()
                           (declare (not safe))
                           (##car _rest6087060878_)))
                        (_tl6087660955_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6087060878_))))
                    (let* ((_hd60958_ _hd6087560953_)
                           (_hd-rest60960_ _tl6087660955_))
                      (declare (not safe))
                      (_K6087460950_ _hd-rest60960_ _hd60958_)))
                  (let () (declare (not safe)) (_else6087260886_))))))))
    (define keyword-rest
      (lambda (_kwt60851_ . _drop60852_)
        (let ((_rest60854_ '()))
          (let ((__tmp61041
                 (lambda (_k60856_ _v60857_)
                   (if (memq _k60856_ _drop60852_)
                       '#!void
                       (set! _rest60854_
                             (let ((__tmp61042
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60857_ _rest60854_))))
                               (declare (not safe))
                               (cons _k60856_ __tmp61042)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60851_ __tmp61041))
          _rest60854_)))))
