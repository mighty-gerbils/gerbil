(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708280331)
  (begin
    (define make-promise
      (lambda (_thunk70690_)
        (let () (declare (not safe)) (##make-delay-promise _thunk70690_))))
    (define call-with-parameters
      (lambda (_thunk70638_ . _rest70639_)
        (let* ((_rest7064070651_ _rest70639_)
               (_E7064370655_
                (lambda () (error '"No clause matching" _rest7064070651_))))
          (let ((_K7064570671_
                 (lambda (_rest70666_ _val70667_ _param70668_)
                   (let ((__tmp74769
                          (if (let () (declare (not safe)) (null? _rest70666_))
                              _thunk70638_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk70638_
                                       _rest70666_)))))
                     (declare (not safe))
                     (##parameterize1 _param70668_ _val70667_ __tmp74769))))
                (_K7064470660_ (lambda () (_thunk70638_))))
            (let ((_try-match7064270663_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7064070651_))
                         (let () (declare (not safe)) (_thunk70638_))
                         (let () (declare (not safe)) (_E7064370655_))))))
              (if (let () (declare (not safe)) (##pair? _rest7064070651_))
                  (let ((_tl7064770676_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7064070651_)))
                        (_hd7064670674_
                         (let ()
                           (declare (not safe))
                           (##car _rest7064070651_))))
                    (if (let () (declare (not safe)) (##pair? _tl7064770676_))
                        (let ((_tl7064970683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7064770676_)))
                              (_hd7064870681_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7064770676_))))
                          (let ((_param70679_ _hd7064670674_)
                                (_val70686_ _hd7064870681_)
                                (_rest70688_ _tl7064970683_))
                            (let ()
                              (declare (not safe))
                              (_K7064570671_
                               _rest70688_
                               _val70686_
                               _param70679_))))
                        (let () (declare (not safe)) (_E7064370655_))))
                  (let () (declare (not safe)) (_try-match7064270663_))))))))
    (define with-unwind-protect
      (lambda (_K70631_ _fini70632_)
        (let ((_once70634_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once70634_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once70634_ '#t)))
           _K70631_
           _fini70632_))))
    (define keyword-dispatch
      (lambda (_kwt70528_ _K70529_ . _all-args70530_)
        (if _kwt70528_
            (if (let () (declare (not safe)) (vector? _kwt70528_))
                '#!void
                (error '"expected vector" _kwt70528_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K70529_))
            '#!void
            (error '"expected procedure" _K70529_))
        (let ((_keys70532_
               (let () (declare (not safe)) (make-symbolic-table '#f '0))))
          (let _lp70534_ ((_rest70536_ _all-args70530_)
                          (_args70537_ '#f)
                          (_tail70538_ '#f))
            (let* ((_rest7053970547_ _rest70536_)
                   (_else7054170555_
                    (lambda ()
                      (if _args70537_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail70538_ '()))
                            (let ((__tmp74770
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys70532_ _args70537_))))
                              (declare (not safe))
                              (##apply _K70529_ __tmp74770)))
                          (_K70529_ _keys70532_))))
                   (_K7054370619_
                    (lambda (_hd-rest70558_ _hd70559_)
                      (if (keyword? _hd70559_)
                          (let* ((_hd-rest7056070567_ _hd-rest70558_)
                                 (_E7056270571_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest7056070567_)))
                                 (_K7056370579_
                                  (lambda (_rest70574_ _val70575_)
                                    (if _kwt70528_
                                        (let ((_pos70577_
                                               (let ((__tmp74774
                                                      (keyword-hash _hd70559_))
                                                     (__tmp74773
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt70528_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp74774
                                                  __tmp74773))))
                                          (if (let ((__tmp74775
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt70528_
                                                        _pos70577_))))
                                                (declare (not safe))
                                                (eq? _hd70559_ __tmp74775))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K70529_
                                                     _hd70559_)))
                                        '#!void)
                                    (if (let ((__tmp74776
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys70532_
                                                  _hd70559_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp74776 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K70529_
                                               _hd70559_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys70532_
                                       _hd70559_
                                       _val70575_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp70534_
                                       _rest70574_
                                       _args70537_
                                       _tail70538_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest7056070567_))
                                (let ((_hd7056470582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest7056070567_)))
                                      (_tl7056570584_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest7056070567_))))
                                  (let* ((_val70587_ _hd7056470582_)
                                         (_rest70589_ _tl7056570584_))
                                    (declare (not safe))
                                    (_K7056370579_ _rest70589_ _val70587_)))
                                (let () (declare (not safe)) (_E7056270571_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd70559_ '#!key))
                              (let* ((_hd-rest7059070597_ _hd-rest70558_)
                                     (_E7059270601_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7059070597_)))
                                     (_K7059370607_
                                      (lambda (_rest70604_ _val70605_)
                                        (if _args70537_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail70538_
                                                 _hd-rest70558_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp70534_
                                                 _rest70604_
                                                 _args70537_
                                                 _hd-rest70558_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp70534_
                                               _rest70604_
                                               _hd-rest70558_
                                               _hd-rest70558_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7059070597_))
                                    (let ((_hd7059470610_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7059070597_)))
                                          (_tl7059570612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7059070597_))))
                                      (let* ((_val70615_ _hd7059470610_)
                                             (_rest70617_ _tl7059570612_))
                                        (declare (not safe))
                                        (_K7059370607_
                                         _rest70617_
                                         _val70615_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7059270601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd70559_ '#!rest))
                                  (if _args70537_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail70538_
                                           _hd-rest70558_))
                                        (let ((__tmp74772
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys70532_
                                                       _args70537_))))
                                          (declare (not safe))
                                          (##apply _K70529_ __tmp74772)))
                                      (let ((__tmp74771
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys70532_
                                                     _hd-rest70558_))))
                                        (declare (not safe))
                                        (##apply _K70529_ __tmp74771)))
                                  (if _args70537_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail70538_ _rest70536_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp70534_
                                           _hd-rest70558_
                                           _args70537_
                                           _rest70536_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp70534_
                                         _hd-rest70558_
                                         _rest70536_
                                         _rest70536_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7053970547_))
                  (let ((_hd7054470622_
                         (let ()
                           (declare (not safe))
                           (##car _rest7053970547_)))
                        (_tl7054570624_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7053970547_))))
                    (let* ((_hd70627_ _hd7054470622_)
                           (_hd-rest70629_ _tl7054570624_))
                      (declare (not safe))
                      (_K7054370619_ _hd-rest70629_ _hd70627_)))
                  (let () (declare (not safe)) (_else7054170555_))))))))
    (define keyword-rest
      (lambda (_kwt70520_ . _drop70521_)
        (let ((_rest70523_ '()))
          (let ((__tmp74777
                 (lambda (_k70525_ _v70526_)
                   (if (memq _k70525_ _drop70521_)
                       '#!void
                       (set! _rest70523_
                             (let ((__tmp74778
                                    (let ()
                                      (declare (not safe))
                                      (cons _v70526_ _rest70523_))))
                               (declare (not safe))
                               (cons _k70525_ __tmp74778)))))))
            (declare (not safe))
            (raw-table-for-each _kwt70520_ __tmp74777))
          _rest70523_)))))
