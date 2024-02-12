(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707735854)
  (begin
    (define make-promise
      (lambda (_thunk64706_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64706_))))
    (define call-with-parameters
      (lambda (_thunk64654_ . _rest64655_)
        (let* ((_rest6465664667_ _rest64655_)
               (_E6465964671_
                (lambda () (error '"No clause matching" _rest6465664667_))))
          (let ((_K6466164687_
                 (lambda (_rest64682_ _val64683_ _param64684_)
                   (let ((__tmp78712
                          (if (let () (declare (not safe)) (null? _rest64682_))
                              _thunk64654_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64654_
                                       _rest64682_)))))
                     (declare (not safe))
                     (##parameterize1 _param64684_ _val64683_ __tmp78712))))
                (_K6466064676_ (lambda () (_thunk64654_))))
            (let ((_try-match6465864679_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6465664667_))
                         (let () (declare (not safe)) (_thunk64654_))
                         (let () (declare (not safe)) (_E6465964671_))))))
              (if (let () (declare (not safe)) (##pair? _rest6465664667_))
                  (let ((_tl6466364692_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6465664667_)))
                        (_hd6466264690_
                         (let ()
                           (declare (not safe))
                           (##car _rest6465664667_))))
                    (if (let () (declare (not safe)) (##pair? _tl6466364692_))
                        (let ((_tl6466564699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6466364692_)))
                              (_hd6466464697_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6466364692_))))
                          (let ((_param64695_ _hd6466264690_)
                                (_val64702_ _hd6466464697_)
                                (_rest64704_ _tl6466564699_))
                            (let ()
                              (declare (not safe))
                              (_K6466164687_
                               _rest64704_
                               _val64702_
                               _param64695_))))
                        (let () (declare (not safe)) (_E6465964671_))))
                  (let () (declare (not safe)) (_try-match6465864679_))))))))
    (define with-unwind-protect
      (lambda (_K64647_ _fini64648_)
        (let ((_once64650_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64650_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64650_ '#t)))
           _K64647_
           _fini64648_))))
    (define keyword-dispatch
      (lambda (_kwt64544_ _K64545_ . _all-args64546_)
        (if _kwt64544_
            (if (let () (declare (not safe)) (vector? _kwt64544_))
                '#!void
                (error '"expected vector" _kwt64544_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64545_))
            '#!void
            (error '"expected procedure" _K64545_))
        (let ((_keys64548_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64550_ ((_rest64552_ _all-args64546_)
                          (_args64553_ '#f)
                          (_tail64554_ '#f))
            (let* ((_rest6455564563_ _rest64552_)
                   (_else6455764571_
                    (lambda ()
                      (if _args64553_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64554_ '()))
                            (let ((__tmp78713
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64548_ _args64553_))))
                              (declare (not safe))
                              (##apply _K64545_ __tmp78713)))
                          (_K64545_ _keys64548_))))
                   (_K6455964635_
                    (lambda (_hd-rest64574_ _hd64575_)
                      (if (keyword? _hd64575_)
                          (let* ((_hd-rest6457664583_ _hd-rest64574_)
                                 (_E6457864587_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6457664583_)))
                                 (_K6457964595_
                                  (lambda (_rest64590_ _val64591_)
                                    (if _kwt64544_
                                        (let ((_pos64593_
                                               (let ((__tmp78717
                                                      (keyword-hash _hd64575_))
                                                     (__tmp78716
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64544_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78717
                                                  __tmp78716))))
                                          (if (let ((__tmp78718
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64544_
                                                        _pos64593_))))
                                                (declare (not safe))
                                                (eq? _hd64575_ __tmp78718))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64545_
                                                     _hd64575_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64548_ _hd64575_))
                                        (error '"Duplicate keyword argument"
                                               _K64545_
                                               _hd64575_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64548_
                                       _hd64575_
                                       _val64591_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64550_
                                       _rest64590_
                                       _args64553_
                                       _tail64554_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6457664583_))
                                (let ((_hd6458064598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6457664583_)))
                                      (_tl6458164600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6457664583_))))
                                  (let* ((_val64603_ _hd6458064598_)
                                         (_rest64605_ _tl6458164600_))
                                    (declare (not safe))
                                    (_K6457964595_ _rest64605_ _val64603_)))
                                (let () (declare (not safe)) (_E6457864587_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64575_ '#!key))
                              (let* ((_hd-rest6460664613_ _hd-rest64574_)
                                     (_E6460864617_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6460664613_)))
                                     (_K6460964623_
                                      (lambda (_rest64620_ _val64621_)
                                        (if _args64553_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64554_
                                                 _hd-rest64574_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64550_
                                                 _rest64620_
                                                 _args64553_
                                                 _hd-rest64574_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64550_
                                               _rest64620_
                                               _hd-rest64574_
                                               _hd-rest64574_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6460664613_))
                                    (let ((_hd6461064626_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6460664613_)))
                                          (_tl6461164628_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6460664613_))))
                                      (let* ((_val64631_ _hd6461064626_)
                                             (_rest64633_ _tl6461164628_))
                                        (declare (not safe))
                                        (_K6460964623_
                                         _rest64633_
                                         _val64631_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6460864617_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64575_ '#!rest))
                                  (if _args64553_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64554_
                                           _hd-rest64574_))
                                        (let ((__tmp78715
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64548_
                                                       _args64553_))))
                                          (declare (not safe))
                                          (##apply _K64545_ __tmp78715)))
                                      (let ((__tmp78714
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64548_
                                                     _hd-rest64574_))))
                                        (declare (not safe))
                                        (##apply _K64545_ __tmp78714)))
                                  (if _args64553_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64554_ _rest64552_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64550_
                                           _hd-rest64574_
                                           _args64553_
                                           _rest64552_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64550_
                                         _hd-rest64574_
                                         _rest64552_
                                         _rest64552_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6455564563_))
                  (let ((_hd6456064638_
                         (let ()
                           (declare (not safe))
                           (##car _rest6455564563_)))
                        (_tl6456164640_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6455564563_))))
                    (let* ((_hd64643_ _hd6456064638_)
                           (_hd-rest64645_ _tl6456164640_))
                      (declare (not safe))
                      (_K6455964635_ _hd-rest64645_ _hd64643_)))
                  (let () (declare (not safe)) (_else6455764571_))))))))
    (define keyword-rest
      (lambda (_kwt64535_ . _drop64536_)
        (for-each
         (lambda (_kw64538_)
           (let () (declare (not safe)) (table-set! _kwt64535_ _kw64538_)))
         _drop64536_)
        (let ((__tmp78719
               (lambda (_k64540_ _v64541_ _r64542_)
                 (let ((__tmp78720
                        (let ()
                          (declare (not safe))
                          (cons _v64541_ _r64542_))))
                   (declare (not safe))
                   (cons _k64540_ __tmp78720)))))
          (declare (not safe))
          (hash-fold __tmp78719 '() _kwt64535_))))))
