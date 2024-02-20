(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708451991)
  (begin
    (define make-promise
      (lambda (_thunk58327_)
        (let () (declare (not safe)) (##make-delay-promise _thunk58327_))))
    (define call-with-parameters
      (lambda (_thunk58275_ . _rest58276_)
        (let* ((_rest5827758288_ _rest58276_)
               (_E5828058292_
                (lambda () (error '"No clause matching" _rest5827758288_))))
          (let ((_K5828258308_
                 (lambda (_rest58303_ _val58304_ _param58305_)
                   (let ((__tmp58339
                          (if (let () (declare (not safe)) (null? _rest58303_))
                              _thunk58275_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk58275_
                                       _rest58303_)))))
                     (declare (not safe))
                     (##parameterize1 _param58305_ _val58304_ __tmp58339))))
                (_K5828158297_ (lambda () (_thunk58275_))))
            (let ((_try-match5827958300_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest5827758288_))
                         (let () (declare (not safe)) (_thunk58275_))
                         (let () (declare (not safe)) (_E5828058292_))))))
              (if (let () (declare (not safe)) (##pair? _rest5827758288_))
                  (let ((_tl5828458313_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5827758288_)))
                        (_hd5828358311_
                         (let ()
                           (declare (not safe))
                           (##car _rest5827758288_))))
                    (if (let () (declare (not safe)) (##pair? _tl5828458313_))
                        (let ((_tl5828658320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5828458313_)))
                              (_hd5828558318_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5828458313_))))
                          (let ((_param58316_ _hd5828358311_)
                                (_val58323_ _hd5828558318_)
                                (_rest58325_ _tl5828658320_))
                            (let ()
                              (declare (not safe))
                              (_K5828258308_
                               _rest58325_
                               _val58323_
                               _param58316_))))
                        (let () (declare (not safe)) (_E5828058292_))))
                  (let () (declare (not safe)) (_try-match5827958300_))))))))
    (define with-unwind-protect
      (lambda (_K58268_ _fini58269_)
        (let ((_once58271_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once58271_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once58271_ '#t)))
           _K58268_
           _fini58269_))))
    (define keyword-dispatch
      (lambda (_kwt58165_ _K58166_ . _all-args58167_)
        (if _kwt58165_
            (if (let () (declare (not safe)) (vector? _kwt58165_))
                '#!void
                (error '"expected vector" _kwt58165_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K58166_))
            '#!void
            (error '"expected procedure" _K58166_))
        (let ((_keys58169_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp58171_ ((_rest58173_ _all-args58167_)
                          (_args58174_ '#f)
                          (_tail58175_ '#f))
            (let* ((_rest5817658184_ _rest58173_)
                   (_else5817858192_
                    (lambda ()
                      (if _args58174_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail58175_ '()))
                            (let ((__tmp58340
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys58169_ _args58174_))))
                              (declare (not safe))
                              (##apply _K58166_ __tmp58340)))
                          (_K58166_ _keys58169_))))
                   (_K5818058256_
                    (lambda (_hd-rest58195_ _hd58196_)
                      (if (keyword? _hd58196_)
                          (let* ((_hd-rest5819758204_ _hd-rest58195_)
                                 (_E5819958208_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest5819758204_)))
                                 (_K5820058216_
                                  (lambda (_rest58211_ _val58212_)
                                    (if _kwt58165_
                                        (let ((_pos58214_
                                               (let ((__tmp58342
                                                      (keyword-hash _hd58196_))
                                                     (__tmp58341
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt58165_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp58342
                                                  __tmp58341))))
                                          (if (let ((__tmp58343
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt58165_
                                                        _pos58214_))))
                                                (declare (not safe))
                                                (eq? _hd58196_ __tmp58343))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K58166_
                                                     _hd58196_)))
                                        '#!void)
                                    (if (let ((__tmp58344
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys58169_
                                                  _hd58196_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp58344 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K58166_
                                               _hd58196_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys58169_
                                       _hd58196_
                                       _val58212_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp58171_
                                       _rest58211_
                                       _args58174_
                                       _tail58175_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest5819758204_))
                                (let ((_hd5820158219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest5819758204_)))
                                      (_tl5820258221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest5819758204_))))
                                  (let* ((_val58224_ _hd5820158219_)
                                         (_rest58226_ _tl5820258221_))
                                    (declare (not safe))
                                    (_K5820058216_ _rest58226_ _val58224_)))
                                (let () (declare (not safe)) (_E5819958208_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd58196_ '#!key))
                              (let* ((_hd-rest5822758234_ _hd-rest58195_)
                                     (_E5822958238_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest5822758234_)))
                                     (_K5823058244_
                                      (lambda (_rest58241_ _val58242_)
                                        (if _args58174_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail58175_
                                                 _hd-rest58195_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp58171_
                                                 _rest58241_
                                                 _args58174_
                                                 _hd-rest58195_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp58171_
                                               _rest58241_
                                               _hd-rest58195_
                                               _hd-rest58195_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest5822758234_))
                                    (let ((_hd5823158247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest5822758234_)))
                                          (_tl5823258249_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest5822758234_))))
                                      (let* ((_val58252_ _hd5823158247_)
                                             (_rest58254_ _tl5823258249_))
                                        (declare (not safe))
                                        (_K5823058244_
                                         _rest58254_
                                         _val58252_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E5822958238_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd58196_ '#!rest))
                                  (if _args58174_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail58175_
                                           _hd-rest58195_))
                                        (let ((__tmp58345
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys58169_
                                                       _args58174_))))
                                          (declare (not safe))
                                          (##apply _K58166_ __tmp58345)))
                                      (let ((__tmp58346
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys58169_
                                                     _hd-rest58195_))))
                                        (declare (not safe))
                                        (##apply _K58166_ __tmp58346)))
                                  (if _args58174_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail58175_ _rest58173_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp58171_
                                           _hd-rest58195_
                                           _args58174_
                                           _rest58173_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp58171_
                                         _hd-rest58195_
                                         _rest58173_
                                         _rest58173_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest5817658184_))
                  (let ((_hd5818158259_
                         (let ()
                           (declare (not safe))
                           (##car _rest5817658184_)))
                        (_tl5818258261_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5817658184_))))
                    (let* ((_hd58264_ _hd5818158259_)
                           (_hd-rest58266_ _tl5818258261_))
                      (declare (not safe))
                      (_K5818058256_ _hd-rest58266_ _hd58264_)))
                  (let () (declare (not safe)) (_else5817858192_))))))))
    (define keyword-rest
      (lambda (_kwt58157_ . _drop58158_)
        (let ((_rest58160_ '()))
          (let ((__tmp58347
                 (lambda (_k58162_ _v58163_)
                   (if (memq _k58162_ _drop58158_)
                       '#!void
                       (set! _rest58160_
                             (let ((__tmp58348
                                    (let ()
                                      (declare (not safe))
                                      (cons _v58163_ _rest58160_))))
                               (declare (not safe))
                               (cons _k58162_ __tmp58348)))))))
            (declare (not safe))
            (raw-table-for-each _kwt58157_ __tmp58347))
          _rest58160_)))))
