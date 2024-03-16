(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710617600)
  (begin
    (define make-promise
      (lambda (_thunk59140_)
        (let () (declare (not safe)) (##make-delay-promise _thunk59140_))))
    (define call-with-parameters
      (lambda (_thunk59088_ . _rest59089_)
        (let* ((_rest5909059101_ _rest59089_)
               (_E5909359105_
                (lambda () (error '"No clause matching" _rest5909059101_))))
          (let ((_K5909559121_
                 (lambda (_rest59116_ _val59117_ _param59118_)
                   (let ((__tmp59152
                          (if (let () (declare (not safe)) (null? _rest59116_))
                              _thunk59088_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk59088_
                                       _rest59116_)))))
                     (declare (not safe))
                     (##parameterize1 _param59118_ _val59117_ __tmp59152))))
                (_K5909459110_ (lambda () (_thunk59088_))))
            (let ((_try-match5909259113_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest5909059101_))
                         (let () (declare (not safe)) (_thunk59088_))
                         (let () (declare (not safe)) (_E5909359105_))))))
              (if (let () (declare (not safe)) (##pair? _rest5909059101_))
                  (let ((_tl5909759126_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5909059101_)))
                        (_hd5909659124_
                         (let ()
                           (declare (not safe))
                           (##car _rest5909059101_))))
                    (if (let () (declare (not safe)) (##pair? _tl5909759126_))
                        (let ((_tl5909959133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5909759126_)))
                              (_hd5909859131_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5909759126_))))
                          (let ((_param59129_ _hd5909659124_)
                                (_val59136_ _hd5909859131_)
                                (_rest59138_ _tl5909959133_))
                            (let ()
                              (declare (not safe))
                              (_K5909559121_
                               _rest59138_
                               _val59136_
                               _param59129_))))
                        (let () (declare (not safe)) (_E5909359105_))))
                  (let () (declare (not safe)) (_try-match5909259113_))))))))
    (define with-unwind-protect
      (lambda (_K59081_ _fini59082_)
        (let ((_once59084_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once59084_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once59084_ '#t)))
           _K59081_
           _fini59082_))))
    (define keyword-dispatch
      (lambda (_kwt58978_ _K58979_ . _all-args58980_)
        (if _kwt58978_
            (if (let () (declare (not safe)) (vector? _kwt58978_))
                '#!void
                (error '"expected vector" _kwt58978_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K58979_))
            '#!void
            (error '"expected procedure" _K58979_))
        (let ((_keys58982_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp58984_ ((_rest58986_ _all-args58980_)
                          (_args58987_ '#f)
                          (_tail58988_ '#f))
            (let* ((_rest5898958997_ _rest58986_)
                   (_else5899159005_
                    (lambda ()
                      (if _args58987_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail58988_ '()))
                            (let ((__tmp59153
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys58982_ _args58987_))))
                              (declare (not safe))
                              (##apply _K58979_ __tmp59153)))
                          (_K58979_ _keys58982_))))
                   (_K5899359069_
                    (lambda (_hd-rest59008_ _hd59009_)
                      (if (keyword? _hd59009_)
                          (let* ((_hd-rest5901059017_ _hd-rest59008_)
                                 (_E5901259021_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest5901059017_)))
                                 (_K5901359029_
                                  (lambda (_rest59024_ _val59025_)
                                    (if _kwt58978_
                                        (let ((_pos59027_
                                               (let ((__tmp59155
                                                      (keyword-hash _hd59009_))
                                                     (__tmp59154
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt58978_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp59155
                                                  __tmp59154))))
                                          (if (let ((__tmp59156
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt58978_
                                                        _pos59027_))))
                                                (declare (not safe))
                                                (eq? _hd59009_ __tmp59156))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K58979_
                                                     _hd59009_)))
                                        '#!void)
                                    (if (let ((__tmp59157
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys58982_
                                                  _hd59009_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp59157 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K58979_
                                               _hd59009_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys58982_
                                       _hd59009_
                                       _val59025_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp58984_
                                       _rest59024_
                                       _args58987_
                                       _tail58988_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest5901059017_))
                                (let ((_hd5901459032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest5901059017_)))
                                      (_tl5901559034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest5901059017_))))
                                  (let* ((_val59037_ _hd5901459032_)
                                         (_rest59039_ _tl5901559034_))
                                    (declare (not safe))
                                    (_K5901359029_ _rest59039_ _val59037_)))
                                (let () (declare (not safe)) (_E5901259021_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd59009_ '#!key))
                              (let* ((_hd-rest5904059047_ _hd-rest59008_)
                                     (_E5904259051_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest5904059047_)))
                                     (_K5904359057_
                                      (lambda (_rest59054_ _val59055_)
                                        (if _args58987_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail58988_
                                                 _hd-rest59008_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp58984_
                                                 _rest59054_
                                                 _args58987_
                                                 _hd-rest59008_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp58984_
                                               _rest59054_
                                               _hd-rest59008_
                                               _hd-rest59008_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest5904059047_))
                                    (let ((_hd5904459060_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest5904059047_)))
                                          (_tl5904559062_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest5904059047_))))
                                      (let* ((_val59065_ _hd5904459060_)
                                             (_rest59067_ _tl5904559062_))
                                        (declare (not safe))
                                        (_K5904359057_
                                         _rest59067_
                                         _val59065_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E5904259051_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd59009_ '#!rest))
                                  (if _args58987_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail58988_
                                           _hd-rest59008_))
                                        (let ((__tmp59158
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys58982_
                                                       _args58987_))))
                                          (declare (not safe))
                                          (##apply _K58979_ __tmp59158)))
                                      (let ((__tmp59159
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys58982_
                                                     _hd-rest59008_))))
                                        (declare (not safe))
                                        (##apply _K58979_ __tmp59159)))
                                  (if _args58987_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail58988_ _rest58986_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp58984_
                                           _hd-rest59008_
                                           _args58987_
                                           _rest58986_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp58984_
                                         _hd-rest59008_
                                         _rest58986_
                                         _rest58986_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest5898958997_))
                  (let ((_hd5899459072_
                         (let ()
                           (declare (not safe))
                           (##car _rest5898958997_)))
                        (_tl5899559074_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5898958997_))))
                    (let* ((_hd59077_ _hd5899459072_)
                           (_hd-rest59079_ _tl5899559074_))
                      (declare (not safe))
                      (_K5899359069_ _hd-rest59079_ _hd59077_)))
                  (let () (declare (not safe)) (_else5899159005_))))))))
    (define keyword-rest
      (lambda (_kwt58970_ . _drop58971_)
        (let ((_rest58973_ '()))
          (let ((__tmp59160
                 (lambda (_k58975_ _v58976_)
                   (if (memq _k58975_ _drop58971_)
                       '#!void
                       (set! _rest58973_
                             (let ((__tmp59161
                                    (let ()
                                      (declare (not safe))
                                      (cons _v58976_ _rest58973_))))
                               (declare (not safe))
                               (cons _k58975_ __tmp59161)))))))
            (declare (not safe))
            (raw-table-for-each _kwt58970_ __tmp59160))
          _rest58973_)))))
