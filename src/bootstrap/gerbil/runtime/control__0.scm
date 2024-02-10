(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707556024)
  (begin
    (define make-promise
      (lambda (_thunk63856_)
        (let () (declare (not safe)) (##make-delay-promise _thunk63856_))))
    (define call-with-parameters
      (lambda (_thunk63804_ . _rest63805_)
        (let* ((_rest6380663817_ _rest63805_)
               (_E6380963821_
                (lambda () (error '"No clause matching" _rest6380663817_))))
          (let ((_K6381163837_
                 (lambda (_rest63832_ _val63833_ _param63834_)
                   (let ((__tmp76740
                          (if (let () (declare (not safe)) (null? _rest63832_))
                              _thunk63804_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk63804_
                                       _rest63832_)))))
                     (declare (not safe))
                     (##parameterize1 _param63834_ _val63833_ __tmp76740))))
                (_K6381063826_ (lambda () (_thunk63804_))))
            (let ((_try-match6380863829_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6380663817_))
                         (let () (declare (not safe)) (_thunk63804_))
                         (let () (declare (not safe)) (_E6380963821_))))))
              (if (let () (declare (not safe)) (##pair? _rest6380663817_))
                  (let ((_tl6381363842_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6380663817_)))
                        (_hd6381263840_
                         (let ()
                           (declare (not safe))
                           (##car _rest6380663817_))))
                    (if (let () (declare (not safe)) (##pair? _tl6381363842_))
                        (let ((_tl6381563849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6381363842_)))
                              (_hd6381463847_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6381363842_))))
                          (let ((_param63845_ _hd6381263840_)
                                (_val63852_ _hd6381463847_)
                                (_rest63854_ _tl6381563849_))
                            (let ()
                              (declare (not safe))
                              (_K6381163837_
                               _rest63854_
                               _val63852_
                               _param63845_))))
                        (let () (declare (not safe)) (_E6380963821_))))
                  (let () (declare (not safe)) (_try-match6380863829_))))))))
    (define with-unwind-protect
      (lambda (_K63797_ _fini63798_)
        (let ((_once63800_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once63800_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once63800_ '#t)))
           _K63797_
           _fini63798_))))
    (define keyword-dispatch
      (lambda (_kwt63694_ _K63695_ . _all-args63696_)
        (if _kwt63694_
            (if (let () (declare (not safe)) (vector? _kwt63694_))
                '#!void
                (error '"expected vector" _kwt63694_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K63695_))
            '#!void
            (error '"expected procedure" _K63695_))
        (let ((_keys63698_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp63700_ ((_rest63702_ _all-args63696_)
                          (_args63703_ '#f)
                          (_tail63704_ '#f))
            (let* ((_rest6370563713_ _rest63702_)
                   (_else6370763721_
                    (lambda ()
                      (if _args63703_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail63704_ '()))
                            (let ((__tmp76741
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys63698_ _args63703_))))
                              (declare (not safe))
                              (##apply _K63695_ __tmp76741)))
                          (_K63695_ _keys63698_))))
                   (_K6370963785_
                    (lambda (_hd-rest63724_ _hd63725_)
                      (if (keyword? _hd63725_)
                          (let* ((_hd-rest6372663733_ _hd-rest63724_)
                                 (_E6372863737_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6372663733_)))
                                 (_K6372963745_
                                  (lambda (_rest63740_ _val63741_)
                                    (if _kwt63694_
                                        (let ((_pos63743_
                                               (let ((__tmp76745
                                                      (keyword-hash _hd63725_))
                                                     (__tmp76744
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt63694_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp76745
                                                  __tmp76744))))
                                          (if (let ((__tmp76746
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt63694_
                                                        _pos63743_))))
                                                (declare (not safe))
                                                (eq? _hd63725_ __tmp76746))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K63695_
                                                     _hd63725_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys63698_ _hd63725_))
                                        (error '"Duplicate keyword argument"
                                               _K63695_
                                               _hd63725_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys63698_
                                       _hd63725_
                                       _val63741_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp63700_
                                       _rest63740_
                                       _args63703_
                                       _tail63704_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6372663733_))
                                (let ((_hd6373063748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6372663733_)))
                                      (_tl6373163750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6372663733_))))
                                  (let* ((_val63753_ _hd6373063748_)
                                         (_rest63755_ _tl6373163750_))
                                    (declare (not safe))
                                    (_K6372963745_ _rest63755_ _val63753_)))
                                (let () (declare (not safe)) (_E6372863737_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd63725_ '#!key))
                              (let* ((_hd-rest6375663763_ _hd-rest63724_)
                                     (_E6375863767_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6375663763_)))
                                     (_K6375963773_
                                      (lambda (_rest63770_ _val63771_)
                                        (if _args63703_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail63704_
                                                 _hd-rest63724_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp63700_
                                                 _rest63770_
                                                 _args63703_
                                                 _hd-rest63724_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp63700_
                                               _rest63770_
                                               _hd-rest63724_
                                               _hd-rest63724_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6375663763_))
                                    (let ((_hd6376063776_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6375663763_)))
                                          (_tl6376163778_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6375663763_))))
                                      (let* ((_val63781_ _hd6376063776_)
                                             (_rest63783_ _tl6376163778_))
                                        (declare (not safe))
                                        (_K6375963773_
                                         _rest63783_
                                         _val63781_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6375863767_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd63725_ '#!rest))
                                  (if _args63703_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail63704_
                                           _hd-rest63724_))
                                        (let ((__tmp76743
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys63698_
                                                       _args63703_))))
                                          (declare (not safe))
                                          (##apply _K63695_ __tmp76743)))
                                      (let ((__tmp76742
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys63698_
                                                     _hd-rest63724_))))
                                        (declare (not safe))
                                        (##apply _K63695_ __tmp76742)))
                                  (if _args63703_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail63704_ _rest63702_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp63700_
                                           _hd-rest63724_
                                           _args63703_
                                           _rest63702_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp63700_
                                         _hd-rest63724_
                                         _rest63702_
                                         _rest63702_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6370563713_))
                  (let ((_hd6371063788_
                         (let ()
                           (declare (not safe))
                           (##car _rest6370563713_)))
                        (_tl6371163790_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6370563713_))))
                    (let* ((_hd63793_ _hd6371063788_)
                           (_hd-rest63795_ _tl6371163790_))
                      (declare (not safe))
                      (_K6370963785_ _hd-rest63795_ _hd63793_)))
                  (let () (declare (not safe)) (_else6370763721_))))))))
    (define keyword-rest
      (lambda (_kwt63685_ . _drop63686_)
        (for-each
         (lambda (_kw63688_)
           (let () (declare (not safe)) (table-set! _kwt63685_ _kw63688_)))
         _drop63686_)
        (let ((__tmp76747
               (lambda (_k63690_ _v63691_ _r63692_)
                 (let ((__tmp76748
                        (let ()
                          (declare (not safe))
                          (cons _v63691_ _r63692_))))
                   (declare (not safe))
                   (cons _k63690_ __tmp76748)))))
          (declare (not safe))
          (hash-fold __tmp76747 '() _kwt63685_))))))
