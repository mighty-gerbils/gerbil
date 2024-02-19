(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx234051_)
      (let* ((_g234055234084_
              (lambda (_g234056234080_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g234056234080_))))
             (_g234054234185_
              (lambda (_g234056234088_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g234056234088_))
                    (let ((_e234061234091_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g234056234088_))))
                      (let ((_hd234060234095_
                             (let ()
                               (declare (not safe))
                               (##car _e234061234091_)))
                            (_tl234059234098_
                             (let ()
                               (declare (not safe))
                               (##cdr _e234061234091_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl234059234098_))
                            (let ((_g248980_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl234059234098_
                                      '0))))
                              (begin
                                (let ((_g248981_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248980_)
                                             (##vector-length _g248980_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248981_ 2)))
                                      (error "Context expects 2 values"
                                             _g248981_)))
                                (let ((_target234062234101_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248980_ 0)))
                                      (_tl234064234104_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248980_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234064234104_))
                                      (letrec ((_loop234065234107_
                                                (lambda (_hd234063234111_
                                                         _type-e234069234114_
                                                         _id234070234116_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234063234111_))
                                                      (let ((_e234066234119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd234063234111_))))
                (let ((_lp-hd234067234123_
                       (let () (declare (not safe)) (##car _e234066234119_)))
                      (_lp-tl234068234126_
                       (let () (declare (not safe)) (##cdr _e234066234119_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd234067234123_))
                      (let ((_e234075234129_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd234067234123_))))
                        (let ((_hd234074234133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234075234129_)))
                              (_tl234073234136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234075234129_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234073234136_))
                              (let ((_e234078234139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl234073234136_))))
                                (let ((_hd234077234143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234078234139_)))
                                      (_tl234076234146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234078234139_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234076234146_))
                                      (_loop234065234107_
                                       _lp-tl234068234126_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234077234143_
                                               _type-e234069234114_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234074234133_
                                               _id234070234116_)))
                                      (_g234055234084_ _g234056234088_))))
                              (_g234055234084_ _g234056234088_))))
                      (_g234055234084_ _g234056234088_))))
              (let ((_type-e234071234149_ (reverse _type-e234069234114_))
                    (_id234072234152_ (reverse _id234070234116_)))
                ((lambda (_L234155_ _L234157_)
                   (let ((__tmp248993
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp248982
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L234155_
                               _L234157_))
                            (let ((__tmp248983
                                   (lambda (_g234173234177_
                                            _g234174234180_
                                            _g234175234182_)
                                     (let ((__tmp248984
                                            (let ((__tmp248992
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp248985
                                                   (let ((__tmp248991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp248986
                                                          (let ((__tmp248988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp248990
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp248989
                                (let ()
                                  (declare (not safe))
                                  (cons _g234174234180_ '()))))
                           (declare (not safe))
                           (cons __tmp248990 __tmp248989)))
                        (__tmp248987
                         (let ()
                           (declare (not safe))
                           (cons _g234173234177_ '()))))
                    (declare (not safe))
                    (cons __tmp248988 __tmp248987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248991
                                                           __tmp248986))))
                                              (declare (not safe))
                                              (cons __tmp248992 __tmp248985))))
                                       (declare (not safe))
                                       (cons __tmp248984 _g234175234182_)))))
                              (declare (not safe))
                              (foldr2 __tmp248983 '() _L234155_ _L234157_)))))
                     (declare (not safe))
                     (cons __tmp248993 __tmp248982)))
                 _type-e234071234149_
                 _id234072234152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop234065234107_
                                         _target234062234101_
                                         '()
                                         '()))
                                      (_g234055234084_ _g234056234088_)))))
                            (_g234055234084_ _g234056234088_))))
                    (_g234055234084_ _g234056234088_)))))
        (_g234054234185_ _$stx234051_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx234190_)
      (let* ((_g234194234223_
              (lambda (_g234195234219_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g234195234219_))))
             (_g234193234323_
              (lambda (_g234195234227_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g234195234227_))
                    (let ((_e234200234230_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g234195234227_))))
                      (let ((_hd234199234234_
                             (let ()
                               (declare (not safe))
                               (##car _e234200234230_)))
                            (_tl234198234237_
                             (let ()
                               (declare (not safe))
                               (##cdr _e234200234230_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl234198234237_))
                            (let ((_g248994_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl234198234237_
                                      '0))))
                              (begin
                                (let ((_g248995_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248994_)
                                             (##vector-length _g248994_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248995_ 2)))
                                      (error "Context expects 2 values"
                                             _g248995_)))
                                (let ((_target234201234240_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248994_ 0)))
                                      (_tl234203234243_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248994_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234203234243_))
                                      (letrec ((_loop234204234246_
                                                (lambda (_hd234202234250_
                                                         _type-e234208234253_
                                                         _id234209234255_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234202234250_))
                                                      (let ((_e234205234258_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd234202234250_))))
                (let ((_lp-hd234206234262_
                       (let () (declare (not safe)) (##car _e234205234258_)))
                      (_lp-tl234207234265_
                       (let () (declare (not safe)) (##cdr _e234205234258_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd234206234262_))
                      (let ((_e234214234268_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd234206234262_))))
                        (let ((_hd234213234272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234214234268_)))
                              (_tl234212234275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234214234268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234212234275_))
                              (let ((_e234217234278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl234212234275_))))
                                (let ((_hd234216234282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234217234278_)))
                                      (_tl234215234285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234217234278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234215234285_))
                                      (_loop234204234246_
                                       _lp-tl234207234265_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234216234282_
                                               _type-e234208234253_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234213234272_
                                               _id234209234255_)))
                                      (_g234194234223_ _g234195234227_))))
                              (_g234194234223_ _g234195234227_))))
                      (_g234194234223_ _g234195234227_))))
              (let ((_type-e234210234288_ (reverse _type-e234208234253_))
                    (_id234211234291_ (reverse _id234209234255_)))
                ((lambda (_L234294_ _L234296_)
                   (let ((__tmp249007
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp248996
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L234294_
                               _L234296_))
                            (let ((__tmp248997
                                   (lambda (_g234311234315_
                                            _g234312234318_
                                            _g234313234320_)
                                     (let ((__tmp248998
                                            (let ((__tmp249006
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp248999
                                                   (let ((__tmp249005
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp249000
                                                          (let ((__tmp249002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249004
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp249003
                                (let ()
                                  (declare (not safe))
                                  (cons _g234312234318_ '()))))
                           (declare (not safe))
                           (cons __tmp249004 __tmp249003)))
                        (__tmp249001
                         (let ()
                           (declare (not safe))
                           (cons _g234311234315_ '()))))
                    (declare (not safe))
                    (cons __tmp249002 __tmp249001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249005
                                                           __tmp249000))))
                                              (declare (not safe))
                                              (cons __tmp249006 __tmp248999))))
                                       (declare (not safe))
                                       (cons __tmp248998 _g234313234320_)))))
                              (declare (not safe))
                              (foldr2 __tmp248997 '() _L234294_ _L234296_)))))
                     (declare (not safe))
                     (cons __tmp249007 __tmp248996)))
                 _type-e234210234288_
                 _id234211234291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop234204234246_
                                         _target234201234240_
                                         '()
                                         '()))
                                      (_g234194234223_ _g234195234227_)))))
                            (_g234194234223_ _g234195234227_))))
                    (_g234194234223_ _g234195234227_)))))
        (_g234193234323_ _$stx234190_)))))
