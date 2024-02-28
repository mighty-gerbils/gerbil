(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709125254)
  (begin
    (define make-promise
      (lambda (_thunk61428_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61428_))))
    (define call-with-parameters
      (lambda (_thunk61376_ . _rest61377_)
        (let* ((_rest6137861389_ _rest61377_)
               (_E6138161393_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6137861389_)))))
          (let ((_K6138361409_
                 (lambda (_rest61404_ _val61405_ _param61406_)
                   (let ((__tmp61440
                          (if (let () (declare (not safe)) (null? _rest61404_))
                              _thunk61376_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61376_
                                       _rest61404_)))))
                     (declare (not safe))
                     (##parameterize1 _param61406_ _val61405_ __tmp61440))))
                (_K6138261398_ (lambda () (_thunk61376_))))
            (let ((_try-match6138061401_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6137861389_))
                         (let () (declare (not safe)) (_thunk61376_))
                         (let () (declare (not safe)) (_E6138161393_))))))
              (if (let () (declare (not safe)) (##pair? _rest6137861389_))
                  (let ((_tl6138561414_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6137861389_)))
                        (_hd6138461412_
                         (let ()
                           (declare (not safe))
                           (##car _rest6137861389_))))
                    (if (let () (declare (not safe)) (##pair? _tl6138561414_))
                        (let ((_tl6138761421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6138561414_)))
                              (_hd6138661419_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6138561414_))))
                          (let ((_param61417_ _hd6138461412_)
                                (_val61424_ _hd6138661419_)
                                (_rest61426_ _tl6138761421_))
                            (let ()
                              (declare (not safe))
                              (_K6138361409_
                               _rest61426_
                               _val61424_
                               _param61417_))))
                        (let () (declare (not safe)) (_E6138161393_))))
                  (let () (declare (not safe)) (_try-match6138061401_))))))))
    (define with-unwind-protect
      (lambda (_K61369_ _fini61370_)
        (let ((_once61372_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61372_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61372_ '#t)))
           _K61369_
           _fini61370_))))
    (define keyword-dispatch
      (lambda (_kwt61266_ _K61267_ . _all-args61268_)
        (if _kwt61266_
            (if (let () (declare (not safe)) (vector? _kwt61266_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61266_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61267_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61267_)))
        (let ((_keys61270_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61272_ ((_rest61274_ _all-args61268_)
                          (_args61275_ '#f)
                          (_tail61276_ '#f))
            (let* ((_rest6127761285_ _rest61274_)
                   (_else6127961293_
                    (lambda ()
                      (if _args61275_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61276_ '()))
                            (let ((__tmp61441
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61270_ _args61275_))))
                              (declare (not safe))
                              (##apply _K61267_ __tmp61441)))
                          (_K61267_ _keys61270_))))
                   (_K6128161357_
                    (lambda (_hd-rest61296_ _hd61297_)
                      (if (keyword? _hd61297_)
                          (let* ((_hd-rest6129861305_ _hd-rest61296_)
                                 (_E6130061309_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6129861305_))))
                                 (_K6130161317_
                                  (lambda (_rest61312_ _val61313_)
                                    (if _kwt61266_
                                        (let ((_pos61315_
                                               (let ((__tmp61445
                                                      (keyword-hash _hd61297_))
                                                     (__tmp61444
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61266_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61445
                                                  __tmp61444))))
                                          (if (let ((__tmp61446
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61266_
                                                        _pos61315_))))
                                                (declare (not safe))
                                                (eq? _hd61297_ __tmp61446))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61267_
                                                       _hd61297_))))
                                        '#!void)
                                    (if (let ((__tmp61447
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61270_
                                                  _hd61297_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61447 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61267_
                                                 _hd61297_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61270_
                                       _hd61297_
                                       _val61313_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61272_
                                       _rest61312_
                                       _args61275_
                                       _tail61276_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6129861305_))
                                (let ((_hd6130261320_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6129861305_)))
                                      (_tl6130361322_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6129861305_))))
                                  (let* ((_val61325_ _hd6130261320_)
                                         (_rest61327_ _tl6130361322_))
                                    (declare (not safe))
                                    (_K6130161317_ _rest61327_ _val61325_)))
                                (let () (declare (not safe)) (_E6130061309_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61297_ '#!key))
                              (let* ((_hd-rest6132861335_ _hd-rest61296_)
                                     (_E6133061339_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6132861335_))))
                                     (_K6133161345_
                                      (lambda (_rest61342_ _val61343_)
                                        (if _args61275_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61276_
                                                 _hd-rest61296_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61272_
                                                 _rest61342_
                                                 _args61275_
                                                 _hd-rest61296_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61272_
                                               _rest61342_
                                               _hd-rest61296_
                                               _hd-rest61296_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6132861335_))
                                    (let ((_hd6133261348_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6132861335_)))
                                          (_tl6133361350_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6132861335_))))
                                      (let* ((_val61353_ _hd6133261348_)
                                             (_rest61355_ _tl6133361350_))
                                        (declare (not safe))
                                        (_K6133161345_
                                         _rest61355_
                                         _val61353_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6133061339_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61297_ '#!rest))
                                  (if _args61275_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61276_
                                           _hd-rest61296_))
                                        (let ((__tmp61443
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61270_
                                                       _args61275_))))
                                          (declare (not safe))
                                          (##apply _K61267_ __tmp61443)))
                                      (let ((__tmp61442
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61270_
                                                     _hd-rest61296_))))
                                        (declare (not safe))
                                        (##apply _K61267_ __tmp61442)))
                                  (if _args61275_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61276_ _rest61274_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61272_
                                           _hd-rest61296_
                                           _args61275_
                                           _rest61274_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61272_
                                         _hd-rest61296_
                                         _rest61274_
                                         _rest61274_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6127761285_))
                  (let ((_hd6128261360_
                         (let ()
                           (declare (not safe))
                           (##car _rest6127761285_)))
                        (_tl6128361362_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6127761285_))))
                    (let* ((_hd61365_ _hd6128261360_)
                           (_hd-rest61367_ _tl6128361362_))
                      (declare (not safe))
                      (_K6128161357_ _hd-rest61367_ _hd61365_)))
                  (let () (declare (not safe)) (_else6127961293_))))))))
    (define keyword-rest
      (lambda (_kwt61258_ . _drop61259_)
        (let ((_rest61261_ '()))
          (let ((__tmp61448
                 (lambda (_k61263_ _v61264_)
                   (if (memq _k61263_ _drop61259_)
                       '#!void
                       (set! _rest61261_
                             (let ((__tmp61449
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61264_ _rest61261_))))
                               (declare (not safe))
                               (cons _k61263_ __tmp61449)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61258_ __tmp61448))
          _rest61261_)))))
