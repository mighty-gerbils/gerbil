(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx62293_)
      (let* ((___stx6534365344_ _$stx62293_)
             (_g6229862327_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6534365344_))))
        (let ((___kont6534665347_
               (lambda (_L62420_ _L62422_)
                 (let ((__tmp65701 (gx#datum->syntax '#f '##fx=))
                       (__tmp65695
                        (let ((__tmp65697
                               (let ((__tmp65700
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65698
                                      (let ((__tmp65699
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62420_ '()))))
                                        (declare (not safe))
                                        (cons _L62422_ __tmp65699))))
                                 (declare (not safe))
                                 (cons __tmp65700 __tmp65698)))
                              (__tmp65696
                               (let ()
                                 (declare (not safe))
                                 (cons _L62420_ '()))))
                          (declare (not safe))
                          (cons __tmp65697 __tmp65696))))
                   (declare (not safe))
                   (cons __tmp65701 __tmp65695))))
              (___kont6534865349_
               (lambda (_L62364_ _L62366_)
                 (let ((__tmp65714 (gx#datum->syntax '#f 'let))
                       (__tmp65702
                        (let ((__tmp65712
                               (let ((__tmp65713
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62364_ '()))))
                                 (declare (not safe))
                                 (cons _L62364_ __tmp65713)))
                              (__tmp65703
                               (let ((__tmp65704
                                      (let ((__tmp65711
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65705
                                             (let ((__tmp65707
                                                    (let ((__tmp65710
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65708
                                                           (let ((__tmp65709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62364_ '()))))
                     (declare (not safe))
                     (cons _L62366_ __tmp65709))))
              (declare (not safe))
              (cons __tmp65710 __tmp65708)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65706
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62364_ '()))))
                                               (declare (not safe))
                                               (cons __tmp65707 __tmp65706))))
                                        (declare (not safe))
                                        (cons __tmp65711 __tmp65705))))
                                 (declare (not safe))
                                 (cons __tmp65704 '()))))
                          (declare (not safe))
                          (cons __tmp65712 __tmp65703))))
                   (declare (not safe))
                   (cons __tmp65714 __tmp65702)))))
          (let ((___match6537065371_
                 (lambda (_e6230462390_
                          _hd6230362394_
                          _tl6230262397_
                          _e6230762400_
                          _hd6230662404_
                          _tl6230562407_
                          _e6231062410_
                          _hd6230962414_
                          _tl6230862417_)
                   (let ((_L62420_ _hd6230962414_) (_L62422_ _hd6230662404_))
                     (if (or (gx#identifier? _L62420_)
                             (gx#stx-fixnum? _L62420_))
                         (___kont6534665347_ _L62420_ _L62422_)
                         (___kont6534865349_
                          _hd6230962414_
                          _hd6230662404_))))))
            (if (gx#stx-pair? ___stx6534365344_)
                (let ((_e6230462390_ (gx#syntax-e ___stx6534365344_)))
                  (let ((_tl6230262397_
                         (let () (declare (not safe)) (##cdr _e6230462390_)))
                        (_hd6230362394_
                         (let () (declare (not safe)) (##car _e6230462390_))))
                    (if (gx#stx-pair? _tl6230262397_)
                        (let ((_e6230762400_ (gx#syntax-e _tl6230262397_)))
                          (let ((_tl6230562407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6230762400_)))
                                (_hd6230662404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6230762400_))))
                            (if (gx#stx-pair? _tl6230562407_)
                                (let ((_e6231062410_
                                       (gx#syntax-e _tl6230562407_)))
                                  (let ((_tl6230862417_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6231062410_)))
                                        (_hd6230962414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6231062410_))))
                                    (if (gx#stx-null? _tl6230862417_)
                                        (___match6537065371_
                                         _e6230462390_
                                         _hd6230362394_
                                         _tl6230262397_
                                         _e6230762400_
                                         _hd6230662404_
                                         _tl6230562407_
                                         _e6231062410_
                                         _hd6230962414_
                                         _tl6230862417_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6229862327_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6229862327_)))))
                        (let () (declare (not safe)) (_g6229862327_)))))
                (let () (declare (not safe)) (_g6229862327_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62445_)
      (let* ((___stx6539365394_ _$stx62445_)
             (_g6245062479_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6539365394_))))
        (let ((___kont6539665397_
               (lambda (_L62571_ _L62573_)
                 (let ((__tmp65721 (gx#datum->syntax '#f '##fx=))
                       (__tmp65715
                        (let ((__tmp65717
                               (let ((__tmp65720
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp65718
                                      (let ((__tmp65719
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62571_ '()))))
                                        (declare (not safe))
                                        (cons _L62573_ __tmp65719))))
                                 (declare (not safe))
                                 (cons __tmp65720 __tmp65718)))
                              (__tmp65716
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp65717 __tmp65716))))
                   (declare (not safe))
                   (cons __tmp65721 __tmp65715))))
              (___kont6539865399_
               (lambda (_L62516_ _L62518_)
                 (let ((__tmp65734 (gx#datum->syntax '#f 'let))
                       (__tmp65722
                        (let ((__tmp65732
                               (let ((__tmp65733
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62516_ '()))))
                                 (declare (not safe))
                                 (cons _L62516_ __tmp65733)))
                              (__tmp65723
                               (let ((__tmp65724
                                      (let ((__tmp65731
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp65725
                                             (let ((__tmp65727
                                                    (let ((__tmp65730
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp65728
                                                           (let ((__tmp65729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62516_ '()))))
                     (declare (not safe))
                     (cons _L62518_ __tmp65729))))
              (declare (not safe))
              (cons __tmp65730 __tmp65728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp65726
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp65727 __tmp65726))))
                                        (declare (not safe))
                                        (cons __tmp65731 __tmp65725))))
                                 (declare (not safe))
                                 (cons __tmp65724 '()))))
                          (declare (not safe))
                          (cons __tmp65732 __tmp65723))))
                   (declare (not safe))
                   (cons __tmp65734 __tmp65722)))))
          (let ((___match6542065421_
                 (lambda (_e6245662541_
                          _hd6245562545_
                          _tl6245462548_
                          _e6245962551_
                          _hd6245862555_
                          _tl6245762558_
                          _e6246262561_
                          _hd6246162565_
                          _tl6246062568_)
                   (let ((_L62571_ _hd6246162565_) (_L62573_ _hd6245862555_))
                     (if (or (gx#identifier? _L62571_)
                             (gx#stx-fixnum? _L62571_))
                         (___kont6539665397_ _L62571_ _L62573_)
                         (___kont6539865399_
                          _hd6246162565_
                          _hd6245862555_))))))
            (if (gx#stx-pair? ___stx6539365394_)
                (let ((_e6245662541_ (gx#syntax-e ___stx6539365394_)))
                  (let ((_tl6245462548_
                         (let () (declare (not safe)) (##cdr _e6245662541_)))
                        (_hd6245562545_
                         (let () (declare (not safe)) (##car _e6245662541_))))
                    (if (gx#stx-pair? _tl6245462548_)
                        (let ((_e6245962551_ (gx#syntax-e _tl6245462548_)))
                          (let ((_tl6245762558_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6245962551_)))
                                (_hd6245862555_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6245962551_))))
                            (if (gx#stx-pair? _tl6245762558_)
                                (let ((_e6246262561_
                                       (gx#syntax-e _tl6245762558_)))
                                  (let ((_tl6246062568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6246262561_)))
                                        (_hd6246162565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6246262561_))))
                                    (if (gx#stx-null? _tl6246062568_)
                                        (___match6542065421_
                                         _e6245662541_
                                         _hd6245562545_
                                         _tl6245462548_
                                         _e6245962551_
                                         _hd6245862555_
                                         _tl6245762558_
                                         _e6246262561_
                                         _hd6246162565_
                                         _tl6246062568_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6245062479_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6245062479_)))))
                        (let () (declare (not safe)) (_g6245062479_)))))
                (let () (declare (not safe)) (_g6245062479_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62596_)
      (let* ((_g6259962620_
              (lambda (_g6260062616_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6260062616_)))
             (_g6259862848_
              (lambda (_g6260062624_)
                (if (gx#stx-pair? _g6260062624_)
                    (let ((_e6260562627_ (gx#syntax-e _g6260062624_)))
                      (let ((_hd6260462631_
                             (let ()
                               (declare (not safe))
                               (##car _e6260562627_)))
                            (_tl6260362634_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6260562627_))))
                        (if (gx#stx-pair? _tl6260362634_)
                            (let ((_e6260862637_ (gx#syntax-e _tl6260362634_)))
                              (let ((_hd6260762641_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6260862637_)))
                                    (_tl6260662644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6260862637_))))
                                (if (gx#stx-pair? _hd6260762641_)
                                    (let ((_e6261162647_
                                           (gx#syntax-e _hd6260762641_)))
                                      (let ((_hd6261062651_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6261162647_)))
                                            (_tl6260962654_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6261162647_))))
                                        (if (gx#stx-pair? _tl6260962654_)
                                            (let ((_e6261462657_
                                                   (gx#syntax-e
                                                    _tl6260962654_)))
                                              (let ((_hd6261362661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6261462657_)))
                                                    (_tl6261262664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6261462657_))))
                                                (if (gx#stx-null?
                                                     _tl6261262664_)
                                                    (if (gx#stx-null?
                                                         _tl6260662644_)
                                                        ((lambda (_L62667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62669_)
                   (let* ((_g6268762695_
                           (lambda (_g6268862691_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6268862691_)))
                          (_g6268662844_
                           (lambda (_g6268862699_)
                             ((lambda (_L62702_)
                                (let ()
                                  (let* ((_g6271462722_
                                          (lambda (_g6271562718_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6271562718_)))
                                         (_g6271362840_
                                          (lambda (_g6271562726_)
                                            ((lambda (_L62729_)
                                               (let ()
                                                 (let* ((_g6274262750_
                                                         (lambda (_g6274362746_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6274362746_)))
                                                        (_g6274162836_
                                                         (lambda (_g6274362754_)
                                                           ((lambda (_L62757_)
                                                              (let ()
                                                                (let* ((_g6277062778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6277162774_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6277162774_)))
                               (_g6276962832_
                                (lambda (_g6277162782_)
                                  ((lambda (_L62785_)
                                     (let ()
                                       (let* ((_g6279862806_
                                               (lambda (_g6279962802_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6279962802_)))
                                              (_g6279762828_
                                               (lambda (_g6279962810_)
                                                 ((lambda (_L62813_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp65867
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp65735
                                                               (let ((__tmp65837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp65866 (gx#datum->syntax '#f 'def))
                                    (__tmp65838
                                     (let ((__tmp65839
                                            (let ((__tmp65840
                                                   (let ((__tmp65865
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp65841
                                                          (let ((__tmp65860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65864
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp65861
                                (let ((__tmp65862
                                       (let ((__tmp65863
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62669_ __tmp65863))))
                                  (declare (not safe))
                                  (cons _L62702_ __tmp65862))))
                           (declare (not safe))
                           (cons __tmp65864 __tmp65861)))
                        (__tmp65842
                         (let ((__tmp65843
                                (let ((__tmp65859
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp65844
                                       (let ((__tmp65857
                                              (let ((__tmp65858
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp65858 '())))
                                             (__tmp65845
                                              (let ((__tmp65846
                                                     (let ((__tmp65856
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp65847
                                                            (let ((__tmp65855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65848
                           (let ((__tmp65849
                                  (let ((__tmp65854
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp65850
                                         (let ((__tmp65851
                                                (let ((__tmp65853
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp65852
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62669_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp65853
                                                        __tmp65852))))
                                           (declare (not safe))
                                           (cons __tmp65851 '()))))
                                    (declare (not safe))
                                    (cons __tmp65854 __tmp65850))))
                             (declare (not safe))
                             (cons _L62667_ __tmp65849))))
                      (declare (not safe))
                      (cons __tmp65855 __tmp65848))))
               (declare (not safe))
               (cons __tmp65856 __tmp65847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65846 '()))))
                                         (declare (not safe))
                                         (cons __tmp65857 __tmp65845))))
                                  (declare (not safe))
                                  (cons __tmp65859 __tmp65844))))
                           (declare (not safe))
                           (cons __tmp65843 '()))))
                    (declare (not safe))
                    (cons __tmp65860 __tmp65842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65865
                                                           __tmp65841))))
                                              (declare (not safe))
                                              (cons __tmp65840 '()))))
                                       (declare (not safe))
                                       (cons _L62729_ __tmp65839))))
                                (declare (not safe))
                                (cons __tmp65866 __tmp65838)))
                             (__tmp65736
                              (let ((__tmp65807
                                     (let ((__tmp65836
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp65808
                                            (let ((__tmp65809
                                                   (let ((__tmp65810
                                                          (let ((__tmp65835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp65811
                         (let ((__tmp65830
                                (let ((__tmp65834
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp65831
                                       (let ((__tmp65832
                                              (let ((__tmp65833
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62669_ __tmp65833))))
                                         (declare (not safe))
                                         (cons _L62702_ __tmp65832))))
                                  (declare (not safe))
                                  (cons __tmp65834 __tmp65831)))
                               (__tmp65812
                                (let ((__tmp65813
                                       (let ((__tmp65829
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp65814
                                              (let ((__tmp65827
                                                     (let ((__tmp65828
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp65828 '())))
                                                    (__tmp65815
                                                     (let ((__tmp65816
                                                            (let ((__tmp65826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp65817
                           (let ((__tmp65825 (gx#datum->syntax '#f 'klass))
                                 (__tmp65818
                                  (let ((__tmp65819
                                         (let ((__tmp65824
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp65820
                                                (let ((__tmp65821
                                                       (let ((__tmp65823
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp65822
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62669_ '()))))
                 (declare (not safe))
                 (cons __tmp65823 __tmp65822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65821 '()))))
                                           (declare (not safe))
                                           (cons __tmp65824 __tmp65820))))
                                    (declare (not safe))
                                    (cons _L62667_ __tmp65819))))
                             (declare (not safe))
                             (cons __tmp65825 __tmp65818))))
                      (declare (not safe))
                      (cons __tmp65826 __tmp65817))))
               (declare (not safe))
               (cons __tmp65816 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65827 __tmp65815))))
                                         (declare (not safe))
                                         (cons __tmp65829 __tmp65814))))
                                  (declare (not safe))
                                  (cons __tmp65813 '()))))
                           (declare (not safe))
                           (cons __tmp65830 __tmp65812))))
                    (declare (not safe))
                    (cons __tmp65835 __tmp65811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65810 '()))))
                                              (declare (not safe))
                                              (cons _L62757_ __tmp65809))))
                                       (declare (not safe))
                                       (cons __tmp65836 __tmp65808)))
                                    (__tmp65737
                                     (let ((__tmp65773
                                            (let ((__tmp65806
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp65774
                                                   (let ((__tmp65775
                                                          (let ((__tmp65776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65805
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp65777
                                (let ((__tmp65800
                                       (let ((__tmp65804
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp65801
                                              (let ((__tmp65802
                                                     (let ((__tmp65803
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62669_
                                                             __tmp65803))))
                                                (declare (not safe))
                                                (cons _L62702_ __tmp65802))))
                                         (declare (not safe))
                                         (cons __tmp65804 __tmp65801)))
                                      (__tmp65778
                                       (let ((__tmp65779
                                              (let ((__tmp65799
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp65780
                                                     (let ((__tmp65795
                                                            (let ((__tmp65798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp65796
                           (let ((__tmp65797 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp65797 '()))))
                      (declare (not safe))
                      (cons __tmp65798 __tmp65796)))
                   (__tmp65781
                    (let ((__tmp65782
                           (let ((__tmp65794
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp65783
                                  (let ((__tmp65793
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65784
                                         (let ((__tmp65792
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp65785
                                                (let ((__tmp65786
                                                       (let ((__tmp65791
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp65787
                                                              (let ((__tmp65788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp65790 (gx#datum->syntax '#f 'quote))
                                   (__tmp65789
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62669_ '()))))
                               (declare (not safe))
                               (cons __tmp65790 __tmp65789))))
                        (declare (not safe))
                        (cons __tmp65788 '()))))
                 (declare (not safe))
                 (cons __tmp65791 __tmp65787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62667_ __tmp65786))))
                                           (declare (not safe))
                                           (cons __tmp65792 __tmp65785))))
                                    (declare (not safe))
                                    (cons __tmp65793 __tmp65784))))
                             (declare (not safe))
                             (cons __tmp65794 __tmp65783))))
                      (declare (not safe))
                      (cons __tmp65782 '()))))
               (declare (not safe))
               (cons __tmp65795 __tmp65781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65799 __tmp65780))))
                                         (declare (not safe))
                                         (cons __tmp65779 '()))))
                                  (declare (not safe))
                                  (cons __tmp65800 __tmp65778))))
                           (declare (not safe))
                           (cons __tmp65805 __tmp65777))))
                    (declare (not safe))
                    (cons __tmp65776 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62785_
                                                           __tmp65775))))
                                              (declare (not safe))
                                              (cons __tmp65806 __tmp65774)))
                                           (__tmp65738
                                            (let ((__tmp65739
                                                   (let ((__tmp65772
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp65740
                                                          (let ((__tmp65741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65742
                                (let ((__tmp65771
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp65743
                                       (let ((__tmp65766
                                              (let ((__tmp65770
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp65767
                                                     (let ((__tmp65768
                                                            (let ((__tmp65769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62669_ __tmp65769))))
               (declare (not safe))
               (cons _L62702_ __tmp65768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65770 __tmp65767)))
                                             (__tmp65744
                                              (let ((__tmp65745
                                                     (let ((__tmp65765
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp65746
                                                            (let ((__tmp65761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65764 (gx#datum->syntax '#f 'klass))
                                 (__tmp65762
                                  (let ((__tmp65763
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp65763 '()))))
                             (declare (not safe))
                             (cons __tmp65764 __tmp65762)))
                          (__tmp65747
                           (let ((__tmp65748
                                  (let ((__tmp65760
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp65749
                                         (let ((__tmp65759
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp65750
                                                (let ((__tmp65758
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp65751
                                                       (let ((__tmp65752
                                                              (let ((__tmp65757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp65753
                             (let ((__tmp65754
                                    (let ((__tmp65756
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp65755
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62669_ '()))))
                                      (declare (not safe))
                                      (cons __tmp65756 __tmp65755))))
                               (declare (not safe))
                               (cons __tmp65754 '()))))
                        (declare (not safe))
                        (cons __tmp65757 __tmp65753))))
                 (declare (not safe))
                 (cons _L62667_ __tmp65752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65758
                                                        __tmp65751))))
                                           (declare (not safe))
                                           (cons __tmp65759 __tmp65750))))
                                    (declare (not safe))
                                    (cons __tmp65760 __tmp65749))))
                             (declare (not safe))
                             (cons __tmp65748 '()))))
                      (declare (not safe))
                      (cons __tmp65761 __tmp65747))))
               (declare (not safe))
               (cons __tmp65765 __tmp65746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65745 '()))))
                                         (declare (not safe))
                                         (cons __tmp65766 __tmp65744))))
                                  (declare (not safe))
                                  (cons __tmp65771 __tmp65743))))
                           (declare (not safe))
                           (cons __tmp65742 '()))))
                    (declare (not safe))
                    (cons _L62813_ __tmp65741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65772
                                                           __tmp65740))))
                                              (declare (not safe))
                                              (cons __tmp65739 '()))))
                                       (declare (not safe))
                                       (cons __tmp65773 __tmp65738))))
                                (declare (not safe))
                                (cons __tmp65807 __tmp65737))))
                         (declare (not safe))
                         (cons __tmp65837 __tmp65736))))
                  (declare (not safe))
                  (cons __tmp65867 __tmp65735)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6279962810_))))
                                         (_g6279762828_
                                          (gx#stx-identifier
                                           _L62669_
                                           '"&"
                                           _L62785_)))))
                                   _g6277162782_))))
                          (_g6276962832_
                           (gx#stx-identifier _L62669_ _L62729_ '"-set!")))))
                    _g6274362754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6274162836_
                                                    (gx#stx-identifier
                                                     _L62669_
                                                     '"&"
                                                     _L62729_)))))
                                             _g6271562726_))))
                                    (_g6271362840_
                                     (gx#stx-identifier
                                      _L62669_
                                      '"class-type-"
                                      _L62669_)))))
                              _g6268862699_))))
                     (_g6268662844_ (gx#core-quote-syntax 'class::t))))
                 _hd6261362661_
                 _hd6261062651_)
                (_g6259962620_ _g6260062624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6259962620_
                                                     _g6260062624_))))
                                            (_g6259962620_ _g6260062624_))))
                                    (_g6259962620_ _g6260062624_))))
                            (_g6259962620_ _g6260062624_))))
                    (_g6259962620_ _g6260062624_)))))
        (_g6259862848_ _stx62596_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62852_)
      (let* ((_g6285662885_
              (lambda (_g6285762881_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6285762881_)))
             (_g6285562985_
              (lambda (_g6285762889_)
                (if (gx#stx-pair? _g6285762889_)
                    (let ((_e6286262892_ (gx#syntax-e _g6285762889_)))
                      (let ((_hd6286162896_
                             (let ()
                               (declare (not safe))
                               (##car _e6286262892_)))
                            (_tl6286062899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6286262892_))))
                        (if (gx#stx-pair/null? _tl6286062899_)
                            (let ((_g65868_
                                   (gx#syntax-split-splice _tl6286062899_ '0)))
                              (begin
                                (let ((_g65869_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g65868_)
                                             (##vector-length _g65868_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g65869_ 2)))
                                      (error "Context expects 2 values"
                                             _g65869_)))
                                (let ((_target6286362902_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65868_ 0)))
                                      (_tl6286562905_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65868_ 1))))
                                  (if (gx#stx-null? _tl6286562905_)
                                      (letrec ((_loop6286662908_
                                                (lambda (_hd6286462912_
                                                         _field6287062915_
                                                         _slot6287162917_)
                                                  (if (gx#stx-pair?
                                                       _hd6286462912_)
                                                      (let ((_e6286762920_
                                                             (gx#syntax-e
                                                              _hd6286462912_)))
                                                        (let ((_lp-hd6286862924_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6286762920_)))
                      (_lp-tl6286962927_
                       (let () (declare (not safe)) (##cdr _e6286762920_))))
                  (if (gx#stx-pair? _lp-hd6286862924_)
                      (let ((_e6287662930_ (gx#syntax-e _lp-hd6286862924_)))
                        (let ((_hd6287562934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6287662930_)))
                              (_tl6287462937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6287662930_))))
                          (if (gx#stx-pair? _tl6287462937_)
                              (let ((_e6287962940_
                                     (gx#syntax-e _tl6287462937_)))
                                (let ((_hd6287862944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6287962940_)))
                                      (_tl6287762947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6287962940_))))
                                  (if (gx#stx-null? _tl6287762947_)
                                      (_loop6286662908_
                                       _lp-tl6286962927_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6287862944_
                                               _field6287062915_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6287562934_
                                               _slot6287162917_)))
                                      (_g6285662885_ _g6285762889_))))
                              (_g6285662885_ _g6285762889_))))
                      (_g6285662885_ _g6285762889_))))
              (let ((_field6287262950_ (reverse _field6287062915_))
                    (_slot6287362953_ (reverse _slot6287162917_)))
                ((lambda (_L62956_ _L62958_)
                   (let ((__tmp65877 (gx#datum->syntax '#f 'begin))
                         (__tmp65870
                          (begin
                            (gx#syntax-check-splice-targets _L62956_ _L62958_)
                            (let ((__tmp65871
                                   (lambda (_g6297362977_
                                            _g6297462980_
                                            _g6297562982_)
                                     (let ((__tmp65872
                                            (let ((__tmp65876
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp65873
                                                   (let ((__tmp65874
                                                          (let ((__tmp65875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6297362977_ '()))))
                    (declare (not safe))
                    (cons _g6297462980_ __tmp65875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65874 '()))))
                                              (declare (not safe))
                                              (cons __tmp65876 __tmp65873))))
                                       (declare (not safe))
                                       (cons __tmp65872 _g6297562982_)))))
                              (declare (not safe))
                              (foldr2 __tmp65871 '() _L62956_ _L62958_)))))
                     (declare (not safe))
                     (cons __tmp65877 __tmp65870)))
                 _field6287262950_
                 _slot6287362953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6286662908_
                                         _target6286362902_
                                         '()
                                         '()))
                                      (_g6285662885_ _g6285762889_)))))
                            (_g6285662885_ _g6285762889_))))
                    (_g6285662885_ _g6285762889_)))))
        (_g6285562985_ _$stx62852_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62990_)
      (let* ((_g6299463020_
              (lambda (_g6299563016_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6299563016_)))
             (_g6299363103_
              (lambda (_g6299563024_)
                (if (gx#stx-pair? _g6299563024_)
                    (let ((_e6300263027_ (gx#syntax-e _g6299563024_)))
                      (let ((_hd6300163031_
                             (let ()
                               (declare (not safe))
                               (##car _e6300263027_)))
                            (_tl6300063034_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6300263027_))))
                        (if (gx#stx-pair? _tl6300063034_)
                            (let ((_e6300563037_ (gx#syntax-e _tl6300063034_)))
                              (let ((_hd6300463041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6300563037_)))
                                    (_tl6300363044_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6300563037_))))
                                (if (gx#stx-pair? _tl6300363044_)
                                    (let ((_e6300863047_
                                           (gx#syntax-e _tl6300363044_)))
                                      (let ((_hd6300763051_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6300863047_)))
                                            (_tl6300663054_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6300863047_))))
                                        (if (gx#stx-pair? _tl6300663054_)
                                            (let ((_e6301163057_
                                                   (gx#syntax-e
                                                    _tl6300663054_)))
                                              (let ((_hd6301063061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6301163057_)))
                                                    (_tl6300963064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6301163057_))))
                                                (if (gx#stx-pair?
                                                     _tl6300963064_)
                                                    (let ((_e6301463067_
                                                           (gx#syntax-e
                                                            _tl6300963064_)))
                                                      (let ((_hd6301363071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6301463067_)))
                    (_tl6301263074_
                     (let () (declare (not safe)) (##cdr _e6301463067_))))
                (if (gx#stx-null? _tl6301263074_)
                    ((lambda (_L63077_ _L63079_ _L63080_ _L63081_)
                       (let ((__tmp65924 (gx#datum->syntax '#f 'if))
                             (__tmp65878
                              (let ((__tmp65921
                                     (let ((__tmp65923
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65922
                                            (let ()
                                              (declare (not safe))
                                              (cons _L63081_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65923 __tmp65922)))
                                    (__tmp65879
                                     (let ((__tmp65884
                                            (let ((__tmp65920
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp65885
                                                   (let ((__tmp65914
                                                          (let ((__tmp65919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65915
                         (let ((__tmp65916
                                (let ((__tmp65918
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65917
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63081_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65918 __tmp65917))))
                           (declare (not safe))
                           (cons __tmp65916 '()))))
                    (declare (not safe))
                    (cons __tmp65919 __tmp65915)))
                 (__tmp65886
                  (let ((__tmp65887
                         (let ((__tmp65913 (gx#datum->syntax '#f 'cond))
                               (__tmp65888
                                (let ((__tmp65896
                                       (let ((__tmp65900
                                              (let ((__tmp65912
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65901
                                                     (let ((__tmp65908
                                                            (let ((__tmp65911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65909
                           (let ((__tmp65910 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65910 '()))))
                      (declare (not safe))
                      (cons __tmp65911 __tmp65909)))
                   (__tmp65902
                    (let ((__tmp65903
                           (let ((__tmp65907
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65904
                                  (let ((__tmp65906
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65905
                                         (let ()
                                           (declare (not safe))
                                           (cons _L63080_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65906 __tmp65905))))
                             (declare (not safe))
                             (cons __tmp65907 __tmp65904))))
                      (declare (not safe))
                      (cons __tmp65903 '()))))
               (declare (not safe))
               (cons __tmp65908 __tmp65902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65912 __tmp65901)))
                                             (__tmp65897
                                              (let ((__tmp65899
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65898
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63079_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65899 __tmp65898))))
                                         (declare (not safe))
                                         (cons __tmp65900 __tmp65897)))
                                      (__tmp65889
                                       (let ((__tmp65890
                                              (let ((__tmp65895
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65891
                                                     (let ((__tmp65892
                                                            (let ((__tmp65893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65894
                                  (let ()
                                    (declare (not safe))
                                    (cons _L63080_ '()))))
                             (declare (not safe))
                             (cons _L63081_ __tmp65894))))
                      (declare (not safe))
                      (cons _L63077_ __tmp65893))))
               (declare (not safe))
               (cons __tmp65892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65895 __tmp65891))))
                                         (declare (not safe))
                                         (cons __tmp65890 '()))))
                                  (declare (not safe))
                                  (cons __tmp65896 __tmp65889))))
                           (declare (not safe))
                           (cons __tmp65913 __tmp65888))))
                    (declare (not safe))
                    (cons __tmp65887 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65914
                                                           __tmp65886))))
                                              (declare (not safe))
                                              (cons __tmp65920 __tmp65885)))
                                           (__tmp65880
                                            (let ((__tmp65881
                                                   (let ((__tmp65882
                                                          (let ((__tmp65883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L63080_ '()))))
                    (declare (not safe))
                    (cons _L63081_ __tmp65883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63077_
                                                           __tmp65882))))
                                              (declare (not safe))
                                              (cons __tmp65881 '()))))
                                       (declare (not safe))
                                       (cons __tmp65884 __tmp65880))))
                                (declare (not safe))
                                (cons __tmp65921 __tmp65879))))
                         (declare (not safe))
                         (cons __tmp65924 __tmp65878)))
                     _hd6301363071_
                     _hd6301063061_
                     _hd6300763051_
                     _hd6300463041_)
                    (_g6299463020_ _g6299563024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6299463020_
                                                     _g6299563024_))))
                                            (_g6299463020_ _g6299563024_))))
                                    (_g6299463020_ _g6299563024_))))
                            (_g6299463020_ _g6299563024_))))
                    (_g6299463020_ _g6299563024_)))))
        (_g6299363103_ _$stx62990_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx63107_)
      (let* ((_g6311163140_
              (lambda (_g6311263136_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6311263136_)))
             (_g6311063240_
              (lambda (_g6311263144_)
                (if (gx#stx-pair? _g6311263144_)
                    (let ((_e6311763147_ (gx#syntax-e _g6311263144_)))
                      (let ((_hd6311663151_
                             (let ()
                               (declare (not safe))
                               (##car _e6311763147_)))
                            (_tl6311563154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6311763147_))))
                        (if (gx#stx-pair/null? _tl6311563154_)
                            (let ((_g65925_
                                   (gx#syntax-split-splice _tl6311563154_ '0)))
                              (begin
                                (let ((_g65926_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g65925_)
                                             (##vector-length _g65925_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g65926_ 2)))
                                      (error "Context expects 2 values"
                                             _g65926_)))
                                (let ((_target6311863157_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65925_ 0)))
                                      (_tl6312063160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g65925_ 1))))
                                  (if (gx#stx-null? _tl6312063160_)
                                      (letrec ((_loop6312163163_
                                                (lambda (_hd6311963167_
                                                         _name6312563170_
                                                         _t6312663172_)
                                                  (if (gx#stx-pair?
                                                       _hd6311963167_)
                                                      (let ((_e6312263175_
                                                             (gx#syntax-e
                                                              _hd6311963167_)))
                                                        (let ((_lp-hd6312363179_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6312263175_)))
                      (_lp-tl6312463182_
                       (let () (declare (not safe)) (##cdr _e6312263175_))))
                  (if (gx#stx-pair? _lp-hd6312363179_)
                      (let ((_e6313163185_ (gx#syntax-e _lp-hd6312363179_)))
                        (let ((_hd6313063189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6313163185_)))
                              (_tl6312963192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6313163185_))))
                          (if (gx#stx-pair? _tl6312963192_)
                              (let ((_e6313463195_
                                     (gx#syntax-e _tl6312963192_)))
                                (let ((_hd6313363199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6313463195_)))
                                      (_tl6313263202_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6313463195_))))
                                  (if (gx#stx-null? _tl6313263202_)
                                      (_loop6312163163_
                                       _lp-tl6312463182_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6313363199_
                                               _name6312563170_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6313063189_ _t6312663172_)))
                                      (_g6311163140_ _g6311263144_))))
                              (_g6311163140_ _g6311263144_))))
                      (_g6311163140_ _g6311263144_))))
              (let ((_name6312763205_ (reverse _name6312563170_))
                    (_t6312863208_ (reverse _t6312663172_)))
                ((lambda (_L63211_ _L63213_)
                   (let ((__tmp65938 (gx#datum->syntax '#f 'begin))
                         (__tmp65927
                          (begin
                            (gx#syntax-check-splice-targets _L63211_ _L63213_)
                            (let ((__tmp65928
                                   (lambda (_g6322863232_
                                            _g6322963235_
                                            _g6323063237_)
                                     (let ((__tmp65929
                                            (let ((__tmp65937
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-set!))
                                                  (__tmp65930
                                                   (let ((__tmp65936
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__subtype-id))
                                                         (__tmp65931
                                                          (let ((__tmp65932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp65933
                                (let ((__tmp65935
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp65934
                                       (let ()
                                         (declare (not safe))
                                         (cons _g6322863232_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65935 __tmp65934))))
                           (declare (not safe))
                           (cons __tmp65933 '()))))
                    (declare (not safe))
                    (cons _g6322963235_ __tmp65932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65936
                                                           __tmp65931))))
                                              (declare (not safe))
                                              (cons __tmp65937 __tmp65930))))
                                       (declare (not safe))
                                       (cons __tmp65929 _g6323063237_)))))
                              (declare (not safe))
                              (foldr2 __tmp65928 '() _L63211_ _L63213_)))))
                     (declare (not safe))
                     (cons __tmp65938 __tmp65927)))
                 _name6312763205_
                 _t6312863208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6312163163_
                                         _target6311863157_
                                         '()
                                         '()))
                                      (_g6311163140_ _g6311263144_)))))
                            (_g6311163140_ _g6311263144_))))
                    (_g6311163140_ _g6311263144_)))))
        (_g6311063240_ _$stx63107_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx63245_)
      (let* ((_g6324963280_
              (lambda (_g6325063276_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6325063276_)))
             (_g6324863399_
              (lambda (_g6325063284_)
                (if (gx#stx-pair? _g6325063284_)
                    (let ((_e6325663287_ (gx#syntax-e _g6325063284_)))
                      (let ((_hd6325563291_
                             (let ()
                               (declare (not safe))
                               (##car _e6325663287_)))
                            (_tl6325463294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6325663287_))))
                        (if (gx#stx-pair? _tl6325463294_)
                            (let ((_e6325963297_ (gx#syntax-e _tl6325463294_)))
                              (let ((_hd6325863301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325963297_)))
                                    (_tl6325763304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325963297_))))
                                (if (gx#stx-pair? _tl6325763304_)
                                    (let ((_e6326263307_
                                           (gx#syntax-e _tl6325763304_)))
                                      (let ((_hd6326163311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6326263307_)))
                                            (_tl6326063314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6326263307_))))
                                        (if (gx#stx-pair? _tl6326063314_)
                                            (let ((_e6326563317_
                                                   (gx#syntax-e
                                                    _tl6326063314_)))
                                              (let ((_hd6326463321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6326563317_)))
                                                    (_tl6326363324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6326563317_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6326463321_)
                                                    (let ((_g65939_
                                                           (gx#syntax-split-splice
                                                            _hd6326463321_
                                                            '0)))
                                                      (begin
                                                        (let ((_g65940_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g65939_)
                             (##vector-length _g65939_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g65940_ 2)))
                      (error "Context expects 2 values" _g65940_)))
                (let ((_target6326663327_
                       (let () (declare (not safe)) (##vector-ref _g65939_ 0)))
                      (_tl6326863330_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g65939_ 1))))
                  (if (gx#stx-null? _tl6326863330_)
                      (letrec ((_loop6326963333_
                                (lambda (_hd6326763337_ _super6327363340_)
                                  (if (gx#stx-pair? _hd6326763337_)
                                      (let ((_e6327063343_
                                             (gx#syntax-e _hd6326763337_)))
                                        (let ((_lp-hd6327163347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6327063343_)))
                                              (_lp-tl6327263350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6327063343_))))
                                          (_loop6326963333_
                                           _lp-tl6327263350_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd6327163347_
                                                   _super6327363340_)))))
                                      (let ((_super6327463353_
                                             (reverse _super6327363340_)))
                                        (if (gx#stx-null? _tl6326363324_)
                                            ((lambda (_L63357_
                                                      _L63359_
                                                      _L63360_)
                                               (let ((__tmp65964
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp65941
                                                      (let ((__tmp65942
                                                             (let ((__tmp65943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp65963
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp65944
                                   (let ((__tmp65957
                                          (let ((__tmp65962
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp65958
                                                 (let ((__tmp65959
                                                        (let ((__tmp65960
                                                               (let ((__tmp65961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6338463387_ _g6338563390_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6338463387_ _g6338563390_)))))
                         (declare (not safe))
                         (foldr1 __tmp65961 '() _L63357_))))
                  (declare (not safe))
                  (cons __tmp65960 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63359_
                                                         __tmp65959))))
                                            (declare (not safe))
                                            (cons __tmp65962 __tmp65958)))
                                         (__tmp65945
                                          (let ((__tmp65946
                                                 (let ((__tmp65956
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__make-system-class))
                                                       (__tmp65947
                                                        (let ((__tmp65953
                                                               (let ((__tmp65955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp65954
                              (let ()
                                (declare (not safe))
                                (cons _L63359_ '()))))
                         (declare (not safe))
                         (cons __tmp65955 __tmp65954)))
                      (__tmp65948
                       (let ((__tmp65949
                              (let ((__tmp65952 (gx#datum->syntax '#f '@list))
                                    (__tmp65950
                                     (let ((__tmp65951
                                            (lambda (_g6338263393_
                                                     _g6338363396_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g6338263393_
                                                      _g6338363396_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp65951 '() _L63357_))))
                                (declare (not safe))
                                (cons __tmp65952 __tmp65950))))
                         (declare (not safe))
                         (cons __tmp65949 '()))))
                  (declare (not safe))
                  (cons __tmp65953 __tmp65948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp65956
                                                         __tmp65947))))
                                            (declare (not safe))
                                            (cons __tmp65946 '()))))
                                     (declare (not safe))
                                     (cons __tmp65957 __tmp65945))))
                              (declare (not safe))
                              (cons __tmp65963 __tmp65944))))
                       (declare (not safe))
                       (cons __tmp65943 '()))))
                (declare (not safe))
                (cons _L63360_ __tmp65942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp65964 __tmp65941)))
                                             _super6327463353_
                                             _hd6326163311_
                                             _hd6325863301_)
                                            (_g6324963280_ _g6325063284_)))))))
                        (_loop6326963333_ _target6326663327_ '()))
                      (_g6324963280_ _g6325063284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6324963280_
                                                     _g6325063284_))))
                                            (_g6324963280_ _g6325063284_))))
                                    (_g6324963280_ _g6325063284_))))
                            (_g6324963280_ _g6325063284_))))
                    (_g6324963280_ _g6325063284_)))))
        (_g6324863399_ _$stx63245_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx63404_)
      (let* ((_g6340863439_
              (lambda (_g6340963435_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6340963435_)))
             (_g6340763550_
              (lambda (_g6340963443_)
                (if (gx#stx-pair? _g6340963443_)
                    (let ((_e6341563446_ (gx#syntax-e _g6340963443_)))
                      (let ((_hd6341463450_
                             (let ()
                               (declare (not safe))
                               (##car _e6341563446_)))
                            (_tl6341363453_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6341563446_))))
                        (if (gx#stx-pair? _tl6341363453_)
                            (let ((_e6341863456_ (gx#syntax-e _tl6341363453_)))
                              (let ((_hd6341763460_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6341863456_)))
                                    (_tl6341663463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6341863456_))))
                                (if (gx#stx-pair? _tl6341663463_)
                                    (let ((_e6342163466_
                                           (gx#syntax-e _tl6341663463_)))
                                      (let ((_hd6342063470_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6342163466_)))
                                            (_tl6341963473_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6342163466_))))
                                        (if (gx#stx-pair/null? _hd6342063470_)
                                            (let ((_g65965_
                                                   (gx#syntax-split-splice
                                                    _hd6342063470_
                                                    '0)))
                                              (begin
                                                (let ((_g65966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g65965_)
                                                             (##vector-length
                                                              _g65965_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g65966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g65966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6342263476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g65965_
                                                          0)))
                                                      (_tl6342463479_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g65965_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6342463479_)
                                                      (letrec ((_loop6342563482_
                                                                (lambda (_hd6342363486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6342963489_)
                          (if (gx#stx-pair? _hd6342363486_)
                              (let ((_e6342663492_
                                     (gx#syntax-e _hd6342363486_)))
                                (let ((_lp-hd6342763496_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6342663492_)))
                                      (_lp-tl6342863499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6342663492_))))
                                  (_loop6342563482_
                                   _lp-tl6342863499_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd6342763496_
                                           _super6342963489_)))))
                              (let ((_super6343063502_
                                     (reverse _super6342963489_)))
                                (if (gx#stx-pair? _tl6341963473_)
                                    (let ((_e6343363506_
                                           (gx#syntax-e _tl6341963473_)))
                                      (let ((_hd6343263510_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6343363506_)))
                                            (_tl6343163513_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6343363506_))))
                                        (if (gx#stx-null? _tl6343163513_)
                                            ((lambda (_L63516_
                                                      _L63518_
                                                      _L63519_)
                                               (let ((__tmp65982
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp65967
                                                      (let ((__tmp65968
                                                             (let ((__tmp65969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp65981
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp65970
                                   (let ((__tmp65975
                                          (let ((__tmp65980
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.system))
                                                (__tmp65976
                                                 (let ((__tmp65977
                                                        (let ((__tmp65978
                                                               (let ((__tmp65979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g6354163544_ _g6354263547_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g6354163544_ _g6354263547_)))))
                         (declare (not safe))
                         (foldr1 __tmp65979 '() _L63518_))))
                  (declare (not safe))
                  (cons __tmp65978 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63519_
                                                         __tmp65977))))
                                            (declare (not safe))
                                            (cons __tmp65980 __tmp65976)))
                                         (__tmp65971
                                          (let ((__tmp65972
                                                 (let ((__tmp65974
                                                        (gx#datum->syntax
                                                         '#f
                                                         '__shadow-class))
                                                       (__tmp65973
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63516_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp65974
                                                         __tmp65973))))
                                            (declare (not safe))
                                            (cons __tmp65972 '()))))
                                     (declare (not safe))
                                     (cons __tmp65975 __tmp65971))))
                              (declare (not safe))
                              (cons __tmp65981 __tmp65970))))
                       (declare (not safe))
                       (cons __tmp65969 '()))))
                (declare (not safe))
                (cons _L63519_ __tmp65968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp65982 __tmp65967)))
                                             _hd6343263510_
                                             _super6343063502_
                                             _hd6341763460_)
                                            (_g6340863439_ _g6340963443_))))
                                    (_g6340863439_ _g6340963443_)))))))
                (_loop6342563482_ _target6342263476_ '()))
              (_g6340863439_ _g6340963443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6340863439_ _g6340963443_))))
                                    (_g6340863439_ _g6340963443_))))
                            (_g6340863439_ _g6340963443_))))
                    (_g6340863439_ _g6340963443_)))))
        (_g6340763550_ _$stx63404_)))))
