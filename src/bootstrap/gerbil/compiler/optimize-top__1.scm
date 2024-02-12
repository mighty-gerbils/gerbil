(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx228531_)
      (let* ((_g228535228564_
              (lambda (_g228536228560_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228536228560_))))
             (_g228534228665_
              (lambda (_g228536228568_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228536228568_))
                    (let ((_e228541228571_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228536228568_))))
                      (let ((_hd228540228575_
                             (let ()
                               (declare (not safe))
                               (##car _e228541228571_)))
                            (_tl228539228578_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228541228571_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228539228578_))
                            (let ((_g244025_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228539228578_
                                      '0))))
                              (begin
                                (let ((_g244026_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244025_)
                                             (##vector-length _g244025_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244026_ 2)))
                                      (error "Context expects 2 values"
                                             _g244026_)))
                                (let ((_target228542228581_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244025_ 0)))
                                      (_tl228544228584_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244025_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228544228584_))
                                      (letrec ((_loop228545228587_
                                                (lambda (_hd228543228591_
                                                         _type-e228549228594_
                                                         _id228550228596_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228543228591_))
                                                      (let ((_e228546228599_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228543228591_))))
                (let ((_lp-hd228547228603_
                       (let () (declare (not safe)) (##car _e228546228599_)))
                      (_lp-tl228548228606_
                       (let () (declare (not safe)) (##cdr _e228546228599_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228547228603_))
                      (let ((_e228555228609_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228547228603_))))
                        (let ((_hd228554228613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228555228609_)))
                              (_tl228553228616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228555228609_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228553228616_))
                              (let ((_e228558228619_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228553228616_))))
                                (let ((_hd228557228623_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228558228619_)))
                                      (_tl228556228626_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228558228619_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228556228626_))
                                      (_loop228545228587_
                                       _lp-tl228548228606_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228557228623_
                                               _type-e228549228594_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228554228613_
                                               _id228550228596_)))
                                      (_g228535228564_ _g228536228568_))))
                              (_g228535228564_ _g228536228568_))))
                      (_g228535228564_ _g228536228568_))))
              (let ((_type-e228551228629_ (reverse _type-e228549228594_))
                    (_id228552228632_ (reverse _id228550228596_)))
                ((lambda (_L228635_ _L228637_)
                   (let ((__tmp244038
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244027
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228635_
                               _L228637_))
                            (let ((__tmp244028
                                   (lambda (_g228653228657_
                                            _g228654228660_
                                            _g228655228662_)
                                     (let ((__tmp244029
                                            (let ((__tmp244037
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244030
                                                   (let ((__tmp244036
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244031
                                                          (let ((__tmp244033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244035
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244034
                                (let ()
                                  (declare (not safe))
                                  (cons _g228654228660_ '()))))
                           (declare (not safe))
                           (cons __tmp244035 __tmp244034)))
                        (__tmp244032
                         (let ()
                           (declare (not safe))
                           (cons _g228653228657_ '()))))
                    (declare (not safe))
                    (cons __tmp244033 __tmp244032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244036
                                                           __tmp244031))))
                                              (declare (not safe))
                                              (cons __tmp244037 __tmp244030))))
                                       (declare (not safe))
                                       (cons __tmp244029 _g228655228662_)))))
                              (declare (not safe))
                              (foldr2 __tmp244028 '() _L228635_ _L228637_)))))
                     (declare (not safe))
                     (cons __tmp244038 __tmp244027)))
                 _type-e228551228629_
                 _id228552228632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228545228587_
                                         _target228542228581_
                                         '()
                                         '()))
                                      (_g228535228564_ _g228536228568_)))))
                            (_g228535228564_ _g228536228568_))))
                    (_g228535228564_ _g228536228568_)))))
        (_g228534228665_ _$stx228531_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx228670_)
      (let* ((_g228674228703_
              (lambda (_g228675228699_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228675228699_))))
             (_g228673228803_
              (lambda (_g228675228707_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228675228707_))
                    (let ((_e228680228710_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228675228707_))))
                      (let ((_hd228679228714_
                             (let ()
                               (declare (not safe))
                               (##car _e228680228710_)))
                            (_tl228678228717_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228680228710_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228678228717_))
                            (let ((_g244039_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228678228717_
                                      '0))))
                              (begin
                                (let ((_g244040_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244039_)
                                             (##vector-length _g244039_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244040_ 2)))
                                      (error "Context expects 2 values"
                                             _g244040_)))
                                (let ((_target228681228720_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244039_ 0)))
                                      (_tl228683228723_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244039_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228683228723_))
                                      (letrec ((_loop228684228726_
                                                (lambda (_hd228682228730_
                                                         _type-e228688228733_
                                                         _id228689228735_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228682228730_))
                                                      (let ((_e228685228738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228682228730_))))
                (let ((_lp-hd228686228742_
                       (let () (declare (not safe)) (##car _e228685228738_)))
                      (_lp-tl228687228745_
                       (let () (declare (not safe)) (##cdr _e228685228738_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228686228742_))
                      (let ((_e228694228748_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228686228742_))))
                        (let ((_hd228693228752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228694228748_)))
                              (_tl228692228755_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228694228748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228692228755_))
                              (let ((_e228697228758_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228692228755_))))
                                (let ((_hd228696228762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228697228758_)))
                                      (_tl228695228765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228697228758_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228695228765_))
                                      (_loop228684228726_
                                       _lp-tl228687228745_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228696228762_
                                               _type-e228688228733_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228693228752_
                                               _id228689228735_)))
                                      (_g228674228703_ _g228675228707_))))
                              (_g228674228703_ _g228675228707_))))
                      (_g228674228703_ _g228675228707_))))
              (let ((_type-e228690228768_ (reverse _type-e228688228733_))
                    (_id228691228771_ (reverse _id228689228735_)))
                ((lambda (_L228774_ _L228776_)
                   (let ((__tmp244052
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244041
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228774_
                               _L228776_))
                            (let ((__tmp244042
                                   (lambda (_g228791228795_
                                            _g228792228798_
                                            _g228793228800_)
                                     (let ((__tmp244043
                                            (let ((__tmp244051
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244044
                                                   (let ((__tmp244050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244045
                                                          (let ((__tmp244047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244049
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244048
                                (let ()
                                  (declare (not safe))
                                  (cons _g228792228798_ '()))))
                           (declare (not safe))
                           (cons __tmp244049 __tmp244048)))
                        (__tmp244046
                         (let ()
                           (declare (not safe))
                           (cons _g228791228795_ '()))))
                    (declare (not safe))
                    (cons __tmp244047 __tmp244046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244050
                                                           __tmp244045))))
                                              (declare (not safe))
                                              (cons __tmp244051 __tmp244044))))
                                       (declare (not safe))
                                       (cons __tmp244043 _g228793228800_)))))
                              (declare (not safe))
                              (foldr2 __tmp244042 '() _L228774_ _L228776_)))))
                     (declare (not safe))
                     (cons __tmp244052 __tmp244041)))
                 _type-e228690228768_
                 _id228691228771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228684228726_
                                         _target228681228720_
                                         '()
                                         '()))
                                      (_g228674228703_ _g228675228707_)))))
                            (_g228674228703_ _g228675228707_))))
                    (_g228674228703_ _g228675228707_)))))
        (_g228673228803_ _$stx228670_)))))
