(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707573210)
  (begin
    (define make-promise
      (lambda (_thunk64678_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64678_))))
    (define call-with-parameters
      (lambda (_thunk64626_ . _rest64627_)
        (let* ((_rest6462864639_ _rest64627_)
               (_E6463164643_
                (lambda () (error '"No clause matching" _rest6462864639_))))
          (let ((_K6463364659_
                 (lambda (_rest64654_ _val64655_ _param64656_)
                   (let ((__tmp78384
                          (if (let () (declare (not safe)) (null? _rest64654_))
                              _thunk64626_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64626_
                                       _rest64654_)))))
                     (declare (not safe))
                     (##parameterize1 _param64656_ _val64655_ __tmp78384))))
                (_K6463264648_ (lambda () (_thunk64626_))))
            (let ((_try-match6463064651_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6462864639_))
                         (let () (declare (not safe)) (_thunk64626_))
                         (let () (declare (not safe)) (_E6463164643_))))))
              (if (let () (declare (not safe)) (##pair? _rest6462864639_))
                  (let ((_tl6463564664_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6462864639_)))
                        (_hd6463464662_
                         (let ()
                           (declare (not safe))
                           (##car _rest6462864639_))))
                    (if (let () (declare (not safe)) (##pair? _tl6463564664_))
                        (let ((_tl6463764671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6463564664_)))
                              (_hd6463664669_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6463564664_))))
                          (let ((_param64667_ _hd6463464662_)
                                (_val64674_ _hd6463664669_)
                                (_rest64676_ _tl6463764671_))
                            (let ()
                              (declare (not safe))
                              (_K6463364659_
                               _rest64676_
                               _val64674_
                               _param64667_))))
                        (let () (declare (not safe)) (_E6463164643_))))
                  (let () (declare (not safe)) (_try-match6463064651_))))))))
    (define with-unwind-protect
      (lambda (_K64619_ _fini64620_)
        (let ((_once64622_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64622_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64622_ '#t)))
           _K64619_
           _fini64620_))))
    (define keyword-dispatch
      (lambda (_kwt64516_ _K64517_ . _all-args64518_)
        (if _kwt64516_
            (if (let () (declare (not safe)) (vector? _kwt64516_))
                '#!void
                (error '"expected vector" _kwt64516_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64517_))
            '#!void
            (error '"expected procedure" _K64517_))
        (let ((_keys64520_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64522_ ((_rest64524_ _all-args64518_)
                          (_args64525_ '#f)
                          (_tail64526_ '#f))
            (let* ((_rest6452764535_ _rest64524_)
                   (_else6452964543_
                    (lambda ()
                      (if _args64525_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64526_ '()))
                            (let ((__tmp78385
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64520_ _args64525_))))
                              (declare (not safe))
                              (##apply _K64517_ __tmp78385)))
                          (_K64517_ _keys64520_))))
                   (_K6453164607_
                    (lambda (_hd-rest64546_ _hd64547_)
                      (if (keyword? _hd64547_)
                          (let* ((_hd-rest6454864555_ _hd-rest64546_)
                                 (_E6455064559_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6454864555_)))
                                 (_K6455164567_
                                  (lambda (_rest64562_ _val64563_)
                                    (if _kwt64516_
                                        (let ((_pos64565_
                                               (let ((__tmp78389
                                                      (keyword-hash _hd64547_))
                                                     (__tmp78388
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64516_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78389
                                                  __tmp78388))))
                                          (if (let ((__tmp78390
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64516_
                                                        _pos64565_))))
                                                (declare (not safe))
                                                (eq? _hd64547_ __tmp78390))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64517_
                                                     _hd64547_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64520_ _hd64547_))
                                        (error '"Duplicate keyword argument"
                                               _K64517_
                                               _hd64547_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64520_
                                       _hd64547_
                                       _val64563_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64522_
                                       _rest64562_
                                       _args64525_
                                       _tail64526_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6454864555_))
                                (let ((_hd6455264570_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6454864555_)))
                                      (_tl6455364572_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6454864555_))))
                                  (let* ((_val64575_ _hd6455264570_)
                                         (_rest64577_ _tl6455364572_))
                                    (declare (not safe))
                                    (_K6455164567_ _rest64577_ _val64575_)))
                                (let () (declare (not safe)) (_E6455064559_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64547_ '#!key))
                              (let* ((_hd-rest6457864585_ _hd-rest64546_)
                                     (_E6458064589_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6457864585_)))
                                     (_K6458164595_
                                      (lambda (_rest64592_ _val64593_)
                                        (if _args64525_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64526_
                                                 _hd-rest64546_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64522_
                                                 _rest64592_
                                                 _args64525_
                                                 _hd-rest64546_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64522_
                                               _rest64592_
                                               _hd-rest64546_
                                               _hd-rest64546_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6457864585_))
                                    (let ((_hd6458264598_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6457864585_)))
                                          (_tl6458364600_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6457864585_))))
                                      (let* ((_val64603_ _hd6458264598_)
                                             (_rest64605_ _tl6458364600_))
                                        (declare (not safe))
                                        (_K6458164595_
                                         _rest64605_
                                         _val64603_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6458064589_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64547_ '#!rest))
                                  (if _args64525_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64526_
                                           _hd-rest64546_))
                                        (let ((__tmp78387
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64520_
                                                       _args64525_))))
                                          (declare (not safe))
                                          (##apply _K64517_ __tmp78387)))
                                      (let ((__tmp78386
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64520_
                                                     _hd-rest64546_))))
                                        (declare (not safe))
                                        (##apply _K64517_ __tmp78386)))
                                  (if _args64525_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64526_ _rest64524_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64522_
                                           _hd-rest64546_
                                           _args64525_
                                           _rest64524_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64522_
                                         _hd-rest64546_
                                         _rest64524_
                                         _rest64524_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6452764535_))
                  (let ((_hd6453264610_
                         (let ()
                           (declare (not safe))
                           (##car _rest6452764535_)))
                        (_tl6453364612_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6452764535_))))
                    (let* ((_hd64615_ _hd6453264610_)
                           (_hd-rest64617_ _tl6453364612_))
                      (declare (not safe))
                      (_K6453164607_ _hd-rest64617_ _hd64615_)))
                  (let () (declare (not safe)) (_else6452964543_))))))))
    (define keyword-rest
      (lambda (_kwt64507_ . _drop64508_)
        (for-each
         (lambda (_kw64510_)
           (let () (declare (not safe)) (table-set! _kwt64507_ _kw64510_)))
         _drop64508_)
        (let ((__tmp78391
               (lambda (_k64512_ _v64513_ _r64514_)
                 (let ((__tmp78392
                        (let ()
                          (declare (not safe))
                          (cons _v64513_ _r64514_))))
                   (declare (not safe))
                   (cons _k64512_ __tmp78392)))))
          (declare (not safe))
          (hash-fold __tmp78391 '() _kwt64507_))))))
