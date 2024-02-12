(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx228532_)
      (let* ((_g228536228565_
              (lambda (_g228537228561_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228537228561_))))
             (_g228535228666_
              (lambda (_g228537228569_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228537228569_))
                    (let ((_e228542228572_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228537228569_))))
                      (let ((_hd228541228576_
                             (let ()
                               (declare (not safe))
                               (##car _e228542228572_)))
                            (_tl228540228579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228542228572_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228540228579_))
                            (let ((_g244026_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228540228579_
                                      '0))))
                              (begin
                                (let ((_g244027_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244026_)
                                             (##vector-length _g244026_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244027_ 2)))
                                      (error "Context expects 2 values"
                                             _g244027_)))
                                (let ((_target228543228582_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244026_ 0)))
                                      (_tl228545228585_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244026_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228545228585_))
                                      (letrec ((_loop228546228588_
                                                (lambda (_hd228544228592_
                                                         _type-e228550228595_
                                                         _id228551228597_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228544228592_))
                                                      (let ((_e228547228600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228544228592_))))
                (let ((_lp-hd228548228604_
                       (let () (declare (not safe)) (##car _e228547228600_)))
                      (_lp-tl228549228607_
                       (let () (declare (not safe)) (##cdr _e228547228600_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228548228604_))
                      (let ((_e228556228610_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228548228604_))))
                        (let ((_hd228555228614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228556228610_)))
                              (_tl228554228617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228556228610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228554228617_))
                              (let ((_e228559228620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228554228617_))))
                                (let ((_hd228558228624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228559228620_)))
                                      (_tl228557228627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228559228620_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228557228627_))
                                      (_loop228546228588_
                                       _lp-tl228549228607_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228558228624_
                                               _type-e228550228595_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228555228614_
                                               _id228551228597_)))
                                      (_g228536228565_ _g228537228569_))))
                              (_g228536228565_ _g228537228569_))))
                      (_g228536228565_ _g228537228569_))))
              (let ((_type-e228552228630_ (reverse _type-e228550228595_))
                    (_id228553228633_ (reverse _id228551228597_)))
                ((lambda (_L228636_ _L228638_)
                   (let ((__tmp244039
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244028
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228636_
                               _L228638_))
                            (let ((__tmp244029
                                   (lambda (_g228654228658_
                                            _g228655228661_
                                            _g228656228663_)
                                     (let ((__tmp244030
                                            (let ((__tmp244038
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244031
                                                   (let ((__tmp244037
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244032
                                                          (let ((__tmp244034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244036
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244035
                                (let ()
                                  (declare (not safe))
                                  (cons _g228655228661_ '()))))
                           (declare (not safe))
                           (cons __tmp244036 __tmp244035)))
                        (__tmp244033
                         (let ()
                           (declare (not safe))
                           (cons _g228654228658_ '()))))
                    (declare (not safe))
                    (cons __tmp244034 __tmp244033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244037
                                                           __tmp244032))))
                                              (declare (not safe))
                                              (cons __tmp244038 __tmp244031))))
                                       (declare (not safe))
                                       (cons __tmp244030 _g228656228663_)))))
                              (declare (not safe))
                              (foldr2 __tmp244029 '() _L228636_ _L228638_)))))
                     (declare (not safe))
                     (cons __tmp244039 __tmp244028)))
                 _type-e228552228630_
                 _id228553228633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228546228588_
                                         _target228543228582_
                                         '()
                                         '()))
                                      (_g228536228565_ _g228537228569_)))))
                            (_g228536228565_ _g228537228569_))))
                    (_g228536228565_ _g228537228569_)))))
        (_g228535228666_ _$stx228532_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx228671_)
      (let* ((_g228675228704_
              (lambda (_g228676228700_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228676228700_))))
             (_g228674228804_
              (lambda (_g228676228708_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228676228708_))
                    (let ((_e228681228711_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228676228708_))))
                      (let ((_hd228680228715_
                             (let ()
                               (declare (not safe))
                               (##car _e228681228711_)))
                            (_tl228679228718_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228681228711_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228679228718_))
                            (let ((_g244040_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228679228718_
                                      '0))))
                              (begin
                                (let ((_g244041_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244040_)
                                             (##vector-length _g244040_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244041_ 2)))
                                      (error "Context expects 2 values"
                                             _g244041_)))
                                (let ((_target228682228721_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244040_ 0)))
                                      (_tl228684228724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244040_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228684228724_))
                                      (letrec ((_loop228685228727_
                                                (lambda (_hd228683228731_
                                                         _type-e228689228734_
                                                         _id228690228736_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228683228731_))
                                                      (let ((_e228686228739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228683228731_))))
                (let ((_lp-hd228687228743_
                       (let () (declare (not safe)) (##car _e228686228739_)))
                      (_lp-tl228688228746_
                       (let () (declare (not safe)) (##cdr _e228686228739_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228687228743_))
                      (let ((_e228695228749_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228687228743_))))
                        (let ((_hd228694228753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228695228749_)))
                              (_tl228693228756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228695228749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228693228756_))
                              (let ((_e228698228759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228693228756_))))
                                (let ((_hd228697228763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228698228759_)))
                                      (_tl228696228766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228698228759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228696228766_))
                                      (_loop228685228727_
                                       _lp-tl228688228746_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228697228763_
                                               _type-e228689228734_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228694228753_
                                               _id228690228736_)))
                                      (_g228675228704_ _g228676228708_))))
                              (_g228675228704_ _g228676228708_))))
                      (_g228675228704_ _g228676228708_))))
              (let ((_type-e228691228769_ (reverse _type-e228689228734_))
                    (_id228692228772_ (reverse _id228690228736_)))
                ((lambda (_L228775_ _L228777_)
                   (let ((__tmp244053
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244042
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228775_
                               _L228777_))
                            (let ((__tmp244043
                                   (lambda (_g228792228796_
                                            _g228793228799_
                                            _g228794228801_)
                                     (let ((__tmp244044
                                            (let ((__tmp244052
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244045
                                                   (let ((__tmp244051
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244046
                                                          (let ((__tmp244048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244050
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244049
                                (let ()
                                  (declare (not safe))
                                  (cons _g228793228799_ '()))))
                           (declare (not safe))
                           (cons __tmp244050 __tmp244049)))
                        (__tmp244047
                         (let ()
                           (declare (not safe))
                           (cons _g228792228796_ '()))))
                    (declare (not safe))
                    (cons __tmp244048 __tmp244047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244051
                                                           __tmp244046))))
                                              (declare (not safe))
                                              (cons __tmp244052 __tmp244045))))
                                       (declare (not safe))
                                       (cons __tmp244044 _g228794228801_)))))
                              (declare (not safe))
                              (foldr2 __tmp244043 '() _L228775_ _L228777_)))))
                     (declare (not safe))
                     (cons __tmp244053 __tmp244042)))
                 _type-e228691228769_
                 _id228692228772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228685228727_
                                         _target228682228721_
                                         '()
                                         '()))
                                      (_g228675228704_ _g228676228708_)))))
                            (_g228675228704_ _g228676228708_))))
                    (_g228675228704_ _g228676228708_)))))
        (_g228674228804_ _$stx228671_)))))
