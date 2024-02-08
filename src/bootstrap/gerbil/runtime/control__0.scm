(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707416388)
  (begin
    (define make-promise
      (lambda (_thunk63851_)
        (let () (declare (not safe)) (##make-delay-promise _thunk63851_))))
    (define call-with-parameters
      (lambda (_thunk63799_ . _rest63800_)
        (let* ((_rest6380163812_ _rest63800_)
               (_E6380463816_
                (lambda () (error '"No clause matching" _rest6380163812_))))
          (let ((_K6380663832_
                 (lambda (_rest63827_ _val63828_ _param63829_)
                   (let ((__tmp76735
                          (if (let () (declare (not safe)) (null? _rest63827_))
                              _thunk63799_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk63799_
                                       _rest63827_)))))
                     (declare (not safe))
                     (##parameterize1 _param63829_ _val63828_ __tmp76735))))
                (_K6380563821_ (lambda () (_thunk63799_))))
            (let ((_try-match6380363824_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6380163812_))
                         (let () (declare (not safe)) (_thunk63799_))
                         (let () (declare (not safe)) (_E6380463816_))))))
              (if (let () (declare (not safe)) (##pair? _rest6380163812_))
                  (let ((_tl6380863837_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6380163812_)))
                        (_hd6380763835_
                         (let ()
                           (declare (not safe))
                           (##car _rest6380163812_))))
                    (if (let () (declare (not safe)) (##pair? _tl6380863837_))
                        (let ((_tl6381063844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6380863837_)))
                              (_hd6380963842_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6380863837_))))
                          (let ((_param63840_ _hd6380763835_)
                                (_val63847_ _hd6380963842_)
                                (_rest63849_ _tl6381063844_))
                            (let ()
                              (declare (not safe))
                              (_K6380663832_
                               _rest63849_
                               _val63847_
                               _param63840_))))
                        (let () (declare (not safe)) (_E6380463816_))))
                  (let () (declare (not safe)) (_try-match6380363824_))))))))
    (define with-unwind-protect
      (lambda (_K63792_ _fini63793_)
        (let ((_once63795_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once63795_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once63795_ '#t)))
           _K63792_
           _fini63793_))))
    (define keyword-dispatch
      (lambda (_kwt63689_ _K63690_ . _all-args63691_)
        (if _kwt63689_
            (if (let () (declare (not safe)) (vector? _kwt63689_))
                '#!void
                (error '"expected vector" _kwt63689_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K63690_))
            '#!void
            (error '"expected procedure" _K63690_))
        (let ((_keys63693_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp63695_ ((_rest63697_ _all-args63691_)
                          (_args63698_ '#f)
                          (_tail63699_ '#f))
            (let* ((_rest6370063708_ _rest63697_)
                   (_else6370263716_
                    (lambda ()
                      (if _args63698_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail63699_ '()))
                            (let ((__tmp76736
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys63693_ _args63698_))))
                              (declare (not safe))
                              (##apply _K63690_ __tmp76736)))
                          (_K63690_ _keys63693_))))
                   (_K6370463780_
                    (lambda (_hd-rest63719_ _hd63720_)
                      (if (keyword? _hd63720_)
                          (let* ((_hd-rest6372163728_ _hd-rest63719_)
                                 (_E6372363732_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6372163728_)))
                                 (_K6372463740_
                                  (lambda (_rest63735_ _val63736_)
                                    (if _kwt63689_
                                        (let ((_pos63738_
                                               (let ((__tmp76740
                                                      (keyword-hash _hd63720_))
                                                     (__tmp76739
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt63689_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp76740
                                                  __tmp76739))))
                                          (if (let ((__tmp76741
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt63689_
                                                        _pos63738_))))
                                                (declare (not safe))
                                                (eq? _hd63720_ __tmp76741))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K63690_
                                                     _hd63720_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys63693_ _hd63720_))
                                        (error '"Duplicate keyword argument"
                                               _K63690_
                                               _hd63720_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys63693_
                                       _hd63720_
                                       _val63736_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp63695_
                                       _rest63735_
                                       _args63698_
                                       _tail63699_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6372163728_))
                                (let ((_hd6372563743_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6372163728_)))
                                      (_tl6372663745_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6372163728_))))
                                  (let* ((_val63748_ _hd6372563743_)
                                         (_rest63750_ _tl6372663745_))
                                    (declare (not safe))
                                    (_K6372463740_ _rest63750_ _val63748_)))
                                (let () (declare (not safe)) (_E6372363732_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd63720_ '#!key))
                              (let* ((_hd-rest6375163758_ _hd-rest63719_)
                                     (_E6375363762_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6375163758_)))
                                     (_K6375463768_
                                      (lambda (_rest63765_ _val63766_)
                                        (if _args63698_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail63699_
                                                 _hd-rest63719_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp63695_
                                                 _rest63765_
                                                 _args63698_
                                                 _hd-rest63719_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp63695_
                                               _rest63765_
                                               _hd-rest63719_
                                               _hd-rest63719_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6375163758_))
                                    (let ((_hd6375563771_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6375163758_)))
                                          (_tl6375663773_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6375163758_))))
                                      (let* ((_val63776_ _hd6375563771_)
                                             (_rest63778_ _tl6375663773_))
                                        (declare (not safe))
                                        (_K6375463768_
                                         _rest63778_
                                         _val63776_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6375363762_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd63720_ '#!rest))
                                  (if _args63698_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail63699_
                                           _hd-rest63719_))
                                        (let ((__tmp76738
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys63693_
                                                       _args63698_))))
                                          (declare (not safe))
                                          (##apply _K63690_ __tmp76738)))
                                      (let ((__tmp76737
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys63693_
                                                     _hd-rest63719_))))
                                        (declare (not safe))
                                        (##apply _K63690_ __tmp76737)))
                                  (if _args63698_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail63699_ _rest63697_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp63695_
                                           _hd-rest63719_
                                           _args63698_
                                           _rest63697_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp63695_
                                         _hd-rest63719_
                                         _rest63697_
                                         _rest63697_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6370063708_))
                  (let ((_hd6370563783_
                         (let ()
                           (declare (not safe))
                           (##car _rest6370063708_)))
                        (_tl6370663785_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6370063708_))))
                    (let* ((_hd63788_ _hd6370563783_)
                           (_hd-rest63790_ _tl6370663785_))
                      (declare (not safe))
                      (_K6370463780_ _hd-rest63790_ _hd63788_)))
                  (let () (declare (not safe)) (_else6370263716_))))))))
    (define keyword-rest
      (lambda (_kwt63680_ . _drop63681_)
        (for-each
         (lambda (_kw63683_)
           (let () (declare (not safe)) (table-set! _kwt63680_ _kw63683_)))
         _drop63681_)
        (let ((__tmp76742
               (lambda (_k63685_ _v63686_ _r63687_)
                 (let ((__tmp76743
                        (let ()
                          (declare (not safe))
                          (cons _v63686_ _r63687_))))
                   (declare (not safe))
                   (cons _k63685_ __tmp76743)))))
          (declare (not safe))
          (hash-fold __tmp76742 '() _kwt63680_))))))
