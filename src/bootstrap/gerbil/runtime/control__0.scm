(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708247272)
  (begin
    (define make-promise
      (lambda (_thunk69851_)
        (let () (declare (not safe)) (##make-delay-promise _thunk69851_))))
    (define call-with-parameters
      (lambda (_thunk69799_ . _rest69800_)
        (let* ((_rest6980169812_ _rest69800_)
               (_E6980469816_
                (lambda () (error '"No clause matching" _rest6980169812_))))
          (let ((_K6980669832_
                 (lambda (_rest69827_ _val69828_ _param69829_)
                   (let ((__tmp73930
                          (if (let () (declare (not safe)) (null? _rest69827_))
                              _thunk69799_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk69799_
                                       _rest69827_)))))
                     (declare (not safe))
                     (##parameterize1 _param69829_ _val69828_ __tmp73930))))
                (_K6980569821_ (lambda () (_thunk69799_))))
            (let ((_try-match6980369824_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6980169812_))
                         (let () (declare (not safe)) (_thunk69799_))
                         (let () (declare (not safe)) (_E6980469816_))))))
              (if (let () (declare (not safe)) (##pair? _rest6980169812_))
                  (let ((_tl6980869837_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6980169812_)))
                        (_hd6980769835_
                         (let ()
                           (declare (not safe))
                           (##car _rest6980169812_))))
                    (if (let () (declare (not safe)) (##pair? _tl6980869837_))
                        (let ((_tl6981069844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6980869837_)))
                              (_hd6980969842_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6980869837_))))
                          (let ((_param69840_ _hd6980769835_)
                                (_val69847_ _hd6980969842_)
                                (_rest69849_ _tl6981069844_))
                            (let ()
                              (declare (not safe))
                              (_K6980669832_
                               _rest69849_
                               _val69847_
                               _param69840_))))
                        (let () (declare (not safe)) (_E6980469816_))))
                  (let () (declare (not safe)) (_try-match6980369824_))))))))
    (define with-unwind-protect
      (lambda (_K69792_ _fini69793_)
        (let ((_once69795_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once69795_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once69795_ '#t)))
           _K69792_
           _fini69793_))))
    (define keyword-dispatch
      (lambda (_kwt69689_ _K69690_ . _all-args69691_)
        (if _kwt69689_
            (if (let () (declare (not safe)) (vector? _kwt69689_))
                '#!void
                (error '"expected vector" _kwt69689_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K69690_))
            '#!void
            (error '"expected procedure" _K69690_))
        (let ((_keys69693_
               (let () (declare (not safe)) (make-symbolic-table '#f '0))))
          (let _lp69695_ ((_rest69697_ _all-args69691_)
                          (_args69698_ '#f)
                          (_tail69699_ '#f))
            (let* ((_rest6970069708_ _rest69697_)
                   (_else6970269716_
                    (lambda ()
                      (if _args69698_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail69699_ '()))
                            (let ((__tmp73931
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys69693_ _args69698_))))
                              (declare (not safe))
                              (##apply _K69690_ __tmp73931)))
                          (_K69690_ _keys69693_))))
                   (_K6970469780_
                    (lambda (_hd-rest69719_ _hd69720_)
                      (if (keyword? _hd69720_)
                          (let* ((_hd-rest6972169728_ _hd-rest69719_)
                                 (_E6972369732_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6972169728_)))
                                 (_K6972469740_
                                  (lambda (_rest69735_ _val69736_)
                                    (if _kwt69689_
                                        (let ((_pos69738_
                                               (let ((__tmp73935
                                                      (keyword-hash _hd69720_))
                                                     (__tmp73934
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt69689_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp73935
                                                  __tmp73934))))
                                          (if (let ((__tmp73936
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt69689_
                                                        _pos69738_))))
                                                (declare (not safe))
                                                (eq? _hd69720_ __tmp73936))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K69690_
                                                     _hd69720_)))
                                        '#!void)
                                    (if (let ((__tmp73937
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys69693_
                                                  _hd69720_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp73937 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K69690_
                                               _hd69720_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys69693_
                                       _hd69720_
                                       _val69736_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp69695_
                                       _rest69735_
                                       _args69698_
                                       _tail69699_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6972169728_))
                                (let ((_hd6972569743_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6972169728_)))
                                      (_tl6972669745_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6972169728_))))
                                  (let* ((_val69748_ _hd6972569743_)
                                         (_rest69750_ _tl6972669745_))
                                    (declare (not safe))
                                    (_K6972469740_ _rest69750_ _val69748_)))
                                (let () (declare (not safe)) (_E6972369732_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd69720_ '#!key))
                              (let* ((_hd-rest6975169758_ _hd-rest69719_)
                                     (_E6975369762_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6975169758_)))
                                     (_K6975469768_
                                      (lambda (_rest69765_ _val69766_)
                                        (if _args69698_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail69699_
                                                 _hd-rest69719_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp69695_
                                                 _rest69765_
                                                 _args69698_
                                                 _hd-rest69719_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp69695_
                                               _rest69765_
                                               _hd-rest69719_
                                               _hd-rest69719_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6975169758_))
                                    (let ((_hd6975569771_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6975169758_)))
                                          (_tl6975669773_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6975169758_))))
                                      (let* ((_val69776_ _hd6975569771_)
                                             (_rest69778_ _tl6975669773_))
                                        (declare (not safe))
                                        (_K6975469768_
                                         _rest69778_
                                         _val69776_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6975369762_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd69720_ '#!rest))
                                  (if _args69698_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail69699_
                                           _hd-rest69719_))
                                        (let ((__tmp73933
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys69693_
                                                       _args69698_))))
                                          (declare (not safe))
                                          (##apply _K69690_ __tmp73933)))
                                      (let ((__tmp73932
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys69693_
                                                     _hd-rest69719_))))
                                        (declare (not safe))
                                        (##apply _K69690_ __tmp73932)))
                                  (if _args69698_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail69699_ _rest69697_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp69695_
                                           _hd-rest69719_
                                           _args69698_
                                           _rest69697_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp69695_
                                         _hd-rest69719_
                                         _rest69697_
                                         _rest69697_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6970069708_))
                  (let ((_hd6970569783_
                         (let ()
                           (declare (not safe))
                           (##car _rest6970069708_)))
                        (_tl6970669785_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6970069708_))))
                    (let* ((_hd69788_ _hd6970569783_)
                           (_hd-rest69790_ _tl6970669785_))
                      (declare (not safe))
                      (_K6970469780_ _hd-rest69790_ _hd69788_)))
                  (let () (declare (not safe)) (_else6970269716_))))))))
    (define keyword-rest
      (lambda (_kwt69681_ . _drop69682_)
        (let ((_rest69684_ '()))
          (let ((__tmp73938
                 (lambda (_k69686_ _v69687_)
                   (if (memq _k69686_ _drop69682_)
                       '#!void
                       (set! _rest69684_
                             (let ((__tmp73939
                                    (let ()
                                      (declare (not safe))
                                      (cons _v69687_ _rest69684_))))
                               (declare (not safe))
                               (cons _k69686_ __tmp73939)))))))
            (declare (not safe))
            (raw-table-for-each __tmp73938 _kwt69681_))
          _rest69684_)))))
