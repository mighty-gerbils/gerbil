(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709994212)
  (begin
    (define make-promise
      (lambda (_thunk61697_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61697_))))
    (define call-with-parameters
      (lambda (_thunk61645_ . _rest61646_)
        (let* ((_rest6164761658_ _rest61646_)
               (_E6165061662_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6164761658_)))))
          (let ((_K6165261678_
                 (lambda (_rest61673_ _val61674_ _param61675_)
                   (let ((__tmp61709
                          (if (let () (declare (not safe)) (null? _rest61673_))
                              _thunk61645_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61645_
                                       _rest61673_)))))
                     (declare (not safe))
                     (##parameterize1 _param61675_ _val61674_ __tmp61709))))
                (_K6165161667_ (lambda () (_thunk61645_))))
            (let ((_try-match6164961670_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6164761658_))
                         (let () (declare (not safe)) (_thunk61645_))
                         (let () (declare (not safe)) (_E6165061662_))))))
              (if (let () (declare (not safe)) (##pair? _rest6164761658_))
                  (let ((_tl6165461683_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6164761658_)))
                        (_hd6165361681_
                         (let ()
                           (declare (not safe))
                           (##car _rest6164761658_))))
                    (if (let () (declare (not safe)) (##pair? _tl6165461683_))
                        (let ((_tl6165661690_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6165461683_)))
                              (_hd6165561688_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6165461683_))))
                          (let ((_param61686_ _hd6165361681_)
                                (_val61693_ _hd6165561688_)
                                (_rest61695_ _tl6165661690_))
                            (let ()
                              (declare (not safe))
                              (_K6165261678_
                               _rest61695_
                               _val61693_
                               _param61686_))))
                        (let () (declare (not safe)) (_E6165061662_))))
                  (let () (declare (not safe)) (_try-match6164961670_))))))))
    (define with-unwind-protect
      (lambda (_K61638_ _fini61639_)
        (let ((_once61641_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61641_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61641_ '#t)))
           _K61638_
           _fini61639_))))
    (define keyword-dispatch
      (lambda (_kwt61535_ _K61536_ . _all-args61537_)
        (if _kwt61535_
            (if (let () (declare (not safe)) (vector? _kwt61535_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61535_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61536_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61536_)))
        (let ((_keys61539_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61541_ ((_rest61543_ _all-args61537_)
                          (_args61544_ '#f)
                          (_tail61545_ '#f))
            (let* ((_rest6154661554_ _rest61543_)
                   (_else6154861562_
                    (lambda ()
                      (if _args61544_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61545_ '()))
                            (let ((__tmp61710
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61539_ _args61544_))))
                              (declare (not safe))
                              (##apply _K61536_ __tmp61710)))
                          (_K61536_ _keys61539_))))
                   (_K6155061626_
                    (lambda (_hd-rest61565_ _hd61566_)
                      (if (keyword? _hd61566_)
                          (let* ((_hd-rest6156761574_ _hd-rest61565_)
                                 (_E6156961578_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6156761574_))))
                                 (_K6157061586_
                                  (lambda (_rest61581_ _val61582_)
                                    (if _kwt61535_
                                        (let ((_pos61584_
                                               (let ((__tmp61714
                                                      (keyword-hash _hd61566_))
                                                     (__tmp61713
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61535_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61714
                                                  __tmp61713))))
                                          (if (let ((__tmp61715
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61535_
                                                        _pos61584_))))
                                                (declare (not safe))
                                                (eq? _hd61566_ __tmp61715))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61536_
                                                       _hd61566_))))
                                        '#!void)
                                    (if (let ((__tmp61716
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61539_
                                                  _hd61566_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61716 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61536_
                                                 _hd61566_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61539_
                                       _hd61566_
                                       _val61582_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61541_
                                       _rest61581_
                                       _args61544_
                                       _tail61545_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6156761574_))
                                (let ((_hd6157161589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6156761574_)))
                                      (_tl6157261591_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6156761574_))))
                                  (let* ((_val61594_ _hd6157161589_)
                                         (_rest61596_ _tl6157261591_))
                                    (declare (not safe))
                                    (_K6157061586_ _rest61596_ _val61594_)))
                                (let () (declare (not safe)) (_E6156961578_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61566_ '#!key))
                              (let* ((_hd-rest6159761604_ _hd-rest61565_)
                                     (_E6159961608_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6159761604_))))
                                     (_K6160061614_
                                      (lambda (_rest61611_ _val61612_)
                                        (if _args61544_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61545_
                                                 _hd-rest61565_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61541_
                                                 _rest61611_
                                                 _args61544_
                                                 _hd-rest61565_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61541_
                                               _rest61611_
                                               _hd-rest61565_
                                               _hd-rest61565_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6159761604_))
                                    (let ((_hd6160161617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6159761604_)))
                                          (_tl6160261619_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6159761604_))))
                                      (let* ((_val61622_ _hd6160161617_)
                                             (_rest61624_ _tl6160261619_))
                                        (declare (not safe))
                                        (_K6160061614_
                                         _rest61624_
                                         _val61622_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6159961608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61566_ '#!rest))
                                  (if _args61544_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61545_
                                           _hd-rest61565_))
                                        (let ((__tmp61712
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61539_
                                                       _args61544_))))
                                          (declare (not safe))
                                          (##apply _K61536_ __tmp61712)))
                                      (let ((__tmp61711
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61539_
                                                     _hd-rest61565_))))
                                        (declare (not safe))
                                        (##apply _K61536_ __tmp61711)))
                                  (if _args61544_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61545_ _rest61543_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61541_
                                           _hd-rest61565_
                                           _args61544_
                                           _rest61543_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61541_
                                         _hd-rest61565_
                                         _rest61543_
                                         _rest61543_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6154661554_))
                  (let ((_hd6155161629_
                         (let ()
                           (declare (not safe))
                           (##car _rest6154661554_)))
                        (_tl6155261631_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6154661554_))))
                    (let* ((_hd61634_ _hd6155161629_)
                           (_hd-rest61636_ _tl6155261631_))
                      (declare (not safe))
                      (_K6155061626_ _hd-rest61636_ _hd61634_)))
                  (let () (declare (not safe)) (_else6154861562_))))))))
    (define keyword-rest
      (lambda (_kwt61527_ . _drop61528_)
        (let ((_rest61530_ '()))
          (let ((__tmp61717
                 (lambda (_k61532_ _v61533_)
                   (if (memq _k61532_ _drop61528_)
                       '#!void
                       (set! _rest61530_
                             (let ((__tmp61718
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61533_ _rest61530_))))
                               (declare (not safe))
                               (cons _k61532_ __tmp61718)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61527_ __tmp61717))
          _rest61530_)))))
