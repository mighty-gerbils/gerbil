(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx219307_)
      (let* ((_g219311219340_
              (lambda (_g219312219336_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g219312219336_))))
             (_g219310219441_
              (lambda (_g219312219344_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g219312219344_))
                    (let ((_e219317219347_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g219312219344_))))
                      (let ((_hd219316219351_
                             (let ()
                               (declare (not safe))
                               (##car _e219317219347_)))
                            (_tl219315219354_
                             (let ()
                               (declare (not safe))
                               (##cdr _e219317219347_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl219315219354_))
                            (let ((_g238755_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl219315219354_
                                      '0))))
                              (begin
                                (let ((_g238756_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g238755_)
                                             (##vector-length _g238755_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g238756_ 2)))
                                      (error "Context expects 2 values"
                                             _g238756_)))
                                (let ((_target219318219357_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g238755_ 0)))
                                      (_tl219320219360_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g238755_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219320219360_))
                                      (letrec ((_loop219321219363_
                                                (lambda (_hd219319219367_
                                                         _type-e219325219370_
                                                         _id219326219372_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219319219367_))
                                                      (let ((_e219322219375_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd219319219367_))))
                (let ((_lp-hd219323219379_
                       (let () (declare (not safe)) (##car _e219322219375_)))
                      (_lp-tl219324219382_
                       (let () (declare (not safe)) (##cdr _e219322219375_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd219323219379_))
                      (let ((_e219331219385_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd219323219379_))))
                        (let ((_hd219330219389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219331219385_)))
                              (_tl219329219392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219331219385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219329219392_))
                              (let ((_e219334219395_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl219329219392_))))
                                (let ((_hd219333219399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219334219395_)))
                                      (_tl219332219402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219334219395_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219332219402_))
                                      (_loop219321219363_
                                       _lp-tl219324219382_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd219333219399_
                                               _type-e219325219370_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd219330219389_
                                               _id219326219372_)))
                                      (_g219311219340_ _g219312219344_))))
                              (_g219311219340_ _g219312219344_))))
                      (_g219311219340_ _g219312219344_))))
              (let ((_type-e219327219405_ (reverse _type-e219325219370_))
                    (_id219328219408_ (reverse _id219326219372_)))
                ((lambda (_L219411_ _L219413_)
                   (let ((__tmp238768
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp238757
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L219411_
                               _L219413_))
                            (let ((__tmp238758
                                   (lambda (_g219429219433_
                                            _g219430219436_
                                            _g219431219438_)
                                     (let ((__tmp238759
                                            (let ((__tmp238767
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp238760
                                                   (let ((__tmp238766
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp238761
                                                          (let ((__tmp238763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp238765
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp238764
                                (let ()
                                  (declare (not safe))
                                  (cons _g219430219436_ '()))))
                           (declare (not safe))
                           (cons __tmp238765 __tmp238764)))
                        (__tmp238762
                         (let ()
                           (declare (not safe))
                           (cons _g219429219433_ '()))))
                    (declare (not safe))
                    (cons __tmp238763 __tmp238762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp238766
                                                           __tmp238761))))
                                              (declare (not safe))
                                              (cons __tmp238767 __tmp238760))))
                                       (declare (not safe))
                                       (cons __tmp238759 _g219431219438_)))))
                              (declare (not safe))
                              (foldr2 __tmp238758 '() _L219411_ _L219413_)))))
                     (declare (not safe))
                     (cons __tmp238768 __tmp238757)))
                 _type-e219327219405_
                 _id219328219408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop219321219363_
                                         _target219318219357_
                                         '()
                                         '()))
                                      (_g219311219340_ _g219312219344_)))))
                            (_g219311219340_ _g219312219344_))))
                    (_g219311219340_ _g219312219344_)))))
        (_g219310219441_ _$stx219307_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx219446_)
      (let* ((_g219450219479_
              (lambda (_g219451219475_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g219451219475_))))
             (_g219449219579_
              (lambda (_g219451219483_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g219451219483_))
                    (let ((_e219456219486_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g219451219483_))))
                      (let ((_hd219455219490_
                             (let ()
                               (declare (not safe))
                               (##car _e219456219486_)))
                            (_tl219454219493_
                             (let ()
                               (declare (not safe))
                               (##cdr _e219456219486_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl219454219493_))
                            (let ((_g238769_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl219454219493_
                                      '0))))
                              (begin
                                (let ((_g238770_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g238769_)
                                             (##vector-length _g238769_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g238770_ 2)))
                                      (error "Context expects 2 values"
                                             _g238770_)))
                                (let ((_target219457219496_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g238769_ 0)))
                                      (_tl219459219499_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g238769_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219459219499_))
                                      (letrec ((_loop219460219502_
                                                (lambda (_hd219458219506_
                                                         _type-e219464219509_
                                                         _id219465219511_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219458219506_))
                                                      (let ((_e219461219514_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd219458219506_))))
                (let ((_lp-hd219462219518_
                       (let () (declare (not safe)) (##car _e219461219514_)))
                      (_lp-tl219463219521_
                       (let () (declare (not safe)) (##cdr _e219461219514_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd219462219518_))
                      (let ((_e219470219524_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd219462219518_))))
                        (let ((_hd219469219528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219470219524_)))
                              (_tl219468219531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219470219524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219468219531_))
                              (let ((_e219473219534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl219468219531_))))
                                (let ((_hd219472219538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219473219534_)))
                                      (_tl219471219541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219473219534_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219471219541_))
                                      (_loop219460219502_
                                       _lp-tl219463219521_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd219472219538_
                                               _type-e219464219509_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd219469219528_
                                               _id219465219511_)))
                                      (_g219450219479_ _g219451219483_))))
                              (_g219450219479_ _g219451219483_))))
                      (_g219450219479_ _g219451219483_))))
              (let ((_type-e219466219544_ (reverse _type-e219464219509_))
                    (_id219467219547_ (reverse _id219465219511_)))
                ((lambda (_L219550_ _L219552_)
                   (let ((__tmp238782
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp238771
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L219550_
                               _L219552_))
                            (let ((__tmp238772
                                   (lambda (_g219567219571_
                                            _g219568219574_
                                            _g219569219576_)
                                     (let ((__tmp238773
                                            (let ((__tmp238781
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp238774
                                                   (let ((__tmp238780
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp238775
                                                          (let ((__tmp238777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp238779
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp238778
                                (let ()
                                  (declare (not safe))
                                  (cons _g219568219574_ '()))))
                           (declare (not safe))
                           (cons __tmp238779 __tmp238778)))
                        (__tmp238776
                         (let ()
                           (declare (not safe))
                           (cons _g219567219571_ '()))))
                    (declare (not safe))
                    (cons __tmp238777 __tmp238776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp238780
                                                           __tmp238775))))
                                              (declare (not safe))
                                              (cons __tmp238781 __tmp238774))))
                                       (declare (not safe))
                                       (cons __tmp238773 _g219569219576_)))))
                              (declare (not safe))
                              (foldr2 __tmp238772 '() _L219550_ _L219552_)))))
                     (declare (not safe))
                     (cons __tmp238782 __tmp238771)))
                 _type-e219466219544_
                 _id219467219547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop219460219502_
                                         _target219457219496_
                                         '()
                                         '()))
                                      (_g219450219479_ _g219451219483_)))))
                            (_g219450219479_ _g219451219483_))))
                    (_g219450219479_ _g219451219483_)))))
        (_g219449219579_ _$stx219446_)))))
