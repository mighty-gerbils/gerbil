(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710632267)
  (begin
    (define make-promise
      (lambda (_thunk61795_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61795_))))
    (define call-with-parameters
      (lambda (_thunk61743_ . _rest61744_)
        (let* ((_rest6174561756_ _rest61744_)
               (_E6174861760_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6174561756_)))))
          (let ((_K6175061776_
                 (lambda (_rest61771_ _val61772_ _param61773_)
                   (let ((__tmp61807
                          (if (let () (declare (not safe)) (null? _rest61771_))
                              _thunk61743_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61743_
                                       _rest61771_)))))
                     (declare (not safe))
                     (##parameterize1 _param61773_ _val61772_ __tmp61807))))
                (_K6174961765_ (lambda () (_thunk61743_))))
            (let ((_try-match6174761768_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6174561756_))
                         (let () (declare (not safe)) (_thunk61743_))
                         (let () (declare (not safe)) (_E6174861760_))))))
              (if (let () (declare (not safe)) (##pair? _rest6174561756_))
                  (let ((_tl6175261781_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6174561756_)))
                        (_hd6175161779_
                         (let ()
                           (declare (not safe))
                           (##car _rest6174561756_))))
                    (if (let () (declare (not safe)) (##pair? _tl6175261781_))
                        (let ((_tl6175461788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6175261781_)))
                              (_hd6175361786_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6175261781_))))
                          (let ((_param61784_ _hd6175161779_)
                                (_val61791_ _hd6175361786_)
                                (_rest61793_ _tl6175461788_))
                            (let ()
                              (declare (not safe))
                              (_K6175061776_
                               _rest61793_
                               _val61791_
                               _param61784_))))
                        (let () (declare (not safe)) (_E6174861760_))))
                  (let () (declare (not safe)) (_try-match6174761768_))))))))
    (define with-unwind-protect
      (lambda (_K61736_ _fini61737_)
        (let ((_once61739_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61739_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61739_ '#t)))
           _K61736_
           _fini61737_))))
    (define keyword-dispatch
      (lambda (_kwt61633_ _K61634_ . _all-args61635_)
        (if _kwt61633_
            (if (let () (declare (not safe)) (vector? _kwt61633_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61633_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61634_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61634_)))
        (let ((_keys61637_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61639_ ((_rest61641_ _all-args61635_)
                          (_args61642_ '#f)
                          (_tail61643_ '#f))
            (let* ((_rest6164461652_ _rest61641_)
                   (_else6164661660_
                    (lambda ()
                      (if _args61642_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61643_ '()))
                            (let ((__tmp61808
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61637_ _args61642_))))
                              (declare (not safe))
                              (##apply _K61634_ __tmp61808)))
                          (_K61634_ _keys61637_))))
                   (_K6164861724_
                    (lambda (_hd-rest61663_ _hd61664_)
                      (if (keyword? _hd61664_)
                          (let* ((_hd-rest6166561672_ _hd-rest61663_)
                                 (_E6166761676_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6166561672_))))
                                 (_K6166861684_
                                  (lambda (_rest61679_ _val61680_)
                                    (if _kwt61633_
                                        (let ((_pos61682_
                                               (let ((__tmp61812
                                                      (keyword-hash _hd61664_))
                                                     (__tmp61811
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61633_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61812
                                                  __tmp61811))))
                                          (if (let ((__tmp61813
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61633_
                                                        _pos61682_))))
                                                (declare (not safe))
                                                (eq? _hd61664_ __tmp61813))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61634_
                                                       _hd61664_))))
                                        '#!void)
                                    (if (let ((__tmp61814
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61637_
                                                  _hd61664_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61814 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61634_
                                                 _hd61664_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61637_
                                       _hd61664_
                                       _val61680_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61639_
                                       _rest61679_
                                       _args61642_
                                       _tail61643_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6166561672_))
                                (let ((_hd6166961687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6166561672_)))
                                      (_tl6167061689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6166561672_))))
                                  (let* ((_val61692_ _hd6166961687_)
                                         (_rest61694_ _tl6167061689_))
                                    (declare (not safe))
                                    (_K6166861684_ _rest61694_ _val61692_)))
                                (let () (declare (not safe)) (_E6166761676_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61664_ '#!key))
                              (let* ((_hd-rest6169561702_ _hd-rest61663_)
                                     (_E6169761706_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6169561702_))))
                                     (_K6169861712_
                                      (lambda (_rest61709_ _val61710_)
                                        (if _args61642_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61643_
                                                 _hd-rest61663_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61639_
                                                 _rest61709_
                                                 _args61642_
                                                 _hd-rest61663_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61639_
                                               _rest61709_
                                               _hd-rest61663_
                                               _hd-rest61663_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6169561702_))
                                    (let ((_hd6169961715_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6169561702_)))
                                          (_tl6170061717_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6169561702_))))
                                      (let* ((_val61720_ _hd6169961715_)
                                             (_rest61722_ _tl6170061717_))
                                        (declare (not safe))
                                        (_K6169861712_
                                         _rest61722_
                                         _val61720_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6169761706_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61664_ '#!rest))
                                  (if _args61642_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61643_
                                           _hd-rest61663_))
                                        (let ((__tmp61810
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61637_
                                                       _args61642_))))
                                          (declare (not safe))
                                          (##apply _K61634_ __tmp61810)))
                                      (let ((__tmp61809
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61637_
                                                     _hd-rest61663_))))
                                        (declare (not safe))
                                        (##apply _K61634_ __tmp61809)))
                                  (if _args61642_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61643_ _rest61641_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61639_
                                           _hd-rest61663_
                                           _args61642_
                                           _rest61641_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61639_
                                         _hd-rest61663_
                                         _rest61641_
                                         _rest61641_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6164461652_))
                  (let ((_hd6164961727_
                         (let ()
                           (declare (not safe))
                           (##car _rest6164461652_)))
                        (_tl6165061729_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6164461652_))))
                    (let* ((_hd61732_ _hd6164961727_)
                           (_hd-rest61734_ _tl6165061729_))
                      (declare (not safe))
                      (_K6164861724_ _hd-rest61734_ _hd61732_)))
                  (let () (declare (not safe)) (_else6164661660_))))))))
    (define keyword-rest
      (lambda (_kwt61625_ . _drop61626_)
        (let ((_rest61628_ '()))
          (let ((__tmp61815
                 (lambda (_k61630_ _v61631_)
                   (if (memq _k61630_ _drop61626_)
                       '#!void
                       (set! _rest61628_
                             (let ((__tmp61816
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61631_ _rest61628_))))
                               (declare (not safe))
                               (cons _k61630_ __tmp61816)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61625_ __tmp61815))
          _rest61628_)))))
