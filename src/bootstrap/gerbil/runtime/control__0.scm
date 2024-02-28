(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709111635)
  (begin
    (define make-promise
      (lambda (_thunk61073_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61073_))))
    (define call-with-parameters
      (lambda (_thunk61021_ . _rest61022_)
        (let* ((_rest6102361034_ _rest61022_)
               (_E6102661038_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6102361034_)))))
          (let ((_K6102861054_
                 (lambda (_rest61049_ _val61050_ _param61051_)
                   (let ((__tmp61085
                          (if (let () (declare (not safe)) (null? _rest61049_))
                              _thunk61021_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61021_
                                       _rest61049_)))))
                     (declare (not safe))
                     (##parameterize1 _param61051_ _val61050_ __tmp61085))))
                (_K6102761043_ (lambda () (_thunk61021_))))
            (let ((_try-match6102561046_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6102361034_))
                         (let () (declare (not safe)) (_thunk61021_))
                         (let () (declare (not safe)) (_E6102661038_))))))
              (if (let () (declare (not safe)) (##pair? _rest6102361034_))
                  (let ((_tl6103061059_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6102361034_)))
                        (_hd6102961057_
                         (let ()
                           (declare (not safe))
                           (##car _rest6102361034_))))
                    (if (let () (declare (not safe)) (##pair? _tl6103061059_))
                        (let ((_tl6103261066_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6103061059_)))
                              (_hd6103161064_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6103061059_))))
                          (let ((_param61062_ _hd6102961057_)
                                (_val61069_ _hd6103161064_)
                                (_rest61071_ _tl6103261066_))
                            (let ()
                              (declare (not safe))
                              (_K6102861054_
                               _rest61071_
                               _val61069_
                               _param61062_))))
                        (let () (declare (not safe)) (_E6102661038_))))
                  (let () (declare (not safe)) (_try-match6102561046_))))))))
    (define with-unwind-protect
      (lambda (_K61014_ _fini61015_)
        (let ((_once61017_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61017_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61017_ '#t)))
           _K61014_
           _fini61015_))))
    (define keyword-dispatch
      (lambda (_kwt60911_ _K60912_ . _all-args60913_)
        (if _kwt60911_
            (if (let () (declare (not safe)) (vector? _kwt60911_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60911_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60912_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60912_)))
        (let ((_keys60915_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60917_ ((_rest60919_ _all-args60913_)
                          (_args60920_ '#f)
                          (_tail60921_ '#f))
            (let* ((_rest6092260930_ _rest60919_)
                   (_else6092460938_
                    (lambda ()
                      (if _args60920_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60921_ '()))
                            (let ((__tmp61086
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60915_ _args60920_))))
                              (declare (not safe))
                              (##apply _K60912_ __tmp61086)))
                          (_K60912_ _keys60915_))))
                   (_K6092661002_
                    (lambda (_hd-rest60941_ _hd60942_)
                      (if (keyword? _hd60942_)
                          (let* ((_hd-rest6094360950_ _hd-rest60941_)
                                 (_E6094560954_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6094360950_))))
                                 (_K6094660962_
                                  (lambda (_rest60957_ _val60958_)
                                    (if _kwt60911_
                                        (let ((_pos60960_
                                               (let ((__tmp61090
                                                      (keyword-hash _hd60942_))
                                                     (__tmp61089
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60911_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61090
                                                  __tmp61089))))
                                          (if (let ((__tmp61091
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60911_
                                                        _pos60960_))))
                                                (declare (not safe))
                                                (eq? _hd60942_ __tmp61091))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60912_
                                                       _hd60942_))))
                                        '#!void)
                                    (if (let ((__tmp61092
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60915_
                                                  _hd60942_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61092 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60912_
                                                 _hd60942_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60915_
                                       _hd60942_
                                       _val60958_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60917_
                                       _rest60957_
                                       _args60920_
                                       _tail60921_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6094360950_))
                                (let ((_hd6094760965_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6094360950_)))
                                      (_tl6094860967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6094360950_))))
                                  (let* ((_val60970_ _hd6094760965_)
                                         (_rest60972_ _tl6094860967_))
                                    (declare (not safe))
                                    (_K6094660962_ _rest60972_ _val60970_)))
                                (let () (declare (not safe)) (_E6094560954_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60942_ '#!key))
                              (let* ((_hd-rest6097360980_ _hd-rest60941_)
                                     (_E6097560984_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6097360980_))))
                                     (_K6097660990_
                                      (lambda (_rest60987_ _val60988_)
                                        (if _args60920_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60921_
                                                 _hd-rest60941_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60917_
                                                 _rest60987_
                                                 _args60920_
                                                 _hd-rest60941_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60917_
                                               _rest60987_
                                               _hd-rest60941_
                                               _hd-rest60941_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6097360980_))
                                    (let ((_hd6097760993_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6097360980_)))
                                          (_tl6097860995_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6097360980_))))
                                      (let* ((_val60998_ _hd6097760993_)
                                             (_rest61000_ _tl6097860995_))
                                        (declare (not safe))
                                        (_K6097660990_
                                         _rest61000_
                                         _val60998_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6097560984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60942_ '#!rest))
                                  (if _args60920_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60921_
                                           _hd-rest60941_))
                                        (let ((__tmp61088
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60915_
                                                       _args60920_))))
                                          (declare (not safe))
                                          (##apply _K60912_ __tmp61088)))
                                      (let ((__tmp61087
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60915_
                                                     _hd-rest60941_))))
                                        (declare (not safe))
                                        (##apply _K60912_ __tmp61087)))
                                  (if _args60920_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60921_ _rest60919_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60917_
                                           _hd-rest60941_
                                           _args60920_
                                           _rest60919_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60917_
                                         _hd-rest60941_
                                         _rest60919_
                                         _rest60919_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6092260930_))
                  (let ((_hd6092761005_
                         (let ()
                           (declare (not safe))
                           (##car _rest6092260930_)))
                        (_tl6092861007_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6092260930_))))
                    (let* ((_hd61010_ _hd6092761005_)
                           (_hd-rest61012_ _tl6092861007_))
                      (declare (not safe))
                      (_K6092661002_ _hd-rest61012_ _hd61010_)))
                  (let () (declare (not safe)) (_else6092460938_))))))))
    (define keyword-rest
      (lambda (_kwt60903_ . _drop60904_)
        (let ((_rest60906_ '()))
          (let ((__tmp61093
                 (lambda (_k60908_ _v60909_)
                   (if (memq _k60908_ _drop60904_)
                       '#!void
                       (set! _rest60906_
                             (let ((__tmp61094
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60909_ _rest60906_))))
                               (declare (not safe))
                               (cons _k60908_ __tmp61094)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60903_ __tmp61093))
          _rest60906_)))))
