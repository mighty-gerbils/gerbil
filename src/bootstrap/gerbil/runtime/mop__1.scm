(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61339_)
      (let* ((___stx6337163372_ _$stx61339_)
             (_g6134461373_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6337163372_))))
        (let ((___kont6337463375_
               (lambda (_L61466_ _L61468_)
                 (let ((__tmp63634 (gx#datum->syntax '#f '##fx=))
                       (__tmp63628
                        (let ((__tmp63630
                               (let ((__tmp63633
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63631
                                      (let ((__tmp63632
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61466_ '()))))
                                        (declare (not safe))
                                        (cons _L61468_ __tmp63632))))
                                 (declare (not safe))
                                 (cons __tmp63633 __tmp63631)))
                              (__tmp63629
                               (let ()
                                 (declare (not safe))
                                 (cons _L61466_ '()))))
                          (declare (not safe))
                          (cons __tmp63630 __tmp63629))))
                   (declare (not safe))
                   (cons __tmp63634 __tmp63628))))
              (___kont6337663377_
               (lambda (_L61410_ _L61412_)
                 (let ((__tmp63647 (gx#datum->syntax '#f 'let))
                       (__tmp63635
                        (let ((__tmp63645
                               (let ((__tmp63646
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61410_ '()))))
                                 (declare (not safe))
                                 (cons _L61410_ __tmp63646)))
                              (__tmp63636
                               (let ((__tmp63637
                                      (let ((__tmp63644
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63638
                                             (let ((__tmp63640
                                                    (let ((__tmp63643
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63641
                                                           (let ((__tmp63642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61410_ '()))))
                     (declare (not safe))
                     (cons _L61412_ __tmp63642))))
              (declare (not safe))
              (cons __tmp63643 __tmp63641)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63639
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61410_ '()))))
                                               (declare (not safe))
                                               (cons __tmp63640 __tmp63639))))
                                        (declare (not safe))
                                        (cons __tmp63644 __tmp63638))))
                                 (declare (not safe))
                                 (cons __tmp63637 '()))))
                          (declare (not safe))
                          (cons __tmp63645 __tmp63636))))
                   (declare (not safe))
                   (cons __tmp63647 __tmp63635)))))
          (let ((___match6339863399_
                 (lambda (_e6135061436_
                          _hd6134961440_
                          _tl6134861443_
                          _e6135361446_
                          _hd6135261450_
                          _tl6135161453_
                          _e6135661456_
                          _hd6135561460_
                          _tl6135461463_)
                   (let ((_L61466_ _hd6135561460_) (_L61468_ _hd6135261450_))
                     (if (or (gx#identifier? _L61466_)
                             (gx#stx-fixnum? _L61466_))
                         (___kont6337463375_ _L61466_ _L61468_)
                         (___kont6337663377_
                          _hd6135561460_
                          _hd6135261450_))))))
            (if (gx#stx-pair? ___stx6337163372_)
                (let ((_e6135061436_ (gx#syntax-e ___stx6337163372_)))
                  (let ((_tl6134861443_
                         (let () (declare (not safe)) (##cdr _e6135061436_)))
                        (_hd6134961440_
                         (let () (declare (not safe)) (##car _e6135061436_))))
                    (if (gx#stx-pair? _tl6134861443_)
                        (let ((_e6135361446_ (gx#syntax-e _tl6134861443_)))
                          (let ((_tl6135161453_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6135361446_)))
                                (_hd6135261450_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6135361446_))))
                            (if (gx#stx-pair? _tl6135161453_)
                                (let ((_e6135661456_
                                       (gx#syntax-e _tl6135161453_)))
                                  (let ((_tl6135461463_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6135661456_)))
                                        (_hd6135561460_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6135661456_))))
                                    (if (gx#stx-null? _tl6135461463_)
                                        (___match6339863399_
                                         _e6135061436_
                                         _hd6134961440_
                                         _tl6134861443_
                                         _e6135361446_
                                         _hd6135261450_
                                         _tl6135161453_
                                         _e6135661456_
                                         _hd6135561460_
                                         _tl6135461463_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6134461373_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6134461373_)))))
                        (let () (declare (not safe)) (_g6134461373_)))))
                (let () (declare (not safe)) (_g6134461373_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61491_)
      (let* ((___stx6342163422_ _$stx61491_)
             (_g6149661525_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6342163422_))))
        (let ((___kont6342463425_
               (lambda (_L61617_ _L61619_)
                 (let ((__tmp63654 (gx#datum->syntax '#f '##fx=))
                       (__tmp63648
                        (let ((__tmp63650
                               (let ((__tmp63653
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp63651
                                      (let ((__tmp63652
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61617_ '()))))
                                        (declare (not safe))
                                        (cons _L61619_ __tmp63652))))
                                 (declare (not safe))
                                 (cons __tmp63653 __tmp63651)))
                              (__tmp63649
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp63650 __tmp63649))))
                   (declare (not safe))
                   (cons __tmp63654 __tmp63648))))
              (___kont6342663427_
               (lambda (_L61562_ _L61564_)
                 (let ((__tmp63667 (gx#datum->syntax '#f 'let))
                       (__tmp63655
                        (let ((__tmp63665
                               (let ((__tmp63666
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61562_ '()))))
                                 (declare (not safe))
                                 (cons _L61562_ __tmp63666)))
                              (__tmp63656
                               (let ((__tmp63657
                                      (let ((__tmp63664
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp63658
                                             (let ((__tmp63660
                                                    (let ((__tmp63663
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp63661
                                                           (let ((__tmp63662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61562_ '()))))
                     (declare (not safe))
                     (cons _L61564_ __tmp63662))))
              (declare (not safe))
              (cons __tmp63663 __tmp63661)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp63659
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp63660 __tmp63659))))
                                        (declare (not safe))
                                        (cons __tmp63664 __tmp63658))))
                                 (declare (not safe))
                                 (cons __tmp63657 '()))))
                          (declare (not safe))
                          (cons __tmp63665 __tmp63656))))
                   (declare (not safe))
                   (cons __tmp63667 __tmp63655)))))
          (let ((___match6344863449_
                 (lambda (_e6150261587_
                          _hd6150161591_
                          _tl6150061594_
                          _e6150561597_
                          _hd6150461601_
                          _tl6150361604_
                          _e6150861607_
                          _hd6150761611_
                          _tl6150661614_)
                   (let ((_L61617_ _hd6150761611_) (_L61619_ _hd6150461601_))
                     (if (or (gx#identifier? _L61617_)
                             (gx#stx-fixnum? _L61617_))
                         (___kont6342463425_ _L61617_ _L61619_)
                         (___kont6342663427_
                          _hd6150761611_
                          _hd6150461601_))))))
            (if (gx#stx-pair? ___stx6342163422_)
                (let ((_e6150261587_ (gx#syntax-e ___stx6342163422_)))
                  (let ((_tl6150061594_
                         (let () (declare (not safe)) (##cdr _e6150261587_)))
                        (_hd6150161591_
                         (let () (declare (not safe)) (##car _e6150261587_))))
                    (if (gx#stx-pair? _tl6150061594_)
                        (let ((_e6150561597_ (gx#syntax-e _tl6150061594_)))
                          (let ((_tl6150361604_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6150561597_)))
                                (_hd6150461601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6150561597_))))
                            (if (gx#stx-pair? _tl6150361604_)
                                (let ((_e6150861607_
                                       (gx#syntax-e _tl6150361604_)))
                                  (let ((_tl6150661614_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6150861607_)))
                                        (_hd6150761611_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6150861607_))))
                                    (if (gx#stx-null? _tl6150661614_)
                                        (___match6344863449_
                                         _e6150261587_
                                         _hd6150161591_
                                         _tl6150061594_
                                         _e6150561597_
                                         _hd6150461601_
                                         _tl6150361604_
                                         _e6150861607_
                                         _hd6150761611_
                                         _tl6150661614_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6149661525_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6149661525_)))))
                        (let () (declare (not safe)) (_g6149661525_)))))
                (let () (declare (not safe)) (_g6149661525_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61642_)
      (let* ((_g6164561666_
              (lambda (_g6164661662_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6164661662_)))
             (_g6164461894_
              (lambda (_g6164661670_)
                (if (gx#stx-pair? _g6164661670_)
                    (let ((_e6165161673_ (gx#syntax-e _g6164661670_)))
                      (let ((_hd6165061677_
                             (let ()
                               (declare (not safe))
                               (##car _e6165161673_)))
                            (_tl6164961680_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6165161673_))))
                        (if (gx#stx-pair? _tl6164961680_)
                            (let ((_e6165461683_ (gx#syntax-e _tl6164961680_)))
                              (let ((_hd6165361687_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6165461683_)))
                                    (_tl6165261690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6165461683_))))
                                (if (gx#stx-pair? _hd6165361687_)
                                    (let ((_e6165761693_
                                           (gx#syntax-e _hd6165361687_)))
                                      (let ((_hd6165661697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6165761693_)))
                                            (_tl6165561700_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6165761693_))))
                                        (if (gx#stx-pair? _tl6165561700_)
                                            (let ((_e6166061703_
                                                   (gx#syntax-e
                                                    _tl6165561700_)))
                                              (let ((_hd6165961707_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6166061703_)))
                                                    (_tl6165861710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6166061703_))))
                                                (if (gx#stx-null?
                                                     _tl6165861710_)
                                                    (if (gx#stx-null?
                                                         _tl6165261690_)
                                                        ((lambda (_L61713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61715_)
                   (let* ((_g6173361741_
                           (lambda (_g6173461737_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6173461737_)))
                          (_g6173261890_
                           (lambda (_g6173461745_)
                             ((lambda (_L61748_)
                                (let ()
                                  (let* ((_g6176061768_
                                          (lambda (_g6176161764_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6176161764_)))
                                         (_g6175961886_
                                          (lambda (_g6176161772_)
                                            ((lambda (_L61775_)
                                               (let ()
                                                 (let* ((_g6178861796_
                                                         (lambda (_g6178961792_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6178961792_)))
                                                        (_g6178761882_
                                                         (lambda (_g6178961800_)
                                                           ((lambda (_L61803_)
                                                              (let ()
                                                                (let* ((_g6181661824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6181761820_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6181761820_)))
                               (_g6181561878_
                                (lambda (_g6181761828_)
                                  ((lambda (_L61831_)
                                     (let ()
                                       (let* ((_g6184461852_
                                               (lambda (_g6184561848_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6184561848_)))
                                              (_g6184361874_
                                               (lambda (_g6184561856_)
                                                 ((lambda (_L61859_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp63800
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp63668
                                                               (let ((__tmp63770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63799 (gx#datum->syntax '#f 'def))
                                    (__tmp63771
                                     (let ((__tmp63772
                                            (let ((__tmp63773
                                                   (let ((__tmp63798
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp63774
                                                          (let ((__tmp63793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63797
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp63794
                                (let ((__tmp63795
                                       (let ((__tmp63796
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61715_ __tmp63796))))
                                  (declare (not safe))
                                  (cons _L61748_ __tmp63795))))
                           (declare (not safe))
                           (cons __tmp63797 __tmp63794)))
                        (__tmp63775
                         (let ((__tmp63776
                                (let ((__tmp63792
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63777
                                       (let ((__tmp63790
                                              (let ((__tmp63791
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp63791 '())))
                                             (__tmp63778
                                              (let ((__tmp63779
                                                     (let ((__tmp63789
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp63780
                                                            (let ((__tmp63788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63781
                           (let ((__tmp63782
                                  (let ((__tmp63787
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp63783
                                         (let ((__tmp63784
                                                (let ((__tmp63786
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp63785
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61715_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63786
                                                        __tmp63785))))
                                           (declare (not safe))
                                           (cons __tmp63784 '()))))
                                    (declare (not safe))
                                    (cons __tmp63787 __tmp63783))))
                             (declare (not safe))
                             (cons _L61713_ __tmp63782))))
                      (declare (not safe))
                      (cons __tmp63788 __tmp63781))))
               (declare (not safe))
               (cons __tmp63789 __tmp63780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63779 '()))))
                                         (declare (not safe))
                                         (cons __tmp63790 __tmp63778))))
                                  (declare (not safe))
                                  (cons __tmp63792 __tmp63777))))
                           (declare (not safe))
                           (cons __tmp63776 '()))))
                    (declare (not safe))
                    (cons __tmp63793 __tmp63775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63798
                                                           __tmp63774))))
                                              (declare (not safe))
                                              (cons __tmp63773 '()))))
                                       (declare (not safe))
                                       (cons _L61775_ __tmp63772))))
                                (declare (not safe))
                                (cons __tmp63799 __tmp63771)))
                             (__tmp63669
                              (let ((__tmp63740
                                     (let ((__tmp63769
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp63741
                                            (let ((__tmp63742
                                                   (let ((__tmp63743
                                                          (let ((__tmp63768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp63744
                         (let ((__tmp63763
                                (let ((__tmp63767
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp63764
                                       (let ((__tmp63765
                                              (let ((__tmp63766
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61715_ __tmp63766))))
                                         (declare (not safe))
                                         (cons _L61748_ __tmp63765))))
                                  (declare (not safe))
                                  (cons __tmp63767 __tmp63764)))
                               (__tmp63745
                                (let ((__tmp63746
                                       (let ((__tmp63762
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp63747
                                              (let ((__tmp63760
                                                     (let ((__tmp63761
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp63761 '())))
                                                    (__tmp63748
                                                     (let ((__tmp63749
                                                            (let ((__tmp63759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp63750
                           (let ((__tmp63758 (gx#datum->syntax '#f 'klass))
                                 (__tmp63751
                                  (let ((__tmp63752
                                         (let ((__tmp63757
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp63753
                                                (let ((__tmp63754
                                                       (let ((__tmp63756
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp63755
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61715_ '()))))
                 (declare (not safe))
                 (cons __tmp63756 __tmp63755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63754 '()))))
                                           (declare (not safe))
                                           (cons __tmp63757 __tmp63753))))
                                    (declare (not safe))
                                    (cons _L61713_ __tmp63752))))
                             (declare (not safe))
                             (cons __tmp63758 __tmp63751))))
                      (declare (not safe))
                      (cons __tmp63759 __tmp63750))))
               (declare (not safe))
               (cons __tmp63749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63760 __tmp63748))))
                                         (declare (not safe))
                                         (cons __tmp63762 __tmp63747))))
                                  (declare (not safe))
                                  (cons __tmp63746 '()))))
                           (declare (not safe))
                           (cons __tmp63763 __tmp63745))))
                    (declare (not safe))
                    (cons __tmp63768 __tmp63744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63743 '()))))
                                              (declare (not safe))
                                              (cons _L61803_ __tmp63742))))
                                       (declare (not safe))
                                       (cons __tmp63769 __tmp63741)))
                                    (__tmp63670
                                     (let ((__tmp63706
                                            (let ((__tmp63739
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp63707
                                                   (let ((__tmp63708
                                                          (let ((__tmp63709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63738
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp63710
                                (let ((__tmp63733
                                       (let ((__tmp63737
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp63734
                                              (let ((__tmp63735
                                                     (let ((__tmp63736
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61715_
                                                             __tmp63736))))
                                                (declare (not safe))
                                                (cons _L61748_ __tmp63735))))
                                         (declare (not safe))
                                         (cons __tmp63737 __tmp63734)))
                                      (__tmp63711
                                       (let ((__tmp63712
                                              (let ((__tmp63732
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp63713
                                                     (let ((__tmp63728
                                                            (let ((__tmp63731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp63729
                           (let ((__tmp63730 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp63730 '()))))
                      (declare (not safe))
                      (cons __tmp63731 __tmp63729)))
                   (__tmp63714
                    (let ((__tmp63715
                           (let ((__tmp63727
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp63716
                                  (let ((__tmp63726
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63717
                                         (let ((__tmp63725
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp63718
                                                (let ((__tmp63719
                                                       (let ((__tmp63724
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp63720
                                                              (let ((__tmp63721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp63723 (gx#datum->syntax '#f 'quote))
                                   (__tmp63722
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61715_ '()))))
                               (declare (not safe))
                               (cons __tmp63723 __tmp63722))))
                        (declare (not safe))
                        (cons __tmp63721 '()))))
                 (declare (not safe))
                 (cons __tmp63724 __tmp63720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61713_ __tmp63719))))
                                           (declare (not safe))
                                           (cons __tmp63725 __tmp63718))))
                                    (declare (not safe))
                                    (cons __tmp63726 __tmp63717))))
                             (declare (not safe))
                             (cons __tmp63727 __tmp63716))))
                      (declare (not safe))
                      (cons __tmp63715 '()))))
               (declare (not safe))
               (cons __tmp63728 __tmp63714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63732 __tmp63713))))
                                         (declare (not safe))
                                         (cons __tmp63712 '()))))
                                  (declare (not safe))
                                  (cons __tmp63733 __tmp63711))))
                           (declare (not safe))
                           (cons __tmp63738 __tmp63710))))
                    (declare (not safe))
                    (cons __tmp63709 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L61831_
                                                           __tmp63708))))
                                              (declare (not safe))
                                              (cons __tmp63739 __tmp63707)))
                                           (__tmp63671
                                            (let ((__tmp63672
                                                   (let ((__tmp63705
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp63673
                                                          (let ((__tmp63674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63675
                                (let ((__tmp63704
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp63676
                                       (let ((__tmp63699
                                              (let ((__tmp63703
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp63700
                                                     (let ((__tmp63701
                                                            (let ((__tmp63702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61715_ __tmp63702))))
               (declare (not safe))
               (cons _L61748_ __tmp63701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63703 __tmp63700)))
                                             (__tmp63677
                                              (let ((__tmp63678
                                                     (let ((__tmp63698
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp63679
                                                            (let ((__tmp63694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63697 (gx#datum->syntax '#f 'klass))
                                 (__tmp63695
                                  (let ((__tmp63696
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp63696 '()))))
                             (declare (not safe))
                             (cons __tmp63697 __tmp63695)))
                          (__tmp63680
                           (let ((__tmp63681
                                  (let ((__tmp63693
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp63682
                                         (let ((__tmp63692
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp63683
                                                (let ((__tmp63691
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp63684
                                                       (let ((__tmp63685
                                                              (let ((__tmp63690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp63686
                             (let ((__tmp63687
                                    (let ((__tmp63689
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp63688
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61715_ '()))))
                                      (declare (not safe))
                                      (cons __tmp63689 __tmp63688))))
                               (declare (not safe))
                               (cons __tmp63687 '()))))
                        (declare (not safe))
                        (cons __tmp63690 __tmp63686))))
                 (declare (not safe))
                 (cons _L61713_ __tmp63685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63691
                                                        __tmp63684))))
                                           (declare (not safe))
                                           (cons __tmp63692 __tmp63683))))
                                    (declare (not safe))
                                    (cons __tmp63693 __tmp63682))))
                             (declare (not safe))
                             (cons __tmp63681 '()))))
                      (declare (not safe))
                      (cons __tmp63694 __tmp63680))))
               (declare (not safe))
               (cons __tmp63698 __tmp63679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63678 '()))))
                                         (declare (not safe))
                                         (cons __tmp63699 __tmp63677))))
                                  (declare (not safe))
                                  (cons __tmp63704 __tmp63676))))
                           (declare (not safe))
                           (cons __tmp63675 '()))))
                    (declare (not safe))
                    (cons _L61859_ __tmp63674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63705
                                                           __tmp63673))))
                                              (declare (not safe))
                                              (cons __tmp63672 '()))))
                                       (declare (not safe))
                                       (cons __tmp63706 __tmp63671))))
                                (declare (not safe))
                                (cons __tmp63740 __tmp63670))))
                         (declare (not safe))
                         (cons __tmp63770 __tmp63669))))
                  (declare (not safe))
                  (cons __tmp63800 __tmp63668)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6184561856_))))
                                         (_g6184361874_
                                          (gx#stx-identifier
                                           _L61715_
                                           '"&"
                                           _L61831_)))))
                                   _g6181761828_))))
                          (_g6181561878_
                           (gx#stx-identifier _L61715_ _L61775_ '"-set!")))))
                    _g6178961800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6178761882_
                                                    (gx#stx-identifier
                                                     _L61715_
                                                     '"&"
                                                     _L61775_)))))
                                             _g6176161772_))))
                                    (_g6175961886_
                                     (gx#stx-identifier
                                      _L61715_
                                      '"class-type-"
                                      _L61715_)))))
                              _g6173461745_))))
                     (_g6173261890_ (gx#core-quote-syntax 'class::t))))
                 _hd6165961707_
                 _hd6165661697_)
                (_g6164561666_ _g6164661670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6164561666_
                                                     _g6164661670_))))
                                            (_g6164561666_ _g6164661670_))))
                                    (_g6164561666_ _g6164661670_))))
                            (_g6164561666_ _g6164661670_))))
                    (_g6164561666_ _g6164661670_)))))
        (_g6164461894_ _stx61642_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx61898_)
      (let* ((_g6190261931_
              (lambda (_g6190361927_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6190361927_)))
             (_g6190162031_
              (lambda (_g6190361935_)
                (if (gx#stx-pair? _g6190361935_)
                    (let ((_e6190861938_ (gx#syntax-e _g6190361935_)))
                      (let ((_hd6190761942_
                             (let ()
                               (declare (not safe))
                               (##car _e6190861938_)))
                            (_tl6190661945_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6190861938_))))
                        (if (gx#stx-pair/null? _tl6190661945_)
                            (let ((_g63801_
                                   (gx#syntax-split-splice _tl6190661945_ '0)))
                              (begin
                                (let ((_g63802_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g63801_)
                                             (##vector-length _g63801_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g63802_ 2)))
                                      (error "Context expects 2 values"
                                             _g63802_)))
                                (let ((_target6190961948_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63801_ 0)))
                                      (_tl6191161951_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g63801_ 1))))
                                  (if (gx#stx-null? _tl6191161951_)
                                      (letrec ((_loop6191261954_
                                                (lambda (_hd6191061958_
                                                         _field6191661961_
                                                         _slot6191761963_)
                                                  (if (gx#stx-pair?
                                                       _hd6191061958_)
                                                      (let ((_e6191361966_
                                                             (gx#syntax-e
                                                              _hd6191061958_)))
                                                        (let ((_lp-hd6191461970_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6191361966_)))
                      (_lp-tl6191561973_
                       (let () (declare (not safe)) (##cdr _e6191361966_))))
                  (if (gx#stx-pair? _lp-hd6191461970_)
                      (let ((_e6192261976_ (gx#syntax-e _lp-hd6191461970_)))
                        (let ((_hd6192161980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6192261976_)))
                              (_tl6192061983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6192261976_))))
                          (if (gx#stx-pair? _tl6192061983_)
                              (let ((_e6192561986_
                                     (gx#syntax-e _tl6192061983_)))
                                (let ((_hd6192461990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6192561986_)))
                                      (_tl6192361993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6192561986_))))
                                  (if (gx#stx-null? _tl6192361993_)
                                      (_loop6191261954_
                                       _lp-tl6191561973_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6192461990_
                                               _field6191661961_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6192161980_
                                               _slot6191761963_)))
                                      (_g6190261931_ _g6190361935_))))
                              (_g6190261931_ _g6190361935_))))
                      (_g6190261931_ _g6190361935_))))
              (let ((_field6191861996_ (reverse _field6191661961_))
                    (_slot6191961999_ (reverse _slot6191761963_)))
                ((lambda (_L62002_ _L62004_)
                   (let ((__tmp63810 (gx#datum->syntax '#f 'begin))
                         (__tmp63803
                          (begin
                            (gx#syntax-check-splice-targets _L62002_ _L62004_)
                            (let ((__tmp63804
                                   (lambda (_g6201962023_
                                            _g6202062026_
                                            _g6202162028_)
                                     (let ((__tmp63805
                                            (let ((__tmp63809
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp63806
                                                   (let ((__tmp63807
                                                          (let ((__tmp63808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6201962023_ '()))))
                    (declare (not safe))
                    (cons _g6202062026_ __tmp63808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63807 '()))))
                                              (declare (not safe))
                                              (cons __tmp63809 __tmp63806))))
                                       (declare (not safe))
                                       (cons __tmp63805 _g6202162028_)))))
                              (declare (not safe))
                              (foldr2 __tmp63804 '() _L62002_ _L62004_)))))
                     (declare (not safe))
                     (cons __tmp63810 __tmp63803)))
                 _field6191861996_
                 _slot6191961999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6191261954_
                                         _target6190961948_
                                         '()
                                         '()))
                                      (_g6190261931_ _g6190361935_)))))
                            (_g6190261931_ _g6190361935_))))
                    (_g6190261931_ _g6190361935_)))))
        (_g6190162031_ _$stx61898_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62036_)
      (let* ((_g6204062066_
              (lambda (_g6204162062_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6204162062_)))
             (_g6203962149_
              (lambda (_g6204162070_)
                (if (gx#stx-pair? _g6204162070_)
                    (let ((_e6204862073_ (gx#syntax-e _g6204162070_)))
                      (let ((_hd6204762077_
                             (let ()
                               (declare (not safe))
                               (##car _e6204862073_)))
                            (_tl6204662080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6204862073_))))
                        (if (gx#stx-pair? _tl6204662080_)
                            (let ((_e6205162083_ (gx#syntax-e _tl6204662080_)))
                              (let ((_hd6205062087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6205162083_)))
                                    (_tl6204962090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6205162083_))))
                                (if (gx#stx-pair? _tl6204962090_)
                                    (let ((_e6205462093_
                                           (gx#syntax-e _tl6204962090_)))
                                      (let ((_hd6205362097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6205462093_)))
                                            (_tl6205262100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6205462093_))))
                                        (if (gx#stx-pair? _tl6205262100_)
                                            (let ((_e6205762103_
                                                   (gx#syntax-e
                                                    _tl6205262100_)))
                                              (let ((_hd6205662107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6205762103_)))
                                                    (_tl6205562110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6205762103_))))
                                                (if (gx#stx-pair?
                                                     _tl6205562110_)
                                                    (let ((_e6206062113_
                                                           (gx#syntax-e
                                                            _tl6205562110_)))
                                                      (let ((_hd6205962117_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6206062113_)))
                    (_tl6205862120_
                     (let () (declare (not safe)) (##cdr _e6206062113_))))
                (if (gx#stx-null? _tl6205862120_)
                    ((lambda (_L62123_ _L62125_ _L62126_ _L62127_)
                       (let ((__tmp63857 (gx#datum->syntax '#f 'if))
                             (__tmp63811
                              (let ((__tmp63854
                                     (let ((__tmp63856
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp63855
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62127_ '()))))
                                       (declare (not safe))
                                       (cons __tmp63856 __tmp63855)))
                                    (__tmp63812
                                     (let ((__tmp63817
                                            (let ((__tmp63853
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp63818
                                                   (let ((__tmp63847
                                                          (let ((__tmp63852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp63848
                         (let ((__tmp63849
                                (let ((__tmp63851
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp63850
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62127_ '()))))
                                  (declare (not safe))
                                  (cons __tmp63851 __tmp63850))))
                           (declare (not safe))
                           (cons __tmp63849 '()))))
                    (declare (not safe))
                    (cons __tmp63852 __tmp63848)))
                 (__tmp63819
                  (let ((__tmp63820
                         (let ((__tmp63846 (gx#datum->syntax '#f 'cond))
                               (__tmp63821
                                (let ((__tmp63829
                                       (let ((__tmp63833
                                              (let ((__tmp63845
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp63834
                                                     (let ((__tmp63841
                                                            (let ((__tmp63844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp63842
                           (let ((__tmp63843 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp63843 '()))))
                      (declare (not safe))
                      (cons __tmp63844 __tmp63842)))
                   (__tmp63835
                    (let ((__tmp63836
                           (let ((__tmp63840
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp63837
                                  (let ((__tmp63839
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp63838
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62126_ '()))))
                                    (declare (not safe))
                                    (cons __tmp63839 __tmp63838))))
                             (declare (not safe))
                             (cons __tmp63840 __tmp63837))))
                      (declare (not safe))
                      (cons __tmp63836 '()))))
               (declare (not safe))
               (cons __tmp63841 __tmp63835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63845 __tmp63834)))
                                             (__tmp63830
                                              (let ((__tmp63832
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp63831
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62125_ '()))))
                                                (declare (not safe))
                                                (cons __tmp63832 __tmp63831))))
                                         (declare (not safe))
                                         (cons __tmp63833 __tmp63830)))
                                      (__tmp63822
                                       (let ((__tmp63823
                                              (let ((__tmp63828
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63824
                                                     (let ((__tmp63825
                                                            (let ((__tmp63826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63827
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62126_ '()))))
                             (declare (not safe))
                             (cons _L62127_ __tmp63827))))
                      (declare (not safe))
                      (cons _L62123_ __tmp63826))))
               (declare (not safe))
               (cons __tmp63825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63828 __tmp63824))))
                                         (declare (not safe))
                                         (cons __tmp63823 '()))))
                                  (declare (not safe))
                                  (cons __tmp63829 __tmp63822))))
                           (declare (not safe))
                           (cons __tmp63846 __tmp63821))))
                    (declare (not safe))
                    (cons __tmp63820 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63847
                                                           __tmp63819))))
                                              (declare (not safe))
                                              (cons __tmp63853 __tmp63818)))
                                           (__tmp63813
                                            (let ((__tmp63814
                                                   (let ((__tmp63815
                                                          (let ((__tmp63816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62126_ '()))))
                    (declare (not safe))
                    (cons _L62127_ __tmp63816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62123_
                                                           __tmp63815))))
                                              (declare (not safe))
                                              (cons __tmp63814 '()))))
                                       (declare (not safe))
                                       (cons __tmp63817 __tmp63813))))
                                (declare (not safe))
                                (cons __tmp63854 __tmp63812))))
                         (declare (not safe))
                         (cons __tmp63857 __tmp63811)))
                     _hd6205962117_
                     _hd6205662107_
                     _hd6205362097_
                     _hd6205062087_)
                    (_g6204062066_ _g6204162070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6204062066_
                                                     _g6204162070_))))
                                            (_g6204062066_ _g6204162070_))))
                                    (_g6204062066_ _g6204162070_))))
                            (_g6204062066_ _g6204162070_))))
                    (_g6204062066_ _g6204162070_)))))
        (_g6203962149_ _$stx62036_)))))
