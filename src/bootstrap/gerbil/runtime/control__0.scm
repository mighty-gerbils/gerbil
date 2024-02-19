(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708343715)
  (begin
    (define make-promise
      (lambda (_thunk60847_)
        (let () (declare (not safe)) (##make-delay-promise _thunk60847_))))
    (define call-with-parameters
      (lambda (_thunk60795_ . _rest60796_)
        (let* ((_rest6079760808_ _rest60796_)
               (_E6080060812_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6079760808_)))))
          (let ((_K6080260828_
                 (lambda (_rest60823_ _val60824_ _param60825_)
                   (let ((__tmp60859
                          (if (let () (declare (not safe)) (null? _rest60823_))
                              _thunk60795_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk60795_
                                       _rest60823_)))))
                     (declare (not safe))
                     (##parameterize1 _param60825_ _val60824_ __tmp60859))))
                (_K6080160817_ (lambda () (_thunk60795_))))
            (let ((_try-match6079960820_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6079760808_))
                         (let () (declare (not safe)) (_thunk60795_))
                         (let () (declare (not safe)) (_E6080060812_))))))
              (if (let () (declare (not safe)) (##pair? _rest6079760808_))
                  (let ((_tl6080460833_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6079760808_)))
                        (_hd6080360831_
                         (let ()
                           (declare (not safe))
                           (##car _rest6079760808_))))
                    (if (let () (declare (not safe)) (##pair? _tl6080460833_))
                        (let ((_tl6080660840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6080460833_)))
                              (_hd6080560838_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6080460833_))))
                          (let ((_param60836_ _hd6080360831_)
                                (_val60843_ _hd6080560838_)
                                (_rest60845_ _tl6080660840_))
                            (let ()
                              (declare (not safe))
                              (_K6080260828_
                               _rest60845_
                               _val60843_
                               _param60836_))))
                        (let () (declare (not safe)) (_E6080060812_))))
                  (let () (declare (not safe)) (_try-match6079960820_))))))))
    (define with-unwind-protect
      (lambda (_K60788_ _fini60789_)
        (let ((_once60791_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once60791_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once60791_ '#t)))
           _K60788_
           _fini60789_))))
    (define keyword-dispatch
      (lambda (_kwt60685_ _K60686_ . _all-args60687_)
        (if _kwt60685_
            (if (let () (declare (not safe)) (vector? _kwt60685_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt60685_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K60686_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K60686_)))
        (let ((_keys60689_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp60691_ ((_rest60693_ _all-args60687_)
                          (_args60694_ '#f)
                          (_tail60695_ '#f))
            (let* ((_rest6069660704_ _rest60693_)
                   (_else6069860712_
                    (lambda ()
                      (if _args60694_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail60695_ '()))
                            (let ((__tmp60860
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys60689_ _args60694_))))
                              (declare (not safe))
                              (##apply _K60686_ __tmp60860)))
                          (_K60686_ _keys60689_))))
                   (_K6070060776_
                    (lambda (_hd-rest60715_ _hd60716_)
                      (if (keyword? _hd60716_)
                          (let* ((_hd-rest6071760724_ _hd-rest60715_)
                                 (_E6071960728_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6071760724_))))
                                 (_K6072060736_
                                  (lambda (_rest60731_ _val60732_)
                                    (if _kwt60685_
                                        (let ((_pos60734_
                                               (let ((__tmp60864
                                                      (keyword-hash _hd60716_))
                                                     (__tmp60863
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt60685_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp60864
                                                  __tmp60863))))
                                          (if (let ((__tmp60865
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt60685_
                                                        _pos60734_))))
                                                (declare (not safe))
                                                (eq? _hd60716_ __tmp60865))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K60686_
                                                       _hd60716_))))
                                        '#!void)
                                    (if (let ((__tmp60866
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys60689_
                                                  _hd60716_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp60866 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K60686_
                                                 _hd60716_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys60689_
                                       _hd60716_
                                       _val60732_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp60691_
                                       _rest60731_
                                       _args60694_
                                       _tail60695_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6071760724_))
                                (let ((_hd6072160739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6071760724_)))
                                      (_tl6072260741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6071760724_))))
                                  (let* ((_val60744_ _hd6072160739_)
                                         (_rest60746_ _tl6072260741_))
                                    (declare (not safe))
                                    (_K6072060736_ _rest60746_ _val60744_)))
                                (let () (declare (not safe)) (_E6071960728_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd60716_ '#!key))
                              (let* ((_hd-rest6074760754_ _hd-rest60715_)
                                     (_E6074960758_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6074760754_))))
                                     (_K6075060764_
                                      (lambda (_rest60761_ _val60762_)
                                        (if _args60694_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail60695_
                                                 _hd-rest60715_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp60691_
                                                 _rest60761_
                                                 _args60694_
                                                 _hd-rest60715_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp60691_
                                               _rest60761_
                                               _hd-rest60715_
                                               _hd-rest60715_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6074760754_))
                                    (let ((_hd6075160767_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6074760754_)))
                                          (_tl6075260769_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6074760754_))))
                                      (let* ((_val60772_ _hd6075160767_)
                                             (_rest60774_ _tl6075260769_))
                                        (declare (not safe))
                                        (_K6075060764_
                                         _rest60774_
                                         _val60772_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6074960758_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd60716_ '#!rest))
                                  (if _args60694_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail60695_
                                           _hd-rest60715_))
                                        (let ((__tmp60862
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys60689_
                                                       _args60694_))))
                                          (declare (not safe))
                                          (##apply _K60686_ __tmp60862)))
                                      (let ((__tmp60861
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys60689_
                                                     _hd-rest60715_))))
                                        (declare (not safe))
                                        (##apply _K60686_ __tmp60861)))
                                  (if _args60694_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail60695_ _rest60693_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp60691_
                                           _hd-rest60715_
                                           _args60694_
                                           _rest60693_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp60691_
                                         _hd-rest60715_
                                         _rest60693_
                                         _rest60693_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6069660704_))
                  (let ((_hd6070160779_
                         (let ()
                           (declare (not safe))
                           (##car _rest6069660704_)))
                        (_tl6070260781_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6069660704_))))
                    (let* ((_hd60784_ _hd6070160779_)
                           (_hd-rest60786_ _tl6070260781_))
                      (declare (not safe))
                      (_K6070060776_ _hd-rest60786_ _hd60784_)))
                  (let () (declare (not safe)) (_else6069860712_))))))))
    (define keyword-rest
      (lambda (_kwt60677_ . _drop60678_)
        (let ((_rest60680_ '()))
          (let ((__tmp60867
                 (lambda (_k60682_ _v60683_)
                   (if (memq _k60682_ _drop60678_)
                       '#!void
                       (set! _rest60680_
                             (let ((__tmp60868
                                    (let ()
                                      (declare (not safe))
                                      (cons _v60683_ _rest60680_))))
                               (declare (not safe))
                               (cons _k60682_ __tmp60868)))))))
            (declare (not safe))
            (raw-table-for-each _kwt60677_ __tmp60867))
          _rest60680_)))))
