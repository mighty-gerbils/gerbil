(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx90568_)
      (let* ((___stx9716897169_ _$stx90568_)
             (_g9057390602_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9716897169_))))
        (let ((___kont9717197172_
               (lambda (_L90695_ _L90697_)
                 (let ((__tmp97429 (gx#datum->syntax '#f '##fx=))
                       (__tmp97423
                        (let ((__tmp97425
                               (let ((__tmp97428
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp97426
                                      (let ((__tmp97427
                                             (let ()
                                               (declare (not safe))
                                               (cons _L90695_ '()))))
                                        (declare (not safe))
                                        (cons _L90697_ __tmp97427))))
                                 (declare (not safe))
                                 (cons __tmp97428 __tmp97426)))
                              (__tmp97424
                               (let ()
                                 (declare (not safe))
                                 (cons _L90695_ '()))))
                          (declare (not safe))
                          (cons __tmp97425 __tmp97424))))
                   (declare (not safe))
                   (cons __tmp97429 __tmp97423))))
              (___kont9717397174_
               (lambda (_L90639_ _L90641_)
                 (let ((__tmp97442 (gx#datum->syntax '#f 'let))
                       (__tmp97430
                        (let ((__tmp97440
                               (let ((__tmp97441
                                      (let ()
                                        (declare (not safe))
                                        (cons _L90639_ '()))))
                                 (declare (not safe))
                                 (cons _L90639_ __tmp97441)))
                              (__tmp97431
                               (let ((__tmp97432
                                      (let ((__tmp97439
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp97433
                                             (let ((__tmp97435
                                                    (let ((__tmp97438
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp97436
                                                           (let ((__tmp97437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L90639_ '()))))
                     (declare (not safe))
                     (cons _L90641_ __tmp97437))))
              (declare (not safe))
              (cons __tmp97438 __tmp97436)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97434
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L90639_ '()))))
                                               (declare (not safe))
                                               (cons __tmp97435 __tmp97434))))
                                        (declare (not safe))
                                        (cons __tmp97439 __tmp97433))))
                                 (declare (not safe))
                                 (cons __tmp97432 '()))))
                          (declare (not safe))
                          (cons __tmp97440 __tmp97431))))
                   (declare (not safe))
                   (cons __tmp97442 __tmp97430)))))
          (let ((___match9719597196_
                 (lambda (_e9057990665_
                          _hd9057890669_
                          _tl9057790672_
                          _e9058290675_
                          _hd9058190679_
                          _tl9058090682_
                          _e9058590685_
                          _hd9058490689_
                          _tl9058390692_)
                   (let ((_L90695_ _hd9058490689_) (_L90697_ _hd9058190679_))
                     (if (or (gx#identifier? _L90695_)
                             (gx#stx-fixnum? _L90695_))
                         (___kont9717197172_ _L90695_ _L90697_)
                         (___kont9717397174_
                          _hd9058490689_
                          _hd9058190679_))))))
            (if (gx#stx-pair? ___stx9716897169_)
                (let ((_e9057990665_ (gx#syntax-e ___stx9716897169_)))
                  (let ((_tl9057790672_
                         (let () (declare (not safe)) (##cdr _e9057990665_)))
                        (_hd9057890669_
                         (let () (declare (not safe)) (##car _e9057990665_))))
                    (if (gx#stx-pair? _tl9057790672_)
                        (let ((_e9058290675_ (gx#syntax-e _tl9057790672_)))
                          (let ((_tl9058090682_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9058290675_)))
                                (_hd9058190679_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9058290675_))))
                            (if (gx#stx-pair? _tl9058090682_)
                                (let ((_e9058590685_
                                       (gx#syntax-e _tl9058090682_)))
                                  (let ((_tl9058390692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9058590685_)))
                                        (_hd9058490689_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9058590685_))))
                                    (if (gx#stx-null? _tl9058390692_)
                                        (___match9719597196_
                                         _e9057990665_
                                         _hd9057890669_
                                         _tl9057790672_
                                         _e9058290675_
                                         _hd9058190679_
                                         _tl9058090682_
                                         _e9058590685_
                                         _hd9058490689_
                                         _tl9058390692_)
                                        (let ()
                                          (declare (not safe))
                                          (_g9057390602_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9057390602_)))))
                        (let () (declare (not safe)) (_g9057390602_)))))
                (let () (declare (not safe)) (_g9057390602_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx90720_)
      (let* ((___stx9721897219_ _$stx90720_)
             (_g9072590754_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9721897219_))))
        (let ((___kont9722197222_
               (lambda (_L90846_ _L90848_)
                 (let ((__tmp97449 (gx#datum->syntax '#f '##fx=))
                       (__tmp97443
                        (let ((__tmp97445
                               (let ((__tmp97448
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp97446
                                      (let ((__tmp97447
                                             (let ()
                                               (declare (not safe))
                                               (cons _L90846_ '()))))
                                        (declare (not safe))
                                        (cons _L90848_ __tmp97447))))
                                 (declare (not safe))
                                 (cons __tmp97448 __tmp97446)))
                              (__tmp97444
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp97445 __tmp97444))))
                   (declare (not safe))
                   (cons __tmp97449 __tmp97443))))
              (___kont9722397224_
               (lambda (_L90791_ _L90793_)
                 (let ((__tmp97462 (gx#datum->syntax '#f 'let))
                       (__tmp97450
                        (let ((__tmp97460
                               (let ((__tmp97461
                                      (let ()
                                        (declare (not safe))
                                        (cons _L90791_ '()))))
                                 (declare (not safe))
                                 (cons _L90791_ __tmp97461)))
                              (__tmp97451
                               (let ((__tmp97452
                                      (let ((__tmp97459
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp97453
                                             (let ((__tmp97455
                                                    (let ((__tmp97458
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp97456
                                                           (let ((__tmp97457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L90791_ '()))))
                     (declare (not safe))
                     (cons _L90793_ __tmp97457))))
              (declare (not safe))
              (cons __tmp97458 __tmp97456)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97454
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp97455 __tmp97454))))
                                        (declare (not safe))
                                        (cons __tmp97459 __tmp97453))))
                                 (declare (not safe))
                                 (cons __tmp97452 '()))))
                          (declare (not safe))
                          (cons __tmp97460 __tmp97451))))
                   (declare (not safe))
                   (cons __tmp97462 __tmp97450)))))
          (let ((___match9724597246_
                 (lambda (_e9073190816_
                          _hd9073090820_
                          _tl9072990823_
                          _e9073490826_
                          _hd9073390830_
                          _tl9073290833_
                          _e9073790836_
                          _hd9073690840_
                          _tl9073590843_)
                   (let ((_L90846_ _hd9073690840_) (_L90848_ _hd9073390830_))
                     (if (or (gx#identifier? _L90846_)
                             (gx#stx-fixnum? _L90846_))
                         (___kont9722197222_ _L90846_ _L90848_)
                         (___kont9722397224_
                          _hd9073690840_
                          _hd9073390830_))))))
            (if (gx#stx-pair? ___stx9721897219_)
                (let ((_e9073190816_ (gx#syntax-e ___stx9721897219_)))
                  (let ((_tl9072990823_
                         (let () (declare (not safe)) (##cdr _e9073190816_)))
                        (_hd9073090820_
                         (let () (declare (not safe)) (##car _e9073190816_))))
                    (if (gx#stx-pair? _tl9072990823_)
                        (let ((_e9073490826_ (gx#syntax-e _tl9072990823_)))
                          (let ((_tl9073290833_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9073490826_)))
                                (_hd9073390830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9073490826_))))
                            (if (gx#stx-pair? _tl9073290833_)
                                (let ((_e9073790836_
                                       (gx#syntax-e _tl9073290833_)))
                                  (let ((_tl9073590843_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9073790836_)))
                                        (_hd9073690840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9073790836_))))
                                    (if (gx#stx-null? _tl9073590843_)
                                        (___match9724597246_
                                         _e9073190816_
                                         _hd9073090820_
                                         _tl9072990823_
                                         _e9073490826_
                                         _hd9073390830_
                                         _tl9073290833_
                                         _e9073790836_
                                         _hd9073690840_
                                         _tl9073590843_)
                                        (let ()
                                          (declare (not safe))
                                          (_g9072590754_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9072590754_)))))
                        (let () (declare (not safe)) (_g9072590754_)))))
                (let () (declare (not safe)) (_g9072590754_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx90871_)
      (let* ((_g9087490895_
              (lambda (_g9087590891_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9087590891_)))
             (_g9087391123_
              (lambda (_g9087590899_)
                (if (gx#stx-pair? _g9087590899_)
                    (let ((_e9088090902_ (gx#syntax-e _g9087590899_)))
                      (let ((_hd9087990906_
                             (let ()
                               (declare (not safe))
                               (##car _e9088090902_)))
                            (_tl9087890909_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9088090902_))))
                        (if (gx#stx-pair? _tl9087890909_)
                            (let ((_e9088390912_ (gx#syntax-e _tl9087890909_)))
                              (let ((_hd9088290916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9088390912_)))
                                    (_tl9088190919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9088390912_))))
                                (if (gx#stx-pair? _hd9088290916_)
                                    (let ((_e9088690922_
                                           (gx#syntax-e _hd9088290916_)))
                                      (let ((_hd9088590926_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9088690922_)))
                                            (_tl9088490929_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9088690922_))))
                                        (if (gx#stx-pair? _tl9088490929_)
                                            (let ((_e9088990932_
                                                   (gx#syntax-e
                                                    _tl9088490929_)))
                                              (let ((_hd9088890936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9088990932_)))
                                                    (_tl9088790939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9088990932_))))
                                                (if (gx#stx-null?
                                                     _tl9088790939_)
                                                    (if (gx#stx-null?
                                                         _tl9088190919_)
                                                        ((lambda (_L90942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L90944_)
                   (let* ((_g9096290970_
                           (lambda (_g9096390966_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g9096390966_)))
                          (_g9096191119_
                           (lambda (_g9096390974_)
                             ((lambda (_L90977_)
                                (let ()
                                  (let* ((_g9098990997_
                                          (lambda (_g9099090993_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g9099090993_)))
                                         (_g9098891115_
                                          (lambda (_g9099091001_)
                                            ((lambda (_L91004_)
                                               (let ()
                                                 (let* ((_g9101791025_
                                                         (lambda (_g9101891021_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g9101891021_)))
                                                        (_g9101691111_
                                                         (lambda (_g9101891029_)
                                                           ((lambda (_L91032_)
                                                              (let ()
                                                                (let* ((_g9104591053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g9104691049_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g9104691049_)))
                               (_g9104491107_
                                (lambda (_g9104691057_)
                                  ((lambda (_L91060_)
                                     (let ()
                                       (let* ((_g9107391081_
                                               (lambda (_g9107491077_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g9107491077_)))
                                              (_g9107291103_
                                               (lambda (_g9107491085_)
                                                 ((lambda (_L91088_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp97595
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp97463
                                                               (let ((__tmp97565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97594 (gx#datum->syntax '#f 'def))
                                    (__tmp97566
                                     (let ((__tmp97567
                                            (let ((__tmp97568
                                                   (let ((__tmp97593
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp97569
                                                          (let ((__tmp97588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97592
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp97589
                                (let ((__tmp97590
                                       (let ((__tmp97591
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L90944_ __tmp97591))))
                                  (declare (not safe))
                                  (cons _L90977_ __tmp97590))))
                           (declare (not safe))
                           (cons __tmp97592 __tmp97589)))
                        (__tmp97570
                         (let ((__tmp97571
                                (let ((__tmp97587
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp97572
                                       (let ((__tmp97585
                                              (let ((__tmp97586
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp97586 '())))
                                             (__tmp97573
                                              (let ((__tmp97574
                                                     (let ((__tmp97584
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp97575
                                                            (let ((__tmp97583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp97576
                           (let ((__tmp97577
                                  (let ((__tmp97582
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp97578
                                         (let ((__tmp97579
                                                (let ((__tmp97581
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp97580
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L90944_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp97581
                                                        __tmp97580))))
                                           (declare (not safe))
                                           (cons __tmp97579 '()))))
                                    (declare (not safe))
                                    (cons __tmp97582 __tmp97578))))
                             (declare (not safe))
                             (cons _L90942_ __tmp97577))))
                      (declare (not safe))
                      (cons __tmp97583 __tmp97576))))
               (declare (not safe))
               (cons __tmp97584 __tmp97575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97574 '()))))
                                         (declare (not safe))
                                         (cons __tmp97585 __tmp97573))))
                                  (declare (not safe))
                                  (cons __tmp97587 __tmp97572))))
                           (declare (not safe))
                           (cons __tmp97571 '()))))
                    (declare (not safe))
                    (cons __tmp97588 __tmp97570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97593
                                                           __tmp97569))))
                                              (declare (not safe))
                                              (cons __tmp97568 '()))))
                                       (declare (not safe))
                                       (cons _L91004_ __tmp97567))))
                                (declare (not safe))
                                (cons __tmp97594 __tmp97566)))
                             (__tmp97464
                              (let ((__tmp97535
                                     (let ((__tmp97564
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp97536
                                            (let ((__tmp97537
                                                   (let ((__tmp97538
                                                          (let ((__tmp97563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp97539
                         (let ((__tmp97558
                                (let ((__tmp97562
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp97559
                                       (let ((__tmp97560
                                              (let ((__tmp97561
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L90944_ __tmp97561))))
                                         (declare (not safe))
                                         (cons _L90977_ __tmp97560))))
                                  (declare (not safe))
                                  (cons __tmp97562 __tmp97559)))
                               (__tmp97540
                                (let ((__tmp97541
                                       (let ((__tmp97557
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp97542
                                              (let ((__tmp97555
                                                     (let ((__tmp97556
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp97556 '())))
                                                    (__tmp97543
                                                     (let ((__tmp97544
                                                            (let ((__tmp97554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp97545
                           (let ((__tmp97553 (gx#datum->syntax '#f 'klass))
                                 (__tmp97546
                                  (let ((__tmp97547
                                         (let ((__tmp97552
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp97548
                                                (let ((__tmp97549
                                                       (let ((__tmp97551
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp97550
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L90944_ '()))))
                 (declare (not safe))
                 (cons __tmp97551 __tmp97550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97549 '()))))
                                           (declare (not safe))
                                           (cons __tmp97552 __tmp97548))))
                                    (declare (not safe))
                                    (cons _L90942_ __tmp97547))))
                             (declare (not safe))
                             (cons __tmp97553 __tmp97546))))
                      (declare (not safe))
                      (cons __tmp97554 __tmp97545))))
               (declare (not safe))
               (cons __tmp97544 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97555 __tmp97543))))
                                         (declare (not safe))
                                         (cons __tmp97557 __tmp97542))))
                                  (declare (not safe))
                                  (cons __tmp97541 '()))))
                           (declare (not safe))
                           (cons __tmp97558 __tmp97540))))
                    (declare (not safe))
                    (cons __tmp97563 __tmp97539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97538 '()))))
                                              (declare (not safe))
                                              (cons _L91032_ __tmp97537))))
                                       (declare (not safe))
                                       (cons __tmp97564 __tmp97536)))
                                    (__tmp97465
                                     (let ((__tmp97501
                                            (let ((__tmp97534
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp97502
                                                   (let ((__tmp97503
                                                          (let ((__tmp97504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97533
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp97505
                                (let ((__tmp97528
                                       (let ((__tmp97532
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp97529
                                              (let ((__tmp97530
                                                     (let ((__tmp97531
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L90944_
                                                             __tmp97531))))
                                                (declare (not safe))
                                                (cons _L90977_ __tmp97530))))
                                         (declare (not safe))
                                         (cons __tmp97532 __tmp97529)))
                                      (__tmp97506
                                       (let ((__tmp97507
                                              (let ((__tmp97527
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp97508
                                                     (let ((__tmp97523
                                                            (let ((__tmp97526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp97524
                           (let ((__tmp97525 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp97525 '()))))
                      (declare (not safe))
                      (cons __tmp97526 __tmp97524)))
                   (__tmp97509
                    (let ((__tmp97510
                           (let ((__tmp97522
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp97511
                                  (let ((__tmp97521
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp97512
                                         (let ((__tmp97520
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp97513
                                                (let ((__tmp97514
                                                       (let ((__tmp97519
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp97515
                                                              (let ((__tmp97516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp97518 (gx#datum->syntax '#f 'quote))
                                   (__tmp97517
                                    (let ()
                                      (declare (not safe))
                                      (cons _L90944_ '()))))
                               (declare (not safe))
                               (cons __tmp97518 __tmp97517))))
                        (declare (not safe))
                        (cons __tmp97516 '()))))
                 (declare (not safe))
                 (cons __tmp97519 __tmp97515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L90942_ __tmp97514))))
                                           (declare (not safe))
                                           (cons __tmp97520 __tmp97513))))
                                    (declare (not safe))
                                    (cons __tmp97521 __tmp97512))))
                             (declare (not safe))
                             (cons __tmp97522 __tmp97511))))
                      (declare (not safe))
                      (cons __tmp97510 '()))))
               (declare (not safe))
               (cons __tmp97523 __tmp97509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97527 __tmp97508))))
                                         (declare (not safe))
                                         (cons __tmp97507 '()))))
                                  (declare (not safe))
                                  (cons __tmp97528 __tmp97506))))
                           (declare (not safe))
                           (cons __tmp97533 __tmp97505))))
                    (declare (not safe))
                    (cons __tmp97504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L91060_
                                                           __tmp97503))))
                                              (declare (not safe))
                                              (cons __tmp97534 __tmp97502)))
                                           (__tmp97466
                                            (let ((__tmp97467
                                                   (let ((__tmp97500
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp97468
                                                          (let ((__tmp97469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97470
                                (let ((__tmp97499
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp97471
                                       (let ((__tmp97494
                                              (let ((__tmp97498
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp97495
                                                     (let ((__tmp97496
                                                            (let ((__tmp97497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L90944_ __tmp97497))))
               (declare (not safe))
               (cons _L90977_ __tmp97496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97498 __tmp97495)))
                                             (__tmp97472
                                              (let ((__tmp97473
                                                     (let ((__tmp97493
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp97474
                                                            (let ((__tmp97489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp97492 (gx#datum->syntax '#f 'klass))
                                 (__tmp97490
                                  (let ((__tmp97491
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp97491 '()))))
                             (declare (not safe))
                             (cons __tmp97492 __tmp97490)))
                          (__tmp97475
                           (let ((__tmp97476
                                  (let ((__tmp97488
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp97477
                                         (let ((__tmp97487
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp97478
                                                (let ((__tmp97486
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp97479
                                                       (let ((__tmp97480
                                                              (let ((__tmp97485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp97481
                             (let ((__tmp97482
                                    (let ((__tmp97484
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp97483
                                           (let ()
                                             (declare (not safe))
                                             (cons _L90944_ '()))))
                                      (declare (not safe))
                                      (cons __tmp97484 __tmp97483))))
                               (declare (not safe))
                               (cons __tmp97482 '()))))
                        (declare (not safe))
                        (cons __tmp97485 __tmp97481))))
                 (declare (not safe))
                 (cons _L90942_ __tmp97480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97486
                                                        __tmp97479))))
                                           (declare (not safe))
                                           (cons __tmp97487 __tmp97478))))
                                    (declare (not safe))
                                    (cons __tmp97488 __tmp97477))))
                             (declare (not safe))
                             (cons __tmp97476 '()))))
                      (declare (not safe))
                      (cons __tmp97489 __tmp97475))))
               (declare (not safe))
               (cons __tmp97493 __tmp97474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97473 '()))))
                                         (declare (not safe))
                                         (cons __tmp97494 __tmp97472))))
                                  (declare (not safe))
                                  (cons __tmp97499 __tmp97471))))
                           (declare (not safe))
                           (cons __tmp97470 '()))))
                    (declare (not safe))
                    (cons _L91088_ __tmp97469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97500
                                                           __tmp97468))))
                                              (declare (not safe))
                                              (cons __tmp97467 '()))))
                                       (declare (not safe))
                                       (cons __tmp97501 __tmp97466))))
                                (declare (not safe))
                                (cons __tmp97535 __tmp97465))))
                         (declare (not safe))
                         (cons __tmp97565 __tmp97464))))
                  (declare (not safe))
                  (cons __tmp97595 __tmp97463)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g9107491085_))))
                                         (_g9107291103_
                                          (gx#stx-identifier
                                           _L90944_
                                           '"&"
                                           _L91060_)))))
                                   _g9104691057_))))
                          (_g9104491107_
                           (gx#stx-identifier _L90944_ _L91004_ '"-set!")))))
                    _g9101891029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9101691111_
                                                    (gx#stx-identifier
                                                     _L90944_
                                                     '"&"
                                                     _L91004_)))))
                                             _g9099091001_))))
                                    (_g9098891115_
                                     (gx#stx-identifier
                                      _L90944_
                                      '"class-type-"
                                      _L90944_)))))
                              _g9096390974_))))
                     (_g9096191119_ (gx#core-quote-syntax 'class::t))))
                 _hd9088890936_
                 _hd9088590926_)
                (_g9087490895_ _g9087590899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g9087490895_
                                                     _g9087590899_))))
                                            (_g9087490895_ _g9087590899_))))
                                    (_g9087490895_ _g9087590899_))))
                            (_g9087490895_ _g9087590899_))))
                    (_g9087490895_ _g9087590899_)))))
        (_g9087391123_ _stx90871_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx91127_)
      (let* ((_g9113191160_
              (lambda (_g9113291156_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9113291156_)))
             (_g9113091260_
              (lambda (_g9113291164_)
                (if (gx#stx-pair? _g9113291164_)
                    (let ((_e9113791167_ (gx#syntax-e _g9113291164_)))
                      (let ((_hd9113691171_
                             (let ()
                               (declare (not safe))
                               (##car _e9113791167_)))
                            (_tl9113591174_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9113791167_))))
                        (if (gx#stx-pair/null? _tl9113591174_)
                            (let ((_g97596_
                                   (gx#syntax-split-splice _tl9113591174_ '0)))
                              (begin
                                (let ((_g97597_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97596_)
                                             (##vector-length _g97596_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97597_ 2)))
                                      (error "Context expects 2 values"
                                             _g97597_)))
                                (let ((_target9113891177_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97596_ 0)))
                                      (_tl9114091180_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97596_ 1))))
                                  (if (gx#stx-null? _tl9114091180_)
                                      (letrec ((_loop9114191183_
                                                (lambda (_hd9113991187_
                                                         _field9114591190_
                                                         _slot9114691192_)
                                                  (if (gx#stx-pair?
                                                       _hd9113991187_)
                                                      (let ((_e9114291195_
                                                             (gx#syntax-e
                                                              _hd9113991187_)))
                                                        (let ((_lp-hd9114391199_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e9114291195_)))
                      (_lp-tl9114491202_
                       (let () (declare (not safe)) (##cdr _e9114291195_))))
                  (if (gx#stx-pair? _lp-hd9114391199_)
                      (let ((_e9115191205_ (gx#syntax-e _lp-hd9114391199_)))
                        (let ((_hd9115091209_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9115191205_)))
                              (_tl9114991212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9115191205_))))
                          (if (gx#stx-pair? _tl9114991212_)
                              (let ((_e9115491215_
                                     (gx#syntax-e _tl9114991212_)))
                                (let ((_hd9115391219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9115491215_)))
                                      (_tl9115291222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9115491215_))))
                                  (if (gx#stx-null? _tl9115291222_)
                                      (_loop9114191183_
                                       _lp-tl9114491202_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd9115391219_
                                               _field9114591190_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd9115091209_
                                               _slot9114691192_)))
                                      (_g9113191160_ _g9113291164_))))
                              (_g9113191160_ _g9113291164_))))
                      (_g9113191160_ _g9113291164_))))
              (let ((_field9114791225_ (reverse _field9114591190_))
                    (_slot9114891228_ (reverse _slot9114691192_)))
                ((lambda (_L91231_ _L91233_)
                   (let ((__tmp97605 (gx#datum->syntax '#f 'begin))
                         (__tmp97598
                          (begin
                            (gx#syntax-check-splice-targets _L91231_ _L91233_)
                            (let ((__tmp97599
                                   (lambda (_g9124891252_
                                            _g9124991255_
                                            _g9125091257_)
                                     (let ((__tmp97600
                                            (let ((__tmp97604
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp97601
                                                   (let ((__tmp97602
                                                          (let ((__tmp97603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g9124891252_ '()))))
                    (declare (not safe))
                    (cons _g9124991255_ __tmp97603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97602 '()))))
                                              (declare (not safe))
                                              (cons __tmp97604 __tmp97601))))
                                       (declare (not safe))
                                       (cons __tmp97600 _g9125091257_)))))
                              (declare (not safe))
                              (foldr2 __tmp97599 '() _L91231_ _L91233_)))))
                     (declare (not safe))
                     (cons __tmp97605 __tmp97598)))
                 _field9114791225_
                 _slot9114891228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop9114191183_
                                         _target9113891177_
                                         '()
                                         '()))
                                      (_g9113191160_ _g9113291164_)))))
                            (_g9113191160_ _g9113291164_))))
                    (_g9113191160_ _g9113291164_)))))
        (_g9113091260_ _$stx91127_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx91265_)
      (let* ((_g9126991295_
              (lambda (_g9127091291_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g9127091291_)))
             (_g9126891378_
              (lambda (_g9127091299_)
                (if (gx#stx-pair? _g9127091299_)
                    (let ((_e9127791302_ (gx#syntax-e _g9127091299_)))
                      (let ((_hd9127691306_
                             (let ()
                               (declare (not safe))
                               (##car _e9127791302_)))
                            (_tl9127591309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e9127791302_))))
                        (if (gx#stx-pair? _tl9127591309_)
                            (let ((_e9128091312_ (gx#syntax-e _tl9127591309_)))
                              (let ((_hd9127991316_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9128091312_)))
                                    (_tl9127891319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9128091312_))))
                                (if (gx#stx-pair? _tl9127891319_)
                                    (let ((_e9128391322_
                                           (gx#syntax-e _tl9127891319_)))
                                      (let ((_hd9128291326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9128391322_)))
                                            (_tl9128191329_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9128391322_))))
                                        (if (gx#stx-pair? _tl9128191329_)
                                            (let ((_e9128691332_
                                                   (gx#syntax-e
                                                    _tl9128191329_)))
                                              (let ((_hd9128591336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9128691332_)))
                                                    (_tl9128491339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9128691332_))))
                                                (if (gx#stx-pair?
                                                     _tl9128491339_)
                                                    (let ((_e9128991342_
                                                           (gx#syntax-e
                                                            _tl9128491339_)))
                                                      (let ((_hd9128891346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9128991342_)))
                    (_tl9128791349_
                     (let () (declare (not safe)) (##cdr _e9128991342_))))
                (if (gx#stx-null? _tl9128791349_)
                    ((lambda (_L91352_ _L91354_ _L91355_ _L91356_)
                       (let ((__tmp97652 (gx#datum->syntax '#f 'if))
                             (__tmp97606
                              (let ((__tmp97649
                                     (let ((__tmp97651
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp97650
                                            (let ()
                                              (declare (not safe))
                                              (cons _L91356_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97651 __tmp97650)))
                                    (__tmp97607
                                     (let ((__tmp97612
                                            (let ((__tmp97648
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp97613
                                                   (let ((__tmp97642
                                                          (let ((__tmp97647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp97643
                         (let ((__tmp97644
                                (let ((__tmp97646
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp97645
                                       (let ()
                                         (declare (not safe))
                                         (cons _L91356_ '()))))
                                  (declare (not safe))
                                  (cons __tmp97646 __tmp97645))))
                           (declare (not safe))
                           (cons __tmp97644 '()))))
                    (declare (not safe))
                    (cons __tmp97647 __tmp97643)))
                 (__tmp97614
                  (let ((__tmp97615
                         (let ((__tmp97641 (gx#datum->syntax '#f 'cond))
                               (__tmp97616
                                (let ((__tmp97624
                                       (let ((__tmp97628
                                              (let ((__tmp97640
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp97629
                                                     (let ((__tmp97636
                                                            (let ((__tmp97639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp97637
                           (let ((__tmp97638 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp97638 '()))))
                      (declare (not safe))
                      (cons __tmp97639 __tmp97637)))
                   (__tmp97630
                    (let ((__tmp97631
                           (let ((__tmp97635
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp97632
                                  (let ((__tmp97634
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp97633
                                         (let ()
                                           (declare (not safe))
                                           (cons _L91355_ '()))))
                                    (declare (not safe))
                                    (cons __tmp97634 __tmp97633))))
                             (declare (not safe))
                             (cons __tmp97635 __tmp97632))))
                      (declare (not safe))
                      (cons __tmp97631 '()))))
               (declare (not safe))
               (cons __tmp97636 __tmp97630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97640 __tmp97629)))
                                             (__tmp97625
                                              (let ((__tmp97627
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp97626
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L91354_ '()))))
                                                (declare (not safe))
                                                (cons __tmp97627 __tmp97626))))
                                         (declare (not safe))
                                         (cons __tmp97628 __tmp97625)))
                                      (__tmp97617
                                       (let ((__tmp97618
                                              (let ((__tmp97623
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp97619
                                                     (let ((__tmp97620
                                                            (let ((__tmp97621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp97622
                                  (let ()
                                    (declare (not safe))
                                    (cons _L91355_ '()))))
                             (declare (not safe))
                             (cons _L91356_ __tmp97622))))
                      (declare (not safe))
                      (cons _L91352_ __tmp97621))))
               (declare (not safe))
               (cons __tmp97620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp97623 __tmp97619))))
                                         (declare (not safe))
                                         (cons __tmp97618 '()))))
                                  (declare (not safe))
                                  (cons __tmp97624 __tmp97617))))
                           (declare (not safe))
                           (cons __tmp97641 __tmp97616))))
                    (declare (not safe))
                    (cons __tmp97615 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp97642
                                                           __tmp97614))))
                                              (declare (not safe))
                                              (cons __tmp97648 __tmp97613)))
                                           (__tmp97608
                                            (let ((__tmp97609
                                                   (let ((__tmp97610
                                                          (let ((__tmp97611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L91355_ '()))))
                    (declare (not safe))
                    (cons _L91356_ __tmp97611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L91352_
                                                           __tmp97610))))
                                              (declare (not safe))
                                              (cons __tmp97609 '()))))
                                       (declare (not safe))
                                       (cons __tmp97612 __tmp97608))))
                                (declare (not safe))
                                (cons __tmp97649 __tmp97607))))
                         (declare (not safe))
                         (cons __tmp97652 __tmp97606)))
                     _hd9128891346_
                     _hd9128591336_
                     _hd9128291326_
                     _hd9127991316_)
                    (_g9126991295_ _g9127091299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g9126991295_
                                                     _g9127091299_))))
                                            (_g9126991295_ _g9127091299_))))
                                    (_g9126991295_ _g9127091299_))))
                            (_g9126991295_ _g9127091299_))))
                    (_g9126991295_ _g9127091299_)))))
        (_g9126891378_ _$stx91265_)))))
