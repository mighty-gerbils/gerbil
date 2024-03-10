(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710064745)
  (begin
    (define make-promise
      (lambda (_thunk58399_)
        (let () (declare (not safe)) (##make-delay-promise _thunk58399_))))
    (define call-with-parameters
      (lambda (_thunk58347_ . _rest58348_)
        (let* ((_rest5834958360_ _rest58348_)
               (_E5835258364_
                (lambda () (error '"No clause matching" _rest5834958360_))))
          (let ((_K5835458380_
                 (lambda (_rest58375_ _val58376_ _param58377_)
                   (let ((__tmp58411
                          (if (let () (declare (not safe)) (null? _rest58375_))
                              _thunk58347_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk58347_
                                       _rest58375_)))))
                     (declare (not safe))
                     (##parameterize1 _param58377_ _val58376_ __tmp58411))))
                (_K5835358369_ (lambda () (_thunk58347_))))
            (let ((_try-match5835158372_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest5834958360_))
                         (let () (declare (not safe)) (_thunk58347_))
                         (let () (declare (not safe)) (_E5835258364_))))))
              (if (let () (declare (not safe)) (##pair? _rest5834958360_))
                  (let ((_tl5835658385_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5834958360_)))
                        (_hd5835558383_
                         (let ()
                           (declare (not safe))
                           (##car _rest5834958360_))))
                    (if (let () (declare (not safe)) (##pair? _tl5835658385_))
                        (let ((_tl5835858392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5835658385_)))
                              (_hd5835758390_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5835658385_))))
                          (let ((_param58388_ _hd5835558383_)
                                (_val58395_ _hd5835758390_)
                                (_rest58397_ _tl5835858392_))
                            (let ()
                              (declare (not safe))
                              (_K5835458380_
                               _rest58397_
                               _val58395_
                               _param58388_))))
                        (let () (declare (not safe)) (_E5835258364_))))
                  (let () (declare (not safe)) (_try-match5835158372_))))))))
    (define with-unwind-protect
      (lambda (_K58340_ _fini58341_)
        (let ((_once58343_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once58343_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once58343_ '#t)))
           _K58340_
           _fini58341_))))
    (define keyword-dispatch
      (lambda (_kwt58237_ _K58238_ . _all-args58239_)
        (if _kwt58237_
            (if (let () (declare (not safe)) (vector? _kwt58237_))
                '#!void
                (error '"expected vector" _kwt58237_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K58238_))
            '#!void
            (error '"expected procedure" _K58238_))
        (let ((_keys58241_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp58243_ ((_rest58245_ _all-args58239_)
                          (_args58246_ '#f)
                          (_tail58247_ '#f))
            (let* ((_rest5824858256_ _rest58245_)
                   (_else5825058264_
                    (lambda ()
                      (if _args58246_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail58247_ '()))
                            (let ((__tmp58412
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys58241_ _args58246_))))
                              (declare (not safe))
                              (##apply _K58238_ __tmp58412)))
                          (_K58238_ _keys58241_))))
                   (_K5825258328_
                    (lambda (_hd-rest58267_ _hd58268_)
                      (if (keyword? _hd58268_)
                          (let* ((_hd-rest5826958276_ _hd-rest58267_)
                                 (_E5827158280_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest5826958276_)))
                                 (_K5827258288_
                                  (lambda (_rest58283_ _val58284_)
                                    (if _kwt58237_
                                        (let ((_pos58286_
                                               (let ((__tmp58414
                                                      (keyword-hash _hd58268_))
                                                     (__tmp58413
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt58237_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp58414
                                                  __tmp58413))))
                                          (if (let ((__tmp58415
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt58237_
                                                        _pos58286_))))
                                                (declare (not safe))
                                                (eq? _hd58268_ __tmp58415))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K58238_
                                                     _hd58268_)))
                                        '#!void)
                                    (if (let ((__tmp58416
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys58241_
                                                  _hd58268_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp58416 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K58238_
                                               _hd58268_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys58241_
                                       _hd58268_
                                       _val58284_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp58243_
                                       _rest58283_
                                       _args58246_
                                       _tail58247_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest5826958276_))
                                (let ((_hd5827358291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest5826958276_)))
                                      (_tl5827458293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest5826958276_))))
                                  (let* ((_val58296_ _hd5827358291_)
                                         (_rest58298_ _tl5827458293_))
                                    (declare (not safe))
                                    (_K5827258288_ _rest58298_ _val58296_)))
                                (let () (declare (not safe)) (_E5827158280_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd58268_ '#!key))
                              (let* ((_hd-rest5829958306_ _hd-rest58267_)
                                     (_E5830158310_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest5829958306_)))
                                     (_K5830258316_
                                      (lambda (_rest58313_ _val58314_)
                                        (if _args58246_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail58247_
                                                 _hd-rest58267_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp58243_
                                                 _rest58313_
                                                 _args58246_
                                                 _hd-rest58267_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp58243_
                                               _rest58313_
                                               _hd-rest58267_
                                               _hd-rest58267_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest5829958306_))
                                    (let ((_hd5830358319_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest5829958306_)))
                                          (_tl5830458321_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest5829958306_))))
                                      (let* ((_val58324_ _hd5830358319_)
                                             (_rest58326_ _tl5830458321_))
                                        (declare (not safe))
                                        (_K5830258316_
                                         _rest58326_
                                         _val58324_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E5830158310_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd58268_ '#!rest))
                                  (if _args58246_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail58247_
                                           _hd-rest58267_))
                                        (let ((__tmp58417
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys58241_
                                                       _args58246_))))
                                          (declare (not safe))
                                          (##apply _K58238_ __tmp58417)))
                                      (let ((__tmp58418
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys58241_
                                                     _hd-rest58267_))))
                                        (declare (not safe))
                                        (##apply _K58238_ __tmp58418)))
                                  (if _args58246_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail58247_ _rest58245_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp58243_
                                           _hd-rest58267_
                                           _args58246_
                                           _rest58245_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp58243_
                                         _hd-rest58267_
                                         _rest58245_
                                         _rest58245_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest5824858256_))
                  (let ((_hd5825358331_
                         (let ()
                           (declare (not safe))
                           (##car _rest5824858256_)))
                        (_tl5825458333_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5824858256_))))
                    (let* ((_hd58336_ _hd5825358331_)
                           (_hd-rest58338_ _tl5825458333_))
                      (declare (not safe))
                      (_K5825258328_ _hd-rest58338_ _hd58336_)))
                  (let () (declare (not safe)) (_else5825058264_))))))))
    (define keyword-rest
      (lambda (_kwt58229_ . _drop58230_)
        (let ((_rest58232_ '()))
          (let ((__tmp58419
                 (lambda (_k58234_ _v58235_)
                   (if (memq _k58234_ _drop58230_)
                       '#!void
                       (set! _rest58232_
                             (let ((__tmp58420
                                    (let ()
                                      (declare (not safe))
                                      (cons _v58235_ _rest58232_))))
                               (declare (not safe))
                               (cons _k58234_ __tmp58420)))))))
            (declare (not safe))
            (raw-table-for-each _kwt58229_ __tmp58419))
          _rest58232_)))))
