(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1701931848)
  (begin
    (define make-promise
      (lambda (_thunk8635_)
        (let () (declare (not safe)) (##make-delay-promise _thunk8635_))))
    (define call-with-parameters
      (lambda (_thunk8583_ . _rest8584_)
        (let* ((_rest85858596_ _rest8584_)
               (_E85888600_
                (lambda () (error '"No clause matching" _rest85858596_))))
          (let ((_K85908616_
                 (lambda (_rest8611_ _val8612_ _param8613_)
                   (let ((__tmp8937
                          (if (let () (declare (not safe)) (null? _rest8611_))
                              _thunk8583_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk8583_
                                       _rest8611_)))))
                     (declare (not safe))
                     (##parameterize1 _param8613_ _val8612_ __tmp8937))))
                (_K85898605_ (lambda () (_thunk8583_))))
            (let ((_try-match85878608_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest85858596_))
                         (let () (declare (not safe)) (_thunk8583_))
                         (let () (declare (not safe)) (_E85888600_))))))
              (if (let () (declare (not safe)) (##pair? _rest85858596_))
                  (let ((_tl85928621_
                         (let () (declare (not safe)) (##cdr _rest85858596_)))
                        (_hd85918619_
                         (let () (declare (not safe)) (##car _rest85858596_))))
                    (if (let () (declare (not safe)) (##pair? _tl85928621_))
                        (let ((_tl85948628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl85928621_)))
                              (_hd85938626_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl85928621_))))
                          (let ((_param8624_ _hd85918619_)
                                (_val8631_ _hd85938626_)
                                (_rest8633_ _tl85948628_))
                            (let ()
                              (declare (not safe))
                              (_K85908616_ _rest8633_ _val8631_ _param8624_))))
                        (let () (declare (not safe)) (_E85888600_))))
                  (let () (declare (not safe)) (_try-match85878608_))))))))
    (define with-unwind-protect
      (lambda (_K8576_ _fini8577_)
        (let ((_once8579_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once8579_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once8579_ '#t)))
           _K8576_
           _fini8577_))))
    (define keyword-dispatch
      (lambda (_kwt8473_ _K8474_ . _all-args8475_)
        (if _kwt8473_
            (if (let () (declare (not safe)) (vector? _kwt8473_))
                '#!void
                (error '"expected vector" _kwt8473_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8474_))
            '#!void
            (error '"expected procedure" _K8474_))
        (let ((_keys8477_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8479_ ((_rest8481_ _all-args8475_)
                         (_args8482_ '#f)
                         (_tail8483_ '#f))
            (let* ((_rest84848492_ _rest8481_)
                   (_else84868500_
                    (lambda ()
                      (if _args8482_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8483_ '()))
                            (let ((__tmp8938
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8477_ _args8482_))))
                              (declare (not safe))
                              (##apply _K8474_ __tmp8938)))
                          (_K8474_ _keys8477_))))
                   (_K84888564_
                    (lambda (_hd-rest8503_ _hd8504_)
                      (if (keyword? _hd8504_)
                          (let* ((_hd-rest85058512_ _hd-rest8503_)
                                 (_E85078516_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest85058512_)))
                                 (_K85088524_
                                  (lambda (_rest8519_ _val8520_)
                                    (if _kwt8473_
                                        (let ((_pos8522_
                                               (let ((__tmp8942
                                                      (keyword-hash _hd8504_))
                                                     (__tmp8941
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8473_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp8942
                                                  __tmp8941))))
                                          (if (let ((__tmp8943
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8473_
                                                        _pos8522_))))
                                                (declare (not safe))
                                                (eq? _hd8504_ __tmp8943))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8474_
                                                     _hd8504_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8477_ _hd8504_))
                                        (error '"Duplicate keyword argument"
                                               _K8474_
                                               _hd8504_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8477_
                                       _hd8504_
                                       _val8520_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8479_
                                       _rest8519_
                                       _args8482_
                                       _tail8483_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest85058512_))
                                (let ((_hd85098527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest85058512_)))
                                      (_tl85108529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest85058512_))))
                                  (let* ((_val8532_ _hd85098527_)
                                         (_rest8534_ _tl85108529_))
                                    (declare (not safe))
                                    (_K85088524_ _rest8534_ _val8532_)))
                                (let () (declare (not safe)) (_E85078516_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8504_ '#!key))
                              (let* ((_hd-rest85358542_ _hd-rest8503_)
                                     (_E85378546_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest85358542_)))
                                     (_K85388552_
                                      (lambda (_rest8549_ _val8550_)
                                        (if _args8482_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8483_
                                                 _hd-rest8503_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8479_
                                                 _rest8549_
                                                 _args8482_
                                                 _hd-rest8503_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8479_
                                               _rest8549_
                                               _hd-rest8503_
                                               _hd-rest8503_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest85358542_))
                                    (let ((_hd85398555_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest85358542_)))
                                          (_tl85408557_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest85358542_))))
                                      (let* ((_val8560_ _hd85398555_)
                                             (_rest8562_ _tl85408557_))
                                        (declare (not safe))
                                        (_K85388552_ _rest8562_ _val8560_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E85378546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8504_ '#!rest))
                                  (if _args8482_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8483_
                                           _hd-rest8503_))
                                        (let ((__tmp8940
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8477_
                                                       _args8482_))))
                                          (declare (not safe))
                                          (##apply _K8474_ __tmp8940)))
                                      (let ((__tmp8939
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8477_
                                                     _hd-rest8503_))))
                                        (declare (not safe))
                                        (##apply _K8474_ __tmp8939)))
                                  (if _args8482_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8483_ _rest8481_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8479_
                                           _hd-rest8503_
                                           _args8482_
                                           _rest8481_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8479_
                                         _hd-rest8503_
                                         _rest8481_
                                         _rest8481_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest84848492_))
                  (let ((_hd84898567_
                         (let () (declare (not safe)) (##car _rest84848492_)))
                        (_tl84908569_
                         (let () (declare (not safe)) (##cdr _rest84848492_))))
                    (let* ((_hd8572_ _hd84898567_)
                           (_hd-rest8574_ _tl84908569_))
                      (declare (not safe))
                      (_K84888564_ _hd-rest8574_ _hd8572_)))
                  (let () (declare (not safe)) (_else84868500_))))))))
    (define keyword-rest
      (lambda (_kwt8464_ . _drop8465_)
        (for-each
         (lambda (_kw8467_)
           (let () (declare (not safe)) (table-set! _kwt8464_ _kw8467_)))
         _drop8465_)
        (let ((__tmp8944
               (lambda (_k8469_ _v8470_ _r8471_)
                 (let ((__tmp8945
                        (let () (declare (not safe)) (cons _v8470_ _r8471_))))
                   (declare (not safe))
                   (cons _k8469_ __tmp8945)))))
          (declare (not safe))
          (hash-fold __tmp8944 '() _kwt8464_))))))
