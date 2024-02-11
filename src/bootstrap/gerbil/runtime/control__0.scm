(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707657568)
  (begin
    (define make-promise
      (lambda (_thunk64406_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64406_))))
    (define call-with-parameters
      (lambda (_thunk64354_ . _rest64355_)
        (let* ((_rest6435664367_ _rest64355_)
               (_E6435964371_
                (lambda () (error '"No clause matching" _rest6435664367_))))
          (let ((_K6436164387_
                 (lambda (_rest64382_ _val64383_ _param64384_)
                   (let ((__tmp78112
                          (if (let () (declare (not safe)) (null? _rest64382_))
                              _thunk64354_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64354_
                                       _rest64382_)))))
                     (declare (not safe))
                     (##parameterize1 _param64384_ _val64383_ __tmp78112))))
                (_K6436064376_ (lambda () (_thunk64354_))))
            (let ((_try-match6435864379_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6435664367_))
                         (let () (declare (not safe)) (_thunk64354_))
                         (let () (declare (not safe)) (_E6435964371_))))))
              (if (let () (declare (not safe)) (##pair? _rest6435664367_))
                  (let ((_tl6436364392_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6435664367_)))
                        (_hd6436264390_
                         (let ()
                           (declare (not safe))
                           (##car _rest6435664367_))))
                    (if (let () (declare (not safe)) (##pair? _tl6436364392_))
                        (let ((_tl6436564399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6436364392_)))
                              (_hd6436464397_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6436364392_))))
                          (let ((_param64395_ _hd6436264390_)
                                (_val64402_ _hd6436464397_)
                                (_rest64404_ _tl6436564399_))
                            (let ()
                              (declare (not safe))
                              (_K6436164387_
                               _rest64404_
                               _val64402_
                               _param64395_))))
                        (let () (declare (not safe)) (_E6435964371_))))
                  (let () (declare (not safe)) (_try-match6435864379_))))))))
    (define with-unwind-protect
      (lambda (_K64347_ _fini64348_)
        (let ((_once64350_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64350_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64350_ '#t)))
           _K64347_
           _fini64348_))))
    (define keyword-dispatch
      (lambda (_kwt64244_ _K64245_ . _all-args64246_)
        (if _kwt64244_
            (if (let () (declare (not safe)) (vector? _kwt64244_))
                '#!void
                (error '"expected vector" _kwt64244_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64245_))
            '#!void
            (error '"expected procedure" _K64245_))
        (let ((_keys64248_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64250_ ((_rest64252_ _all-args64246_)
                          (_args64253_ '#f)
                          (_tail64254_ '#f))
            (let* ((_rest6425564263_ _rest64252_)
                   (_else6425764271_
                    (lambda ()
                      (if _args64253_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64254_ '()))
                            (let ((__tmp78113
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64248_ _args64253_))))
                              (declare (not safe))
                              (##apply _K64245_ __tmp78113)))
                          (_K64245_ _keys64248_))))
                   (_K6425964335_
                    (lambda (_hd-rest64274_ _hd64275_)
                      (if (keyword? _hd64275_)
                          (let* ((_hd-rest6427664283_ _hd-rest64274_)
                                 (_E6427864287_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6427664283_)))
                                 (_K6427964295_
                                  (lambda (_rest64290_ _val64291_)
                                    (if _kwt64244_
                                        (let ((_pos64293_
                                               (let ((__tmp78117
                                                      (keyword-hash _hd64275_))
                                                     (__tmp78116
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64244_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78117
                                                  __tmp78116))))
                                          (if (let ((__tmp78118
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64244_
                                                        _pos64293_))))
                                                (declare (not safe))
                                                (eq? _hd64275_ __tmp78118))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64245_
                                                     _hd64275_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64248_ _hd64275_))
                                        (error '"Duplicate keyword argument"
                                               _K64245_
                                               _hd64275_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64248_
                                       _hd64275_
                                       _val64291_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64250_
                                       _rest64290_
                                       _args64253_
                                       _tail64254_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6427664283_))
                                (let ((_hd6428064298_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6427664283_)))
                                      (_tl6428164300_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6427664283_))))
                                  (let* ((_val64303_ _hd6428064298_)
                                         (_rest64305_ _tl6428164300_))
                                    (declare (not safe))
                                    (_K6427964295_ _rest64305_ _val64303_)))
                                (let () (declare (not safe)) (_E6427864287_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64275_ '#!key))
                              (let* ((_hd-rest6430664313_ _hd-rest64274_)
                                     (_E6430864317_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6430664313_)))
                                     (_K6430964323_
                                      (lambda (_rest64320_ _val64321_)
                                        (if _args64253_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64254_
                                                 _hd-rest64274_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64250_
                                                 _rest64320_
                                                 _args64253_
                                                 _hd-rest64274_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64250_
                                               _rest64320_
                                               _hd-rest64274_
                                               _hd-rest64274_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6430664313_))
                                    (let ((_hd6431064326_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6430664313_)))
                                          (_tl6431164328_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6430664313_))))
                                      (let* ((_val64331_ _hd6431064326_)
                                             (_rest64333_ _tl6431164328_))
                                        (declare (not safe))
                                        (_K6430964323_
                                         _rest64333_
                                         _val64331_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6430864317_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64275_ '#!rest))
                                  (if _args64253_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64254_
                                           _hd-rest64274_))
                                        (let ((__tmp78115
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64248_
                                                       _args64253_))))
                                          (declare (not safe))
                                          (##apply _K64245_ __tmp78115)))
                                      (let ((__tmp78114
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64248_
                                                     _hd-rest64274_))))
                                        (declare (not safe))
                                        (##apply _K64245_ __tmp78114)))
                                  (if _args64253_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64254_ _rest64252_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64250_
                                           _hd-rest64274_
                                           _args64253_
                                           _rest64252_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64250_
                                         _hd-rest64274_
                                         _rest64252_
                                         _rest64252_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6425564263_))
                  (let ((_hd6426064338_
                         (let ()
                           (declare (not safe))
                           (##car _rest6425564263_)))
                        (_tl6426164340_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6425564263_))))
                    (let* ((_hd64343_ _hd6426064338_)
                           (_hd-rest64345_ _tl6426164340_))
                      (declare (not safe))
                      (_K6425964335_ _hd-rest64345_ _hd64343_)))
                  (let () (declare (not safe)) (_else6425764271_))))))))
    (define keyword-rest
      (lambda (_kwt64235_ . _drop64236_)
        (for-each
         (lambda (_kw64238_)
           (let () (declare (not safe)) (table-set! _kwt64235_ _kw64238_)))
         _drop64236_)
        (let ((__tmp78119
               (lambda (_k64240_ _v64241_ _r64242_)
                 (let ((__tmp78120
                        (let ()
                          (declare (not safe))
                          (cons _v64241_ _r64242_))))
                   (declare (not safe))
                   (cons _k64240_ __tmp78120)))))
          (declare (not safe))
          (hash-fold __tmp78119 '() _kwt64235_))))))
