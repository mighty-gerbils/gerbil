(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx117191_)
      (let* ((_g117195117224_
              (lambda (_g117196117220_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117196117220_))))
             (_g117194117325_
              (lambda (_g117196117228_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117196117228_))
                    (let ((_e117201117231_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117196117228_))))
                      (let ((_hd117200117235_
                             (let ()
                               (declare (not safe))
                               (##car _e117201117231_)))
                            (_tl117199117238_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117201117231_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117199117238_))
                            (let ((_g128134_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117199117238_
                                      '0))))
                              (begin
                                (let ((_g128135_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128134_)
                                             (##vector-length _g128134_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128135_ 2)))
                                      (error "Context expects 2 values"
                                             _g128135_)))
                                (let ((_target117202117241_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128134_ 0)))
                                      (_tl117204117244_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128134_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117204117244_))
                                      (letrec ((_loop117205117247_
                                                (lambda (_hd117203117251_
                                                         _type-e117209117254_
                                                         _id117210117256_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117203117251_))
                                                      (let ((_e117206117259_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117203117251_))))
                (let ((_lp-hd117207117263_
                       (let () (declare (not safe)) (##car _e117206117259_)))
                      (_lp-tl117208117266_
                       (let () (declare (not safe)) (##cdr _e117206117259_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117207117263_))
                      (let ((_e117215117269_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117207117263_))))
                        (let ((_hd117214117273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117215117269_)))
                              (_tl117213117276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117215117269_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117213117276_))
                              (let ((_e117218117279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117213117276_))))
                                (let ((_hd117217117283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117218117279_)))
                                      (_tl117216117286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117218117279_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117216117286_))
                                      (_loop117205117247_
                                       _lp-tl117208117266_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117217117283_
                                               _type-e117209117254_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117214117273_
                                               _id117210117256_)))
                                      (_g117195117224_ _g117196117228_))))
                              (_g117195117224_ _g117196117228_))))
                      (_g117195117224_ _g117196117228_))))
              (let ((_type-e117211117289_ (reverse _type-e117209117254_))
                    (_id117212117292_ (reverse _id117210117256_)))
                ((lambda (_L117295_ _L117297_)
                   (let ((__tmp128147
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128136
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117295_
                               _L117297_))
                            (let ((__tmp128137
                                   (lambda (_g117313117317_
                                            _g117314117320_
                                            _g117315117322_)
                                     (let ((__tmp128138
                                            (let ((__tmp128146
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128139
                                                   (let ((__tmp128145
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp128140
                                                          (let ((__tmp128142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128144
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128143
                                (let ()
                                  (declare (not safe))
                                  (cons _g117314117320_ '()))))
                           (declare (not safe))
                           (cons __tmp128144 __tmp128143)))
                        (__tmp128141
                         (let ()
                           (declare (not safe))
                           (cons _g117313117317_ '()))))
                    (declare (not safe))
                    (cons __tmp128142 __tmp128141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128145
                                                           __tmp128140))))
                                              (declare (not safe))
                                              (cons __tmp128146 __tmp128139))))
                                       (declare (not safe))
                                       (cons __tmp128138 _g117315117322_)))))
                              (declare (not safe))
                              (foldr2 __tmp128137 '() _L117295_ _L117297_)))))
                     (declare (not safe))
                     (cons __tmp128147 __tmp128136)))
                 _type-e117211117289_
                 _id117212117292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117205117247_
                                         _target117202117241_
                                         '()
                                         '()))
                                      (_g117195117224_ _g117196117228_)))))
                            (_g117195117224_ _g117196117228_))))
                    (_g117195117224_ _g117196117228_)))))
        (_g117194117325_ _$stx117191_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx117330_)
      (let* ((_g117334117363_
              (lambda (_g117335117359_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g117335117359_))))
             (_g117333117463_
              (lambda (_g117335117367_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g117335117367_))
                    (let ((_e117340117370_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g117335117367_))))
                      (let ((_hd117339117374_
                             (let ()
                               (declare (not safe))
                               (##car _e117340117370_)))
                            (_tl117338117377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117340117370_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl117338117377_))
                            (let ((_g128148_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl117338117377_
                                      '0))))
                              (begin
                                (let ((_g128149_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g128148_)
                                             (##vector-length _g128148_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g128149_ 2)))
                                      (error "Context expects 2 values"
                                             _g128149_)))
                                (let ((_target117341117380_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128148_ 0)))
                                      (_tl117343117383_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g128148_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117343117383_))
                                      (letrec ((_loop117344117386_
                                                (lambda (_hd117342117390_
                                                         _type-e117348117393_
                                                         _id117349117395_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117342117390_))
                                                      (let ((_e117345117398_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd117342117390_))))
                (let ((_lp-hd117346117402_
                       (let () (declare (not safe)) (##car _e117345117398_)))
                      (_lp-tl117347117405_
                       (let () (declare (not safe)) (##cdr _e117345117398_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd117346117402_))
                      (let ((_e117354117408_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd117346117402_))))
                        (let ((_hd117353117412_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117354117408_)))
                              (_tl117352117415_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117354117408_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117352117415_))
                              (let ((_e117357117418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl117352117415_))))
                                (let ((_hd117356117422_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117357117418_)))
                                      (_tl117355117425_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117357117418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117355117425_))
                                      (_loop117344117386_
                                       _lp-tl117347117405_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117356117422_
                                               _type-e117348117393_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd117353117412_
                                               _id117349117395_)))
                                      (_g117334117363_ _g117335117367_))))
                              (_g117334117363_ _g117335117367_))))
                      (_g117334117363_ _g117335117367_))))
              (let ((_type-e117350117428_ (reverse _type-e117348117393_))
                    (_id117351117431_ (reverse _id117349117395_)))
                ((lambda (_L117434_ _L117436_)
                   (let ((__tmp128161
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp128150
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L117434_
                               _L117436_))
                            (let ((__tmp128151
                                   (lambda (_g117451117455_
                                            _g117452117458_
                                            _g117453117460_)
                                     (let ((__tmp128152
                                            (let ((__tmp128160
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp128153
                                                   (let ((__tmp128159
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp128154
                                                          (let ((__tmp128156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128158
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp128157
                                (let ()
                                  (declare (not safe))
                                  (cons _g117452117458_ '()))))
                           (declare (not safe))
                           (cons __tmp128158 __tmp128157)))
                        (__tmp128155
                         (let ()
                           (declare (not safe))
                           (cons _g117451117455_ '()))))
                    (declare (not safe))
                    (cons __tmp128156 __tmp128155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128159
                                                           __tmp128154))))
                                              (declare (not safe))
                                              (cons __tmp128160 __tmp128153))))
                                       (declare (not safe))
                                       (cons __tmp128152 _g117453117460_)))))
                              (declare (not safe))
                              (foldr2 __tmp128151 '() _L117434_ _L117436_)))))
                     (declare (not safe))
                     (cons __tmp128161 __tmp128150)))
                 _type-e117350117428_
                 _id117351117431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop117344117386_
                                         _target117341117380_
                                         '()
                                         '()))
                                      (_g117334117363_ _g117335117367_)))))
                            (_g117334117363_ _g117335117367_))))
                    (_g117334117363_ _g117335117367_)))))
        (_g117333117463_ _$stx117330_)))))
