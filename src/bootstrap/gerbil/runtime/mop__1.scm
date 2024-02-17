(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx82306_)
      (let* ((___stx8840588406_ _$stx82306_)
             (_g8231182340_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8840588406_))))
        (let ((___kont8840888409_
               (lambda (_L82433_ _L82435_)
                 (let ((__tmp88664 (gx#datum->syntax '#f '##fx=))
                       (__tmp88658
                        (let ((__tmp88660
                               (let ((__tmp88663
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88661
                                      (let ((__tmp88662
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82433_ '()))))
                                        (declare (not safe))
                                        (cons _L82435_ __tmp88662))))
                                 (declare (not safe))
                                 (cons __tmp88663 __tmp88661)))
                              (__tmp88659
                               (let ()
                                 (declare (not safe))
                                 (cons _L82433_ '()))))
                          (declare (not safe))
                          (cons __tmp88660 __tmp88659))))
                   (declare (not safe))
                   (cons __tmp88664 __tmp88658))))
              (___kont8841088411_
               (lambda (_L82377_ _L82379_)
                 (let ((__tmp88677 (gx#datum->syntax '#f 'let))
                       (__tmp88665
                        (let ((__tmp88675
                               (let ((__tmp88676
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82377_ '()))))
                                 (declare (not safe))
                                 (cons _L82377_ __tmp88676)))
                              (__tmp88666
                               (let ((__tmp88667
                                      (let ((__tmp88674
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88668
                                             (let ((__tmp88670
                                                    (let ((__tmp88673
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88671
                                                           (let ((__tmp88672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82377_ '()))))
                     (declare (not safe))
                     (cons _L82379_ __tmp88672))))
              (declare (not safe))
              (cons __tmp88673 __tmp88671)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88669
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L82377_ '()))))
                                               (declare (not safe))
                                               (cons __tmp88670 __tmp88669))))
                                        (declare (not safe))
                                        (cons __tmp88674 __tmp88668))))
                                 (declare (not safe))
                                 (cons __tmp88667 '()))))
                          (declare (not safe))
                          (cons __tmp88675 __tmp88666))))
                   (declare (not safe))
                   (cons __tmp88677 __tmp88665)))))
          (let ((___match8843288433_
                 (lambda (_e8231582403_
                          _hd8231682407_
                          _tl8231782410_
                          _e8231882413_
                          _hd8231982417_
                          _tl8232082420_
                          _e8232182423_
                          _hd8232282427_
                          _tl8232382430_)
                   (let ((_L82433_ _hd8232282427_) (_L82435_ _hd8231982417_))
                     (if (or (gx#identifier? _L82433_)
                             (gx#stx-fixnum? _L82433_))
                         (___kont8840888409_ _L82433_ _L82435_)
                         (___kont8841088411_
                          _hd8232282427_
                          _hd8231982417_))))))
            (if (gx#stx-pair? ___stx8840588406_)
                (let ((_e8231582403_ (gx#syntax-e ___stx8840588406_)))
                  (let ((_tl8231782410_
                         (let () (declare (not safe)) (##cdr _e8231582403_)))
                        (_hd8231682407_
                         (let () (declare (not safe)) (##car _e8231582403_))))
                    (if (gx#stx-pair? _tl8231782410_)
                        (let ((_e8231882413_ (gx#syntax-e _tl8231782410_)))
                          (let ((_tl8232082420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8231882413_)))
                                (_hd8231982417_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8231882413_))))
                            (if (gx#stx-pair? _tl8232082420_)
                                (let ((_e8232182423_
                                       (gx#syntax-e _tl8232082420_)))
                                  (let ((_tl8232382430_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8232182423_)))
                                        (_hd8232282427_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8232182423_))))
                                    (if (gx#stx-null? _tl8232382430_)
                                        (___match8843288433_
                                         _e8231582403_
                                         _hd8231682407_
                                         _tl8231782410_
                                         _e8231882413_
                                         _hd8231982417_
                                         _tl8232082420_
                                         _e8232182423_
                                         _hd8232282427_
                                         _tl8232382430_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8231182340_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8231182340_)))))
                        (let () (declare (not safe)) (_g8231182340_)))))
                (let () (declare (not safe)) (_g8231182340_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx82458_)
      (let* ((___stx8845588456_ _$stx82458_)
             (_g8246382492_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8845588456_))))
        (let ((___kont8845888459_
               (lambda (_L82584_ _L82586_)
                 (let ((__tmp88684 (gx#datum->syntax '#f '##fx=))
                       (__tmp88678
                        (let ((__tmp88680
                               (let ((__tmp88683
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp88681
                                      (let ((__tmp88682
                                             (let ()
                                               (declare (not safe))
                                               (cons _L82584_ '()))))
                                        (declare (not safe))
                                        (cons _L82586_ __tmp88682))))
                                 (declare (not safe))
                                 (cons __tmp88683 __tmp88681)))
                              (__tmp88679
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp88680 __tmp88679))))
                   (declare (not safe))
                   (cons __tmp88684 __tmp88678))))
              (___kont8846088461_
               (lambda (_L82529_ _L82531_)
                 (let ((__tmp88697 (gx#datum->syntax '#f 'let))
                       (__tmp88685
                        (let ((__tmp88695
                               (let ((__tmp88696
                                      (let ()
                                        (declare (not safe))
                                        (cons _L82529_ '()))))
                                 (declare (not safe))
                                 (cons _L82529_ __tmp88696)))
                              (__tmp88686
                               (let ((__tmp88687
                                      (let ((__tmp88694
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp88688
                                             (let ((__tmp88690
                                                    (let ((__tmp88693
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp88691
                                                           (let ((__tmp88692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L82529_ '()))))
                     (declare (not safe))
                     (cons _L82531_ __tmp88692))))
              (declare (not safe))
              (cons __tmp88693 __tmp88691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp88689
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp88690 __tmp88689))))
                                        (declare (not safe))
                                        (cons __tmp88694 __tmp88688))))
                                 (declare (not safe))
                                 (cons __tmp88687 '()))))
                          (declare (not safe))
                          (cons __tmp88695 __tmp88686))))
                   (declare (not safe))
                   (cons __tmp88697 __tmp88685)))))
          (let ((___match8848288483_
                 (lambda (_e8246782554_
                          _hd8246882558_
                          _tl8246982561_
                          _e8247082564_
                          _hd8247182568_
                          _tl8247282571_
                          _e8247382574_
                          _hd8247482578_
                          _tl8247582581_)
                   (let ((_L82584_ _hd8247482578_) (_L82586_ _hd8247182568_))
                     (if (or (gx#identifier? _L82584_)
                             (gx#stx-fixnum? _L82584_))
                         (___kont8845888459_ _L82584_ _L82586_)
                         (___kont8846088461_
                          _hd8247482578_
                          _hd8247182568_))))))
            (if (gx#stx-pair? ___stx8845588456_)
                (let ((_e8246782554_ (gx#syntax-e ___stx8845588456_)))
                  (let ((_tl8246982561_
                         (let () (declare (not safe)) (##cdr _e8246782554_)))
                        (_hd8246882558_
                         (let () (declare (not safe)) (##car _e8246782554_))))
                    (if (gx#stx-pair? _tl8246982561_)
                        (let ((_e8247082564_ (gx#syntax-e _tl8246982561_)))
                          (let ((_tl8247282571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8247082564_)))
                                (_hd8247182568_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8247082564_))))
                            (if (gx#stx-pair? _tl8247282571_)
                                (let ((_e8247382574_
                                       (gx#syntax-e _tl8247282571_)))
                                  (let ((_tl8247582581_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8247382574_)))
                                        (_hd8247482578_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8247382574_))))
                                    (if (gx#stx-null? _tl8247582581_)
                                        (___match8848288483_
                                         _e8246782554_
                                         _hd8246882558_
                                         _tl8246982561_
                                         _e8247082564_
                                         _hd8247182568_
                                         _tl8247282571_
                                         _e8247382574_
                                         _hd8247482578_
                                         _tl8247582581_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8246382492_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8246382492_)))))
                        (let () (declare (not safe)) (_g8246382492_)))))
                (let () (declare (not safe)) (_g8246382492_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx82609_)
      (let* ((_g8261282633_
              (lambda (_g8261382629_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8261382629_)))
             (_g8261182861_
              (lambda (_g8261382637_)
                (if (gx#stx-pair? _g8261382637_)
                    (let ((_e8261682640_ (gx#syntax-e _g8261382637_)))
                      (let ((_hd8261782644_
                             (let ()
                               (declare (not safe))
                               (##car _e8261682640_)))
                            (_tl8261882647_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8261682640_))))
                        (if (gx#stx-pair? _tl8261882647_)
                            (let ((_e8261982650_ (gx#syntax-e _tl8261882647_)))
                              (let ((_hd8262082654_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8261982650_)))
                                    (_tl8262182657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8261982650_))))
                                (if (gx#stx-pair? _hd8262082654_)
                                    (let ((_e8262282660_
                                           (gx#syntax-e _hd8262082654_)))
                                      (let ((_hd8262382664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8262282660_)))
                                            (_tl8262482667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8262282660_))))
                                        (if (gx#stx-pair? _tl8262482667_)
                                            (let ((_e8262582670_
                                                   (gx#syntax-e
                                                    _tl8262482667_)))
                                              (let ((_hd8262682674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8262582670_)))
                                                    (_tl8262782677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8262582670_))))
                                                (if (gx#stx-null?
                                                     _tl8262782677_)
                                                    (if (gx#stx-null?
                                                         _tl8262182657_)
                                                        ((lambda (_L82680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L82682_)
                   (let* ((_g8270082708_
                           (lambda (_g8270182704_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8270182704_)))
                          (_g8269982857_
                           (lambda (_g8270182712_)
                             ((lambda (_L82715_)
                                (let ()
                                  (let* ((_g8272782735_
                                          (lambda (_g8272882731_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8272882731_)))
                                         (_g8272682853_
                                          (lambda (_g8272882739_)
                                            ((lambda (_L82742_)
                                               (let ()
                                                 (let* ((_g8275582763_
                                                         (lambda (_g8275682759_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8275682759_)))
                                                        (_g8275482849_
                                                         (lambda (_g8275682767_)
                                                           ((lambda (_L82770_)
                                                              (let ()
                                                                (let* ((_g8278382791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8278482787_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8278482787_)))
                               (_g8278282845_
                                (lambda (_g8278482795_)
                                  ((lambda (_L82798_)
                                     (let ()
                                       (let* ((_g8281182819_
                                               (lambda (_g8281282815_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8281282815_)))
                                              (_g8281082841_
                                               (lambda (_g8281282823_)
                                                 ((lambda (_L82826_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp88830
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp88698
                                                               (let ((__tmp88800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88829 (gx#datum->syntax '#f 'def))
                                    (__tmp88801
                                     (let ((__tmp88802
                                            (let ((__tmp88803
                                                   (let ((__tmp88828
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp88804
                                                          (let ((__tmp88823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88827
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp88824
                                (let ((__tmp88825
                                       (let ((__tmp88826
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L82682_ __tmp88826))))
                                  (declare (not safe))
                                  (cons _L82715_ __tmp88825))))
                           (declare (not safe))
                           (cons __tmp88827 __tmp88824)))
                        (__tmp88805
                         (let ((__tmp88806
                                (let ((__tmp88822
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp88807
                                       (let ((__tmp88820
                                              (let ((__tmp88821
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp88821 '())))
                                             (__tmp88808
                                              (let ((__tmp88809
                                                     (let ((__tmp88819
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp88810
                                                            (let ((__tmp88818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88811
                           (let ((__tmp88812
                                  (let ((__tmp88817
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp88813
                                         (let ((__tmp88814
                                                (let ((__tmp88816
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp88815
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L82682_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp88816
                                                        __tmp88815))))
                                           (declare (not safe))
                                           (cons __tmp88814 '()))))
                                    (declare (not safe))
                                    (cons __tmp88817 __tmp88813))))
                             (declare (not safe))
                             (cons _L82680_ __tmp88812))))
                      (declare (not safe))
                      (cons __tmp88818 __tmp88811))))
               (declare (not safe))
               (cons __tmp88819 __tmp88810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88809 '()))))
                                         (declare (not safe))
                                         (cons __tmp88820 __tmp88808))))
                                  (declare (not safe))
                                  (cons __tmp88822 __tmp88807))))
                           (declare (not safe))
                           (cons __tmp88806 '()))))
                    (declare (not safe))
                    (cons __tmp88823 __tmp88805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88828
                                                           __tmp88804))))
                                              (declare (not safe))
                                              (cons __tmp88803 '()))))
                                       (declare (not safe))
                                       (cons _L82742_ __tmp88802))))
                                (declare (not safe))
                                (cons __tmp88829 __tmp88801)))
                             (__tmp88699
                              (let ((__tmp88770
                                     (let ((__tmp88799
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp88771
                                            (let ((__tmp88772
                                                   (let ((__tmp88773
                                                          (let ((__tmp88798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp88774
                         (let ((__tmp88793
                                (let ((__tmp88797
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp88794
                                       (let ((__tmp88795
                                              (let ((__tmp88796
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L82682_ __tmp88796))))
                                         (declare (not safe))
                                         (cons _L82715_ __tmp88795))))
                                  (declare (not safe))
                                  (cons __tmp88797 __tmp88794)))
                               (__tmp88775
                                (let ((__tmp88776
                                       (let ((__tmp88792
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp88777
                                              (let ((__tmp88790
                                                     (let ((__tmp88791
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp88791 '())))
                                                    (__tmp88778
                                                     (let ((__tmp88779
                                                            (let ((__tmp88789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp88780
                           (let ((__tmp88788 (gx#datum->syntax '#f 'klass))
                                 (__tmp88781
                                  (let ((__tmp88782
                                         (let ((__tmp88787
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp88783
                                                (let ((__tmp88784
                                                       (let ((__tmp88786
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp88785
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L82682_ '()))))
                 (declare (not safe))
                 (cons __tmp88786 __tmp88785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88784 '()))))
                                           (declare (not safe))
                                           (cons __tmp88787 __tmp88783))))
                                    (declare (not safe))
                                    (cons _L82680_ __tmp88782))))
                             (declare (not safe))
                             (cons __tmp88788 __tmp88781))))
                      (declare (not safe))
                      (cons __tmp88789 __tmp88780))))
               (declare (not safe))
               (cons __tmp88779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88790 __tmp88778))))
                                         (declare (not safe))
                                         (cons __tmp88792 __tmp88777))))
                                  (declare (not safe))
                                  (cons __tmp88776 '()))))
                           (declare (not safe))
                           (cons __tmp88793 __tmp88775))))
                    (declare (not safe))
                    (cons __tmp88798 __tmp88774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88773 '()))))
                                              (declare (not safe))
                                              (cons _L82770_ __tmp88772))))
                                       (declare (not safe))
                                       (cons __tmp88799 __tmp88771)))
                                    (__tmp88700
                                     (let ((__tmp88736
                                            (let ((__tmp88769
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp88737
                                                   (let ((__tmp88738
                                                          (let ((__tmp88739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88768
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp88740
                                (let ((__tmp88763
                                       (let ((__tmp88767
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp88764
                                              (let ((__tmp88765
                                                     (let ((__tmp88766
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L82682_
                                                             __tmp88766))))
                                                (declare (not safe))
                                                (cons _L82715_ __tmp88765))))
                                         (declare (not safe))
                                         (cons __tmp88767 __tmp88764)))
                                      (__tmp88741
                                       (let ((__tmp88742
                                              (let ((__tmp88762
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp88743
                                                     (let ((__tmp88758
                                                            (let ((__tmp88761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp88759
                           (let ((__tmp88760 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp88760 '()))))
                      (declare (not safe))
                      (cons __tmp88761 __tmp88759)))
                   (__tmp88744
                    (let ((__tmp88745
                           (let ((__tmp88757
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp88746
                                  (let ((__tmp88756
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88747
                                         (let ((__tmp88755
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp88748
                                                (let ((__tmp88749
                                                       (let ((__tmp88754
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp88750
                                                              (let ((__tmp88751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88753 (gx#datum->syntax '#f 'quote))
                                   (__tmp88752
                                    (let ()
                                      (declare (not safe))
                                      (cons _L82682_ '()))))
                               (declare (not safe))
                               (cons __tmp88753 __tmp88752))))
                        (declare (not safe))
                        (cons __tmp88751 '()))))
                 (declare (not safe))
                 (cons __tmp88754 __tmp88750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L82680_ __tmp88749))))
                                           (declare (not safe))
                                           (cons __tmp88755 __tmp88748))))
                                    (declare (not safe))
                                    (cons __tmp88756 __tmp88747))))
                             (declare (not safe))
                             (cons __tmp88757 __tmp88746))))
                      (declare (not safe))
                      (cons __tmp88745 '()))))
               (declare (not safe))
               (cons __tmp88758 __tmp88744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88762 __tmp88743))))
                                         (declare (not safe))
                                         (cons __tmp88742 '()))))
                                  (declare (not safe))
                                  (cons __tmp88763 __tmp88741))))
                           (declare (not safe))
                           (cons __tmp88768 __tmp88740))))
                    (declare (not safe))
                    (cons __tmp88739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L82798_
                                                           __tmp88738))))
                                              (declare (not safe))
                                              (cons __tmp88769 __tmp88737)))
                                           (__tmp88701
                                            (let ((__tmp88702
                                                   (let ((__tmp88735
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp88703
                                                          (let ((__tmp88704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88705
                                (let ((__tmp88734
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp88706
                                       (let ((__tmp88729
                                              (let ((__tmp88733
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp88730
                                                     (let ((__tmp88731
                                                            (let ((__tmp88732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L82682_ __tmp88732))))
               (declare (not safe))
               (cons _L82715_ __tmp88731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88733 __tmp88730)))
                                             (__tmp88707
                                              (let ((__tmp88708
                                                     (let ((__tmp88728
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp88709
                                                            (let ((__tmp88724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88727 (gx#datum->syntax '#f 'klass))
                                 (__tmp88725
                                  (let ((__tmp88726
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp88726 '()))))
                             (declare (not safe))
                             (cons __tmp88727 __tmp88725)))
                          (__tmp88710
                           (let ((__tmp88711
                                  (let ((__tmp88723
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp88712
                                         (let ((__tmp88722
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp88713
                                                (let ((__tmp88721
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp88714
                                                       (let ((__tmp88715
                                                              (let ((__tmp88720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp88716
                             (let ((__tmp88717
                                    (let ((__tmp88719
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp88718
                                           (let ()
                                             (declare (not safe))
                                             (cons _L82682_ '()))))
                                      (declare (not safe))
                                      (cons __tmp88719 __tmp88718))))
                               (declare (not safe))
                               (cons __tmp88717 '()))))
                        (declare (not safe))
                        (cons __tmp88720 __tmp88716))))
                 (declare (not safe))
                 (cons _L82680_ __tmp88715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp88721
                                                        __tmp88714))))
                                           (declare (not safe))
                                           (cons __tmp88722 __tmp88713))))
                                    (declare (not safe))
                                    (cons __tmp88723 __tmp88712))))
                             (declare (not safe))
                             (cons __tmp88711 '()))))
                      (declare (not safe))
                      (cons __tmp88724 __tmp88710))))
               (declare (not safe))
               (cons __tmp88728 __tmp88709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88708 '()))))
                                         (declare (not safe))
                                         (cons __tmp88729 __tmp88707))))
                                  (declare (not safe))
                                  (cons __tmp88734 __tmp88706))))
                           (declare (not safe))
                           (cons __tmp88705 '()))))
                    (declare (not safe))
                    (cons _L82826_ __tmp88704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88735
                                                           __tmp88703))))
                                              (declare (not safe))
                                              (cons __tmp88702 '()))))
                                       (declare (not safe))
                                       (cons __tmp88736 __tmp88701))))
                                (declare (not safe))
                                (cons __tmp88770 __tmp88700))))
                         (declare (not safe))
                         (cons __tmp88800 __tmp88699))))
                  (declare (not safe))
                  (cons __tmp88830 __tmp88698)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8281282823_))))
                                         (_g8281082841_
                                          (gx#stx-identifier
                                           _L82682_
                                           '"&"
                                           _L82798_)))))
                                   _g8278482795_))))
                          (_g8278282845_
                           (gx#stx-identifier _L82682_ _L82742_ '"-set!")))))
                    _g8275682767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8275482849_
                                                    (gx#stx-identifier
                                                     _L82682_
                                                     '"&"
                                                     _L82742_)))))
                                             _g8272882739_))))
                                    (_g8272682853_
                                     (gx#stx-identifier
                                      _L82682_
                                      '"class-type-"
                                      _L82682_)))))
                              _g8270182712_))))
                     (_g8269982857_ (gx#core-quote-syntax 'class::t))))
                 _hd8262682674_
                 _hd8262382664_)
                (_g8261282633_ _g8261382637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8261282633_
                                                     _g8261382637_))))
                                            (_g8261282633_ _g8261382637_))))
                                    (_g8261282633_ _g8261382637_))))
                            (_g8261282633_ _g8261382637_))))
                    (_g8261282633_ _g8261382637_)))))
        (_g8261182861_ _stx82609_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx82865_)
      (let* ((_g8286982898_
              (lambda (_g8287082894_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8287082894_)))
             (_g8286882998_
              (lambda (_g8287082902_)
                (if (gx#stx-pair? _g8287082902_)
                    (let ((_e8287382905_ (gx#syntax-e _g8287082902_)))
                      (let ((_hd8287482909_
                             (let ()
                               (declare (not safe))
                               (##car _e8287382905_)))
                            (_tl8287582912_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8287382905_))))
                        (if (gx#stx-pair/null? _tl8287582912_)
                            (let ((_g88831_
                                   (gx#syntax-split-splice _tl8287582912_ '0)))
                              (begin
                                (let ((_g88832_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g88831_)
                                             (##vector-length _g88831_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g88832_ 2)))
                                      (error "Context expects 2 values"
                                             _g88832_)))
                                (let ((_target8287682915_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g88831_ 0)))
                                      (_tl8287882918_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g88831_ 1))))
                                  (if (gx#stx-null? _tl8287882918_)
                                      (letrec ((_loop8287982921_
                                                (lambda (_hd8287782925_
                                                         _field8288382928_
                                                         _slot8288482930_)
                                                  (if (gx#stx-pair?
                                                       _hd8287782925_)
                                                      (let ((_e8288082933_
                                                             (gx#syntax-e
                                                              _hd8287782925_)))
                                                        (let ((_lp-hd8288182937_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8288082933_)))
                      (_lp-tl8288282940_
                       (let () (declare (not safe)) (##cdr _e8288082933_))))
                  (if (gx#stx-pair? _lp-hd8288182937_)
                      (let ((_e8288782943_ (gx#syntax-e _lp-hd8288182937_)))
                        (let ((_hd8288882947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8288782943_)))
                              (_tl8288982950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8288782943_))))
                          (if (gx#stx-pair? _tl8288982950_)
                              (let ((_e8289082953_
                                     (gx#syntax-e _tl8288982950_)))
                                (let ((_hd8289182957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8289082953_)))
                                      (_tl8289282960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8289082953_))))
                                  (if (gx#stx-null? _tl8289282960_)
                                      (_loop8287982921_
                                       _lp-tl8288282940_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8289182957_
                                               _field8288382928_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8288882947_
                                               _slot8288482930_)))
                                      (_g8286982898_ _g8287082902_))))
                              (_g8286982898_ _g8287082902_))))
                      (_g8286982898_ _g8287082902_))))
              (let ((_field8288582963_ (reverse _field8288382928_))
                    (_slot8288682966_ (reverse _slot8288482930_)))
                ((lambda (_L82969_ _L82971_)
                   (let ((__tmp88840 (gx#datum->syntax '#f 'begin))
                         (__tmp88833
                          (begin
                            (gx#syntax-check-splice-targets _L82969_ _L82971_)
                            (let ((__tmp88834
                                   (lambda (_g8298682990_
                                            _g8298782993_
                                            _g8298882995_)
                                     (let ((__tmp88835
                                            (let ((__tmp88839
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp88836
                                                   (let ((__tmp88837
                                                          (let ((__tmp88838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8298682990_ '()))))
                    (declare (not safe))
                    (cons _g8298782993_ __tmp88838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88837 '()))))
                                              (declare (not safe))
                                              (cons __tmp88839 __tmp88836))))
                                       (declare (not safe))
                                       (cons __tmp88835 _g8298882995_)))))
                              (declare (not safe))
                              (foldr2 __tmp88834 '() _L82969_ _L82971_)))))
                     (declare (not safe))
                     (cons __tmp88840 __tmp88833)))
                 _field8288582963_
                 _slot8288682966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8287982921_
                                         _target8287682915_
                                         '()
                                         '()))
                                      (_g8286982898_ _g8287082902_)))))
                            (_g8286982898_ _g8287082902_))))
                    (_g8286982898_ _g8287082902_)))))
        (_g8286882998_ _$stx82865_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx83003_)
      (let* ((_g8300783033_
              (lambda (_g8300883029_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8300883029_)))
             (_g8300683116_
              (lambda (_g8300883037_)
                (if (gx#stx-pair? _g8300883037_)
                    (let ((_e8301383040_ (gx#syntax-e _g8300883037_)))
                      (let ((_hd8301483044_
                             (let ()
                               (declare (not safe))
                               (##car _e8301383040_)))
                            (_tl8301583047_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8301383040_))))
                        (if (gx#stx-pair? _tl8301583047_)
                            (let ((_e8301683050_ (gx#syntax-e _tl8301583047_)))
                              (let ((_hd8301783054_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8301683050_)))
                                    (_tl8301883057_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8301683050_))))
                                (if (gx#stx-pair? _tl8301883057_)
                                    (let ((_e8301983060_
                                           (gx#syntax-e _tl8301883057_)))
                                      (let ((_hd8302083064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8301983060_)))
                                            (_tl8302183067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8301983060_))))
                                        (if (gx#stx-pair? _tl8302183067_)
                                            (let ((_e8302283070_
                                                   (gx#syntax-e
                                                    _tl8302183067_)))
                                              (let ((_hd8302383074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8302283070_)))
                                                    (_tl8302483077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8302283070_))))
                                                (if (gx#stx-pair?
                                                     _tl8302483077_)
                                                    (let ((_e8302583080_
                                                           (gx#syntax-e
                                                            _tl8302483077_)))
                                                      (let ((_hd8302683084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8302583080_)))
                    (_tl8302783087_
                     (let () (declare (not safe)) (##cdr _e8302583080_))))
                (if (gx#stx-null? _tl8302783087_)
                    ((lambda (_L83090_ _L83092_ _L83093_ _L83094_)
                       (let ((__tmp88887 (gx#datum->syntax '#f 'if))
                             (__tmp88841
                              (let ((__tmp88884
                                     (let ((__tmp88886
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp88885
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83094_ '()))))
                                       (declare (not safe))
                                       (cons __tmp88886 __tmp88885)))
                                    (__tmp88842
                                     (let ((__tmp88847
                                            (let ((__tmp88883
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp88848
                                                   (let ((__tmp88877
                                                          (let ((__tmp88882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp88878
                         (let ((__tmp88879
                                (let ((__tmp88881
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp88880
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83094_ '()))))
                                  (declare (not safe))
                                  (cons __tmp88881 __tmp88880))))
                           (declare (not safe))
                           (cons __tmp88879 '()))))
                    (declare (not safe))
                    (cons __tmp88882 __tmp88878)))
                 (__tmp88849
                  (let ((__tmp88850
                         (let ((__tmp88876 (gx#datum->syntax '#f 'cond))
                               (__tmp88851
                                (let ((__tmp88859
                                       (let ((__tmp88863
                                              (let ((__tmp88875
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp88864
                                                     (let ((__tmp88871
                                                            (let ((__tmp88874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp88872
                           (let ((__tmp88873 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp88873 '()))))
                      (declare (not safe))
                      (cons __tmp88874 __tmp88872)))
                   (__tmp88865
                    (let ((__tmp88866
                           (let ((__tmp88870
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp88867
                                  (let ((__tmp88869
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp88868
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83093_ '()))))
                                    (declare (not safe))
                                    (cons __tmp88869 __tmp88868))))
                             (declare (not safe))
                             (cons __tmp88870 __tmp88867))))
                      (declare (not safe))
                      (cons __tmp88866 '()))))
               (declare (not safe))
               (cons __tmp88871 __tmp88865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88875 __tmp88864)))
                                             (__tmp88860
                                              (let ((__tmp88862
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp88861
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83092_ '()))))
                                                (declare (not safe))
                                                (cons __tmp88862 __tmp88861))))
                                         (declare (not safe))
                                         (cons __tmp88863 __tmp88860)))
                                      (__tmp88852
                                       (let ((__tmp88853
                                              (let ((__tmp88858
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp88854
                                                     (let ((__tmp88855
                                                            (let ((__tmp88856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp88857
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83093_ '()))))
                             (declare (not safe))
                             (cons _L83094_ __tmp88857))))
                      (declare (not safe))
                      (cons _L83090_ __tmp88856))))
               (declare (not safe))
               (cons __tmp88855 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp88858 __tmp88854))))
                                         (declare (not safe))
                                         (cons __tmp88853 '()))))
                                  (declare (not safe))
                                  (cons __tmp88859 __tmp88852))))
                           (declare (not safe))
                           (cons __tmp88876 __tmp88851))))
                    (declare (not safe))
                    (cons __tmp88850 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88877
                                                           __tmp88849))))
                                              (declare (not safe))
                                              (cons __tmp88883 __tmp88848)))
                                           (__tmp88843
                                            (let ((__tmp88844
                                                   (let ((__tmp88845
                                                          (let ((__tmp88846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83093_ '()))))
                    (declare (not safe))
                    (cons _L83094_ __tmp88846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83090_
                                                           __tmp88845))))
                                              (declare (not safe))
                                              (cons __tmp88844 '()))))
                                       (declare (not safe))
                                       (cons __tmp88847 __tmp88843))))
                                (declare (not safe))
                                (cons __tmp88884 __tmp88842))))
                         (declare (not safe))
                         (cons __tmp88887 __tmp88841)))
                     _hd8302683084_
                     _hd8302383074_
                     _hd8302083064_
                     _hd8301783054_)
                    (_g8300783033_ _g8300883037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8300783033_
                                                     _g8300883037_))))
                                            (_g8300783033_ _g8300883037_))))
                                    (_g8300783033_ _g8300883037_))))
                            (_g8300783033_ _g8300883037_))))
                    (_g8300783033_ _g8300883037_)))))
        (_g8300683116_ _$stx83003_)))))
