(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707660400)
  (begin
    (define make-promise
      (lambda (_thunk64401_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64401_))))
    (define call-with-parameters
      (lambda (_thunk64349_ . _rest64350_)
        (let* ((_rest6435164362_ _rest64350_)
               (_E6435464366_
                (lambda () (error '"No clause matching" _rest6435164362_))))
          (let ((_K6435664382_
                 (lambda (_rest64377_ _val64378_ _param64379_)
                   (let ((__tmp78107
                          (if (let () (declare (not safe)) (null? _rest64377_))
                              _thunk64349_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64349_
                                       _rest64377_)))))
                     (declare (not safe))
                     (##parameterize1 _param64379_ _val64378_ __tmp78107))))
                (_K6435564371_ (lambda () (_thunk64349_))))
            (let ((_try-match6435364374_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6435164362_))
                         (let () (declare (not safe)) (_thunk64349_))
                         (let () (declare (not safe)) (_E6435464366_))))))
              (if (let () (declare (not safe)) (##pair? _rest6435164362_))
                  (let ((_tl6435864387_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6435164362_)))
                        (_hd6435764385_
                         (let ()
                           (declare (not safe))
                           (##car _rest6435164362_))))
                    (if (let () (declare (not safe)) (##pair? _tl6435864387_))
                        (let ((_tl6436064394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6435864387_)))
                              (_hd6435964392_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6435864387_))))
                          (let ((_param64390_ _hd6435764385_)
                                (_val64397_ _hd6435964392_)
                                (_rest64399_ _tl6436064394_))
                            (let ()
                              (declare (not safe))
                              (_K6435664382_
                               _rest64399_
                               _val64397_
                               _param64390_))))
                        (let () (declare (not safe)) (_E6435464366_))))
                  (let () (declare (not safe)) (_try-match6435364374_))))))))
    (define with-unwind-protect
      (lambda (_K64342_ _fini64343_)
        (let ((_once64345_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64345_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64345_ '#t)))
           _K64342_
           _fini64343_))))
    (define keyword-dispatch
      (lambda (_kwt64239_ _K64240_ . _all-args64241_)
        (if _kwt64239_
            (if (let () (declare (not safe)) (vector? _kwt64239_))
                '#!void
                (error '"expected vector" _kwt64239_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64240_))
            '#!void
            (error '"expected procedure" _K64240_))
        (let ((_keys64243_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64245_ ((_rest64247_ _all-args64241_)
                          (_args64248_ '#f)
                          (_tail64249_ '#f))
            (let* ((_rest6425064258_ _rest64247_)
                   (_else6425264266_
                    (lambda ()
                      (if _args64248_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64249_ '()))
                            (let ((__tmp78108
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64243_ _args64248_))))
                              (declare (not safe))
                              (##apply _K64240_ __tmp78108)))
                          (_K64240_ _keys64243_))))
                   (_K6425464330_
                    (lambda (_hd-rest64269_ _hd64270_)
                      (if (keyword? _hd64270_)
                          (let* ((_hd-rest6427164278_ _hd-rest64269_)
                                 (_E6427364282_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6427164278_)))
                                 (_K6427464290_
                                  (lambda (_rest64285_ _val64286_)
                                    (if _kwt64239_
                                        (let ((_pos64288_
                                               (let ((__tmp78112
                                                      (keyword-hash _hd64270_))
                                                     (__tmp78111
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64239_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78112
                                                  __tmp78111))))
                                          (if (let ((__tmp78113
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64239_
                                                        _pos64288_))))
                                                (declare (not safe))
                                                (eq? _hd64270_ __tmp78113))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64240_
                                                     _hd64270_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64243_ _hd64270_))
                                        (error '"Duplicate keyword argument"
                                               _K64240_
                                               _hd64270_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64243_
                                       _hd64270_
                                       _val64286_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64245_
                                       _rest64285_
                                       _args64248_
                                       _tail64249_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6427164278_))
                                (let ((_hd6427564293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6427164278_)))
                                      (_tl6427664295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6427164278_))))
                                  (let* ((_val64298_ _hd6427564293_)
                                         (_rest64300_ _tl6427664295_))
                                    (declare (not safe))
                                    (_K6427464290_ _rest64300_ _val64298_)))
                                (let () (declare (not safe)) (_E6427364282_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64270_ '#!key))
                              (let* ((_hd-rest6430164308_ _hd-rest64269_)
                                     (_E6430364312_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6430164308_)))
                                     (_K6430464318_
                                      (lambda (_rest64315_ _val64316_)
                                        (if _args64248_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64249_
                                                 _hd-rest64269_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64245_
                                                 _rest64315_
                                                 _args64248_
                                                 _hd-rest64269_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64245_
                                               _rest64315_
                                               _hd-rest64269_
                                               _hd-rest64269_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6430164308_))
                                    (let ((_hd6430564321_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6430164308_)))
                                          (_tl6430664323_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6430164308_))))
                                      (let* ((_val64326_ _hd6430564321_)
                                             (_rest64328_ _tl6430664323_))
                                        (declare (not safe))
                                        (_K6430464318_
                                         _rest64328_
                                         _val64326_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6430364312_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64270_ '#!rest))
                                  (if _args64248_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64249_
                                           _hd-rest64269_))
                                        (let ((__tmp78110
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64243_
                                                       _args64248_))))
                                          (declare (not safe))
                                          (##apply _K64240_ __tmp78110)))
                                      (let ((__tmp78109
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64243_
                                                     _hd-rest64269_))))
                                        (declare (not safe))
                                        (##apply _K64240_ __tmp78109)))
                                  (if _args64248_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64249_ _rest64247_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64245_
                                           _hd-rest64269_
                                           _args64248_
                                           _rest64247_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64245_
                                         _hd-rest64269_
                                         _rest64247_
                                         _rest64247_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6425064258_))
                  (let ((_hd6425564333_
                         (let ()
                           (declare (not safe))
                           (##car _rest6425064258_)))
                        (_tl6425664335_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6425064258_))))
                    (let* ((_hd64338_ _hd6425564333_)
                           (_hd-rest64340_ _tl6425664335_))
                      (declare (not safe))
                      (_K6425464330_ _hd-rest64340_ _hd64338_)))
                  (let () (declare (not safe)) (_else6425264266_))))))))
    (define keyword-rest
      (lambda (_kwt64230_ . _drop64231_)
        (for-each
         (lambda (_kw64233_)
           (let () (declare (not safe)) (table-set! _kwt64230_ _kw64233_)))
         _drop64231_)
        (let ((__tmp78114
               (lambda (_k64235_ _v64236_ _r64237_)
                 (let ((__tmp78115
                        (let ()
                          (declare (not safe))
                          (cons _v64236_ _r64237_))))
                   (declare (not safe))
                   (cons _k64235_ __tmp78115)))))
          (declare (not safe))
          (hash-fold __tmp78114 '() _kwt64230_))))))
