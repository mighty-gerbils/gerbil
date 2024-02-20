(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708387687)
  (begin
    (define make-promise
      (lambda (_thunk60859_)
        (let () (declare (not safe)) (##make-delay-promise _thunk60859_))))
    (define call-with-parameters
      (lambda (_thunk60807_ . _rest60808_)
        (let* ((_rest6080960820_ _rest60808_)
               (_E6081260824_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6080960820_)))))
          (let ((_K6081460840_
                 (lambda (_rest60835_ _val60836_ _param60837_)
                   (let ((__tmp60871
                          (if (let () (declare (not safe)) (null? _rest60835_))
                              _thunk60807_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk60807_
                                       _rest60835_)))))
                     (declare (not safe))
                     (##parameterize1 _param60837_ _val60836_ __tmp60871))))
                (_K6081360829_ (lambda () (_thunk60807_))))
            (let ((_try-match6081160832_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6080960820_))
                         (let () (declare (not safe)) (_thunk60807_))
                         (let () (declare (not safe)) (_E6081260824_))))))
              (if (let () (declare (not safe)) (##pair? _rest6080960820_))
                  (let ((_tl6081660845_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6080960820_)))
                        (_hd6081560843_
                         (let ()
                           (declare (not safe))
                           (##car _rest6080960820_))))
                    (if (let () (declare (not safe)) (##pair? _tl6081660845_))
                        (let ((_tl6081860852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6081660845_)))
                              (_hd6081760850_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6081660845_))))
                          (let ((_param60848_ _hd6081560843_)
                                (_val60855_ _hd6081760850_)
                                (_rest60857_ _tl6081860852_))
                            (let ()
                              (declare (not safe))
                              (_K6081460840_
                               _rest60857_
                               _val60855_
                               _param60848_))))
                        (let () (declare (not safe)) (_E6081260824_))))
                  (let () (declare (not safe)) (_try-match6081160832_))))))))
    (define with-unwind-protect
      (lambda (_K60800_ _fini60801_)
        (let ((_once60803_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once60803_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once60803_ '#t)))
           _K60800_
           _fini60801_))))
    (define keyword-dispatch
      (lambda (_kwt60697_ _K60698_ . _all-args60699_)
        (if _kwt60697_
            (if (let () (declare (not safe)) (vector? _kwt60697_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60697_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60698_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60698_)))
        (let ((_keys60701_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60703_ ((_rest60705_ _all-args60699_)
                          (_args60706_ '#f)
                          (_tail60707_ '#f))
            (let* ((_rest6070860716_ _rest60705_)
                   (_else6071060724_
                    (lambda ()
                      (if _args60706_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60707_ '()))
                            (let ((__tmp60872
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60701_ _args60706_))))
                              (declare (not safe))
                              (##apply _K60698_ __tmp60872)))
                          (_K60698_ _keys60701_))))
                   (_K6071260788_
                    (lambda (_hd-rest60727_ _hd60728_)
                      (if (keyword? _hd60728_)
                          (let* ((_hd-rest6072960736_ _hd-rest60727_)
                                 (_E6073160740_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6072960736_))))
                                 (_K6073260748_
                                  (lambda (_rest60743_ _val60744_)
                                    (if _kwt60697_
                                        (let ((_pos60746_
                                               (let ((__tmp60876
                                                      (keyword-hash _hd60728_))
                                                     (__tmp60875
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60697_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp60876
                                                  __tmp60875))))
                                          (if (let ((__tmp60877
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60697_
                                                        _pos60746_))))
                                                (declare (not safe))
                                                (eq? _hd60728_ __tmp60877))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60698_
                                                       _hd60728_))))
                                        '#!void)
                                    (if (let ((__tmp60878
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60701_
                                                  _hd60728_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp60878 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60698_
                                                 _hd60728_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60701_
                                       _hd60728_
                                       _val60744_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60703_
                                       _rest60743_
                                       _args60706_
                                       _tail60707_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6072960736_))
                                (let ((_hd6073360751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6072960736_)))
                                      (_tl6073460753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6072960736_))))
                                  (let* ((_val60756_ _hd6073360751_)
                                         (_rest60758_ _tl6073460753_))
                                    (declare (not safe))
                                    (_K6073260748_ _rest60758_ _val60756_)))
                                (let () (declare (not safe)) (_E6073160740_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60728_ '#!key))
                              (let* ((_hd-rest6075960766_ _hd-rest60727_)
                                     (_E6076160770_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6075960766_))))
                                     (_K6076260776_
                                      (lambda (_rest60773_ _val60774_)
                                        (if _args60706_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60707_
                                                 _hd-rest60727_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60703_
                                                 _rest60773_
                                                 _args60706_
                                                 _hd-rest60727_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60703_
                                               _rest60773_
                                               _hd-rest60727_
                                               _hd-rest60727_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6075960766_))
                                    (let ((_hd6076360779_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6075960766_)))
                                          (_tl6076460781_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6075960766_))))
                                      (let* ((_val60784_ _hd6076360779_)
                                             (_rest60786_ _tl6076460781_))
                                        (declare (not safe))
                                        (_K6076260776_
                                         _rest60786_
                                         _val60784_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6076160770_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60728_ '#!rest))
                                  (if _args60706_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60707_
                                           _hd-rest60727_))
                                        (let ((__tmp60874
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60701_
                                                       _args60706_))))
                                          (declare (not safe))
                                          (##apply _K60698_ __tmp60874)))
                                      (let ((__tmp60873
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60701_
                                                     _hd-rest60727_))))
                                        (declare (not safe))
                                        (##apply _K60698_ __tmp60873)))
                                  (if _args60706_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60707_ _rest60705_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60703_
                                           _hd-rest60727_
                                           _args60706_
                                           _rest60705_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60703_
                                         _hd-rest60727_
                                         _rest60705_
                                         _rest60705_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6070860716_))
                  (let ((_hd6071360791_
                         (let ()
                           (declare (not safe))
                           (##car _rest6070860716_)))
                        (_tl6071460793_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6070860716_))))
                    (let* ((_hd60796_ _hd6071360791_)
                           (_hd-rest60798_ _tl6071460793_))
                      (declare (not safe))
                      (_K6071260788_ _hd-rest60798_ _hd60796_)))
                  (let () (declare (not safe)) (_else6071060724_))))))))
    (define keyword-rest
      (lambda (_kwt60689_ . _drop60690_)
        (let ((_rest60692_ '()))
          (let ((__tmp60879
                 (lambda (_k60694_ _v60695_)
                   (if (memq _k60694_ _drop60690_)
                       '#!void
                       (set! _rest60692_
                             (let ((__tmp60880
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60695_ _rest60692_))))
                               (declare (not safe))
                               (cons _k60694_ __tmp60880)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60689_ __tmp60879))
          _rest60692_)))))
