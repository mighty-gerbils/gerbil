(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx225994_)
      (let* ((_g225998226027_
              (lambda (_g225999226023_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g225999226023_))))
             (_g225997226128_
              (lambda (_g225999226031_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g225999226031_))
                    (let ((_e226004226034_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g225999226031_))))
                      (let ((_hd226003226038_
                             (let ()
                               (declare (not safe))
                               (##car _e226004226034_)))
                            (_tl226002226041_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226004226034_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226002226041_))
                            (let ((_g241384_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226002226041_
                                      '0))))
                              (begin
                                (let ((_g241385_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241384_)
                                             (##vector-length _g241384_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241385_ 2)))
                                      (error "Context expects 2 values"
                                             _g241385_)))
                                (let ((_target226005226044_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241384_ 0)))
                                      (_tl226007226047_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241384_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226007226047_))
                                      (letrec ((_loop226008226050_
                                                (lambda (_hd226006226054_
                                                         _type-e226012226057_
                                                         _id226013226059_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226006226054_))
                                                      (let ((_e226009226062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226006226054_))))
                (let ((_lp-hd226010226066_
                       (let () (declare (not safe)) (##car _e226009226062_)))
                      (_lp-tl226011226069_
                       (let () (declare (not safe)) (##cdr _e226009226062_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226010226066_))
                      (let ((_e226018226072_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226010226066_))))
                        (let ((_hd226017226076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226018226072_)))
                              (_tl226016226079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226018226072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226016226079_))
                              (let ((_e226021226082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226016226079_))))
                                (let ((_hd226020226086_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226021226082_)))
                                      (_tl226019226089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226021226082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226019226089_))
                                      (_loop226008226050_
                                       _lp-tl226011226069_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226020226086_
                                               _type-e226012226057_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226017226076_
                                               _id226013226059_)))
                                      (_g225998226027_ _g225999226031_))))
                              (_g225998226027_ _g225999226031_))))
                      (_g225998226027_ _g225999226031_))))
              (let ((_type-e226014226092_ (reverse _type-e226012226057_))
                    (_id226015226095_ (reverse _id226013226059_)))
                ((lambda (_L226098_ _L226100_)
                   (let ((__tmp241397
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241386
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226098_
                               _L226100_))
                            (let ((__tmp241387
                                   (lambda (_g226116226120_
                                            _g226117226123_
                                            _g226118226125_)
                                     (let ((__tmp241388
                                            (let ((__tmp241396
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241389
                                                   (let ((__tmp241395
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241390
                                                          (let ((__tmp241392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241394
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241393
                                (let ()
                                  (declare (not safe))
                                  (cons _g226117226123_ '()))))
                           (declare (not safe))
                           (cons __tmp241394 __tmp241393)))
                        (__tmp241391
                         (let ()
                           (declare (not safe))
                           (cons _g226116226120_ '()))))
                    (declare (not safe))
                    (cons __tmp241392 __tmp241391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241395
                                                           __tmp241390))))
                                              (declare (not safe))
                                              (cons __tmp241396 __tmp241389))))
                                       (declare (not safe))
                                       (cons __tmp241388 _g226118226125_)))))
                              (declare (not safe))
                              (foldr2 __tmp241387 '() _L226098_ _L226100_)))))
                     (declare (not safe))
                     (cons __tmp241397 __tmp241386)))
                 _type-e226014226092_
                 _id226015226095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226008226050_
                                         _target226005226044_
                                         '()
                                         '()))
                                      (_g225998226027_ _g225999226031_)))))
                            (_g225998226027_ _g225999226031_))))
                    (_g225998226027_ _g225999226031_)))))
        (_g225997226128_ _$stx225994_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx226133_)
      (let* ((_g226137226166_
              (lambda (_g226138226162_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226138226162_))))
             (_g226136226266_
              (lambda (_g226138226170_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226138226170_))
                    (let ((_e226143226173_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226138226170_))))
                      (let ((_hd226142226177_
                             (let ()
                               (declare (not safe))
                               (##car _e226143226173_)))
                            (_tl226141226180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226143226173_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226141226180_))
                            (let ((_g241398_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226141226180_
                                      '0))))
                              (begin
                                (let ((_g241399_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241398_)
                                             (##vector-length _g241398_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241399_ 2)))
                                      (error "Context expects 2 values"
                                             _g241399_)))
                                (let ((_target226144226183_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241398_ 0)))
                                      (_tl226146226186_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241398_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226146226186_))
                                      (letrec ((_loop226147226189_
                                                (lambda (_hd226145226193_
                                                         _type-e226151226196_
                                                         _id226152226198_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226145226193_))
                                                      (let ((_e226148226201_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226145226193_))))
                (let ((_lp-hd226149226205_
                       (let () (declare (not safe)) (##car _e226148226201_)))
                      (_lp-tl226150226208_
                       (let () (declare (not safe)) (##cdr _e226148226201_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226149226205_))
                      (let ((_e226157226211_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226149226205_))))
                        (let ((_hd226156226215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226157226211_)))
                              (_tl226155226218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226157226211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226155226218_))
                              (let ((_e226160226221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226155226218_))))
                                (let ((_hd226159226225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226160226221_)))
                                      (_tl226158226228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226160226221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226158226228_))
                                      (_loop226147226189_
                                       _lp-tl226150226208_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226159226225_
                                               _type-e226151226196_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226156226215_
                                               _id226152226198_)))
                                      (_g226137226166_ _g226138226170_))))
                              (_g226137226166_ _g226138226170_))))
                      (_g226137226166_ _g226138226170_))))
              (let ((_type-e226153226231_ (reverse _type-e226151226196_))
                    (_id226154226234_ (reverse _id226152226198_)))
                ((lambda (_L226237_ _L226239_)
                   (let ((__tmp241411
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241400
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226237_
                               _L226239_))
                            (let ((__tmp241401
                                   (lambda (_g226254226258_
                                            _g226255226261_
                                            _g226256226263_)
                                     (let ((__tmp241402
                                            (let ((__tmp241410
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241403
                                                   (let ((__tmp241409
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241404
                                                          (let ((__tmp241406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241408
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241407
                                (let ()
                                  (declare (not safe))
                                  (cons _g226255226261_ '()))))
                           (declare (not safe))
                           (cons __tmp241408 __tmp241407)))
                        (__tmp241405
                         (let ()
                           (declare (not safe))
                           (cons _g226254226258_ '()))))
                    (declare (not safe))
                    (cons __tmp241406 __tmp241405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241409
                                                           __tmp241404))))
                                              (declare (not safe))
                                              (cons __tmp241410 __tmp241403))))
                                       (declare (not safe))
                                       (cons __tmp241402 _g226256226263_)))))
                              (declare (not safe))
                              (foldr2 __tmp241401 '() _L226237_ _L226239_)))))
                     (declare (not safe))
                     (cons __tmp241411 __tmp241400)))
                 _type-e226153226231_
                 _id226154226234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226147226189_
                                         _target226144226183_
                                         '()
                                         '()))
                                      (_g226137226166_ _g226138226170_)))))
                            (_g226137226166_ _g226138226170_))))
                    (_g226137226166_ _g226138226170_)))))
        (_g226136226266_ _$stx226133_)))))
