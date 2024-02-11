(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707610212)
  (begin
    (define make-promise
      (lambda (_thunk64735_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64735_))))
    (define call-with-parameters
      (lambda (_thunk64683_ . _rest64684_)
        (let* ((_rest6468564696_ _rest64684_)
               (_E6468864700_
                (lambda () (error '"No clause matching" _rest6468564696_))))
          (let ((_K6469064716_
                 (lambda (_rest64711_ _val64712_ _param64713_)
                   (let ((__tmp78441
                          (if (let () (declare (not safe)) (null? _rest64711_))
                              _thunk64683_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64683_
                                       _rest64711_)))))
                     (declare (not safe))
                     (##parameterize1 _param64713_ _val64712_ __tmp78441))))
                (_K6468964705_ (lambda () (_thunk64683_))))
            (let ((_try-match6468764708_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6468564696_))
                         (let () (declare (not safe)) (_thunk64683_))
                         (let () (declare (not safe)) (_E6468864700_))))))
              (if (let () (declare (not safe)) (##pair? _rest6468564696_))
                  (let ((_tl6469264721_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6468564696_)))
                        (_hd6469164719_
                         (let ()
                           (declare (not safe))
                           (##car _rest6468564696_))))
                    (if (let () (declare (not safe)) (##pair? _tl6469264721_))
                        (let ((_tl6469464728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6469264721_)))
                              (_hd6469364726_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6469264721_))))
                          (let ((_param64724_ _hd6469164719_)
                                (_val64731_ _hd6469364726_)
                                (_rest64733_ _tl6469464728_))
                            (let ()
                              (declare (not safe))
                              (_K6469064716_
                               _rest64733_
                               _val64731_
                               _param64724_))))
                        (let () (declare (not safe)) (_E6468864700_))))
                  (let () (declare (not safe)) (_try-match6468764708_))))))))
    (define with-unwind-protect
      (lambda (_K64676_ _fini64677_)
        (let ((_once64679_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64679_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64679_ '#t)))
           _K64676_
           _fini64677_))))
    (define keyword-dispatch
      (lambda (_kwt64573_ _K64574_ . _all-args64575_)
        (if _kwt64573_
            (if (let () (declare (not safe)) (vector? _kwt64573_))
                '#!void
                (error '"expected vector" _kwt64573_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64574_))
            '#!void
            (error '"expected procedure" _K64574_))
        (let ((_keys64577_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64579_ ((_rest64581_ _all-args64575_)
                          (_args64582_ '#f)
                          (_tail64583_ '#f))
            (let* ((_rest6458464592_ _rest64581_)
                   (_else6458664600_
                    (lambda ()
                      (if _args64582_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64583_ '()))
                            (let ((__tmp78442
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64577_ _args64582_))))
                              (declare (not safe))
                              (##apply _K64574_ __tmp78442)))
                          (_K64574_ _keys64577_))))
                   (_K6458864664_
                    (lambda (_hd-rest64603_ _hd64604_)
                      (if (keyword? _hd64604_)
                          (let* ((_hd-rest6460564612_ _hd-rest64603_)
                                 (_E6460764616_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6460564612_)))
                                 (_K6460864624_
                                  (lambda (_rest64619_ _val64620_)
                                    (if _kwt64573_
                                        (let ((_pos64622_
                                               (let ((__tmp78446
                                                      (keyword-hash _hd64604_))
                                                     (__tmp78445
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64573_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78446
                                                  __tmp78445))))
                                          (if (let ((__tmp78447
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64573_
                                                        _pos64622_))))
                                                (declare (not safe))
                                                (eq? _hd64604_ __tmp78447))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64574_
                                                     _hd64604_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64577_ _hd64604_))
                                        (error '"Duplicate keyword argument"
                                               _K64574_
                                               _hd64604_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64577_
                                       _hd64604_
                                       _val64620_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64579_
                                       _rest64619_
                                       _args64582_
                                       _tail64583_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6460564612_))
                                (let ((_hd6460964627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6460564612_)))
                                      (_tl6461064629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6460564612_))))
                                  (let* ((_val64632_ _hd6460964627_)
                                         (_rest64634_ _tl6461064629_))
                                    (declare (not safe))
                                    (_K6460864624_ _rest64634_ _val64632_)))
                                (let () (declare (not safe)) (_E6460764616_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64604_ '#!key))
                              (let* ((_hd-rest6463564642_ _hd-rest64603_)
                                     (_E6463764646_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6463564642_)))
                                     (_K6463864652_
                                      (lambda (_rest64649_ _val64650_)
                                        (if _args64582_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64583_
                                                 _hd-rest64603_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64579_
                                                 _rest64649_
                                                 _args64582_
                                                 _hd-rest64603_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64579_
                                               _rest64649_
                                               _hd-rest64603_
                                               _hd-rest64603_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6463564642_))
                                    (let ((_hd6463964655_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6463564642_)))
                                          (_tl6464064657_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6463564642_))))
                                      (let* ((_val64660_ _hd6463964655_)
                                             (_rest64662_ _tl6464064657_))
                                        (declare (not safe))
                                        (_K6463864652_
                                         _rest64662_
                                         _val64660_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6463764646_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64604_ '#!rest))
                                  (if _args64582_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64583_
                                           _hd-rest64603_))
                                        (let ((__tmp78444
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64577_
                                                       _args64582_))))
                                          (declare (not safe))
                                          (##apply _K64574_ __tmp78444)))
                                      (let ((__tmp78443
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64577_
                                                     _hd-rest64603_))))
                                        (declare (not safe))
                                        (##apply _K64574_ __tmp78443)))
                                  (if _args64582_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64583_ _rest64581_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64579_
                                           _hd-rest64603_
                                           _args64582_
                                           _rest64581_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64579_
                                         _hd-rest64603_
                                         _rest64581_
                                         _rest64581_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6458464592_))
                  (let ((_hd6458964667_
                         (let ()
                           (declare (not safe))
                           (##car _rest6458464592_)))
                        (_tl6459064669_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6458464592_))))
                    (let* ((_hd64672_ _hd6458964667_)
                           (_hd-rest64674_ _tl6459064669_))
                      (declare (not safe))
                      (_K6458864664_ _hd-rest64674_ _hd64672_)))
                  (let () (declare (not safe)) (_else6458664600_))))))))
    (define keyword-rest
      (lambda (_kwt64564_ . _drop64565_)
        (for-each
         (lambda (_kw64567_)
           (let () (declare (not safe)) (table-set! _kwt64564_ _kw64567_)))
         _drop64565_)
        (let ((__tmp78448
               (lambda (_k64569_ _v64570_ _r64571_)
                 (let ((__tmp78449
                        (let ()
                          (declare (not safe))
                          (cons _v64570_ _r64571_))))
                   (declare (not safe))
                   (cons _k64569_ __tmp78449)))))
          (declare (not safe))
          (hash-fold __tmp78448 '() _kwt64564_))))))
