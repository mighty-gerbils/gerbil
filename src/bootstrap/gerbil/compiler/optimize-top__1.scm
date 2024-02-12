(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx228533_)
      (let* ((_g228537228566_
              (lambda (_g228538228562_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228538228562_))))
             (_g228536228667_
              (lambda (_g228538228570_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228538228570_))
                    (let ((_e228543228573_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228538228570_))))
                      (let ((_hd228542228577_
                             (let ()
                               (declare (not safe))
                               (##car _e228543228573_)))
                            (_tl228541228580_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228543228573_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228541228580_))
                            (let ((_g244027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228541228580_
                                      '0))))
                              (begin
                                (let ((_g244028_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244027_)
                                             (##vector-length _g244027_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244028_ 2)))
                                      (error "Context expects 2 values"
                                             _g244028_)))
                                (let ((_target228544228583_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244027_ 0)))
                                      (_tl228546228586_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244027_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228546228586_))
                                      (letrec ((_loop228547228589_
                                                (lambda (_hd228545228593_
                                                         _type-e228551228596_
                                                         _id228552228598_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228545228593_))
                                                      (let ((_e228548228601_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228545228593_))))
                (let ((_lp-hd228549228605_
                       (let () (declare (not safe)) (##car _e228548228601_)))
                      (_lp-tl228550228608_
                       (let () (declare (not safe)) (##cdr _e228548228601_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228549228605_))
                      (let ((_e228557228611_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228549228605_))))
                        (let ((_hd228556228615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228557228611_)))
                              (_tl228555228618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228557228611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228555228618_))
                              (let ((_e228560228621_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228555228618_))))
                                (let ((_hd228559228625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228560228621_)))
                                      (_tl228558228628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228560228621_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228558228628_))
                                      (_loop228547228589_
                                       _lp-tl228550228608_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228559228625_
                                               _type-e228551228596_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228556228615_
                                               _id228552228598_)))
                                      (_g228537228566_ _g228538228570_))))
                              (_g228537228566_ _g228538228570_))))
                      (_g228537228566_ _g228538228570_))))
              (let ((_type-e228553228631_ (reverse _type-e228551228596_))
                    (_id228554228634_ (reverse _id228552228598_)))
                ((lambda (_L228637_ _L228639_)
                   (let ((__tmp244040
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244029
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228637_
                               _L228639_))
                            (let ((__tmp244030
                                   (lambda (_g228655228659_
                                            _g228656228662_
                                            _g228657228664_)
                                     (let ((__tmp244031
                                            (let ((__tmp244039
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244032
                                                   (let ((__tmp244038
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp244033
                                                          (let ((__tmp244035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244037
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244036
                                (let ()
                                  (declare (not safe))
                                  (cons _g228656228662_ '()))))
                           (declare (not safe))
                           (cons __tmp244037 __tmp244036)))
                        (__tmp244034
                         (let ()
                           (declare (not safe))
                           (cons _g228655228659_ '()))))
                    (declare (not safe))
                    (cons __tmp244035 __tmp244034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244038
                                                           __tmp244033))))
                                              (declare (not safe))
                                              (cons __tmp244039 __tmp244032))))
                                       (declare (not safe))
                                       (cons __tmp244031 _g228657228664_)))))
                              (declare (not safe))
                              (foldr2 __tmp244030 '() _L228637_ _L228639_)))))
                     (declare (not safe))
                     (cons __tmp244040 __tmp244029)))
                 _type-e228553228631_
                 _id228554228634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228547228589_
                                         _target228544228583_
                                         '()
                                         '()))
                                      (_g228537228566_ _g228538228570_)))))
                            (_g228537228566_ _g228538228570_))))
                    (_g228537228566_ _g228538228570_)))))
        (_g228536228667_ _$stx228533_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx228672_)
      (let* ((_g228676228705_
              (lambda (_g228677228701_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g228677228701_))))
             (_g228675228805_
              (lambda (_g228677228709_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g228677228709_))
                    (let ((_e228682228712_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g228677228709_))))
                      (let ((_hd228681228716_
                             (let ()
                               (declare (not safe))
                               (##car _e228682228712_)))
                            (_tl228680228719_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228682228712_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl228680228719_))
                            (let ((_g244041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl228680228719_
                                      '0))))
                              (begin
                                (let ((_g244042_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244041_)
                                             (##vector-length _g244041_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244042_ 2)))
                                      (error "Context expects 2 values"
                                             _g244042_)))
                                (let ((_target228683228722_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244041_ 0)))
                                      (_tl228685228725_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g244041_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228685228725_))
                                      (letrec ((_loop228686228728_
                                                (lambda (_hd228684228732_
                                                         _type-e228690228735_
                                                         _id228691228737_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228684228732_))
                                                      (let ((_e228687228740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228684228732_))))
                (let ((_lp-hd228688228744_
                       (let () (declare (not safe)) (##car _e228687228740_)))
                      (_lp-tl228689228747_
                       (let () (declare (not safe)) (##cdr _e228687228740_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228688228744_))
                      (let ((_e228696228750_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228688228744_))))
                        (let ((_hd228695228754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228696228750_)))
                              (_tl228694228757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228696228750_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228694228757_))
                              (let ((_e228699228760_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228694228757_))))
                                (let ((_hd228698228764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228699228760_)))
                                      (_tl228697228767_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228699228760_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228697228767_))
                                      (_loop228686228728_
                                       _lp-tl228689228747_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228698228764_
                                               _type-e228690228735_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228695228754_
                                               _id228691228737_)))
                                      (_g228676228705_ _g228677228709_))))
                              (_g228676228705_ _g228677228709_))))
                      (_g228676228705_ _g228677228709_))))
              (let ((_type-e228692228770_ (reverse _type-e228690228735_))
                    (_id228693228773_ (reverse _id228691228737_)))
                ((lambda (_L228776_ _L228778_)
                   (let ((__tmp244054
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp244043
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228776_
                               _L228778_))
                            (let ((__tmp244044
                                   (lambda (_g228793228797_
                                            _g228794228800_
                                            _g228795228802_)
                                     (let ((__tmp244045
                                            (let ((__tmp244053
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp244046
                                                   (let ((__tmp244052
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp244047
                                                          (let ((__tmp244049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244051
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp244050
                                (let ()
                                  (declare (not safe))
                                  (cons _g228794228800_ '()))))
                           (declare (not safe))
                           (cons __tmp244051 __tmp244050)))
                        (__tmp244048
                         (let ()
                           (declare (not safe))
                           (cons _g228793228797_ '()))))
                    (declare (not safe))
                    (cons __tmp244049 __tmp244048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244052
                                                           __tmp244047))))
                                              (declare (not safe))
                                              (cons __tmp244053 __tmp244046))))
                                       (declare (not safe))
                                       (cons __tmp244045 _g228795228802_)))))
                              (declare (not safe))
                              (foldr2 __tmp244044 '() _L228776_ _L228778_)))))
                     (declare (not safe))
                     (cons __tmp244054 __tmp244043)))
                 _type-e228692228770_
                 _id228693228773_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228686228728_
                                         _target228683228722_
                                         '()
                                         '()))
                                      (_g228676228705_ _g228677228709_)))))
                            (_g228676228705_ _g228677228709_))))
                    (_g228676228705_ _g228677228709_)))))
        (_g228675228805_ _$stx228672_)))))
