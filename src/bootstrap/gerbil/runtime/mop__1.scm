(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx62286_)
      (let* ((___stx6533665337_ _$stx62286_)
             (_g6229162320_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6533665337_))))
        (let ((___kont6533965340_
               (lambda (_L62413_ _L62415_)
                 (let ((__tmp65694 (gx#datum->syntax '#f '##fx=))
                       (__tmp65688
                        (let ((__tmp65690
                               (let ((__tmp65693
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65691
                                      (let ((__tmp65692
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62413_ '()))))
                                        (declare (not safe))
                                        (cons _L62415_ __tmp65692))))
                                 (declare (not safe))
                                 (cons __tmp65693 __tmp65691)))
                              (__tmp65689
                               (let ()
                                 (declare (not safe))
                                 (cons _L62413_ '()))))
                          (declare (not safe))
                          (cons __tmp65690 __tmp65689))))
                   (declare (not safe))
                   (cons __tmp65694 __tmp65688))))
              (___kont6534165342_
               (lambda (_L62357_ _L62359_)
                 (let ((__tmp65707 (gx#datum->syntax '#f 'let))
                       (__tmp65695
                        (let ((__tmp65705
                               (let ((__tmp65706
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62357_ '()))))
                                 (declare (not safe))
                                 (cons _L62357_ __tmp65706)))
                              (__tmp65696
                               (let ((__tmp65697
                                      (let ((__tmp65704
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65698
                                             (let ((__tmp65700
                                                    (let ((__tmp65703
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65701
                                                           (let ((__tmp65702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62357_ '()))))
                     (declare (not safe))
                     (cons _L62359_ __tmp65702))))
              (declare (not safe))
              (cons __tmp65703 __tmp65701)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65699
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62357_ '()))))
                                               (declare (not safe))
                                               (cons __tmp65700 __tmp65699))))
                                        (declare (not safe))
                                        (cons __tmp65704 __tmp65698))))
                                 (declare (not safe))
                                 (cons __tmp65697 '()))))
                          (declare (not safe))
                          (cons __tmp65705 __tmp65696))))
                   (declare (not safe))
                   (cons __tmp65707 __tmp65695)))))
          (let ((___match6536365364_
                 (lambda (_e6229762383_
                          _hd6229662387_
                          _tl6229562390_
                          _e6230062393_
                          _hd6229962397_
                          _tl6229862400_
                          _e6230362403_
                          _hd6230262407_
                          _tl6230162410_)
                   (let ((_L62413_ _hd6230262407_) (_L62415_ _hd6229962397_))
                     (if (or (gx#identifier? _L62413_)
                             (gx#stx-fixnum? _L62413_))
                         (___kont6533965340_ _L62413_ _L62415_)
                         (___kont6534165342_
                          _hd6230262407_
                          _hd6229962397_))))))
            (if (gx#stx-pair? ___stx6533665337_)
                (let ((_e6229762383_ (gx#syntax-e ___stx6533665337_)))
                  (let ((_tl6229562390_
                         (let () (declare (not safe)) (##cdr _e6229762383_)))
                        (_hd6229662387_
                         (let () (declare (not safe)) (##car _e6229762383_))))
                    (if (gx#stx-pair? _tl6229562390_)
                        (let ((_e6230062393_ (gx#syntax-e _tl6229562390_)))
                          (let ((_tl6229862400_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6230062393_)))
                                (_hd6229962397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6230062393_))))
                            (if (gx#stx-pair? _tl6229862400_)
                                (let ((_e6230362403_
                                       (gx#syntax-e _tl6229862400_)))
                                  (let ((_tl6230162410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6230362403_)))
                                        (_hd6230262407_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6230362403_))))
                                    (if (gx#stx-null? _tl6230162410_)
                                        (___match6536365364_
                                         _e6229762383_
                                         _hd6229662387_
                                         _tl6229562390_
                                         _e6230062393_
                                         _hd6229962397_
                                         _tl6229862400_
                                         _e6230362403_
                                         _hd6230262407_
                                         _tl6230162410_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6229162320_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6229162320_)))))
                        (let () (declare (not safe)) (_g6229162320_)))))
                (let () (declare (not safe)) (_g6229162320_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62438_)
      (let* ((___stx6538665387_ _$stx62438_)
             (_g6244362472_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6538665387_))))
        (let ((___kont6538965390_
               (lambda (_L62564_ _L62566_)
                 (let ((__tmp65714 (gx#datum->syntax '#f '##fx=))
                       (__tmp65708
                        (let ((__tmp65710
                               (let ((__tmp65713
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65711
                                      (let ((__tmp65712
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62564_ '()))))
                                        (declare (not safe))
                                        (cons _L62566_ __tmp65712))))
                                 (declare (not safe))
                                 (cons __tmp65713 __tmp65711)))
                              (__tmp65709
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp65710 __tmp65709))))
                   (declare (not safe))
                   (cons __tmp65714 __tmp65708))))
              (___kont6539165392_
               (lambda (_L62509_ _L62511_)
                 (let ((__tmp65727 (gx#datum->syntax '#f 'let))
                       (__tmp65715
                        (let ((__tmp65725
                               (let ((__tmp65726
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62509_ '()))))
                                 (declare (not safe))
                                 (cons _L62509_ __tmp65726)))
                              (__tmp65716
                               (let ((__tmp65717
                                      (let ((__tmp65724
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65718
                                             (let ((__tmp65720
                                                    (let ((__tmp65723
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65721
                                                           (let ((__tmp65722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62509_ '()))))
                     (declare (not safe))
                     (cons _L62511_ __tmp65722))))
              (declare (not safe))
              (cons __tmp65723 __tmp65721)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65719
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp65720 __tmp65719))))
                                        (declare (not safe))
                                        (cons __tmp65724 __tmp65718))))
                                 (declare (not safe))
                                 (cons __tmp65717 '()))))
                          (declare (not safe))
                          (cons __tmp65725 __tmp65716))))
                   (declare (not safe))
                   (cons __tmp65727 __tmp65715)))))
          (let ((___match6541365414_
                 (lambda (_e6244962534_
                          _hd6244862538_
                          _tl6244762541_
                          _e6245262544_
                          _hd6245162548_
                          _tl6245062551_
                          _e6245562554_
                          _hd6245462558_
                          _tl6245362561_)
                   (let ((_L62564_ _hd6245462558_) (_L62566_ _hd6245162548_))
                     (if (or (gx#identifier? _L62564_)
                             (gx#stx-fixnum? _L62564_))
                         (___kont6538965390_ _L62564_ _L62566_)
                         (___kont6539165392_
                          _hd6245462558_
                          _hd6245162548_))))))
            (if (gx#stx-pair? ___stx6538665387_)
                (let ((_e6244962534_ (gx#syntax-e ___stx6538665387_)))
                  (let ((_tl6244762541_
                         (let () (declare (not safe)) (##cdr _e6244962534_)))
                        (_hd6244862538_
                         (let () (declare (not safe)) (##car _e6244962534_))))
                    (if (gx#stx-pair? _tl6244762541_)
                        (let ((_e6245262544_ (gx#syntax-e _tl6244762541_)))
                          (let ((_tl6245062551_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6245262544_)))
                                (_hd6245162548_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6245262544_))))
                            (if (gx#stx-pair? _tl6245062551_)
                                (let ((_e6245562554_
                                       (gx#syntax-e _tl6245062551_)))
                                  (let ((_tl6245362561_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6245562554_)))
                                        (_hd6245462558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6245562554_))))
                                    (if (gx#stx-null? _tl6245362561_)
                                        (___match6541365414_
                                         _e6244962534_
                                         _hd6244862538_
                                         _tl6244762541_
                                         _e6245262544_
                                         _hd6245162548_
                                         _tl6245062551_
                                         _e6245562554_
                                         _hd6245462558_
                                         _tl6245362561_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6244362472_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6244362472_)))))
                        (let () (declare (not safe)) (_g6244362472_)))))
                (let () (declare (not safe)) (_g6244362472_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62589_)
      (let* ((_g6259262613_
              (lambda (_g6259362609_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6259362609_)))
             (_g6259162841_
              (lambda (_g6259362617_)
                (if (gx#stx-pair? _g6259362617_)
                    (let ((_e6259862620_ (gx#syntax-e _g6259362617_)))
                      (let ((_hd6259762624_
                             (let ()
                               (declare (not safe))
                               (##car _e6259862620_)))
                            (_tl6259662627_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6259862620_))))
                        (if (gx#stx-pair? _tl6259662627_)
                            (let ((_e6260162630_ (gx#syntax-e _tl6259662627_)))
                              (let ((_hd6260062634_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6260162630_)))
                                    (_tl6259962637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6260162630_))))
                                (if (gx#stx-pair? _hd6260062634_)
                                    (let ((_e6260462640_
                                           (gx#syntax-e _hd6260062634_)))
                                      (let ((_hd6260362644_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6260462640_)))
                                            (_tl6260262647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6260462640_))))
                                        (if (gx#stx-pair? _tl6260262647_)
                                            (let ((_e6260762650_
                                                   (gx#syntax-e
                                                    _tl6260262647_)))
                                              (let ((_hd6260662654_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6260762650_)))
                                                    (_tl6260562657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6260762650_))))
                                                (if (gx#stx-null?
                                                     _tl6260562657_)
                                                    (if (gx#stx-null?
                                                         _tl6259962637_)
                                                        ((lambda (_L62660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62662_)
                   (let* ((_g6268062688_
                           (lambda (_g6268162684_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6268162684_)))
                          (_g6267962837_
                           (lambda (_g6268162692_)
                             ((lambda (_L62695_)
                                (let ()
                                  (let* ((_g6270762715_
                                          (lambda (_g6270862711_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6270862711_)))
                                         (_g6270662833_
                                          (lambda (_g6270862719_)
                                            ((lambda (_L62722_)
                                               (let ()
                                                 (let* ((_g6273562743_
                                                         (lambda (_g6273662739_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6273662739_)))
                                                        (_g6273462829_
                                                         (lambda (_g6273662747_)
                                                           ((lambda (_L62750_)
                                                              (let ()
                                                                (let* ((_g6276362771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6276462767_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6276462767_)))
                               (_g6276262825_
                                (lambda (_g6276462775_)
                                  ((lambda (_L62778_)
                                     (let ()
                                       (let* ((_g6279162799_
                                               (lambda (_g6279262795_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6279262795_)))
                                              (_g6279062821_
                                               (lambda (_g6279262803_)
                                                 ((lambda (_L62806_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp65860
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp65728
                                                               (let ((__tmp65830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp65859 (gx#datum->syntax '#f 'def))
                                    (__tmp65831
                                     (let ((__tmp65832
                                            (let ((__tmp65833
                                                   (let ((__tmp65858
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp65834
                                                          (let ((__tmp65853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65857
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp65854
                                (let ((__tmp65855
                                       (let ((__tmp65856
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62662_ __tmp65856))))
                                  (declare (not safe))
                                  (cons _L62695_ __tmp65855))))
                           (declare (not safe))
                           (cons __tmp65857 __tmp65854)))
                        (__tmp65835
                         (let ((__tmp65836
                                (let ((__tmp65852
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp65837
                                       (let ((__tmp65850
                                              (let ((__tmp65851
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp65851 '())))
                                             (__tmp65838
                                              (let ((__tmp65839
                                                     (let ((__tmp65849
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp65840
                                                            (let ((__tmp65848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65841
                           (let ((__tmp65842
                                  (let ((__tmp65847
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp65843
                                         (let ((__tmp65844
                                                (let ((__tmp65846
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp65845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62662_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp65846
                                                        __tmp65845))))
                                           (declare (not safe))
                                           (cons __tmp65844 '()))))
                                    (declare (not safe))
                                    (cons __tmp65847 __tmp65843))))
                             (declare (not safe))
                             (cons _L62660_ __tmp65842))))
                      (declare (not safe))
                      (cons __tmp65848 __tmp65841))))
               (declare (not safe))
               (cons __tmp65849 __tmp65840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65839 '()))))
                                         (declare (not safe))
                                         (cons __tmp65850 __tmp65838))))
                                  (declare (not safe))
                                  (cons __tmp65852 __tmp65837))))
                           (declare (not safe))
                           (cons __tmp65836 '()))))
                    (declare (not safe))
                    (cons __tmp65853 __tmp65835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65858
                                                           __tmp65834))))
                                              (declare (not safe))
                                              (cons __tmp65833 '()))))
                                       (declare (not safe))
                                       (cons _L62722_ __tmp65832))))
                                (declare (not safe))
                                (cons __tmp65859 __tmp65831)))
                             (__tmp65729
                              (let ((__tmp65800
                                     (let ((__tmp65829
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp65801
                                            (let ((__tmp65802
                                                   (let ((__tmp65803
                                                          (let ((__tmp65828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp65804
                         (let ((__tmp65823
                                (let ((__tmp65827
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp65824
                                       (let ((__tmp65825
                                              (let ((__tmp65826
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62662_ __tmp65826))))
                                         (declare (not safe))
                                         (cons _L62695_ __tmp65825))))
                                  (declare (not safe))
                                  (cons __tmp65827 __tmp65824)))
                               (__tmp65805
                                (let ((__tmp65806
                                       (let ((__tmp65822
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp65807
                                              (let ((__tmp65820
                                                     (let ((__tmp65821
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp65821 '())))
                                                    (__tmp65808
                                                     (let ((__tmp65809
                                                            (let ((__tmp65819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp65810
                           (let ((__tmp65818 (gx#datum->syntax '#f 'klass))
                                 (__tmp65811
                                  (let ((__tmp65812
                                         (let ((__tmp65817
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp65813
                                                (let ((__tmp65814
                                                       (let ((__tmp65816
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp65815
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62662_ '()))))
                 (declare (not safe))
                 (cons __tmp65816 __tmp65815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65814 '()))))
                                           (declare (not safe))
                                           (cons __tmp65817 __tmp65813))))
                                    (declare (not safe))
                                    (cons _L62660_ __tmp65812))))
                             (declare (not safe))
                             (cons __tmp65818 __tmp65811))))
                      (declare (not safe))
                      (cons __tmp65819 __tmp65810))))
               (declare (not safe))
               (cons __tmp65809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65820 __tmp65808))))
                                         (declare (not safe))
                                         (cons __tmp65822 __tmp65807))))
                                  (declare (not safe))
                                  (cons __tmp65806 '()))))
                           (declare (not safe))
                           (cons __tmp65823 __tmp65805))))
                    (declare (not safe))
                    (cons __tmp65828 __tmp65804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65803 '()))))
                                              (declare (not safe))
                                              (cons _L62750_ __tmp65802))))
                                       (declare (not safe))
                                       (cons __tmp65829 __tmp65801)))
                                    (__tmp65730
                                     (let ((__tmp65766
                                            (let ((__tmp65799
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp65767
                                                   (let ((__tmp65768
                                                          (let ((__tmp65769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65798
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp65770
                                (let ((__tmp65793
                                       (let ((__tmp65797
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp65794
                                              (let ((__tmp65795
                                                     (let ((__tmp65796
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62662_
                                                             __tmp65796))))
                                                (declare (not safe))
                                                (cons _L62695_ __tmp65795))))
                                         (declare (not safe))
                                         (cons __tmp65797 __tmp65794)))
                                      (__tmp65771
                                       (let ((__tmp65772
                                              (let ((__tmp65792
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp65773
                                                     (let ((__tmp65788
                                                            (let ((__tmp65791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65789
                           (let ((__tmp65790 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp65790 '()))))
                      (declare (not safe))
                      (cons __tmp65791 __tmp65789)))
                   (__tmp65774
                    (let ((__tmp65775
                           (let ((__tmp65787
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp65776
                                  (let ((__tmp65786
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65777
                                         (let ((__tmp65785
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp65778
                                                (let ((__tmp65779
                                                       (let ((__tmp65784
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp65780
                                                              (let ((__tmp65781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp65783 (gx#datum->syntax '#f 'quote))
                                   (__tmp65782
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62662_ '()))))
                               (declare (not safe))
                               (cons __tmp65783 __tmp65782))))
                        (declare (not safe))
                        (cons __tmp65781 '()))))
                 (declare (not safe))
                 (cons __tmp65784 __tmp65780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62660_ __tmp65779))))
                                           (declare (not safe))
                                           (cons __tmp65785 __tmp65778))))
                                    (declare (not safe))
                                    (cons __tmp65786 __tmp65777))))
                             (declare (not safe))
                             (cons __tmp65787 __tmp65776))))
                      (declare (not safe))
                      (cons __tmp65775 '()))))
               (declare (not safe))
               (cons __tmp65788 __tmp65774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65792 __tmp65773))))
                                         (declare (not safe))
                                         (cons __tmp65772 '()))))
                                  (declare (not safe))
                                  (cons __tmp65793 __tmp65771))))
                           (declare (not safe))
                           (cons __tmp65798 __tmp65770))))
                    (declare (not safe))
                    (cons __tmp65769 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62778_
                                                           __tmp65768))))
                                              (declare (not safe))
                                              (cons __tmp65799 __tmp65767)))
                                           (__tmp65731
                                            (let ((__tmp65732
                                                   (let ((__tmp65765
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp65733
                                                          (let ((__tmp65734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65735
                                (let ((__tmp65764
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp65736
                                       (let ((__tmp65759
                                              (let ((__tmp65763
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp65760
                                                     (let ((__tmp65761
                                                            (let ((__tmp65762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62662_ __tmp65762))))
               (declare (not safe))
               (cons _L62695_ __tmp65761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65763 __tmp65760)))
                                             (__tmp65737
                                              (let ((__tmp65738
                                                     (let ((__tmp65758
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp65739
                                                            (let ((__tmp65754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65757 (gx#datum->syntax '#f 'klass))
                                 (__tmp65755
                                  (let ((__tmp65756
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp65756 '()))))
                             (declare (not safe))
                             (cons __tmp65757 __tmp65755)))
                          (__tmp65740
                           (let ((__tmp65741
                                  (let ((__tmp65753
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp65742
                                         (let ((__tmp65752
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp65743
                                                (let ((__tmp65751
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp65744
                                                       (let ((__tmp65745
                                                              (let ((__tmp65750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp65746
                             (let ((__tmp65747
                                    (let ((__tmp65749
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp65748
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62662_ '()))))
                                      (declare (not safe))
                                      (cons __tmp65749 __tmp65748))))
                               (declare (not safe))
                               (cons __tmp65747 '()))))
                        (declare (not safe))
                        (cons __tmp65750 __tmp65746))))
                 (declare (not safe))
                 (cons _L62660_ __tmp65745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65751
                                                        __tmp65744))))
                                           (declare (not safe))
                                           (cons __tmp65752 __tmp65743))))
                                    (declare (not safe))
                                    (cons __tmp65753 __tmp65742))))
                             (declare (not safe))
                             (cons __tmp65741 '()))))
                      (declare (not safe))
                      (cons __tmp65754 __tmp65740))))
               (declare (not safe))
               (cons __tmp65758 __tmp65739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65738 '()))))
                                         (declare (not safe))
                                         (cons __tmp65759 __tmp65737))))
                                  (declare (not safe))
                                  (cons __tmp65764 __tmp65736))))
                           (declare (not safe))
                           (cons __tmp65735 '()))))
                    (declare (not safe))
                    (cons _L62806_ __tmp65734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65765
                                                           __tmp65733))))
                                              (declare (not safe))
                                              (cons __tmp65732 '()))))
                                       (declare (not safe))
                                       (cons __tmp65766 __tmp65731))))
                                (declare (not safe))
                                (cons __tmp65800 __tmp65730))))
                         (declare (not safe))
                         (cons __tmp65830 __tmp65729))))
                  (declare (not safe))
                  (cons __tmp65860 __tmp65728)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6279262803_))))
                                         (_g6279062821_
                                          (gx#stx-identifier
                                           _L62662_
                                           '"&"
                                           _L62778_)))))
                                   _g6276462775_))))
                          (_g6276262825_
                           (gx#stx-identifier _L62662_ _L62722_ '"-set!")))))
                    _g6273662747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6273462829_
                                                    (gx#stx-identifier
                                                     _L62662_
                                                     '"&"
                                                     _L62722_)))))
                                             _g6270862719_))))
                                    (_g6270662833_
                                     (gx#stx-identifier
                                      _L62662_
                                      '"class-type-"
                                      _L62662_)))))
                              _g6268162692_))))
                     (_g6267962837_ (gx#core-quote-syntax 'class::t))))
                 _hd6260662654_
                 _hd6260362644_)
                (_g6259262613_ _g6259362617_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6259262613_
                                                     _g6259362617_))))
                                            (_g6259262613_ _g6259362617_))))
                                    (_g6259262613_ _g6259362617_))))
                            (_g6259262613_ _g6259362617_))))
                    (_g6259262613_ _g6259362617_)))))
        (_g6259162841_ _stx62589_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62845_)
      (let* ((_g6284962878_
              (lambda (_g6285062874_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6285062874_)))
             (_g6284862978_
              (lambda (_g6285062882_)
                (if (gx#stx-pair? _g6285062882_)
                    (let ((_e6285562885_ (gx#syntax-e _g6285062882_)))
                      (let ((_hd6285462889_
                             (let ()
                               (declare (not safe))
                               (##car _e6285562885_)))
                            (_tl6285362892_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6285562885_))))
                        (if (gx#stx-pair/null? _tl6285362892_)
                            (let ((_g65861_
                                   (gx#syntax-split-splice _tl6285362892_ '0)))
                              (begin
                                (let ((_g65862_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g65861_)
                                             (##vector-length _g65861_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g65862_ 2)))
                                      (error "Context expects 2 values"
                                             _g65862_)))
                                (let ((_target6285662895_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65861_ 0)))
                                      (_tl6285862898_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65861_ 1))))
                                  (if (gx#stx-null? _tl6285862898_)
                                      (letrec ((_loop6285962901_
                                                (lambda (_hd6285762905_
                                                         _field6286362908_
                                                         _slot6286462910_)
                                                  (if (gx#stx-pair?
                                                       _hd6285762905_)
                                                      (let ((_e6286062913_
                                                             (gx#syntax-e
                                                              _hd6285762905_)))
                                                        (let ((_lp-hd6286162917_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6286062913_)))
                      (_lp-tl6286262920_
                       (let () (declare (not safe)) (##cdr _e6286062913_))))
                  (if (gx#stx-pair? _lp-hd6286162917_)
                      (let ((_e6286962923_ (gx#syntax-e _lp-hd6286162917_)))
                        (let ((_hd6286862927_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6286962923_)))
                              (_tl6286762930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6286962923_))))
                          (if (gx#stx-pair? _tl6286762930_)
                              (let ((_e6287262933_
                                     (gx#syntax-e _tl6286762930_)))
                                (let ((_hd6287162937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6287262933_)))
                                      (_tl6287062940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6287262933_))))
                                  (if (gx#stx-null? _tl6287062940_)
                                      (_loop6285962901_
                                       _lp-tl6286262920_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6287162937_
                                               _field6286362908_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6286862927_
                                               _slot6286462910_)))
                                      (_g6284962878_ _g6285062882_))))
                              (_g6284962878_ _g6285062882_))))
                      (_g6284962878_ _g6285062882_))))
              (let ((_field6286562943_ (reverse _field6286362908_))
                    (_slot6286662946_ (reverse _slot6286462910_)))
                ((lambda (_L62949_ _L62951_)
                   (let ((__tmp65870 (gx#datum->syntax '#f 'begin))
                         (__tmp65863
                          (begin
                            (gx#syntax-check-splice-targets _L62949_ _L62951_)
                            (let ((__tmp65864
                                   (lambda (_g6296662970_
                                            _g6296762973_
                                            _g6296862975_)
                                     (let ((__tmp65865
                                            (let ((__tmp65869
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp65866
                                                   (let ((__tmp65867
                                                          (let ((__tmp65868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6296662970_ '()))))
                    (declare (not safe))
                    (cons _g6296762973_ __tmp65868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65867 '()))))
                                              (declare (not safe))
                                              (cons __tmp65869 __tmp65866))))
                                       (declare (not safe))
                                       (cons __tmp65865 _g6296862975_)))))
                              (declare (not safe))
                              (foldr2 __tmp65864 '() _L62949_ _L62951_)))))
                     (declare (not safe))
                     (cons __tmp65870 __tmp65863)))
                 _field6286562943_
                 _slot6286662946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6285962901_
                                         _target6285662895_
                                         '()
                                         '()))
                                      (_g6284962878_ _g6285062882_)))))
                            (_g6284962878_ _g6285062882_))))
                    (_g6284962878_ _g6285062882_)))))
        (_g6284862978_ _$stx62845_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62983_)
      (let* ((_g6298763013_
              (lambda (_g6298863009_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6298863009_)))
             (_g6298663096_
              (lambda (_g6298863017_)
                (if (gx#stx-pair? _g6298863017_)
                    (let ((_e6299563020_ (gx#syntax-e _g6298863017_)))
                      (let ((_hd6299463024_
                             (let ()
                               (declare (not safe))
                               (##car _e6299563020_)))
                            (_tl6299363027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6299563020_))))
                        (if (gx#stx-pair? _tl6299363027_)
                            (let ((_e6299863030_ (gx#syntax-e _tl6299363027_)))
                              (let ((_hd6299763034_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6299863030_)))
                                    (_tl6299663037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6299863030_))))
                                (if (gx#stx-pair? _tl6299663037_)
                                    (let ((_e6300163040_
                                           (gx#syntax-e _tl6299663037_)))
                                      (let ((_hd6300063044_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6300163040_)))
                                            (_tl6299963047_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6300163040_))))
                                        (if (gx#stx-pair? _tl6299963047_)
                                            (let ((_e6300463050_
                                                   (gx#syntax-e
                                                    _tl6299963047_)))
                                              (let ((_hd6300363054_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6300463050_)))
                                                    (_tl6300263057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6300463050_))))
                                                (if (gx#stx-pair?
                                                     _tl6300263057_)
                                                    (let ((_e6300763060_
                                                           (gx#syntax-e
                                                            _tl6300263057_)))
                                                      (let ((_hd6300663064_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6300763060_)))
                    (_tl6300563067_
                     (let () (declare (not safe)) (##cdr _e6300763060_))))
                (if (gx#stx-null? _tl6300563067_)
                    ((lambda (_L63070_ _L63072_ _L63073_ _L63074_)
                       (let ((__tmp65917 (gx#datum->syntax '#f 'if))
                             (__tmp65871
                              (let ((__tmp65914
                                     (let ((__tmp65916
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65915
                                            (let ()
                                              (declare (not safe))
                                              (cons _L63074_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65916 __tmp65915)))
                                    (__tmp65872
                                     (let ((__tmp65877
                                            (let ((__tmp65913
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp65878
                                                   (let ((__tmp65907
                                                          (let ((__tmp65912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65908
                         (let ((__tmp65909
                                (let ((__tmp65911
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65910
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63074_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65911 __tmp65910))))
                           (declare (not safe))
                           (cons __tmp65909 '()))))
                    (declare (not safe))
                    (cons __tmp65912 __tmp65908)))
                 (__tmp65879
                  (let ((__tmp65880
                         (let ((__tmp65906 (gx#datum->syntax '#f 'cond))
                               (__tmp65881
                                (let ((__tmp65889
                                       (let ((__tmp65893
                                              (let ((__tmp65905
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65894
                                                     (let ((__tmp65901
                                                            (let ((__tmp65904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65902
                           (let ((__tmp65903 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65903 '()))))
                      (declare (not safe))
                      (cons __tmp65904 __tmp65902)))
                   (__tmp65895
                    (let ((__tmp65896
                           (let ((__tmp65900
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65897
                                  (let ((__tmp65899
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65898
                                         (let ()
                                           (declare (not safe))
                                           (cons _L63073_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65899 __tmp65898))))
                             (declare (not safe))
                             (cons __tmp65900 __tmp65897))))
                      (declare (not safe))
                      (cons __tmp65896 '()))))
               (declare (not safe))
               (cons __tmp65901 __tmp65895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65905 __tmp65894)))
                                             (__tmp65890
                                              (let ((__tmp65892
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65891
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63072_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65892 __tmp65891))))
                                         (declare (not safe))
                                         (cons __tmp65893 __tmp65890)))
                                      (__tmp65882
                                       (let ((__tmp65883
                                              (let ((__tmp65888
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65884
                                                     (let ((__tmp65885
                                                            (let ((__tmp65886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65887
                                  (let ()
                                    (declare (not safe))
                                    (cons _L63073_ '()))))
                             (declare (not safe))
                             (cons _L63074_ __tmp65887))))
                      (declare (not safe))
                      (cons _L63070_ __tmp65886))))
               (declare (not safe))
               (cons __tmp65885 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65888 __tmp65884))))
                                         (declare (not safe))
                                         (cons __tmp65883 '()))))
                                  (declare (not safe))
                                  (cons __tmp65889 __tmp65882))))
                           (declare (not safe))
                           (cons __tmp65906 __tmp65881))))
                    (declare (not safe))
                    (cons __tmp65880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65907
                                                           __tmp65879))))
                                              (declare (not safe))
                                              (cons __tmp65913 __tmp65878)))
                                           (__tmp65873
                                            (let ((__tmp65874
                                                   (let ((__tmp65875
                                                          (let ((__tmp65876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L63073_ '()))))
                    (declare (not safe))
                    (cons _L63074_ __tmp65876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63070_
                                                           __tmp65875))))
                                              (declare (not safe))
                                              (cons __tmp65874 '()))))
                                       (declare (not safe))
                                       (cons __tmp65877 __tmp65873))))
                                (declare (not safe))
                                (cons __tmp65914 __tmp65872))))
                         (declare (not safe))
                         (cons __tmp65917 __tmp65871)))
                     _hd6300663064_
                     _hd6300363054_
                     _hd6300063044_
                     _hd6299763034_)
                    (_g6298763013_ _g6298863017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6298763013_
                                                     _g6298863017_))))
                                            (_g6298763013_ _g6298863017_))))
                                    (_g6298763013_ _g6298863017_))))
                            (_g6298763013_ _g6298863017_))))
                    (_g6298763013_ _g6298863017_)))))
        (_g6298663096_ _$stx62983_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx63100_)
      (let* ((_g6310463133_
              (lambda (_g6310563129_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6310563129_)))
             (_g6310363233_
              (lambda (_g6310563137_)
                (if (gx#stx-pair? _g6310563137_)
                    (let ((_e6311063140_ (gx#syntax-e _g6310563137_)))
                      (let ((_hd6310963144_
                             (let ()
                               (declare (not safe))
                               (##car _e6311063140_)))
                            (_tl6310863147_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6311063140_))))
                        (if (gx#stx-pair/null? _tl6310863147_)
                            (let ((_g65918_
                                   (gx#syntax-split-splice _tl6310863147_ '0)))
                              (begin
                                (let ((_g65919_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g65918_)
                                             (##vector-length _g65918_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g65919_ 2)))
                                      (error "Context expects 2 values"
                                             _g65919_)))
                                (let ((_target6311163150_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65918_ 0)))
                                      (_tl6311363153_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65918_ 1))))
                                  (if (gx#stx-null? _tl6311363153_)
                                      (letrec ((_loop6311463156_
                                                (lambda (_hd6311263160_
                                                         _name6311863163_
                                                         _t6311963165_)
                                                  (if (gx#stx-pair?
                                                       _hd6311263160_)
                                                      (let ((_e6311563168_
                                                             (gx#syntax-e
                                                              _hd6311263160_)))
                                                        (let ((_lp-hd6311663172_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6311563168_)))
                      (_lp-tl6311763175_
                       (let () (declare (not safe)) (##cdr _e6311563168_))))
                  (if (gx#stx-pair? _lp-hd6311663172_)
                      (let ((_e6312463178_ (gx#syntax-e _lp-hd6311663172_)))
                        (let ((_hd6312363182_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6312463178_)))
                              (_tl6312263185_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6312463178_))))
                          (if (gx#stx-pair? _tl6312263185_)
                              (let ((_e6312763188_
                                     (gx#syntax-e _tl6312263185_)))
                                (let ((_hd6312663192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6312763188_)))
                                      (_tl6312563195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6312763188_))))
                                  (if (gx#stx-null? _tl6312563195_)
                                      (_loop6311463156_
                                       _lp-tl6311763175_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6312663192_
                                               _name6311863163_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6312363182_ _t6311963165_)))
                                      (_g6310463133_ _g6310563137_))))
                              (_g6310463133_ _g6310563137_))))
                      (_g6310463133_ _g6310563137_))))
              (let ((_name6312063198_ (reverse _name6311863163_))
                    (_t6312163201_ (reverse _t6311963165_)))
                ((lambda (_L63204_ _L63206_)
                   (let ((__tmp65931 (gx#datum->syntax '#f 'begin))
                         (__tmp65920
                          (begin
                            (gx#syntax-check-splice-targets _L63204_ _L63206_)
                            (let ((__tmp65921
                                   (lambda (_g6322163225_
                                            _g6322263228_
                                            _g6322363230_)
                                     (let ((__tmp65922
                                            (let ((__tmp65930
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-set!))
                                                  (__tmp65923
                                                   (let ((__tmp65929
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__subtype-id))
                                                         (__tmp65924
                                                          (let ((__tmp65925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65926
                                (let ((__tmp65928
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp65927
                                       (let ()
                                         (declare (not safe))
                                         (cons _g6322163225_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65928 __tmp65927))))
                           (declare (not safe))
                           (cons __tmp65926 '()))))
                    (declare (not safe))
                    (cons _g6322263228_ __tmp65925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65929
                                                           __tmp65924))))
                                              (declare (not safe))
                                              (cons __tmp65930 __tmp65923))))
                                       (declare (not safe))
                                       (cons __tmp65922 _g6322363230_)))))
                              (declare (not safe))
                              (foldr2 __tmp65921 '() _L63204_ _L63206_)))))
                     (declare (not safe))
                     (cons __tmp65931 __tmp65920)))
                 _name6312063198_
                 _t6312163201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6311463156_
                                         _target6311163150_
                                         '()
                                         '()))
                                      (_g6310463133_ _g6310563137_)))))
                            (_g6310463133_ _g6310563137_))))
                    (_g6310463133_ _g6310563137_)))))
        (_g6310363233_ _$stx63100_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx63238_)
      (let* ((_g6324263273_
              (lambda (_g6324363269_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6324363269_)))
             (_g6324163392_
              (lambda (_g6324363277_)
                (if (gx#stx-pair? _g6324363277_)
                    (let ((_e6324963280_ (gx#syntax-e _g6324363277_)))
                      (let ((_hd6324863284_
                             (let ()
                               (declare (not safe))
                               (##car _e6324963280_)))
                            (_tl6324763287_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6324963280_))))
                        (if (gx#stx-pair? _tl6324763287_)
                            (let ((_e6325263290_ (gx#syntax-e _tl6324763287_)))
                              (let ((_hd6325163294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325263290_)))
                                    (_tl6325063297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325263290_))))
                                (if (gx#stx-pair? _tl6325063297_)
                                    (let ((_e6325563300_
                                           (gx#syntax-e _tl6325063297_)))
                                      (let ((_hd6325463304_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6325563300_)))
                                            (_tl6325363307_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6325563300_))))
                                        (if (gx#stx-pair? _tl6325363307_)
                                            (let ((_e6325863310_
                                                   (gx#syntax-e
                                                    _tl6325363307_)))
                                              (let ((_hd6325763314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6325863310_)))
                                                    (_tl6325663317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6325863310_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6325763314_)
                                                    (let ((_g65932_
                                                           (gx#syntax-split-splice
                                                            _hd6325763314_
                                                            '0)))
                                                      (begin
                                                        (let ((_g65933_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g65932_)
                             (##vector-length _g65932_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g65933_ 2)))
                      (error "Context expects 2 values" _g65933_)))
                (let ((_target6325963320_
                       (let () (declare (not safe)) (##vector-ref _g65932_ 0)))
                      (_tl6326163323_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g65932_ 1))))
                  (if (gx#stx-null? _tl6326163323_)
                      (letrec ((_loop6326263326_
                                (lambda (_hd6326063330_ _super6326663333_)
                                  (if (gx#stx-pair? _hd6326063330_)
                                      (let ((_e6326363336_
                                             (gx#syntax-e _hd6326063330_)))
                                        (let ((_lp-hd6326463340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6326363336_)))
                                              (_lp-tl6326563343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6326363336_))))
                                          (_loop6326263326_
                                           _lp-tl6326563343_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd6326463340_
                                                   _super6326663333_)))))
                                      (let ((_super6326763346_
                                             (reverse _super6326663333_)))
                                        (if (gx#stx-null? _tl6325663317_)
                                            ((lambda (_L63350_
                                                      _L63352_
                                                      _L63353_)
                                               (let ((__tmp65957
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp65934
                                                      (let ((__tmp65935
                                                             (let ((__tmp65936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp65956
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp65937
                                   (let ((__tmp65950
                                          (let ((__tmp65955
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp65951
                                                 (let ((__tmp65952
                                                        (let ((__tmp65953
                                                               (let ((__tmp65954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6337763380_ _g6337863383_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6337763380_ _g6337863383_)))))
                         (declare (not safe))
                         (foldr1 __tmp65954 '() _L63350_))))
                  (declare (not safe))
                  (cons __tmp65953 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63352_
                                                         __tmp65952))))
                                            (declare (not safe))
                                            (cons __tmp65955 __tmp65951)))
                                         (__tmp65938
                                          (let ((__tmp65939
                                                 (let ((__tmp65949
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__make-system-class))
                                                       (__tmp65940
                                                        (let ((__tmp65946
                                                               (let ((__tmp65948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp65947
                              (let ()
                                (declare (not safe))
                                (cons _L63352_ '()))))
                         (declare (not safe))
                         (cons __tmp65948 __tmp65947)))
                      (__tmp65941
                       (let ((__tmp65942
                              (let ((__tmp65945 (gx#datum->syntax '#f '@list))
                                    (__tmp65943
                                     (let ((__tmp65944
                                            (lambda (_g6337563386_
                                                     _g6337663389_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g6337563386_
                                                      _g6337663389_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp65944 '() _L63350_))))
                                (declare (not safe))
                                (cons __tmp65945 __tmp65943))))
                         (declare (not safe))
                         (cons __tmp65942 '()))))
                  (declare (not safe))
                  (cons __tmp65946 __tmp65941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp65949
                                                         __tmp65940))))
                                            (declare (not safe))
                                            (cons __tmp65939 '()))))
                                     (declare (not safe))
                                     (cons __tmp65950 __tmp65938))))
                              (declare (not safe))
                              (cons __tmp65956 __tmp65937))))
                       (declare (not safe))
                       (cons __tmp65936 '()))))
                (declare (not safe))
                (cons _L63353_ __tmp65935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp65957 __tmp65934)))
                                             _super6326763346_
                                             _hd6325463304_
                                             _hd6325163294_)
                                            (_g6324263273_ _g6324363277_)))))))
                        (_loop6326263326_ _target6325963320_ '()))
                      (_g6324263273_ _g6324363277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6324263273_
                                                     _g6324363277_))))
                                            (_g6324263273_ _g6324363277_))))
                                    (_g6324263273_ _g6324363277_))))
                            (_g6324263273_ _g6324363277_))))
                    (_g6324263273_ _g6324363277_)))))
        (_g6324163392_ _$stx63238_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx63397_)
      (let* ((_g6340163432_
              (lambda (_g6340263428_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6340263428_)))
             (_g6340063543_
              (lambda (_g6340263436_)
                (if (gx#stx-pair? _g6340263436_)
                    (let ((_e6340863439_ (gx#syntax-e _g6340263436_)))
                      (let ((_hd6340763443_
                             (let ()
                               (declare (not safe))
                               (##car _e6340863439_)))
                            (_tl6340663446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6340863439_))))
                        (if (gx#stx-pair? _tl6340663446_)
                            (let ((_e6341163449_ (gx#syntax-e _tl6340663446_)))
                              (let ((_hd6341063453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6341163449_)))
                                    (_tl6340963456_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6341163449_))))
                                (if (gx#stx-pair? _tl6340963456_)
                                    (let ((_e6341463459_
                                           (gx#syntax-e _tl6340963456_)))
                                      (let ((_hd6341363463_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6341463459_)))
                                            (_tl6341263466_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6341463459_))))
                                        (if (gx#stx-pair/null? _hd6341363463_)
                                            (let ((_g65958_
                                                   (gx#syntax-split-splice
                                                    _hd6341363463_
                                                    '0)))
                                              (begin
                                                (let ((_g65959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g65958_)
                                                             (##vector-length
                                                              _g65958_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g65959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g65959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6341563469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g65958_
                                                          0)))
                                                      (_tl6341763472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g65958_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6341763472_)
                                                      (letrec ((_loop6341863475_
                                                                (lambda (_hd6341663479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6342263482_)
                          (if (gx#stx-pair? _hd6341663479_)
                              (let ((_e6341963485_
                                     (gx#syntax-e _hd6341663479_)))
                                (let ((_lp-hd6342063489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6341963485_)))
                                      (_lp-tl6342163492_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6341963485_))))
                                  (_loop6341863475_
                                   _lp-tl6342163492_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd6342063489_
                                           _super6342263482_)))))
                              (let ((_super6342363495_
                                     (reverse _super6342263482_)))
                                (if (gx#stx-pair? _tl6341263466_)
                                    (let ((_e6342663499_
                                           (gx#syntax-e _tl6341263466_)))
                                      (let ((_hd6342563503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6342663499_)))
                                            (_tl6342463506_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6342663499_))))
                                        (if (gx#stx-null? _tl6342463506_)
                                            ((lambda (_L63509_
                                                      _L63511_
                                                      _L63512_)
                                               (let ((__tmp65975
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp65960
                                                      (let ((__tmp65961
                                                             (let ((__tmp65962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp65974
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp65963
                                   (let ((__tmp65968
                                          (let ((__tmp65973
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp65969
                                                 (let ((__tmp65970
                                                        (let ((__tmp65971
                                                               (let ((__tmp65972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6353463537_ _g6353563540_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6353463537_ _g6353563540_)))))
                         (declare (not safe))
                         (foldr1 __tmp65972 '() _L63511_))))
                  (declare (not safe))
                  (cons __tmp65971 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63512_
                                                         __tmp65970))))
                                            (declare (not safe))
                                            (cons __tmp65973 __tmp65969)))
                                         (__tmp65964
                                          (let ((__tmp65965
                                                 (let ((__tmp65967
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__shadow-class))
                                                       (__tmp65966
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63509_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp65967
                                                         __tmp65966))))
                                            (declare (not safe))
                                            (cons __tmp65965 '()))))
                                     (declare (not safe))
                                     (cons __tmp65968 __tmp65964))))
                              (declare (not safe))
                              (cons __tmp65974 __tmp65963))))
                       (declare (not safe))
                       (cons __tmp65962 '()))))
                (declare (not safe))
                (cons _L63512_ __tmp65961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp65975 __tmp65960)))
                                             _hd6342563503_
                                             _super6342363495_
                                             _hd6341063453_)
                                            (_g6340163432_ _g6340263436_))))
                                    (_g6340163432_ _g6340263436_)))))))
                (_loop6341863475_ _target6341563469_ '()))
              (_g6340163432_ _g6340263436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6340163432_ _g6340263436_))))
                                    (_g6340163432_ _g6340263436_))))
                            (_g6340163432_ _g6340263436_))))
                    (_g6340163432_ _g6340263436_)))))
        (_g6340063543_ _$stx63397_)))))
