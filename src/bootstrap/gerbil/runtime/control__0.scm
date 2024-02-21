(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708510100)
  (begin
    (define make-promise
      (lambda (_thunk61069_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61069_))))
    (define call-with-parameters
      (lambda (_thunk61017_ . _rest61018_)
        (let* ((_rest6101961030_ _rest61018_)
               (_E6102261034_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6101961030_)))))
          (let ((_K6102461050_
                 (lambda (_rest61045_ _val61046_ _param61047_)
                   (let ((__tmp61081
                          (if (let () (declare (not safe)) (null? _rest61045_))
                              _thunk61017_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61017_
                                       _rest61045_)))))
                     (declare (not safe))
                     (##parameterize1 _param61047_ _val61046_ __tmp61081))))
                (_K6102361039_ (lambda () (_thunk61017_))))
            (let ((_try-match6102161042_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6101961030_))
                         (let () (declare (not safe)) (_thunk61017_))
                         (let () (declare (not safe)) (_E6102261034_))))))
              (if (let () (declare (not safe)) (##pair? _rest6101961030_))
                  (let ((_tl6102661055_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6101961030_)))
                        (_hd6102561053_
                         (let ()
                           (declare (not safe))
                           (##car _rest6101961030_))))
                    (if (let () (declare (not safe)) (##pair? _tl6102661055_))
                        (let ((_tl6102861062_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6102661055_)))
                              (_hd6102761060_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6102661055_))))
                          (let ((_param61058_ _hd6102561053_)
                                (_val61065_ _hd6102761060_)
                                (_rest61067_ _tl6102861062_))
                            (let ()
                              (declare (not safe))
                              (_K6102461050_
                               _rest61067_
                               _val61065_
                               _param61058_))))
                        (let () (declare (not safe)) (_E6102261034_))))
                  (let () (declare (not safe)) (_try-match6102161042_))))))))
    (define with-unwind-protect
      (lambda (_K61010_ _fini61011_)
        (let ((_once61013_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61013_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61013_ '#t)))
           _K61010_
           _fini61011_))))
    (define keyword-dispatch
      (lambda (_kwt60907_ _K60908_ . _all-args60909_)
        (if _kwt60907_
            (if (let () (declare (not safe)) (vector? _kwt60907_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60907_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60908_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60908_)))
        (let ((_keys60911_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60913_ ((_rest60915_ _all-args60909_)
                          (_args60916_ '#f)
                          (_tail60917_ '#f))
            (let* ((_rest6091860926_ _rest60915_)
                   (_else6092060934_
                    (lambda ()
                      (if _args60916_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60917_ '()))
                            (let ((__tmp61082
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60911_ _args60916_))))
                              (declare (not safe))
                              (##apply _K60908_ __tmp61082)))
                          (_K60908_ _keys60911_))))
                   (_K6092260998_
                    (lambda (_hd-rest60937_ _hd60938_)
                      (if (keyword? _hd60938_)
                          (let* ((_hd-rest6093960946_ _hd-rest60937_)
                                 (_E6094160950_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6093960946_))))
                                 (_K6094260958_
                                  (lambda (_rest60953_ _val60954_)
                                    (if _kwt60907_
                                        (let ((_pos60956_
                                               (let ((__tmp61086
                                                      (keyword-hash _hd60938_))
                                                     (__tmp61085
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60907_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61086
                                                  __tmp61085))))
                                          (if (let ((__tmp61087
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60907_
                                                        _pos60956_))))
                                                (declare (not safe))
                                                (eq? _hd60938_ __tmp61087))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60908_
                                                       _hd60938_))))
                                        '#!void)
                                    (if (let ((__tmp61088
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60911_
                                                  _hd60938_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61088 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60908_
                                                 _hd60938_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60911_
                                       _hd60938_
                                       _val60954_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60913_
                                       _rest60953_
                                       _args60916_
                                       _tail60917_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6093960946_))
                                (let ((_hd6094360961_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6093960946_)))
                                      (_tl6094460963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6093960946_))))
                                  (let* ((_val60966_ _hd6094360961_)
                                         (_rest60968_ _tl6094460963_))
                                    (declare (not safe))
                                    (_K6094260958_ _rest60968_ _val60966_)))
                                (let () (declare (not safe)) (_E6094160950_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60938_ '#!key))
                              (let* ((_hd-rest6096960976_ _hd-rest60937_)
                                     (_E6097160980_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6096960976_))))
                                     (_K6097260986_
                                      (lambda (_rest60983_ _val60984_)
                                        (if _args60916_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60917_
                                                 _hd-rest60937_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60913_
                                                 _rest60983_
                                                 _args60916_
                                                 _hd-rest60937_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60913_
                                               _rest60983_
                                               _hd-rest60937_
                                               _hd-rest60937_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6096960976_))
                                    (let ((_hd6097360989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6096960976_)))
                                          (_tl6097460991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6096960976_))))
                                      (let* ((_val60994_ _hd6097360989_)
                                             (_rest60996_ _tl6097460991_))
                                        (declare (not safe))
                                        (_K6097260986_
                                         _rest60996_
                                         _val60994_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6097160980_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60938_ '#!rest))
                                  (if _args60916_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60917_
                                           _hd-rest60937_))
                                        (let ((__tmp61084
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60911_
                                                       _args60916_))))
                                          (declare (not safe))
                                          (##apply _K60908_ __tmp61084)))
                                      (let ((__tmp61083
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60911_
                                                     _hd-rest60937_))))
                                        (declare (not safe))
                                        (##apply _K60908_ __tmp61083)))
                                  (if _args60916_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60917_ _rest60915_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60913_
                                           _hd-rest60937_
                                           _args60916_
                                           _rest60915_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60913_
                                         _hd-rest60937_
                                         _rest60915_
                                         _rest60915_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6091860926_))
                  (let ((_hd6092361001_
                         (let ()
                           (declare (not safe))
                           (##car _rest6091860926_)))
                        (_tl6092461003_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6091860926_))))
                    (let* ((_hd61006_ _hd6092361001_)
                           (_hd-rest61008_ _tl6092461003_))
                      (declare (not safe))
                      (_K6092260998_ _hd-rest61008_ _hd61006_)))
                  (let () (declare (not safe)) (_else6092060934_))))))))
    (define keyword-rest
      (lambda (_kwt60899_ . _drop60900_)
        (let ((_rest60902_ '()))
          (let ((__tmp61089
                 (lambda (_k60904_ _v60905_)
                   (if (memq _k60904_ _drop60900_)
                       '#!void
                       (set! _rest60902_
                             (let ((__tmp61090
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60905_ _rest60902_))))
                               (declare (not safe))
                               (cons _k60904_ __tmp61090)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60899_ __tmp61089))
          _rest60902_)))))
