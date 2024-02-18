(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708271165)
  (begin
    (define make-promise
      (lambda (_thunk70688_)
        (let () (declare (not safe)) (##make-delay-promise _thunk70688_))))
    (define call-with-parameters
      (lambda (_thunk70636_ . _rest70637_)
        (let* ((_rest7063870649_ _rest70637_)
               (_E7064170653_
                (lambda () (error '"No clause matching" _rest7063870649_))))
          (let ((_K7064370669_
                 (lambda (_rest70664_ _val70665_ _param70666_)
                   (let ((__tmp74767
                          (if (let () (declare (not safe)) (null? _rest70664_))
                              _thunk70636_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk70636_
                                       _rest70664_)))))
                     (declare (not safe))
                     (##parameterize1 _param70666_ _val70665_ __tmp74767))))
                (_K7064270658_ (lambda () (_thunk70636_))))
            (let ((_try-match7064070661_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7063870649_))
                         (let () (declare (not safe)) (_thunk70636_))
                         (let () (declare (not safe)) (_E7064170653_))))))
              (if (let () (declare (not safe)) (##pair? _rest7063870649_))
                  (let ((_tl7064570674_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7063870649_)))
                        (_hd7064470672_
                         (let ()
                           (declare (not safe))
                           (##car _rest7063870649_))))
                    (if (let () (declare (not safe)) (##pair? _tl7064570674_))
                        (let ((_tl7064770681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7064570674_)))
                              (_hd7064670679_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7064570674_))))
                          (let ((_param70677_ _hd7064470672_)
                                (_val70684_ _hd7064670679_)
                                (_rest70686_ _tl7064770681_))
                            (let ()
                              (declare (not safe))
                              (_K7064370669_
                               _rest70686_
                               _val70684_
                               _param70677_))))
                        (let () (declare (not safe)) (_E7064170653_))))
                  (let () (declare (not safe)) (_try-match7064070661_))))))))
    (define with-unwind-protect
      (lambda (_K70629_ _fini70630_)
        (let ((_once70632_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once70632_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once70632_ '#t)))
           _K70629_
           _fini70630_))))
    (define keyword-dispatch
      (lambda (_kwt70526_ _K70527_ . _all-args70528_)
        (if _kwt70526_
            (if (let () (declare (not safe)) (vector? _kwt70526_))
                '#!void
                (error '"expected vector" _kwt70526_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K70527_))
            '#!void
            (error '"expected procedure" _K70527_))
        (let ((_keys70530_
               (let () (declare (not safe)) (make-symbolic-table '#f '0))))
          (let _lp70532_ ((_rest70534_ _all-args70528_)
                          (_args70535_ '#f)
                          (_tail70536_ '#f))
            (let* ((_rest7053770545_ _rest70534_)
                   (_else7053970553_
                    (lambda ()
                      (if _args70535_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail70536_ '()))
                            (let ((__tmp74768
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys70530_ _args70535_))))
                              (declare (not safe))
                              (##apply _K70527_ __tmp74768)))
                          (_K70527_ _keys70530_))))
                   (_K7054170617_
                    (lambda (_hd-rest70556_ _hd70557_)
                      (if (keyword? _hd70557_)
                          (let* ((_hd-rest7055870565_ _hd-rest70556_)
                                 (_E7056070569_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest7055870565_)))
                                 (_K7056170577_
                                  (lambda (_rest70572_ _val70573_)
                                    (if _kwt70526_
                                        (let ((_pos70575_
                                               (let ((__tmp74770
                                                      (keyword-hash _hd70557_))
                                                     (__tmp74769
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt70526_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp74770
                                                  __tmp74769))))
                                          (if (let ((__tmp74771
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt70526_
                                                        _pos70575_))))
                                                (declare (not safe))
                                                (eq? _hd70557_ __tmp74771))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K70527_
                                                     _hd70557_)))
                                        '#!void)
                                    (if (let ((__tmp74772
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys70530_
                                                  _hd70557_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp74772 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K70527_
                                               _hd70557_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys70530_
                                       _hd70557_
                                       _val70573_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp70532_
                                       _rest70572_
                                       _args70535_
                                       _tail70536_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest7055870565_))
                                (let ((_hd7056270580_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest7055870565_)))
                                      (_tl7056370582_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest7055870565_))))
                                  (let* ((_val70585_ _hd7056270580_)
                                         (_rest70587_ _tl7056370582_))
                                    (declare (not safe))
                                    (_K7056170577_ _rest70587_ _val70585_)))
                                (let () (declare (not safe)) (_E7056070569_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd70557_ '#!key))
                              (let* ((_hd-rest7058870595_ _hd-rest70556_)
                                     (_E7059070599_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7058870595_)))
                                     (_K7059170605_
                                      (lambda (_rest70602_ _val70603_)
                                        (if _args70535_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail70536_
                                                 _hd-rest70556_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp70532_
                                                 _rest70602_
                                                 _args70535_
                                                 _hd-rest70556_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp70532_
                                               _rest70602_
                                               _hd-rest70556_
                                               _hd-rest70556_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7058870595_))
                                    (let ((_hd7059270608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7058870595_)))
                                          (_tl7059370610_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7058870595_))))
                                      (let* ((_val70613_ _hd7059270608_)
                                             (_rest70615_ _tl7059370610_))
                                        (declare (not safe))
                                        (_K7059170605_
                                         _rest70615_
                                         _val70613_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7059070599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd70557_ '#!rest))
                                  (if _args70535_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail70536_
                                           _hd-rest70556_))
                                        (let ((__tmp74773
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys70530_
                                                       _args70535_))))
                                          (declare (not safe))
                                          (##apply _K70527_ __tmp74773)))
                                      (let ((__tmp74774
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys70530_
                                                     _hd-rest70556_))))
                                        (declare (not safe))
                                        (##apply _K70527_ __tmp74774)))
                                  (if _args70535_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail70536_ _rest70534_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp70532_
                                           _hd-rest70556_
                                           _args70535_
                                           _rest70534_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp70532_
                                         _hd-rest70556_
                                         _rest70534_
                                         _rest70534_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7053770545_))
                  (let ((_hd7054270620_
                         (let ()
                           (declare (not safe))
                           (##car _rest7053770545_)))
                        (_tl7054370622_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7053770545_))))
                    (let* ((_hd70625_ _hd7054270620_)
                           (_hd-rest70627_ _tl7054370622_))
                      (declare (not safe))
                      (_K7054170617_ _hd-rest70627_ _hd70625_)))
                  (let () (declare (not safe)) (_else7053970553_))))))))
    (define keyword-rest
      (lambda (_kwt70518_ . _drop70519_)
        (let ((_rest70521_ '()))
          (let ((__tmp74775
                 (lambda (_k70523_ _v70524_)
                   (if (memq _k70523_ _drop70519_)
                       '#!void
                       (set! _rest70521_
                             (let ((__tmp74776
                                    (let ()
                                      (declare (not safe))
                                      (cons _v70524_ _rest70521_))))
                               (declare (not safe))
                               (cons _k70523_ __tmp74776)))))))
            (declare (not safe))
            (raw-table-for-each _kwt70518_ __tmp74775))
          _rest70521_)))))
