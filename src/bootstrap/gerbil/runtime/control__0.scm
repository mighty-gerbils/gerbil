(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707620169)
  (begin
    (define make-promise
      (lambda (_thunk64736_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64736_))))
    (define call-with-parameters
      (lambda (_thunk64684_ . _rest64685_)
        (let* ((_rest6468664697_ _rest64685_)
               (_E6468964701_
                (lambda () (error '"No clause matching" _rest6468664697_))))
          (let ((_K6469164717_
                 (lambda (_rest64712_ _val64713_ _param64714_)
                   (let ((__tmp78442
                          (if (let () (declare (not safe)) (null? _rest64712_))
                              _thunk64684_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64684_
                                       _rest64712_)))))
                     (declare (not safe))
                     (##parameterize1 _param64714_ _val64713_ __tmp78442))))
                (_K6469064706_ (lambda () (_thunk64684_))))
            (let ((_try-match6468864709_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6468664697_))
                         (let () (declare (not safe)) (_thunk64684_))
                         (let () (declare (not safe)) (_E6468964701_))))))
              (if (let () (declare (not safe)) (##pair? _rest6468664697_))
                  (let ((_tl6469364722_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6468664697_)))
                        (_hd6469264720_
                         (let ()
                           (declare (not safe))
                           (##car _rest6468664697_))))
                    (if (let () (declare (not safe)) (##pair? _tl6469364722_))
                        (let ((_tl6469564729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6469364722_)))
                              (_hd6469464727_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6469364722_))))
                          (let ((_param64725_ _hd6469264720_)
                                (_val64732_ _hd6469464727_)
                                (_rest64734_ _tl6469564729_))
                            (let ()
                              (declare (not safe))
                              (_K6469164717_
                               _rest64734_
                               _val64732_
                               _param64725_))))
                        (let () (declare (not safe)) (_E6468964701_))))
                  (let () (declare (not safe)) (_try-match6468864709_))))))))
    (define with-unwind-protect
      (lambda (_K64677_ _fini64678_)
        (let ((_once64680_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64680_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64680_ '#t)))
           _K64677_
           _fini64678_))))
    (define keyword-dispatch
      (lambda (_kwt64574_ _K64575_ . _all-args64576_)
        (if _kwt64574_
            (if (let () (declare (not safe)) (vector? _kwt64574_))
                '#!void
                (error '"expected vector" _kwt64574_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64575_))
            '#!void
            (error '"expected procedure" _K64575_))
        (let ((_keys64578_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64580_ ((_rest64582_ _all-args64576_)
                          (_args64583_ '#f)
                          (_tail64584_ '#f))
            (let* ((_rest6458564593_ _rest64582_)
                   (_else6458764601_
                    (lambda ()
                      (if _args64583_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64584_ '()))
                            (let ((__tmp78443
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64578_ _args64583_))))
                              (declare (not safe))
                              (##apply _K64575_ __tmp78443)))
                          (_K64575_ _keys64578_))))
                   (_K6458964665_
                    (lambda (_hd-rest64604_ _hd64605_)
                      (if (keyword? _hd64605_)
                          (let* ((_hd-rest6460664613_ _hd-rest64604_)
                                 (_E6460864617_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6460664613_)))
                                 (_K6460964625_
                                  (lambda (_rest64620_ _val64621_)
                                    (if _kwt64574_
                                        (let ((_pos64623_
                                               (let ((__tmp78447
                                                      (keyword-hash _hd64605_))
                                                     (__tmp78446
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64574_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78447
                                                  __tmp78446))))
                                          (if (let ((__tmp78448
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64574_
                                                        _pos64623_))))
                                                (declare (not safe))
                                                (eq? _hd64605_ __tmp78448))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64575_
                                                     _hd64605_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64578_ _hd64605_))
                                        (error '"Duplicate keyword argument"
                                               _K64575_
                                               _hd64605_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64578_
                                       _hd64605_
                                       _val64621_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64580_
                                       _rest64620_
                                       _args64583_
                                       _tail64584_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6460664613_))
                                (let ((_hd6461064628_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6460664613_)))
                                      (_tl6461164630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6460664613_))))
                                  (let* ((_val64633_ _hd6461064628_)
                                         (_rest64635_ _tl6461164630_))
                                    (declare (not safe))
                                    (_K6460964625_ _rest64635_ _val64633_)))
                                (let () (declare (not safe)) (_E6460864617_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64605_ '#!key))
                              (let* ((_hd-rest6463664643_ _hd-rest64604_)
                                     (_E6463864647_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6463664643_)))
                                     (_K6463964653_
                                      (lambda (_rest64650_ _val64651_)
                                        (if _args64583_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64584_
                                                 _hd-rest64604_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64580_
                                                 _rest64650_
                                                 _args64583_
                                                 _hd-rest64604_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64580_
                                               _rest64650_
                                               _hd-rest64604_
                                               _hd-rest64604_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6463664643_))
                                    (let ((_hd6464064656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6463664643_)))
                                          (_tl6464164658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6463664643_))))
                                      (let* ((_val64661_ _hd6464064656_)
                                             (_rest64663_ _tl6464164658_))
                                        (declare (not safe))
                                        (_K6463964653_
                                         _rest64663_
                                         _val64661_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6463864647_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64605_ '#!rest))
                                  (if _args64583_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64584_
                                           _hd-rest64604_))
                                        (let ((__tmp78445
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64578_
                                                       _args64583_))))
                                          (declare (not safe))
                                          (##apply _K64575_ __tmp78445)))
                                      (let ((__tmp78444
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64578_
                                                     _hd-rest64604_))))
                                        (declare (not safe))
                                        (##apply _K64575_ __tmp78444)))
                                  (if _args64583_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64584_ _rest64582_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64580_
                                           _hd-rest64604_
                                           _args64583_
                                           _rest64582_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64580_
                                         _hd-rest64604_
                                         _rest64582_
                                         _rest64582_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6458564593_))
                  (let ((_hd6459064668_
                         (let ()
                           (declare (not safe))
                           (##car _rest6458564593_)))
                        (_tl6459164670_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6458564593_))))
                    (let* ((_hd64673_ _hd6459064668_)
                           (_hd-rest64675_ _tl6459164670_))
                      (declare (not safe))
                      (_K6458964665_ _hd-rest64675_ _hd64673_)))
                  (let () (declare (not safe)) (_else6458764601_))))))))
    (define keyword-rest
      (lambda (_kwt64565_ . _drop64566_)
        (for-each
         (lambda (_kw64568_)
           (let () (declare (not safe)) (table-set! _kwt64565_ _kw64568_)))
         _drop64566_)
        (let ((__tmp78449
               (lambda (_k64570_ _v64571_ _r64572_)
                 (let ((__tmp78450
                        (let ()
                          (declare (not safe))
                          (cons _v64571_ _r64572_))))
                   (declare (not safe))
                   (cons _k64570_ __tmp78450)))))
          (declare (not safe))
          (hash-fold __tmp78449 '() _kwt64565_))))))
