(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx228523_)
      (let* ((_g228527228556_
              (lambda (_g228528228552_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228528228552_))))
             (_g228526228657_
              (lambda (_g228528228560_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228528228560_))
                    (let ((_e228533228563_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228528228560_))))
                      (let ((_hd228532228567_
                             (let ()
                               (declare (not safe))
                               (##car _e228533228563_)))
                            (_tl228531228570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228533228563_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228531228570_))
                            (let ((_g244017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228531228570_
                                      '0))))
                              (begin
                                (let ((_g244018_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244017_)
                                             (##vector-length _g244017_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244018_ 2)))
                                      (error "Context expects 2 values"
                                             _g244018_)))
                                (let ((_target228534228573_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244017_ 0)))
                                      (_tl228536228576_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244017_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228536228576_))
                                      (letrec ((_loop228537228579_
                                                (lambda (_hd228535228583_
                                                         _type-e228541228586_
                                                         _id228542228588_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228535228583_))
                                                      (let ((_e228538228591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228535228583_))))
                (let ((_lp-hd228539228595_
                       (let () (declare (not safe)) (##car _e228538228591_)))
                      (_lp-tl228540228598_
                       (let () (declare (not safe)) (##cdr _e228538228591_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228539228595_))
                      (let ((_e228547228601_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228539228595_))))
                        (let ((_hd228546228605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228547228601_)))
                              (_tl228545228608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228547228601_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228545228608_))
                              (let ((_e228550228611_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228545228608_))))
                                (let ((_hd228549228615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228550228611_)))
                                      (_tl228548228618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228550228611_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228548228618_))
                                      (_loop228537228579_
                                       _lp-tl228540228598_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228549228615_
                                               _type-e228541228586_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228546228605_
                                               _id228542228588_)))
                                      (_g228527228556_ _g228528228560_))))
                              (_g228527228556_ _g228528228560_))))
                      (_g228527228556_ _g228528228560_))))
              (let ((_type-e228543228621_ (reverse _type-e228541228586_))
                    (_id228544228624_ (reverse _id228542228588_)))
                ((lambda (_L228627_ _L228629_)
                   (let ((__tmp244030
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244019
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228627_
                               _L228629_))
                            (let ((__tmp244020
                                   (lambda (_g228645228649_
                                            _g228646228652_
                                            _g228647228654_)
                                     (let ((__tmp244021
                                            (let ((__tmp244029
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244022
                                                   (let ((__tmp244028
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244023
                                                          (let ((__tmp244025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244027
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244026
                                (let ()
                                  (declare (not safe))
                                  (cons _g228646228652_ '()))))
                           (declare (not safe))
                           (cons __tmp244027 __tmp244026)))
                        (__tmp244024
                         (let ()
                           (declare (not safe))
                           (cons _g228645228649_ '()))))
                    (declare (not safe))
                    (cons __tmp244025 __tmp244024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244028
                                                           __tmp244023))))
                                              (declare (not safe))
                                              (cons __tmp244029 __tmp244022))))
                                       (declare (not safe))
                                       (cons __tmp244021 _g228647228654_)))))
                              (declare (not safe))
                              (foldr2 __tmp244020 '() _L228627_ _L228629_)))))
                     (declare (not safe))
                     (cons __tmp244030 __tmp244019)))
                 _type-e228543228621_
                 _id228544228624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228537228579_
                                         _target228534228573_
                                         '()
                                         '()))
                                      (_g228527228556_ _g228528228560_)))))
                            (_g228527228556_ _g228528228560_))))
                    (_g228527228556_ _g228528228560_)))))
        (_g228526228657_ _$stx228523_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx228662_)
      (let* ((_g228666228695_
              (lambda (_g228667228691_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228667228691_))))
             (_g228665228795_
              (lambda (_g228667228699_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228667228699_))
                    (let ((_e228672228702_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228667228699_))))
                      (let ((_hd228671228706_
                             (let ()
                               (declare (not safe))
                               (##car _e228672228702_)))
                            (_tl228670228709_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228672228702_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228670228709_))
                            (let ((_g244031_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228670228709_
                                      '0))))
                              (begin
                                (let ((_g244032_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244031_)
                                             (##vector-length _g244031_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244032_ 2)))
                                      (error "Context expects 2 values"
                                             _g244032_)))
                                (let ((_target228673228712_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244031_ 0)))
                                      (_tl228675228715_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244031_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228675228715_))
                                      (letrec ((_loop228676228718_
                                                (lambda (_hd228674228722_
                                                         _type-e228680228725_
                                                         _id228681228727_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228674228722_))
                                                      (let ((_e228677228730_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228674228722_))))
                (let ((_lp-hd228678228734_
                       (let () (declare (not safe)) (##car _e228677228730_)))
                      (_lp-tl228679228737_
                       (let () (declare (not safe)) (##cdr _e228677228730_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228678228734_))
                      (let ((_e228686228740_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228678228734_))))
                        (let ((_hd228685228744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228686228740_)))
                              (_tl228684228747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228686228740_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228684228747_))
                              (let ((_e228689228750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228684228747_))))
                                (let ((_hd228688228754_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228689228750_)))
                                      (_tl228687228757_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228689228750_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228687228757_))
                                      (_loop228676228718_
                                       _lp-tl228679228737_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228688228754_
                                               _type-e228680228725_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228685228744_
                                               _id228681228727_)))
                                      (_g228666228695_ _g228667228699_))))
                              (_g228666228695_ _g228667228699_))))
                      (_g228666228695_ _g228667228699_))))
              (let ((_type-e228682228760_ (reverse _type-e228680228725_))
                    (_id228683228763_ (reverse _id228681228727_)))
                ((lambda (_L228766_ _L228768_)
                   (let ((__tmp244044
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244033
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228766_
                               _L228768_))
                            (let ((__tmp244034
                                   (lambda (_g228783228787_
                                            _g228784228790_
                                            _g228785228792_)
                                     (let ((__tmp244035
                                            (let ((__tmp244043
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244036
                                                   (let ((__tmp244042
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244037
                                                          (let ((__tmp244039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244041
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244040
                                (let ()
                                  (declare (not safe))
                                  (cons _g228784228790_ '()))))
                           (declare (not safe))
                           (cons __tmp244041 __tmp244040)))
                        (__tmp244038
                         (let ()
                           (declare (not safe))
                           (cons _g228783228787_ '()))))
                    (declare (not safe))
                    (cons __tmp244039 __tmp244038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244042
                                                           __tmp244037))))
                                              (declare (not safe))
                                              (cons __tmp244043 __tmp244036))))
                                       (declare (not safe))
                                       (cons __tmp244035 _g228785228792_)))))
                              (declare (not safe))
                              (foldr2 __tmp244034 '() _L228766_ _L228768_)))))
                     (declare (not safe))
                     (cons __tmp244044 __tmp244033)))
                 _type-e228682228760_
                 _id228683228763_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228676228718_
                                         _target228673228712_
                                         '()
                                         '()))
                                      (_g228666228695_ _g228667228699_)))))
                            (_g228666228695_ _g228667228699_))))
                    (_g228666228695_ _g228667228699_)))))
        (_g228665228795_ _$stx228662_)))))
