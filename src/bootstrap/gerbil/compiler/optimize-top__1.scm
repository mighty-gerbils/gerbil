(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx226028_)
      (let* ((_g226032226061_
              (lambda (_g226033226057_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226033226057_))))
             (_g226031226162_
              (lambda (_g226033226065_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226033226065_))
                    (let ((_e226038226068_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226033226065_))))
                      (let ((_hd226037226072_
                             (let ()
                               (declare (not safe))
                               (##car _e226038226068_)))
                            (_tl226036226075_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226038226068_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226036226075_))
                            (let ((_g241422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226036226075_
                                      '0))))
                              (begin
                                (let ((_g241423_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241422_)
                                             (##vector-length _g241422_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241423_ 2)))
                                      (error "Context expects 2 values"
                                             _g241423_)))
                                (let ((_target226039226078_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241422_ 0)))
                                      (_tl226041226081_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241422_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226041226081_))
                                      (letrec ((_loop226042226084_
                                                (lambda (_hd226040226088_
                                                         _type-e226046226091_
                                                         _id226047226093_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226040226088_))
                                                      (let ((_e226043226096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226040226088_))))
                (let ((_lp-hd226044226100_
                       (let () (declare (not safe)) (##car _e226043226096_)))
                      (_lp-tl226045226103_
                       (let () (declare (not safe)) (##cdr _e226043226096_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226044226100_))
                      (let ((_e226052226106_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226044226100_))))
                        (let ((_hd226051226110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226052226106_)))
                              (_tl226050226113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226052226106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226050226113_))
                              (let ((_e226055226116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226050226113_))))
                                (let ((_hd226054226120_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226055226116_)))
                                      (_tl226053226123_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226055226116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226053226123_))
                                      (_loop226042226084_
                                       _lp-tl226045226103_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226054226120_
                                               _type-e226046226091_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226051226110_
                                               _id226047226093_)))
                                      (_g226032226061_ _g226033226065_))))
                              (_g226032226061_ _g226033226065_))))
                      (_g226032226061_ _g226033226065_))))
              (let ((_type-e226048226126_ (reverse _type-e226046226091_))
                    (_id226049226129_ (reverse _id226047226093_)))
                ((lambda (_L226132_ _L226134_)
                   (let ((__tmp241435
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241424
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226132_
                               _L226134_))
                            (let ((__tmp241425
                                   (lambda (_g226150226154_
                                            _g226151226157_
                                            _g226152226159_)
                                     (let ((__tmp241426
                                            (let ((__tmp241434
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241427
                                                   (let ((__tmp241433
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241428
                                                          (let ((__tmp241430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241432
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241431
                                (let ()
                                  (declare (not safe))
                                  (cons _g226151226157_ '()))))
                           (declare (not safe))
                           (cons __tmp241432 __tmp241431)))
                        (__tmp241429
                         (let ()
                           (declare (not safe))
                           (cons _g226150226154_ '()))))
                    (declare (not safe))
                    (cons __tmp241430 __tmp241429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241433
                                                           __tmp241428))))
                                              (declare (not safe))
                                              (cons __tmp241434 __tmp241427))))
                                       (declare (not safe))
                                       (cons __tmp241426 _g226152226159_)))))
                              (declare (not safe))
                              (foldr2 __tmp241425 '() _L226132_ _L226134_)))))
                     (declare (not safe))
                     (cons __tmp241435 __tmp241424)))
                 _type-e226048226126_
                 _id226049226129_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226042226084_
                                         _target226039226078_
                                         '()
                                         '()))
                                      (_g226032226061_ _g226033226065_)))))
                            (_g226032226061_ _g226033226065_))))
                    (_g226032226061_ _g226033226065_)))))
        (_g226031226162_ _$stx226028_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx226167_)
      (let* ((_g226171226200_
              (lambda (_g226172226196_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226172226196_))))
             (_g226170226300_
              (lambda (_g226172226204_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226172226204_))
                    (let ((_e226177226207_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226172226204_))))
                      (let ((_hd226176226211_
                             (let ()
                               (declare (not safe))
                               (##car _e226177226207_)))
                            (_tl226175226214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226177226207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226175226214_))
                            (let ((_g241436_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226175226214_
                                      '0))))
                              (begin
                                (let ((_g241437_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241436_)
                                             (##vector-length _g241436_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241437_ 2)))
                                      (error "Context expects 2 values"
                                             _g241437_)))
                                (let ((_target226178226217_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241436_ 0)))
                                      (_tl226180226220_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241436_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226180226220_))
                                      (letrec ((_loop226181226223_
                                                (lambda (_hd226179226227_
                                                         _type-e226185226230_
                                                         _id226186226232_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226179226227_))
                                                      (let ((_e226182226235_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226179226227_))))
                (let ((_lp-hd226183226239_
                       (let () (declare (not safe)) (##car _e226182226235_)))
                      (_lp-tl226184226242_
                       (let () (declare (not safe)) (##cdr _e226182226235_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226183226239_))
                      (let ((_e226191226245_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226183226239_))))
                        (let ((_hd226190226249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226191226245_)))
                              (_tl226189226252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226191226245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226189226252_))
                              (let ((_e226194226255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226189226252_))))
                                (let ((_hd226193226259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226194226255_)))
                                      (_tl226192226262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226194226255_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226192226262_))
                                      (_loop226181226223_
                                       _lp-tl226184226242_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226193226259_
                                               _type-e226185226230_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226190226249_
                                               _id226186226232_)))
                                      (_g226171226200_ _g226172226204_))))
                              (_g226171226200_ _g226172226204_))))
                      (_g226171226200_ _g226172226204_))))
              (let ((_type-e226187226265_ (reverse _type-e226185226230_))
                    (_id226188226268_ (reverse _id226186226232_)))
                ((lambda (_L226271_ _L226273_)
                   (let ((__tmp241449
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241438
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226271_
                               _L226273_))
                            (let ((__tmp241439
                                   (lambda (_g226288226292_
                                            _g226289226295_
                                            _g226290226297_)
                                     (let ((__tmp241440
                                            (let ((__tmp241448
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241441
                                                   (let ((__tmp241447
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241442
                                                          (let ((__tmp241444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241446
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241445
                                (let ()
                                  (declare (not safe))
                                  (cons _g226289226295_ '()))))
                           (declare (not safe))
                           (cons __tmp241446 __tmp241445)))
                        (__tmp241443
                         (let ()
                           (declare (not safe))
                           (cons _g226288226292_ '()))))
                    (declare (not safe))
                    (cons __tmp241444 __tmp241443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241447
                                                           __tmp241442))))
                                              (declare (not safe))
                                              (cons __tmp241448 __tmp241441))))
                                       (declare (not safe))
                                       (cons __tmp241440 _g226290226297_)))))
                              (declare (not safe))
                              (foldr2 __tmp241439 '() _L226271_ _L226273_)))))
                     (declare (not safe))
                     (cons __tmp241449 __tmp241438)))
                 _type-e226187226265_
                 _id226188226268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226181226223_
                                         _target226178226217_
                                         '()
                                         '()))
                                      (_g226171226200_ _g226172226204_)))))
                            (_g226171226200_ _g226172226204_))))
                    (_g226171226200_ _g226172226204_)))))
        (_g226170226300_ _$stx226167_)))))
