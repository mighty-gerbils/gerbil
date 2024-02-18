(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708289478)
  (begin
    (define make-promise
      (lambda (_thunk70692_)
        (let () (declare (not safe)) (##make-delay-promise _thunk70692_))))
    (define call-with-parameters
      (lambda (_thunk70640_ . _rest70641_)
        (let* ((_rest7064270653_ _rest70641_)
               (_E7064570657_
                (lambda () (error '"No clause matching" _rest7064270653_))))
          (let ((_K7064770673_
                 (lambda (_rest70668_ _val70669_ _param70670_)
                   (let ((__tmp74771
                          (if (let () (declare (not safe)) (null? _rest70668_))
                              _thunk70640_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk70640_
                                       _rest70668_)))))
                     (declare (not safe))
                     (##parameterize1 _param70670_ _val70669_ __tmp74771))))
                (_K7064670662_ (lambda () (_thunk70640_))))
            (let ((_try-match7064470665_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7064270653_))
                         (let () (declare (not safe)) (_thunk70640_))
                         (let () (declare (not safe)) (_E7064570657_))))))
              (if (let () (declare (not safe)) (##pair? _rest7064270653_))
                  (let ((_tl7064970678_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7064270653_)))
                        (_hd7064870676_
                         (let ()
                           (declare (not safe))
                           (##car _rest7064270653_))))
                    (if (let () (declare (not safe)) (##pair? _tl7064970678_))
                        (let ((_tl7065170685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7064970678_)))
                              (_hd7065070683_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7064970678_))))
                          (let ((_param70681_ _hd7064870676_)
                                (_val70688_ _hd7065070683_)
                                (_rest70690_ _tl7065170685_))
                            (let ()
                              (declare (not safe))
                              (_K7064770673_
                               _rest70690_
                               _val70688_
                               _param70681_))))
                        (let () (declare (not safe)) (_E7064570657_))))
                  (let () (declare (not safe)) (_try-match7064470665_))))))))
    (define with-unwind-protect
      (lambda (_K70633_ _fini70634_)
        (let ((_once70636_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once70636_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once70636_ '#t)))
           _K70633_
           _fini70634_))))
    (define keyword-dispatch
      (lambda (_kwt70530_ _K70531_ . _all-args70532_)
        (if _kwt70530_
            (if (let () (declare (not safe)) (vector? _kwt70530_))
                '#!void
                (error '"expected vector" _kwt70530_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K70531_))
            '#!void
            (error '"expected procedure" _K70531_))
        (let ((_keys70534_
               (let () (declare (not safe)) (make-symbolic-table '#f '0))))
          (let _lp70536_ ((_rest70538_ _all-args70532_)
                          (_args70539_ '#f)
                          (_tail70540_ '#f))
            (let* ((_rest7054170549_ _rest70538_)
                   (_else7054370557_
                    (lambda ()
                      (if _args70539_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail70540_ '()))
                            (let ((__tmp74772
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys70534_ _args70539_))))
                              (declare (not safe))
                              (##apply _K70531_ __tmp74772)))
                          (_K70531_ _keys70534_))))
                   (_K7054570621_
                    (lambda (_hd-rest70560_ _hd70561_)
                      (if (keyword? _hd70561_)
                          (let* ((_hd-rest7056270569_ _hd-rest70560_)
                                 (_E7056470573_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest7056270569_)))
                                 (_K7056570581_
                                  (lambda (_rest70576_ _val70577_)
                                    (if _kwt70530_
                                        (let ((_pos70579_
                                               (let ((__tmp74776
                                                      (keyword-hash _hd70561_))
                                                     (__tmp74775
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt70530_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp74776
                                                  __tmp74775))))
                                          (if (let ((__tmp74777
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt70530_
                                                        _pos70579_))))
                                                (declare (not safe))
                                                (eq? _hd70561_ __tmp74777))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K70531_
                                                     _hd70561_)))
                                        '#!void)
                                    (if (let ((__tmp74778
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys70534_
                                                  _hd70561_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp74778 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K70531_
                                               _hd70561_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys70534_
                                       _hd70561_
                                       _val70577_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp70536_
                                       _rest70576_
                                       _args70539_
                                       _tail70540_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest7056270569_))
                                (let ((_hd7056670584_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest7056270569_)))
                                      (_tl7056770586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest7056270569_))))
                                  (let* ((_val70589_ _hd7056670584_)
                                         (_rest70591_ _tl7056770586_))
                                    (declare (not safe))
                                    (_K7056570581_ _rest70591_ _val70589_)))
                                (let () (declare (not safe)) (_E7056470573_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd70561_ '#!key))
                              (let* ((_hd-rest7059270599_ _hd-rest70560_)
                                     (_E7059470603_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7059270599_)))
                                     (_K7059570609_
                                      (lambda (_rest70606_ _val70607_)
                                        (if _args70539_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail70540_
                                                 _hd-rest70560_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp70536_
                                                 _rest70606_
                                                 _args70539_
                                                 _hd-rest70560_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp70536_
                                               _rest70606_
                                               _hd-rest70560_
                                               _hd-rest70560_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7059270599_))
                                    (let ((_hd7059670612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7059270599_)))
                                          (_tl7059770614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7059270599_))))
                                      (let* ((_val70617_ _hd7059670612_)
                                             (_rest70619_ _tl7059770614_))
                                        (declare (not safe))
                                        (_K7059570609_
                                         _rest70619_
                                         _val70617_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7059470603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd70561_ '#!rest))
                                  (if _args70539_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail70540_
                                           _hd-rest70560_))
                                        (let ((__tmp74774
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys70534_
                                                       _args70539_))))
                                          (declare (not safe))
                                          (##apply _K70531_ __tmp74774)))
                                      (let ((__tmp74773
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys70534_
                                                     _hd-rest70560_))))
                                        (declare (not safe))
                                        (##apply _K70531_ __tmp74773)))
                                  (if _args70539_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail70540_ _rest70538_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp70536_
                                           _hd-rest70560_
                                           _args70539_
                                           _rest70538_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp70536_
                                         _hd-rest70560_
                                         _rest70538_
                                         _rest70538_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7054170549_))
                  (let ((_hd7054670624_
                         (let ()
                           (declare (not safe))
                           (##car _rest7054170549_)))
                        (_tl7054770626_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7054170549_))))
                    (let* ((_hd70629_ _hd7054670624_)
                           (_hd-rest70631_ _tl7054770626_))
                      (declare (not safe))
                      (_K7054570621_ _hd-rest70631_ _hd70629_)))
                  (let () (declare (not safe)) (_else7054370557_))))))))
    (define keyword-rest
      (lambda (_kwt70522_ . _drop70523_)
        (let ((_rest70525_ '()))
          (let ((__tmp74779
                 (lambda (_k70527_ _v70528_)
                   (if (memq _k70527_ _drop70523_)
                       '#!void
                       (set! _rest70525_
                             (let ((__tmp74780
                                    (let ()
                                      (declare (not safe))
                                      (cons _v70528_ _rest70525_))))
                               (declare (not safe))
                               (cons _k70527_ __tmp74780)))))))
            (declare (not safe))
            (raw-table-for-each _kwt70522_ __tmp74779))
          _rest70525_)))))
