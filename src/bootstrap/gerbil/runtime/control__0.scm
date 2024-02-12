(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707773067)
  (begin
    (define make-promise
      (lambda (_thunk64711_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64711_))))
    (define call-with-parameters
      (lambda (_thunk64659_ . _rest64660_)
        (let* ((_rest6466164672_ _rest64660_)
               (_E6466464676_
                (lambda () (error '"No clause matching" _rest6466164672_))))
          (let ((_K6466664692_
                 (lambda (_rest64687_ _val64688_ _param64689_)
                   (let ((__tmp78717
                          (if (let () (declare (not safe)) (null? _rest64687_))
                              _thunk64659_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64659_
                                       _rest64687_)))))
                     (declare (not safe))
                     (##parameterize1 _param64689_ _val64688_ __tmp78717))))
                (_K6466564681_ (lambda () (_thunk64659_))))
            (let ((_try-match6466364684_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6466164672_))
                         (let () (declare (not safe)) (_thunk64659_))
                         (let () (declare (not safe)) (_E6466464676_))))))
              (if (let () (declare (not safe)) (##pair? _rest6466164672_))
                  (let ((_tl6466864697_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6466164672_)))
                        (_hd6466764695_
                         (let ()
                           (declare (not safe))
                           (##car _rest6466164672_))))
                    (if (let () (declare (not safe)) (##pair? _tl6466864697_))
                        (let ((_tl6467064704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6466864697_)))
                              (_hd6466964702_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6466864697_))))
                          (let ((_param64700_ _hd6466764695_)
                                (_val64707_ _hd6466964702_)
                                (_rest64709_ _tl6467064704_))
                            (let ()
                              (declare (not safe))
                              (_K6466664692_
                               _rest64709_
                               _val64707_
                               _param64700_))))
                        (let () (declare (not safe)) (_E6466464676_))))
                  (let () (declare (not safe)) (_try-match6466364684_))))))))
    (define with-unwind-protect
      (lambda (_K64652_ _fini64653_)
        (let ((_once64655_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64655_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64655_ '#t)))
           _K64652_
           _fini64653_))))
    (define keyword-dispatch
      (lambda (_kwt64549_ _K64550_ . _all-args64551_)
        (if _kwt64549_
            (if (let () (declare (not safe)) (vector? _kwt64549_))
                '#!void
                (error '"expected vector" _kwt64549_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64550_))
            '#!void
            (error '"expected procedure" _K64550_))
        (let ((_keys64553_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64555_ ((_rest64557_ _all-args64551_)
                          (_args64558_ '#f)
                          (_tail64559_ '#f))
            (let* ((_rest6456064568_ _rest64557_)
                   (_else6456264576_
                    (lambda ()
                      (if _args64558_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64559_ '()))
                            (let ((__tmp78718
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64553_ _args64558_))))
                              (declare (not safe))
                              (##apply _K64550_ __tmp78718)))
                          (_K64550_ _keys64553_))))
                   (_K6456464640_
                    (lambda (_hd-rest64579_ _hd64580_)
                      (if (keyword? _hd64580_)
                          (let* ((_hd-rest6458164588_ _hd-rest64579_)
                                 (_E6458364592_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6458164588_)))
                                 (_K6458464600_
                                  (lambda (_rest64595_ _val64596_)
                                    (if _kwt64549_
                                        (let ((_pos64598_
                                               (let ((__tmp78722
                                                      (keyword-hash _hd64580_))
                                                     (__tmp78721
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64549_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78722
                                                  __tmp78721))))
                                          (if (let ((__tmp78723
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64549_
                                                        _pos64598_))))
                                                (declare (not safe))
                                                (eq? _hd64580_ __tmp78723))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64550_
                                                     _hd64580_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64553_ _hd64580_))
                                        (error '"Duplicate keyword argument"
                                               _K64550_
                                               _hd64580_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64553_
                                       _hd64580_
                                       _val64596_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64555_
                                       _rest64595_
                                       _args64558_
                                       _tail64559_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6458164588_))
                                (let ((_hd6458564603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6458164588_)))
                                      (_tl6458664605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6458164588_))))
                                  (let* ((_val64608_ _hd6458564603_)
                                         (_rest64610_ _tl6458664605_))
                                    (declare (not safe))
                                    (_K6458464600_ _rest64610_ _val64608_)))
                                (let () (declare (not safe)) (_E6458364592_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64580_ '#!key))
                              (let* ((_hd-rest6461164618_ _hd-rest64579_)
                                     (_E6461364622_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6461164618_)))
                                     (_K6461464628_
                                      (lambda (_rest64625_ _val64626_)
                                        (if _args64558_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64559_
                                                 _hd-rest64579_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64555_
                                                 _rest64625_
                                                 _args64558_
                                                 _hd-rest64579_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64555_
                                               _rest64625_
                                               _hd-rest64579_
                                               _hd-rest64579_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6461164618_))
                                    (let ((_hd6461564631_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6461164618_)))
                                          (_tl6461664633_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6461164618_))))
                                      (let* ((_val64636_ _hd6461564631_)
                                             (_rest64638_ _tl6461664633_))
                                        (declare (not safe))
                                        (_K6461464628_
                                         _rest64638_
                                         _val64636_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6461364622_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64580_ '#!rest))
                                  (if _args64558_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64559_
                                           _hd-rest64579_))
                                        (let ((__tmp78720
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64553_
                                                       _args64558_))))
                                          (declare (not safe))
                                          (##apply _K64550_ __tmp78720)))
                                      (let ((__tmp78719
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64553_
                                                     _hd-rest64579_))))
                                        (declare (not safe))
                                        (##apply _K64550_ __tmp78719)))
                                  (if _args64558_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64559_ _rest64557_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64555_
                                           _hd-rest64579_
                                           _args64558_
                                           _rest64557_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64555_
                                         _hd-rest64579_
                                         _rest64557_
                                         _rest64557_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6456064568_))
                  (let ((_hd6456564643_
                         (let ()
                           (declare (not safe))
                           (##car _rest6456064568_)))
                        (_tl6456664645_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6456064568_))))
                    (let* ((_hd64648_ _hd6456564643_)
                           (_hd-rest64650_ _tl6456664645_))
                      (declare (not safe))
                      (_K6456464640_ _hd-rest64650_ _hd64648_)))
                  (let () (declare (not safe)) (_else6456264576_))))))))
    (define keyword-rest
      (lambda (_kwt64540_ . _drop64541_)
        (for-each
         (lambda (_kw64543_)
           (let () (declare (not safe)) (table-set! _kwt64540_ _kw64543_)))
         _drop64541_)
        (let ((__tmp78724
               (lambda (_k64545_ _v64546_ _r64547_)
                 (let ((__tmp78725
                        (let ()
                          (declare (not safe))
                          (cons _v64546_ _r64547_))))
                   (declare (not safe))
                   (cons _k64545_ __tmp78725)))))
          (declare (not safe))
          (hash-fold __tmp78724 '() _kwt64540_))))))
