(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710781148)
  (begin
    (define make-promise
      (lambda (_thunk62139_)
        (let () (declare (not safe)) (##make-delay-promise _thunk62139_))))
    (define call-with-parameters
      (lambda (_thunk62087_ . _rest62088_)
        (let* ((_rest6208962100_ _rest62088_)
               (_E6209262104_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6208962100_)))))
          (let ((_K6209462120_
                 (lambda (_rest62115_ _val62116_ _param62117_)
                   (let ((__tmp62151
                          (if (let () (declare (not safe)) (null? _rest62115_))
                              _thunk62087_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk62087_
                                       _rest62115_)))))
                     (declare (not safe))
                     (##parameterize1 _param62117_ _val62116_ __tmp62151))))
                (_K6209362109_ (lambda () (_thunk62087_))))
            (let ((_try-match6209162112_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6208962100_))
                         (let () (declare (not safe)) (_thunk62087_))
                         (let () (declare (not safe)) (_E6209262104_))))))
              (if (let () (declare (not safe)) (##pair? _rest6208962100_))
                  (let ((_tl6209662125_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6208962100_)))
                        (_hd6209562123_
                         (let ()
                           (declare (not safe))
                           (##car _rest6208962100_))))
                    (if (let () (declare (not safe)) (##pair? _tl6209662125_))
                        (let ((_tl6209862132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6209662125_)))
                              (_hd6209762130_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6209662125_))))
                          (let ((_param62128_ _hd6209562123_)
                                (_val62135_ _hd6209762130_)
                                (_rest62137_ _tl6209862132_))
                            (let ()
                              (declare (not safe))
                              (_K6209462120_
                               _rest62137_
                               _val62135_
                               _param62128_))))
                        (let () (declare (not safe)) (_E6209262104_))))
                  (let () (declare (not safe)) (_try-match6209162112_))))))))
    (define with-unwind-protect
      (lambda (_K62080_ _fini62081_)
        (let ((_once62083_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once62083_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once62083_ '#t)))
           _K62080_
           _fini62081_))))
    (define keyword-dispatch
      (lambda (_kwt61977_ _K61978_ . _all-args61979_)
        (if _kwt61977_
            (if (let () (declare (not safe)) (vector? _kwt61977_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61977_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61978_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61978_)))
        (let ((_keys61981_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61983_ ((_rest61985_ _all-args61979_)
                          (_args61986_ '#f)
                          (_tail61987_ '#f))
            (let* ((_rest6198861996_ _rest61985_)
                   (_else6199062004_
                    (lambda ()
                      (if _args61986_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61987_ '()))
                            (let ((__tmp62152
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61981_ _args61986_))))
                              (declare (not safe))
                              (##apply _K61978_ __tmp62152)))
                          (_K61978_ _keys61981_))))
                   (_K6199262068_
                    (lambda (_hd-rest62007_ _hd62008_)
                      (if (keyword? _hd62008_)
                          (let* ((_hd-rest6200962016_ _hd-rest62007_)
                                 (_E6201162020_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6200962016_))))
                                 (_K6201262028_
                                  (lambda (_rest62023_ _val62024_)
                                    (if _kwt61977_
                                        (let ((_pos62026_
                                               (let ((__tmp62156
                                                      (keyword-hash _hd62008_))
                                                     (__tmp62155
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61977_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp62156
                                                  __tmp62155))))
                                          (if (let ((__tmp62157
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61977_
                                                        _pos62026_))))
                                                (declare (not safe))
                                                (eq? _hd62008_ __tmp62157))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61978_
                                                       _hd62008_))))
                                        '#!void)
                                    (if (let ((__tmp62158
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61981_
                                                  _hd62008_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp62158 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61978_
                                                 _hd62008_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61981_
                                       _hd62008_
                                       _val62024_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61983_
                                       _rest62023_
                                       _args61986_
                                       _tail61987_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6200962016_))
                                (let ((_hd6201362031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6200962016_)))
                                      (_tl6201462033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6200962016_))))
                                  (let* ((_val62036_ _hd6201362031_)
                                         (_rest62038_ _tl6201462033_))
                                    (declare (not safe))
                                    (_K6201262028_ _rest62038_ _val62036_)))
                                (let () (declare (not safe)) (_E6201162020_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd62008_ '#!key))
                              (let* ((_hd-rest6203962046_ _hd-rest62007_)
                                     (_E6204162050_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6203962046_))))
                                     (_K6204262056_
                                      (lambda (_rest62053_ _val62054_)
                                        (if _args61986_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61987_
                                                 _hd-rest62007_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61983_
                                                 _rest62053_
                                                 _args61986_
                                                 _hd-rest62007_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61983_
                                               _rest62053_
                                               _hd-rest62007_
                                               _hd-rest62007_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6203962046_))
                                    (let ((_hd6204362059_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6203962046_)))
                                          (_tl6204462061_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6203962046_))))
                                      (let* ((_val62064_ _hd6204362059_)
                                             (_rest62066_ _tl6204462061_))
                                        (declare (not safe))
                                        (_K6204262056_
                                         _rest62066_
                                         _val62064_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6204162050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd62008_ '#!rest))
                                  (if _args61986_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61987_
                                           _hd-rest62007_))
                                        (let ((__tmp62154
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61981_
                                                       _args61986_))))
                                          (declare (not safe))
                                          (##apply _K61978_ __tmp62154)))
                                      (let ((__tmp62153
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61981_
                                                     _hd-rest62007_))))
                                        (declare (not safe))
                                        (##apply _K61978_ __tmp62153)))
                                  (if _args61986_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61987_ _rest61985_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61983_
                                           _hd-rest62007_
                                           _args61986_
                                           _rest61985_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61983_
                                         _hd-rest62007_
                                         _rest61985_
                                         _rest61985_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6198861996_))
                  (let ((_hd6199362071_
                         (let ()
                           (declare (not safe))
                           (##car _rest6198861996_)))
                        (_tl6199462073_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6198861996_))))
                    (let* ((_hd62076_ _hd6199362071_)
                           (_hd-rest62078_ _tl6199462073_))
                      (declare (not safe))
                      (_K6199262068_ _hd-rest62078_ _hd62076_)))
                  (let () (declare (not safe)) (_else6199062004_))))))))
    (define keyword-rest
      (lambda (_kwt61969_ . _drop61970_)
        (let ((_rest61972_ '()))
          (let ((__tmp62159
                 (lambda (_k61974_ _v61975_)
                   (if (memq _k61974_ _drop61970_)
                       '#!void
                       (set! _rest61972_
                             (let ((__tmp62160
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61975_ _rest61972_))))
                               (declare (not safe))
                               (cons _k61974_ __tmp62160)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61969_ __tmp62159))
          _rest61972_)))))
