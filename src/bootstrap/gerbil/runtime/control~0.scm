(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710715074)
  (begin
    (define make-promise
      (lambda (_thunk61802_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61802_))))
    (define call-with-parameters
      (lambda (_thunk61750_ . _rest61751_)
        (let* ((_rest6175261763_ _rest61751_)
               (_E6175561767_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6175261763_)))))
          (let ((_K6175761783_
                 (lambda (_rest61778_ _val61779_ _param61780_)
                   (let ((__tmp61814
                          (if (let () (declare (not safe)) (null? _rest61778_))
                              _thunk61750_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61750_
                                       _rest61778_)))))
                     (declare (not safe))
                     (##parameterize1 _param61780_ _val61779_ __tmp61814))))
                (_K6175661772_ (lambda () (_thunk61750_))))
            (let ((_try-match6175461775_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6175261763_))
                         (let () (declare (not safe)) (_thunk61750_))
                         (let () (declare (not safe)) (_E6175561767_))))))
              (if (let () (declare (not safe)) (##pair? _rest6175261763_))
                  (let ((_tl6175961788_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6175261763_)))
                        (_hd6175861786_
                         (let ()
                           (declare (not safe))
                           (##car _rest6175261763_))))
                    (if (let () (declare (not safe)) (##pair? _tl6175961788_))
                        (let ((_tl6176161795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6175961788_)))
                              (_hd6176061793_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6175961788_))))
                          (let ((_param61791_ _hd6175861786_)
                                (_val61798_ _hd6176061793_)
                                (_rest61800_ _tl6176161795_))
                            (let ()
                              (declare (not safe))
                              (_K6175761783_
                               _rest61800_
                               _val61798_
                               _param61791_))))
                        (let () (declare (not safe)) (_E6175561767_))))
                  (let () (declare (not safe)) (_try-match6175461775_))))))))
    (define with-unwind-protect
      (lambda (_K61743_ _fini61744_)
        (let ((_once61746_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61746_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61746_ '#t)))
           _K61743_
           _fini61744_))))
    (define keyword-dispatch
      (lambda (_kwt61640_ _K61641_ . _all-args61642_)
        (if _kwt61640_
            (if (let () (declare (not safe)) (vector? _kwt61640_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61640_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61641_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61641_)))
        (let ((_keys61644_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61646_ ((_rest61648_ _all-args61642_)
                          (_args61649_ '#f)
                          (_tail61650_ '#f))
            (let* ((_rest6165161659_ _rest61648_)
                   (_else6165361667_
                    (lambda ()
                      (if _args61649_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61650_ '()))
                            (let ((__tmp61815
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61644_ _args61649_))))
                              (declare (not safe))
                              (##apply _K61641_ __tmp61815)))
                          (_K61641_ _keys61644_))))
                   (_K6165561731_
                    (lambda (_hd-rest61670_ _hd61671_)
                      (if (keyword? _hd61671_)
                          (let* ((_hd-rest6167261679_ _hd-rest61670_)
                                 (_E6167461683_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6167261679_))))
                                 (_K6167561691_
                                  (lambda (_rest61686_ _val61687_)
                                    (if _kwt61640_
                                        (let ((_pos61689_
                                               (let ((__tmp61819
                                                      (keyword-hash _hd61671_))
                                                     (__tmp61818
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61640_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61819
                                                  __tmp61818))))
                                          (if (let ((__tmp61820
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61640_
                                                        _pos61689_))))
                                                (declare (not safe))
                                                (eq? _hd61671_ __tmp61820))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61641_
                                                       _hd61671_))))
                                        '#!void)
                                    (if (let ((__tmp61821
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61644_
                                                  _hd61671_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61821 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61641_
                                                 _hd61671_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61644_
                                       _hd61671_
                                       _val61687_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61646_
                                       _rest61686_
                                       _args61649_
                                       _tail61650_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6167261679_))
                                (let ((_hd6167661694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6167261679_)))
                                      (_tl6167761696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6167261679_))))
                                  (let* ((_val61699_ _hd6167661694_)
                                         (_rest61701_ _tl6167761696_))
                                    (declare (not safe))
                                    (_K6167561691_ _rest61701_ _val61699_)))
                                (let () (declare (not safe)) (_E6167461683_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61671_ '#!key))
                              (let* ((_hd-rest6170261709_ _hd-rest61670_)
                                     (_E6170461713_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6170261709_))))
                                     (_K6170561719_
                                      (lambda (_rest61716_ _val61717_)
                                        (if _args61649_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61650_
                                                 _hd-rest61670_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61646_
                                                 _rest61716_
                                                 _args61649_
                                                 _hd-rest61670_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61646_
                                               _rest61716_
                                               _hd-rest61670_
                                               _hd-rest61670_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6170261709_))
                                    (let ((_hd6170661722_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6170261709_)))
                                          (_tl6170761724_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6170261709_))))
                                      (let* ((_val61727_ _hd6170661722_)
                                             (_rest61729_ _tl6170761724_))
                                        (declare (not safe))
                                        (_K6170561719_
                                         _rest61729_
                                         _val61727_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6170461713_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61671_ '#!rest))
                                  (if _args61649_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61650_
                                           _hd-rest61670_))
                                        (let ((__tmp61817
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61644_
                                                       _args61649_))))
                                          (declare (not safe))
                                          (##apply _K61641_ __tmp61817)))
                                      (let ((__tmp61816
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61644_
                                                     _hd-rest61670_))))
                                        (declare (not safe))
                                        (##apply _K61641_ __tmp61816)))
                                  (if _args61649_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61650_ _rest61648_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61646_
                                           _hd-rest61670_
                                           _args61649_
                                           _rest61648_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61646_
                                         _hd-rest61670_
                                         _rest61648_
                                         _rest61648_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6165161659_))
                  (let ((_hd6165661734_
                         (let ()
                           (declare (not safe))
                           (##car _rest6165161659_)))
                        (_tl6165761736_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6165161659_))))
                    (let* ((_hd61739_ _hd6165661734_)
                           (_hd-rest61741_ _tl6165761736_))
                      (declare (not safe))
                      (_K6165561731_ _hd-rest61741_ _hd61739_)))
                  (let () (declare (not safe)) (_else6165361667_))))))))
    (define keyword-rest
      (lambda (_kwt61632_ . _drop61633_)
        (let ((_rest61635_ '()))
          (let ((__tmp61822
                 (lambda (_k61637_ _v61638_)
                   (if (memq _k61637_ _drop61633_)
                       '#!void
                       (set! _rest61635_
                             (let ((__tmp61823
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61638_ _rest61635_))))
                               (declare (not safe))
                               (cons _k61637_ __tmp61823)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61632_ __tmp61822))
          _rest61635_)))))
