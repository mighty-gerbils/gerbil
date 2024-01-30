(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1706581965)
  (begin
    (define make-promise
      (lambda (_thunk8778_)
        (let () (declare (not safe)) (##make-delay-promise _thunk8778_))))
    (define call-with-parameters
      (lambda (_thunk8726_ . _rest8727_)
        (let* ((_rest87288739_ _rest8727_)
               (_E87318743_
                (lambda () (error '"No clause matching" _rest87288739_))))
          (let ((_K87338759_
                 (lambda (_rest8754_ _val8755_ _param8756_)
                   (let ((__tmp9348
                          (if (let () (declare (not safe)) (null? _rest8754_))
                              _thunk8726_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk8726_
                                       _rest8754_)))))
                     (declare (not safe))
                     (##parameterize1 _param8756_ _val8755_ __tmp9348))))
                (_K87328748_ (lambda () (_thunk8726_))))
            (let ((_try-match87308751_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest87288739_))
                         (let () (declare (not safe)) (_thunk8726_))
                         (let () (declare (not safe)) (_E87318743_))))))
              (if (let () (declare (not safe)) (##pair? _rest87288739_))
                  (let ((_tl87358764_
                         (let () (declare (not safe)) (##cdr _rest87288739_)))
                        (_hd87348762_
                         (let () (declare (not safe)) (##car _rest87288739_))))
                    (if (let () (declare (not safe)) (##pair? _tl87358764_))
                        (let ((_tl87378771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl87358764_)))
                              (_hd87368769_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl87358764_))))
                          (let ((_param8767_ _hd87348762_)
                                (_val8774_ _hd87368769_)
                                (_rest8776_ _tl87378771_))
                            (let ()
                              (declare (not safe))
                              (_K87338759_ _rest8776_ _val8774_ _param8767_))))
                        (let () (declare (not safe)) (_E87318743_))))
                  (let () (declare (not safe)) (_try-match87308751_))))))))
    (define with-unwind-protect
      (lambda (_K8719_ _fini8720_)
        (let ((_once8722_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once8722_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once8722_ '#t)))
           _K8719_
           _fini8720_))))
    (define keyword-dispatch
      (lambda (_kwt8616_ _K8617_ . _all-args8618_)
        (if _kwt8616_
            (if (let () (declare (not safe)) (vector? _kwt8616_))
                '#!void
                (error '"expected vector" _kwt8616_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8617_))
            '#!void
            (error '"expected procedure" _K8617_))
        (let ((_keys8620_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8622_ ((_rest8624_ _all-args8618_)
                         (_args8625_ '#f)
                         (_tail8626_ '#f))
            (let* ((_rest86278635_ _rest8624_)
                   (_else86298643_
                    (lambda ()
                      (if _args8625_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8626_ '()))
                            (let ((__tmp9349
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8620_ _args8625_))))
                              (declare (not safe))
                              (##apply _K8617_ __tmp9349)))
                          (_K8617_ _keys8620_))))
                   (_K86318707_
                    (lambda (_hd-rest8646_ _hd8647_)
                      (if (keyword? _hd8647_)
                          (let* ((_hd-rest86488655_ _hd-rest8646_)
                                 (_E86508659_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest86488655_)))
                                 (_K86518667_
                                  (lambda (_rest8662_ _val8663_)
                                    (if _kwt8616_
                                        (let ((_pos8665_
                                               (let ((__tmp9353
                                                      (keyword-hash _hd8647_))
                                                     (__tmp9352
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8616_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp9353
                                                  __tmp9352))))
                                          (if (let ((__tmp9354
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8616_
                                                        _pos8665_))))
                                                (declare (not safe))
                                                (eq? _hd8647_ __tmp9354))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8617_
                                                     _hd8647_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8620_ _hd8647_))
                                        (error '"Duplicate keyword argument"
                                               _K8617_
                                               _hd8647_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8620_
                                       _hd8647_
                                       _val8663_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8622_
                                       _rest8662_
                                       _args8625_
                                       _tail8626_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest86488655_))
                                (let ((_hd86528670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest86488655_)))
                                      (_tl86538672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest86488655_))))
                                  (let* ((_val8675_ _hd86528670_)
                                         (_rest8677_ _tl86538672_))
                                    (declare (not safe))
                                    (_K86518667_ _rest8677_ _val8675_)))
                                (let () (declare (not safe)) (_E86508659_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8647_ '#!key))
                              (let* ((_hd-rest86788685_ _hd-rest8646_)
                                     (_E86808689_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest86788685_)))
                                     (_K86818695_
                                      (lambda (_rest8692_ _val8693_)
                                        (if _args8625_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8626_
                                                 _hd-rest8646_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8622_
                                                 _rest8692_
                                                 _args8625_
                                                 _hd-rest8646_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8622_
                                               _rest8692_
                                               _hd-rest8646_
                                               _hd-rest8646_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest86788685_))
                                    (let ((_hd86828698_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest86788685_)))
                                          (_tl86838700_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest86788685_))))
                                      (let* ((_val8703_ _hd86828698_)
                                             (_rest8705_ _tl86838700_))
                                        (declare (not safe))
                                        (_K86818695_ _rest8705_ _val8703_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E86808689_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8647_ '#!rest))
                                  (if _args8625_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8626_
                                           _hd-rest8646_))
                                        (let ((__tmp9351
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8620_
                                                       _args8625_))))
                                          (declare (not safe))
                                          (##apply _K8617_ __tmp9351)))
                                      (let ((__tmp9350
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8620_
                                                     _hd-rest8646_))))
                                        (declare (not safe))
                                        (##apply _K8617_ __tmp9350)))
                                  (if _args8625_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8626_ _rest8624_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8622_
                                           _hd-rest8646_
                                           _args8625_
                                           _rest8624_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8622_
                                         _hd-rest8646_
                                         _rest8624_
                                         _rest8624_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest86278635_))
                  (let ((_hd86328710_
                         (let () (declare (not safe)) (##car _rest86278635_)))
                        (_tl86338712_
                         (let () (declare (not safe)) (##cdr _rest86278635_))))
                    (let* ((_hd8715_ _hd86328710_)
                           (_hd-rest8717_ _tl86338712_))
                      (declare (not safe))
                      (_K86318707_ _hd-rest8717_ _hd8715_)))
                  (let () (declare (not safe)) (_else86298643_))))))))
    (define keyword-rest
      (lambda (_kwt8607_ . _drop8608_)
        (for-each
         (lambda (_kw8610_)
           (let () (declare (not safe)) (table-set! _kwt8607_ _kw8610_)))
         _drop8608_)
        (let ((__tmp9355
               (lambda (_k8612_ _v8613_ _r8614_)
                 (let ((__tmp9356
                        (let () (declare (not safe)) (cons _v8613_ _r8614_))))
                   (declare (not safe))
                   (cons _k8612_ __tmp9356)))))
          (declare (not safe))
          (hash-fold __tmp9355 '() _kwt8607_))))))
