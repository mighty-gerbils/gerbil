(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1711709196)
  (begin
    (define make-promise
      (lambda (_thunk60746_)
        (if (let () (declare (not safe)) (procedure? _thunk60746_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _thunk60746_)))
        (let () (declare (not safe)) (__make-promise _thunk60746_))))
    (define __make-promise
      (lambda (_thunk60743_)
        (let ()
          (let () (declare (not safe)) (##make-delay-promise _thunk60743_)))))
    (define call-with-parameters
      (lambda (_thunk60740_ . _rest60741_)
        (if (let () (declare (not safe)) (procedure? _thunk60740_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _thunk60740_)))
        (apply __call-with-parameters _thunk60740_ _rest60741_)))
    (define __call-with-parameters
      (lambda (_thunk60687_ . _rest60688_)
        (let ()
          (let* ((_rest6069060701_ _rest60688_)
                 (_E6069360705_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rest6069060701_)))))
            (let ((_K6069560721_
                   (lambda (_rest60716_ _val60717_ _param60718_)
                     (let ((__tmp60758
                            (if (let ()
                                  (declare (not safe))
                                  (null? _rest60716_))
                                _thunk60687_
                                (lambda ()
                                  (apply call-with-parameters
                                         _thunk60687_
                                         _rest60716_)))))
                       (declare (not safe))
                       (##parameterize1 _param60718_ _val60717_ __tmp60758))))
                  (_K6069460710_
                   (lambda () (let () (declare (not safe)) (_thunk60687_)))))
              (let ((_try-match6069260713_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6069060701_))
                           (let () (declare (not safe)) (_thunk60687_))
                           (let () (declare (not safe)) (_E6069360705_))))))
                (if (let () (declare (not safe)) (##pair? _rest6069060701_))
                    (let ((_tl6069760726_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6069060701_)))
                          (_hd6069660724_
                           (let ()
                             (declare (not safe))
                             (##car _rest6069060701_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6069760726_))
                          (let ((_tl6069960733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6069760726_)))
                                (_hd6069860731_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6069760726_))))
                            (let ((_param60729_ _hd6069660724_)
                                  (_val60736_ _hd6069860731_)
                                  (_rest60738_ _tl6069960733_))
                              (let ()
                                (declare (not safe))
                                (_K6069560721_
                                 _rest60738_
                                 _val60736_
                                 _param60729_))))
                          (let () (declare (not safe)) (_E6069360705_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6069260713_)))))))))
    (define with-unwind-protect
      (lambda (_K60684_ _fini60685_)
        (if (let () (declare (not safe)) (procedure? _K60684_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _K60684_)))
        (if (let () (declare (not safe)) (procedure? _fini60685_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _fini60685_)))
        (let ()
          (declare (not safe))
          (__with-unwind-protect _K60684_ _fini60685_))))
    (define __with-unwind-protect
      (lambda (_K60676_ _fini60677_)
        (let ()
          (let* ((_once60680_ '#f)
                 (__tmp60759
                  (lambda ()
                    (declare (not interrupts-enabled))
                    (if _once60680_
                        (let ()
                          (declare (not safe))
                          (error '"Cannot re-enter unwind protected block"))
                        (set! _once60680_ '#t)))))
            (declare (not safe))
            (##dynamic-wind __tmp60759 _K60676_ _fini60677_)))))
    (define keyword-dispatch
      (lambda (_kwt60573_ _K60574_ . _all-args60575_)
        (if _kwt60573_
            (if (let () (declare (not safe)) (vector? _kwt60573_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60573_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60574_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60574_)))
        (let ((_keys60577_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60579_ ((_rest60581_ _all-args60575_)
                          (_args60582_ '#f)
                          (_tail60583_ '#f))
            (let* ((_rest6058460592_ _rest60581_)
                   (_else6058660600_
                    (lambda ()
                      (if _args60582_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60583_ '()))
                            (let ((__tmp60760 (cons _keys60577_ _args60582_)))
                              (declare (not safe))
                              (##apply _K60574_ __tmp60760)))
                          (_K60574_ _keys60577_))))
                   (_K6058860664_
                    (lambda (_hd-rest60603_ _hd60604_)
                      (if (let () (declare (not safe)) (keyword? _hd60604_))
                          (let* ((_hd-rest6060560612_ _hd-rest60603_)
                                 (_E6060760616_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6060560612_))))
                                 (_K6060860624_
                                  (lambda (_rest60619_ _val60620_)
                                    (if _kwt60573_
                                        (let ((_pos60622_
                                               (let ((__tmp60762
                                                      (keyword-hash _hd60604_))
                                                     (__tmp60761
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60573_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp60762
                                                  __tmp60761))))
                                          (if (eq? _hd60604_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _kwt60573_
                                                      _pos60622_)))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60574_
                                                       _hd60604_))))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _keys60577_
                                                _hd60604_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60574_
                                                 _hd60604_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60577_
                                       _hd60604_
                                       _val60620_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60579_
                                       _rest60619_
                                       _args60582_
                                       _tail60583_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6060560612_))
                                (let ((_hd6060960627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6060560612_)))
                                      (_tl6061060629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6060560612_))))
                                  (let* ((_val60632_ _hd6060960627_)
                                         (_rest60634_ _tl6061060629_))
                                    (declare (not safe))
                                    (_K6060860624_ _rest60634_ _val60632_)))
                                (let () (declare (not safe)) (_E6060760616_))))
                          (if (eq? _hd60604_ '#!key)
                              (let* ((_hd-rest6063560642_ _hd-rest60603_)
                                     (_E6063760646_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6063560642_))))
                                     (_K6063860652_
                                      (lambda (_rest60649_ _val60650_)
                                        (if _args60582_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60583_
                                                 _hd-rest60603_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60579_
                                                 _rest60649_
                                                 _args60582_
                                                 _hd-rest60603_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60579_
                                               _rest60649_
                                               _hd-rest60603_
                                               _hd-rest60603_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6063560642_))
                                    (let ((_hd6063960655_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6063560642_)))
                                          (_tl6064060657_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6063560642_))))
                                      (let* ((_val60660_ _hd6063960655_)
                                             (_rest60662_ _tl6064060657_))
                                        (declare (not safe))
                                        (_K6063860652_
                                         _rest60662_
                                         _val60660_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6063760646_))))
                              (if (eq? _hd60604_ '#!rest)
                                  (if _args60582_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60583_
                                           _hd-rest60603_))
                                        (let ((__tmp60763
                                               (cons _keys60577_ _args60582_)))
                                          (declare (not safe))
                                          (##apply _K60574_ __tmp60763)))
                                      (let ((__tmp60764
                                             (cons _keys60577_
                                                   _hd-rest60603_)))
                                        (declare (not safe))
                                        (##apply _K60574_ __tmp60764)))
                                  (if _args60582_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60583_ _rest60581_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60579_
                                           _hd-rest60603_
                                           _args60582_
                                           _rest60581_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60579_
                                         _hd-rest60603_
                                         _rest60581_
                                         _rest60581_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6058460592_))
                  (let ((_hd6058960667_
                         (let ()
                           (declare (not safe))
                           (##car _rest6058460592_)))
                        (_tl6059060669_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6058460592_))))
                    (let* ((_hd60672_ _hd6058960667_)
                           (_hd-rest60674_ _tl6059060669_))
                      (declare (not safe))
                      (_K6058860664_ _hd-rest60674_ _hd60672_)))
                  (let () (declare (not safe)) (_else6058660600_))))))))
    (define keyword-rest
      (lambda (_kwt60565_ . _drop60566_)
        (let ((_rest60568_ '()))
          (let ((__tmp60765
                 (lambda (_k60570_ _v60571_)
                   (if (memq _k60570_ _drop60566_)
                       '#!void
                       (set! _rest60568_
                             (let ((__tmp60766
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60571_ _rest60568_))))
                               (declare (not safe))
                               (cons _k60570_ __tmp60766)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60565_ __tmp60765))
          _rest60568_)))))
