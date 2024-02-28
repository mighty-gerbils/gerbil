(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61565_)
      (let* ((___stx6410664107_ _$stx61565_)
             (_g6157061599_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6410664107_))))
        (let ((___kont6410964110_
               (lambda (_L61692_ _L61694_)
                 (let ((__tmp64446 (gx#datum->syntax '#f '##fx=))
                       (__tmp64440
                        (let ((__tmp64442
                               (let ((__tmp64445
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64443
                                      (let ((__tmp64444
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61692_ '()))))
                                        (declare (not safe))
                                        (cons _L61694_ __tmp64444))))
                                 (declare (not safe))
                                 (cons __tmp64445 __tmp64443)))
                              (__tmp64441
                               (let ()
                                 (declare (not safe))
                                 (cons _L61692_ '()))))
                          (declare (not safe))
                          (cons __tmp64442 __tmp64441))))
                   (declare (not safe))
                   (cons __tmp64446 __tmp64440))))
              (___kont6411164112_
               (lambda (_L61636_ _L61638_)
                 (let ((__tmp64459 (gx#datum->syntax '#f 'let))
                       (__tmp64447
                        (let ((__tmp64457
                               (let ((__tmp64458
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61636_ '()))))
                                 (declare (not safe))
                                 (cons _L61636_ __tmp64458)))
                              (__tmp64448
                               (let ((__tmp64449
                                      (let ((__tmp64456
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64450
                                             (let ((__tmp64452
                                                    (let ((__tmp64455
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64453
                                                           (let ((__tmp64454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61636_ '()))))
                     (declare (not safe))
                     (cons _L61638_ __tmp64454))))
              (declare (not safe))
              (cons __tmp64455 __tmp64453)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64451
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61636_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64452 __tmp64451))))
                                        (declare (not safe))
                                        (cons __tmp64456 __tmp64450))))
                                 (declare (not safe))
                                 (cons __tmp64449 '()))))
                          (declare (not safe))
                          (cons __tmp64457 __tmp64448))))
                   (declare (not safe))
                   (cons __tmp64459 __tmp64447)))))
          (let ((___match6413364134_
                 (lambda (_e6157661662_
                          _hd6157561666_
                          _tl6157461669_
                          _e6157961672_
                          _hd6157861676_
                          _tl6157761679_
                          _e6158261682_
                          _hd6158161686_
                          _tl6158061689_)
                   (let ((_L61692_ _hd6158161686_) (_L61694_ _hd6157861676_))
                     (if (or (gx#identifier? _L61692_)
                             (gx#stx-fixnum? _L61692_))
                         (___kont6410964110_ _L61692_ _L61694_)
                         (___kont6411164112_
                          _hd6158161686_
                          _hd6157861676_))))))
            (if (gx#stx-pair? ___stx6410664107_)
                (let ((_e6157661662_ (gx#syntax-e ___stx6410664107_)))
                  (let ((_tl6157461669_
                         (let () (declare (not safe)) (##cdr _e6157661662_)))
                        (_hd6157561666_
                         (let () (declare (not safe)) (##car _e6157661662_))))
                    (if (gx#stx-pair? _tl6157461669_)
                        (let ((_e6157961672_ (gx#syntax-e _tl6157461669_)))
                          (let ((_tl6157761679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6157961672_)))
                                (_hd6157861676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6157961672_))))
                            (if (gx#stx-pair? _tl6157761679_)
                                (let ((_e6158261682_
                                       (gx#syntax-e _tl6157761679_)))
                                  (let ((_tl6158061689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6158261682_)))
                                        (_hd6158161686_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6158261682_))))
                                    (if (gx#stx-null? _tl6158061689_)
                                        (___match6413364134_
                                         _e6157661662_
                                         _hd6157561666_
                                         _tl6157461669_
                                         _e6157961672_
                                         _hd6157861676_
                                         _tl6157761679_
                                         _e6158261682_
                                         _hd6158161686_
                                         _tl6158061689_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6157061599_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6157061599_)))))
                        (let () (declare (not safe)) (_g6157061599_)))))
                (let () (declare (not safe)) (_g6157061599_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61717_)
      (let* ((___stx6415664157_ _$stx61717_)
             (_g6172261751_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6415664157_))))
        (let ((___kont6415964160_
               (lambda (_L61843_ _L61845_)
                 (let ((__tmp64466 (gx#datum->syntax '#f '##fx=))
                       (__tmp64460
                        (let ((__tmp64462
                               (let ((__tmp64465
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64463
                                      (let ((__tmp64464
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61843_ '()))))
                                        (declare (not safe))
                                        (cons _L61845_ __tmp64464))))
                                 (declare (not safe))
                                 (cons __tmp64465 __tmp64463)))
                              (__tmp64461
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64462 __tmp64461))))
                   (declare (not safe))
                   (cons __tmp64466 __tmp64460))))
              (___kont6416164162_
               (lambda (_L61788_ _L61790_)
                 (let ((__tmp64479 (gx#datum->syntax '#f 'let))
                       (__tmp64467
                        (let ((__tmp64477
                               (let ((__tmp64478
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61788_ '()))))
                                 (declare (not safe))
                                 (cons _L61788_ __tmp64478)))
                              (__tmp64468
                               (let ((__tmp64469
                                      (let ((__tmp64476
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64470
                                             (let ((__tmp64472
                                                    (let ((__tmp64475
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64473
                                                           (let ((__tmp64474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61788_ '()))))
                     (declare (not safe))
                     (cons _L61790_ __tmp64474))))
              (declare (not safe))
              (cons __tmp64475 __tmp64473)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64471
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64472 __tmp64471))))
                                        (declare (not safe))
                                        (cons __tmp64476 __tmp64470))))
                                 (declare (not safe))
                                 (cons __tmp64469 '()))))
                          (declare (not safe))
                          (cons __tmp64477 __tmp64468))))
                   (declare (not safe))
                   (cons __tmp64479 __tmp64467)))))
          (let ((___match6418364184_
                 (lambda (_e6172861813_
                          _hd6172761817_
                          _tl6172661820_
                          _e6173161823_
                          _hd6173061827_
                          _tl6172961830_
                          _e6173461833_
                          _hd6173361837_
                          _tl6173261840_)
                   (let ((_L61843_ _hd6173361837_) (_L61845_ _hd6173061827_))
                     (if (or (gx#identifier? _L61843_)
                             (gx#stx-fixnum? _L61843_))
                         (___kont6415964160_ _L61843_ _L61845_)
                         (___kont6416164162_
                          _hd6173361837_
                          _hd6173061827_))))))
            (if (gx#stx-pair? ___stx6415664157_)
                (let ((_e6172861813_ (gx#syntax-e ___stx6415664157_)))
                  (let ((_tl6172661820_
                         (let () (declare (not safe)) (##cdr _e6172861813_)))
                        (_hd6172761817_
                         (let () (declare (not safe)) (##car _e6172861813_))))
                    (if (gx#stx-pair? _tl6172661820_)
                        (let ((_e6173161823_ (gx#syntax-e _tl6172661820_)))
                          (let ((_tl6172961830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6173161823_)))
                                (_hd6173061827_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6173161823_))))
                            (if (gx#stx-pair? _tl6172961830_)
                                (let ((_e6173461833_
                                       (gx#syntax-e _tl6172961830_)))
                                  (let ((_tl6173261840_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6173461833_)))
                                        (_hd6173361837_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6173461833_))))
                                    (if (gx#stx-null? _tl6173261840_)
                                        (___match6418364184_
                                         _e6172861813_
                                         _hd6172761817_
                                         _tl6172661820_
                                         _e6173161823_
                                         _hd6173061827_
                                         _tl6172961830_
                                         _e6173461833_
                                         _hd6173361837_
                                         _tl6173261840_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6172261751_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6172261751_)))))
                        (let () (declare (not safe)) (_g6172261751_)))))
                (let () (declare (not safe)) (_g6172261751_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61868_)
      (let* ((_g6187161892_
              (lambda (_g6187261888_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6187261888_)))
             (_g6187062120_
              (lambda (_g6187261896_)
                (if (gx#stx-pair? _g6187261896_)
                    (let ((_e6187761899_ (gx#syntax-e _g6187261896_)))
                      (let ((_hd6187661903_
                             (let ()
                               (declare (not safe))
                               (##car _e6187761899_)))
                            (_tl6187561906_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6187761899_))))
                        (if (gx#stx-pair? _tl6187561906_)
                            (let ((_e6188061909_ (gx#syntax-e _tl6187561906_)))
                              (let ((_hd6187961913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6188061909_)))
                                    (_tl6187861916_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6188061909_))))
                                (if (gx#stx-pair? _hd6187961913_)
                                    (let ((_e6188361919_
                                           (gx#syntax-e _hd6187961913_)))
                                      (let ((_hd6188261923_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6188361919_)))
                                            (_tl6188161926_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6188361919_))))
                                        (if (gx#stx-pair? _tl6188161926_)
                                            (let ((_e6188661929_
                                                   (gx#syntax-e
                                                    _tl6188161926_)))
                                              (let ((_hd6188561933_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6188661929_)))
                                                    (_tl6188461936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6188661929_))))
                                                (if (gx#stx-null?
                                                     _tl6188461936_)
                                                    (if (gx#stx-null?
                                                         _tl6187861916_)
                                                        ((lambda (_L61939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61941_)
                   (let* ((_g6195961967_
                           (lambda (_g6196061963_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6196061963_)))
                          (_g6195862116_
                           (lambda (_g6196061971_)
                             ((lambda (_L61974_)
                                (let ()
                                  (let* ((_g6198661994_
                                          (lambda (_g6198761990_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6198761990_)))
                                         (_g6198562112_
                                          (lambda (_g6198761998_)
                                            ((lambda (_L62001_)
                                               (let ()
                                                 (let* ((_g6201462022_
                                                         (lambda (_g6201562018_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6201562018_)))
                                                        (_g6201362108_
                                                         (lambda (_g6201562026_)
                                                           ((lambda (_L62029_)
                                                              (let ()
                                                                (let* ((_g6204262050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6204362046_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6204362046_)))
                               (_g6204162104_
                                (lambda (_g6204362054_)
                                  ((lambda (_L62057_)
                                     (let ()
                                       (let* ((_g6207062078_
                                               (lambda (_g6207162074_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6207162074_)))
                                              (_g6206962100_
                                               (lambda (_g6207162082_)
                                                 ((lambda (_L62085_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64612
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64480
                                                               (let ((__tmp64582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64611 (gx#datum->syntax '#f 'def))
                                    (__tmp64583
                                     (let ((__tmp64584
                                            (let ((__tmp64585
                                                   (let ((__tmp64610
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64586
                                                          (let ((__tmp64605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64609
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64606
                                (let ((__tmp64607
                                       (let ((__tmp64608
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61941_ __tmp64608))))
                                  (declare (not safe))
                                  (cons _L61974_ __tmp64607))))
                           (declare (not safe))
                           (cons __tmp64609 __tmp64606)))
                        (__tmp64587
                         (let ((__tmp64588
                                (let ((__tmp64604
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64589
                                       (let ((__tmp64602
                                              (let ((__tmp64603
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64603 '())))
                                             (__tmp64590
                                              (let ((__tmp64591
                                                     (let ((__tmp64601
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64592
                                                            (let ((__tmp64600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64593
                           (let ((__tmp64594
                                  (let ((__tmp64599
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64595
                                         (let ((__tmp64596
                                                (let ((__tmp64598
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64597
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61941_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64598
                                                        __tmp64597))))
                                           (declare (not safe))
                                           (cons __tmp64596 '()))))
                                    (declare (not safe))
                                    (cons __tmp64599 __tmp64595))))
                             (declare (not safe))
                             (cons _L61939_ __tmp64594))))
                      (declare (not safe))
                      (cons __tmp64600 __tmp64593))))
               (declare (not safe))
               (cons __tmp64601 __tmp64592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64591 '()))))
                                         (declare (not safe))
                                         (cons __tmp64602 __tmp64590))))
                                  (declare (not safe))
                                  (cons __tmp64604 __tmp64589))))
                           (declare (not safe))
                           (cons __tmp64588 '()))))
                    (declare (not safe))
                    (cons __tmp64605 __tmp64587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64610
                                                           __tmp64586))))
                                              (declare (not safe))
                                              (cons __tmp64585 '()))))
                                       (declare (not safe))
                                       (cons _L62001_ __tmp64584))))
                                (declare (not safe))
                                (cons __tmp64611 __tmp64583)))
                             (__tmp64481
                              (let ((__tmp64552
                                     (let ((__tmp64581
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64553
                                            (let ((__tmp64554
                                                   (let ((__tmp64555
                                                          (let ((__tmp64580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64556
                         (let ((__tmp64575
                                (let ((__tmp64579
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64576
                                       (let ((__tmp64577
                                              (let ((__tmp64578
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61941_ __tmp64578))))
                                         (declare (not safe))
                                         (cons _L61974_ __tmp64577))))
                                  (declare (not safe))
                                  (cons __tmp64579 __tmp64576)))
                               (__tmp64557
                                (let ((__tmp64558
                                       (let ((__tmp64574
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64559
                                              (let ((__tmp64572
                                                     (let ((__tmp64573
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64573 '())))
                                                    (__tmp64560
                                                     (let ((__tmp64561
                                                            (let ((__tmp64571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64562
                           (let ((__tmp64570 (gx#datum->syntax '#f 'klass))
                                 (__tmp64563
                                  (let ((__tmp64564
                                         (let ((__tmp64569
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64565
                                                (let ((__tmp64566
                                                       (let ((__tmp64568
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64567
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61941_ '()))))
                 (declare (not safe))
                 (cons __tmp64568 __tmp64567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64566 '()))))
                                           (declare (not safe))
                                           (cons __tmp64569 __tmp64565))))
                                    (declare (not safe))
                                    (cons _L61939_ __tmp64564))))
                             (declare (not safe))
                             (cons __tmp64570 __tmp64563))))
                      (declare (not safe))
                      (cons __tmp64571 __tmp64562))))
               (declare (not safe))
               (cons __tmp64561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64572 __tmp64560))))
                                         (declare (not safe))
                                         (cons __tmp64574 __tmp64559))))
                                  (declare (not safe))
                                  (cons __tmp64558 '()))))
                           (declare (not safe))
                           (cons __tmp64575 __tmp64557))))
                    (declare (not safe))
                    (cons __tmp64580 __tmp64556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64555 '()))))
                                              (declare (not safe))
                                              (cons _L62029_ __tmp64554))))
                                       (declare (not safe))
                                       (cons __tmp64581 __tmp64553)))
                                    (__tmp64482
                                     (let ((__tmp64518
                                            (let ((__tmp64551
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64519
                                                   (let ((__tmp64520
                                                          (let ((__tmp64521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64550
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64522
                                (let ((__tmp64545
                                       (let ((__tmp64549
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64546
                                              (let ((__tmp64547
                                                     (let ((__tmp64548
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61941_
                                                             __tmp64548))))
                                                (declare (not safe))
                                                (cons _L61974_ __tmp64547))))
                                         (declare (not safe))
                                         (cons __tmp64549 __tmp64546)))
                                      (__tmp64523
                                       (let ((__tmp64524
                                              (let ((__tmp64544
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64525
                                                     (let ((__tmp64540
                                                            (let ((__tmp64543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64541
                           (let ((__tmp64542 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64542 '()))))
                      (declare (not safe))
                      (cons __tmp64543 __tmp64541)))
                   (__tmp64526
                    (let ((__tmp64527
                           (let ((__tmp64539
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64528
                                  (let ((__tmp64538
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64529
                                         (let ((__tmp64537
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64530
                                                (let ((__tmp64531
                                                       (let ((__tmp64536
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64532
                                                              (let ((__tmp64533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64535 (gx#datum->syntax '#f 'quote))
                                   (__tmp64534
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61941_ '()))))
                               (declare (not safe))
                               (cons __tmp64535 __tmp64534))))
                        (declare (not safe))
                        (cons __tmp64533 '()))))
                 (declare (not safe))
                 (cons __tmp64536 __tmp64532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61939_ __tmp64531))))
                                           (declare (not safe))
                                           (cons __tmp64537 __tmp64530))))
                                    (declare (not safe))
                                    (cons __tmp64538 __tmp64529))))
                             (declare (not safe))
                             (cons __tmp64539 __tmp64528))))
                      (declare (not safe))
                      (cons __tmp64527 '()))))
               (declare (not safe))
               (cons __tmp64540 __tmp64526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64544 __tmp64525))))
                                         (declare (not safe))
                                         (cons __tmp64524 '()))))
                                  (declare (not safe))
                                  (cons __tmp64545 __tmp64523))))
                           (declare (not safe))
                           (cons __tmp64550 __tmp64522))))
                    (declare (not safe))
                    (cons __tmp64521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62057_
                                                           __tmp64520))))
                                              (declare (not safe))
                                              (cons __tmp64551 __tmp64519)))
                                           (__tmp64483
                                            (let ((__tmp64484
                                                   (let ((__tmp64517
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64485
                                                          (let ((__tmp64486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64487
                                (let ((__tmp64516
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64488
                                       (let ((__tmp64511
                                              (let ((__tmp64515
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64512
                                                     (let ((__tmp64513
                                                            (let ((__tmp64514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61941_ __tmp64514))))
               (declare (not safe))
               (cons _L61974_ __tmp64513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64515 __tmp64512)))
                                             (__tmp64489
                                              (let ((__tmp64490
                                                     (let ((__tmp64510
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64491
                                                            (let ((__tmp64506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64509 (gx#datum->syntax '#f 'klass))
                                 (__tmp64507
                                  (let ((__tmp64508
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64508 '()))))
                             (declare (not safe))
                             (cons __tmp64509 __tmp64507)))
                          (__tmp64492
                           (let ((__tmp64493
                                  (let ((__tmp64505
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64494
                                         (let ((__tmp64504
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64495
                                                (let ((__tmp64503
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64496
                                                       (let ((__tmp64497
                                                              (let ((__tmp64502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64498
                             (let ((__tmp64499
                                    (let ((__tmp64501
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64500
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61941_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64501 __tmp64500))))
                               (declare (not safe))
                               (cons __tmp64499 '()))))
                        (declare (not safe))
                        (cons __tmp64502 __tmp64498))))
                 (declare (not safe))
                 (cons _L61939_ __tmp64497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64503
                                                        __tmp64496))))
                                           (declare (not safe))
                                           (cons __tmp64504 __tmp64495))))
                                    (declare (not safe))
                                    (cons __tmp64505 __tmp64494))))
                             (declare (not safe))
                             (cons __tmp64493 '()))))
                      (declare (not safe))
                      (cons __tmp64506 __tmp64492))))
               (declare (not safe))
               (cons __tmp64510 __tmp64491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64490 '()))))
                                         (declare (not safe))
                                         (cons __tmp64511 __tmp64489))))
                                  (declare (not safe))
                                  (cons __tmp64516 __tmp64488))))
                           (declare (not safe))
                           (cons __tmp64487 '()))))
                    (declare (not safe))
                    (cons _L62085_ __tmp64486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64517
                                                           __tmp64485))))
                                              (declare (not safe))
                                              (cons __tmp64484 '()))))
                                       (declare (not safe))
                                       (cons __tmp64518 __tmp64483))))
                                (declare (not safe))
                                (cons __tmp64552 __tmp64482))))
                         (declare (not safe))
                         (cons __tmp64582 __tmp64481))))
                  (declare (not safe))
                  (cons __tmp64612 __tmp64480)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6207162082_))))
                                         (_g6206962100_
                                          (gx#stx-identifier
                                           _L61941_
                                           '"&"
                                           _L62057_)))))
                                   _g6204362054_))))
                          (_g6204162104_
                           (gx#stx-identifier _L61941_ _L62001_ '"-set!")))))
                    _g6201562026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6201362108_
                                                    (gx#stx-identifier
                                                     _L61941_
                                                     '"&"
                                                     _L62001_)))))
                                             _g6198761998_))))
                                    (_g6198562112_
                                     (gx#stx-identifier
                                      _L61941_
                                      '"class-type-"
                                      _L61941_)))))
                              _g6196061971_))))
                     (_g6195862116_ (gx#core-quote-syntax 'class::t))))
                 _hd6188561933_
                 _hd6188261923_)
                (_g6187161892_ _g6187261896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6187161892_
                                                     _g6187261896_))))
                                            (_g6187161892_ _g6187261896_))))
                                    (_g6187161892_ _g6187261896_))))
                            (_g6187161892_ _g6187261896_))))
                    (_g6187161892_ _g6187261896_)))))
        (_g6187062120_ _stx61868_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62124_)
      (let* ((_g6212862157_
              (lambda (_g6212962153_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6212962153_)))
             (_g6212762257_
              (lambda (_g6212962161_)
                (if (gx#stx-pair? _g6212962161_)
                    (let ((_e6213462164_ (gx#syntax-e _g6212962161_)))
                      (let ((_hd6213362168_
                             (let ()
                               (declare (not safe))
                               (##car _e6213462164_)))
                            (_tl6213262171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6213462164_))))
                        (if (gx#stx-pair/null? _tl6213262171_)
                            (let ((_g64613_
                                   (gx#syntax-split-splice _tl6213262171_ '0)))
                              (begin
                                (let ((_g64614_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64613_)
                                             (##vector-length _g64613_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64614_ 2)))
                                      (error "Context expects 2 values"
                                             _g64614_)))
                                (let ((_target6213562174_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64613_ 0)))
                                      (_tl6213762177_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64613_ 1))))
                                  (if (gx#stx-null? _tl6213762177_)
                                      (letrec ((_loop6213862180_
                                                (lambda (_hd6213662184_
                                                         _field6214262187_
                                                         _slot6214362189_)
                                                  (if (gx#stx-pair?
                                                       _hd6213662184_)
                                                      (let ((_e6213962192_
                                                             (gx#syntax-e
                                                              _hd6213662184_)))
                                                        (let ((_lp-hd6214062196_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6213962192_)))
                      (_lp-tl6214162199_
                       (let () (declare (not safe)) (##cdr _e6213962192_))))
                  (if (gx#stx-pair? _lp-hd6214062196_)
                      (let ((_e6214862202_ (gx#syntax-e _lp-hd6214062196_)))
                        (let ((_hd6214762206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6214862202_)))
                              (_tl6214662209_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6214862202_))))
                          (if (gx#stx-pair? _tl6214662209_)
                              (let ((_e6215162212_
                                     (gx#syntax-e _tl6214662209_)))
                                (let ((_hd6215062216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6215162212_)))
                                      (_tl6214962219_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6215162212_))))
                                  (if (gx#stx-null? _tl6214962219_)
                                      (_loop6213862180_
                                       _lp-tl6214162199_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6215062216_
                                               _field6214262187_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6214762206_
                                               _slot6214362189_)))
                                      (_g6212862157_ _g6212962161_))))
                              (_g6212862157_ _g6212962161_))))
                      (_g6212862157_ _g6212962161_))))
              (let ((_field6214462222_ (reverse _field6214262187_))
                    (_slot6214562225_ (reverse _slot6214362189_)))
                ((lambda (_L62228_ _L62230_)
                   (let ((__tmp64622 (gx#datum->syntax '#f 'begin))
                         (__tmp64615
                          (begin
                            (gx#syntax-check-splice-targets _L62228_ _L62230_)
                            (let ((__tmp64616
                                   (lambda (_g6224562249_
                                            _g6224662252_
                                            _g6224762254_)
                                     (let ((__tmp64617
                                            (let ((__tmp64621
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64618
                                                   (let ((__tmp64619
                                                          (let ((__tmp64620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6224562249_ '()))))
                    (declare (not safe))
                    (cons _g6224662252_ __tmp64620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64619 '()))))
                                              (declare (not safe))
                                              (cons __tmp64621 __tmp64618))))
                                       (declare (not safe))
                                       (cons __tmp64617 _g6224762254_)))))
                              (declare (not safe))
                              (foldr2 __tmp64616 '() _L62228_ _L62230_)))))
                     (declare (not safe))
                     (cons __tmp64622 __tmp64615)))
                 _field6214462222_
                 _slot6214562225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6213862180_
                                         _target6213562174_
                                         '()
                                         '()))
                                      (_g6212862157_ _g6212962161_)))))
                            (_g6212862157_ _g6212962161_))))
                    (_g6212862157_ _g6212962161_)))))
        (_g6212762257_ _$stx62124_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62262_)
      (let* ((_g6226662292_
              (lambda (_g6226762288_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6226762288_)))
             (_g6226562375_
              (lambda (_g6226762296_)
                (if (gx#stx-pair? _g6226762296_)
                    (let ((_e6227462299_ (gx#syntax-e _g6226762296_)))
                      (let ((_hd6227362303_
                             (let ()
                               (declare (not safe))
                               (##car _e6227462299_)))
                            (_tl6227262306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6227462299_))))
                        (if (gx#stx-pair? _tl6227262306_)
                            (let ((_e6227762309_ (gx#syntax-e _tl6227262306_)))
                              (let ((_hd6227662313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6227762309_)))
                                    (_tl6227562316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6227762309_))))
                                (if (gx#stx-pair? _tl6227562316_)
                                    (let ((_e6228062319_
                                           (gx#syntax-e _tl6227562316_)))
                                      (let ((_hd6227962323_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6228062319_)))
                                            (_tl6227862326_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6228062319_))))
                                        (if (gx#stx-pair? _tl6227862326_)
                                            (let ((_e6228362329_
                                                   (gx#syntax-e
                                                    _tl6227862326_)))
                                              (let ((_hd6228262333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6228362329_)))
                                                    (_tl6228162336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6228362329_))))
                                                (if (gx#stx-pair?
                                                     _tl6228162336_)
                                                    (let ((_e6228662339_
                                                           (gx#syntax-e
                                                            _tl6228162336_)))
                                                      (let ((_hd6228562343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6228662339_)))
                    (_tl6228462346_
                     (let () (declare (not safe)) (##cdr _e6228662339_))))
                (if (gx#stx-null? _tl6228462346_)
                    ((lambda (_L62349_ _L62351_ _L62352_ _L62353_)
                       (let ((__tmp64669 (gx#datum->syntax '#f 'if))
                             (__tmp64623
                              (let ((__tmp64666
                                     (let ((__tmp64668
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp64667
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62353_ '()))))
                                       (declare (not safe))
                                       (cons __tmp64668 __tmp64667)))
                                    (__tmp64624
                                     (let ((__tmp64629
                                            (let ((__tmp64665
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64630
                                                   (let ((__tmp64659
                                                          (let ((__tmp64664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp64660
                         (let ((__tmp64661
                                (let ((__tmp64663
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp64662
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62353_ '()))))
                                  (declare (not safe))
                                  (cons __tmp64663 __tmp64662))))
                           (declare (not safe))
                           (cons __tmp64661 '()))))
                    (declare (not safe))
                    (cons __tmp64664 __tmp64660)))
                 (__tmp64631
                  (let ((__tmp64632
                         (let ((__tmp64658 (gx#datum->syntax '#f 'cond))
                               (__tmp64633
                                (let ((__tmp64641
                                       (let ((__tmp64645
                                              (let ((__tmp64657
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp64646
                                                     (let ((__tmp64653
                                                            (let ((__tmp64656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp64654
                           (let ((__tmp64655 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp64655 '()))))
                      (declare (not safe))
                      (cons __tmp64656 __tmp64654)))
                   (__tmp64647
                    (let ((__tmp64648
                           (let ((__tmp64652
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp64649
                                  (let ((__tmp64651
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64650
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62352_ '()))))
                                    (declare (not safe))
                                    (cons __tmp64651 __tmp64650))))
                             (declare (not safe))
                             (cons __tmp64652 __tmp64649))))
                      (declare (not safe))
                      (cons __tmp64648 '()))))
               (declare (not safe))
               (cons __tmp64653 __tmp64647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64657 __tmp64646)))
                                             (__tmp64642
                                              (let ((__tmp64644
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp64643
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62351_ '()))))
                                                (declare (not safe))
                                                (cons __tmp64644 __tmp64643))))
                                         (declare (not safe))
                                         (cons __tmp64645 __tmp64642)))
                                      (__tmp64634
                                       (let ((__tmp64635
                                              (let ((__tmp64640
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64636
                                                     (let ((__tmp64637
                                                            (let ((__tmp64638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64639
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62352_ '()))))
                             (declare (not safe))
                             (cons _L62353_ __tmp64639))))
                      (declare (not safe))
                      (cons _L62349_ __tmp64638))))
               (declare (not safe))
               (cons __tmp64637 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64640 __tmp64636))))
                                         (declare (not safe))
                                         (cons __tmp64635 '()))))
                                  (declare (not safe))
                                  (cons __tmp64641 __tmp64634))))
                           (declare (not safe))
                           (cons __tmp64658 __tmp64633))))
                    (declare (not safe))
                    (cons __tmp64632 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64659
                                                           __tmp64631))))
                                              (declare (not safe))
                                              (cons __tmp64665 __tmp64630)))
                                           (__tmp64625
                                            (let ((__tmp64626
                                                   (let ((__tmp64627
                                                          (let ((__tmp64628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62352_ '()))))
                    (declare (not safe))
                    (cons _L62353_ __tmp64628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62349_
                                                           __tmp64627))))
                                              (declare (not safe))
                                              (cons __tmp64626 '()))))
                                       (declare (not safe))
                                       (cons __tmp64629 __tmp64625))))
                                (declare (not safe))
                                (cons __tmp64666 __tmp64624))))
                         (declare (not safe))
                         (cons __tmp64669 __tmp64623)))
                     _hd6228562343_
                     _hd6228262333_
                     _hd6227962323_
                     _hd6227662313_)
                    (_g6226662292_ _g6226762296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6226662292_
                                                     _g6226762296_))))
                                            (_g6226662292_ _g6226762296_))))
                                    (_g6226662292_ _g6226762296_))))
                            (_g6226662292_ _g6226762296_))))
                    (_g6226662292_ _g6226762296_)))))
        (_g6226562375_ _$stx62262_)))))
