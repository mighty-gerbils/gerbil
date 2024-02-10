(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707601714)
  (begin
    (define make-promise
      (lambda (_thunk64733_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64733_))))
    (define call-with-parameters
      (lambda (_thunk64681_ . _rest64682_)
        (let* ((_rest6468364694_ _rest64682_)
               (_E6468664698_
                (lambda () (error '"No clause matching" _rest6468364694_))))
          (let ((_K6468864714_
                 (lambda (_rest64709_ _val64710_ _param64711_)
                   (let ((__tmp78439
                          (if (let () (declare (not safe)) (null? _rest64709_))
                              _thunk64681_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64681_
                                       _rest64709_)))))
                     (declare (not safe))
                     (##parameterize1 _param64711_ _val64710_ __tmp78439))))
                (_K6468764703_ (lambda () (_thunk64681_))))
            (let ((_try-match6468564706_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6468364694_))
                         (let () (declare (not safe)) (_thunk64681_))
                         (let () (declare (not safe)) (_E6468664698_))))))
              (if (let () (declare (not safe)) (##pair? _rest6468364694_))
                  (let ((_tl6469064719_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6468364694_)))
                        (_hd6468964717_
                         (let ()
                           (declare (not safe))
                           (##car _rest6468364694_))))
                    (if (let () (declare (not safe)) (##pair? _tl6469064719_))
                        (let ((_tl6469264726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6469064719_)))
                              (_hd6469164724_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6469064719_))))
                          (let ((_param64722_ _hd6468964717_)
                                (_val64729_ _hd6469164724_)
                                (_rest64731_ _tl6469264726_))
                            (let ()
                              (declare (not safe))
                              (_K6468864714_
                               _rest64731_
                               _val64729_
                               _param64722_))))
                        (let () (declare (not safe)) (_E6468664698_))))
                  (let () (declare (not safe)) (_try-match6468564706_))))))))
    (define with-unwind-protect
      (lambda (_K64674_ _fini64675_)
        (let ((_once64677_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64677_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64677_ '#t)))
           _K64674_
           _fini64675_))))
    (define keyword-dispatch
      (lambda (_kwt64571_ _K64572_ . _all-args64573_)
        (if _kwt64571_
            (if (let () (declare (not safe)) (vector? _kwt64571_))
                '#!void
                (error '"expected vector" _kwt64571_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64572_))
            '#!void
            (error '"expected procedure" _K64572_))
        (let ((_keys64575_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64577_ ((_rest64579_ _all-args64573_)
                          (_args64580_ '#f)
                          (_tail64581_ '#f))
            (let* ((_rest6458264590_ _rest64579_)
                   (_else6458464598_
                    (lambda ()
                      (if _args64580_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64581_ '()))
                            (let ((__tmp78440
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64575_ _args64580_))))
                              (declare (not safe))
                              (##apply _K64572_ __tmp78440)))
                          (_K64572_ _keys64575_))))
                   (_K6458664662_
                    (lambda (_hd-rest64601_ _hd64602_)
                      (if (keyword? _hd64602_)
                          (let* ((_hd-rest6460364610_ _hd-rest64601_)
                                 (_E6460564614_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6460364610_)))
                                 (_K6460664622_
                                  (lambda (_rest64617_ _val64618_)
                                    (if _kwt64571_
                                        (let ((_pos64620_
                                               (let ((__tmp78444
                                                      (keyword-hash _hd64602_))
                                                     (__tmp78443
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64571_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78444
                                                  __tmp78443))))
                                          (if (let ((__tmp78445
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64571_
                                                        _pos64620_))))
                                                (declare (not safe))
                                                (eq? _hd64602_ __tmp78445))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64572_
                                                     _hd64602_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64575_ _hd64602_))
                                        (error '"Duplicate keyword argument"
                                               _K64572_
                                               _hd64602_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64575_
                                       _hd64602_
                                       _val64618_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64577_
                                       _rest64617_
                                       _args64580_
                                       _tail64581_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6460364610_))
                                (let ((_hd6460764625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6460364610_)))
                                      (_tl6460864627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6460364610_))))
                                  (let* ((_val64630_ _hd6460764625_)
                                         (_rest64632_ _tl6460864627_))
                                    (declare (not safe))
                                    (_K6460664622_ _rest64632_ _val64630_)))
                                (let () (declare (not safe)) (_E6460564614_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64602_ '#!key))
                              (let* ((_hd-rest6463364640_ _hd-rest64601_)
                                     (_E6463564644_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6463364640_)))
                                     (_K6463664650_
                                      (lambda (_rest64647_ _val64648_)
                                        (if _args64580_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64581_
                                                 _hd-rest64601_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64577_
                                                 _rest64647_
                                                 _args64580_
                                                 _hd-rest64601_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64577_
                                               _rest64647_
                                               _hd-rest64601_
                                               _hd-rest64601_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6463364640_))
                                    (let ((_hd6463764653_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6463364640_)))
                                          (_tl6463864655_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6463364640_))))
                                      (let* ((_val64658_ _hd6463764653_)
                                             (_rest64660_ _tl6463864655_))
                                        (declare (not safe))
                                        (_K6463664650_
                                         _rest64660_
                                         _val64658_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6463564644_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64602_ '#!rest))
                                  (if _args64580_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64581_
                                           _hd-rest64601_))
                                        (let ((__tmp78442
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64575_
                                                       _args64580_))))
                                          (declare (not safe))
                                          (##apply _K64572_ __tmp78442)))
                                      (let ((__tmp78441
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64575_
                                                     _hd-rest64601_))))
                                        (declare (not safe))
                                        (##apply _K64572_ __tmp78441)))
                                  (if _args64580_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64581_ _rest64579_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64577_
                                           _hd-rest64601_
                                           _args64580_
                                           _rest64579_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64577_
                                         _hd-rest64601_
                                         _rest64579_
                                         _rest64579_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6458264590_))
                  (let ((_hd6458764665_
                         (let ()
                           (declare (not safe))
                           (##car _rest6458264590_)))
                        (_tl6458864667_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6458264590_))))
                    (let* ((_hd64670_ _hd6458764665_)
                           (_hd-rest64672_ _tl6458864667_))
                      (declare (not safe))
                      (_K6458664662_ _hd-rest64672_ _hd64670_)))
                  (let () (declare (not safe)) (_else6458464598_))))))))
    (define keyword-rest
      (lambda (_kwt64562_ . _drop64563_)
        (for-each
         (lambda (_kw64565_)
           (let () (declare (not safe)) (table-set! _kwt64562_ _kw64565_)))
         _drop64563_)
        (let ((__tmp78446
               (lambda (_k64567_ _v64568_ _r64569_)
                 (let ((__tmp78447
                        (let ()
                          (declare (not safe))
                          (cons _v64568_ _r64569_))))
                   (declare (not safe))
                   (cons _k64567_ __tmp78447)))))
          (declare (not safe))
          (hash-fold __tmp78446 '() _kwt64562_))))))
