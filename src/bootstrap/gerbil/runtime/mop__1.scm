(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83666_)
      (let* ((_g8367083688_
              (lambda (_g8367183684_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8367183684_)))
             (_g8366983744_
              (lambda (_g8367183692_)
                (if (gx#stx-pair? _g8367183692_)
                    (let ((_e8367683695_ (gx#syntax-e _g8367183692_)))
                      (let ((_hd8367583699_
                             (let ()
                               (declare (not safe))
                               (##car _e8367683695_)))
                            (_tl8367483702_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8367683695_))))
                        (if (gx#stx-pair? _tl8367483702_)
                            (let ((_e8367983705_ (gx#syntax-e _tl8367483702_)))
                              (let ((_hd8367883709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8367983705_)))
                                    (_tl8367783712_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8367983705_))))
                                (if (gx#stx-pair? _tl8367783712_)
                                    (let ((_e8368283715_
                                           (gx#syntax-e _tl8367783712_)))
                                      (let ((_hd8368183719_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8368283715_)))
                                            (_tl8368083722_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8368283715_))))
                                        (if (gx#stx-null? _tl8368083722_)
                                            ((lambda (_L83725_ _L83727_)
                                               (let ((__tmp89740
                                                      (gx#datum->syntax
                                                       '#f
                                                       'let))
                                                     (__tmp89728
                                                      (let ((__tmp89738
                                                             (let ((__tmp89739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons _L83725_ '()))))
                       (declare (not safe))
                       (cons _L83725_ __tmp89739)))
                    (__tmp89729
                     (let ((__tmp89730
                            (let ((__tmp89737 (gx#datum->syntax '#f '##fx=))
                                  (__tmp89731
                                   (let ((__tmp89733
                                          (let ((__tmp89736
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fxand))
                                                (__tmp89734
                                                 (let ((__tmp89735
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L83725_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _L83727_
                                                         __tmp89735))))
                                            (declare (not safe))
                                            (cons __tmp89736 __tmp89734)))
                                         (__tmp89732
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83725_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89733 __tmp89732))))
                              (declare (not safe))
                              (cons __tmp89737 __tmp89731))))
                       (declare (not safe))
                       (cons __tmp89730 '()))))
                (declare (not safe))
                (cons __tmp89738 __tmp89729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp89740 __tmp89728)))
                                             _hd8368183719_
                                             _hd8367883709_)
                                            (_g8367083688_ _g8367183692_))))
                                    (_g8367083688_ _g8367183692_))))
                            (_g8367083688_ _g8367183692_))))
                    (_g8367083688_ _g8367183692_)))))
        (_g8366983744_ _$stx83666_))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx83748_)
      (let* ((_g8375283770_
              (lambda (_g8375383766_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8375383766_)))
             (_g8375183825_
              (lambda (_g8375383774_)
                (if (gx#stx-pair? _g8375383774_)
                    (let ((_e8375883777_ (gx#syntax-e _g8375383774_)))
                      (let ((_hd8375783781_
                             (let ()
                               (declare (not safe))
                               (##car _e8375883777_)))
                            (_tl8375683784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8375883777_))))
                        (if (gx#stx-pair? _tl8375683784_)
                            (let ((_e8376183787_ (gx#syntax-e _tl8375683784_)))
                              (let ((_hd8376083791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8376183787_)))
                                    (_tl8375983794_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8376183787_))))
                                (if (gx#stx-pair? _tl8375983794_)
                                    (let ((_e8376483797_
                                           (gx#syntax-e _tl8375983794_)))
                                      (let ((_hd8376383801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8376483797_)))
                                            (_tl8376283804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8376483797_))))
                                        (if (gx#stx-null? _tl8376283804_)
                                            ((lambda (_L83807_ _L83809_)
                                               (let ((__tmp89753
                                                      (gx#datum->syntax
                                                       '#f
                                                       'let))
                                                     (__tmp89741
                                                      (let ((__tmp89751
                                                             (let ((__tmp89752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons _L83807_ '()))))
                       (declare (not safe))
                       (cons _L83807_ __tmp89752)))
                    (__tmp89742
                     (let ((__tmp89743
                            (let ((__tmp89750 (gx#datum->syntax '#f '##fx=))
                                  (__tmp89744
                                   (let ((__tmp89746
                                          (let ((__tmp89749
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fxand))
                                                (__tmp89747
                                                 (let ((__tmp89748
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L83807_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _L83809_
                                                         __tmp89748))))
                                            (declare (not safe))
                                            (cons __tmp89749 __tmp89747)))
                                         (__tmp89745
                                          (let ()
                                            (declare (not safe))
                                            (cons '0 '()))))
                                     (declare (not safe))
                                     (cons __tmp89746 __tmp89745))))
                              (declare (not safe))
                              (cons __tmp89750 __tmp89744))))
                       (declare (not safe))
                       (cons __tmp89743 '()))))
                (declare (not safe))
                (cons __tmp89751 __tmp89742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp89753 __tmp89741)))
                                             _hd8376383801_
                                             _hd8376083791_)
                                            (_g8375283770_ _g8375383774_))))
                                    (_g8375283770_ _g8375383774_))))
                            (_g8375283770_ _g8375383774_))))
                    (_g8375283770_ _g8375383774_)))))
        (_g8375183825_ _$stx83748_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx83829_)
      (let* ((_g8383383859_
              (lambda (_g8383483855_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8383483855_)))
             (_g8383283942_
              (lambda (_g8383483863_)
                (if (gx#stx-pair? _g8383483863_)
                    (let ((_e8384183866_ (gx#syntax-e _g8383483863_)))
                      (let ((_hd8384083870_
                             (let ()
                               (declare (not safe))
                               (##car _e8384183866_)))
                            (_tl8383983873_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8384183866_))))
                        (if (gx#stx-pair? _tl8383983873_)
                            (let ((_e8384483876_ (gx#syntax-e _tl8383983873_)))
                              (let ((_hd8384383880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8384483876_)))
                                    (_tl8384283883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8384483876_))))
                                (if (gx#stx-pair? _tl8384283883_)
                                    (let ((_e8384783886_
                                           (gx#syntax-e _tl8384283883_)))
                                      (let ((_hd8384683890_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8384783886_)))
                                            (_tl8384583893_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8384783886_))))
                                        (if (gx#stx-pair? _tl8384583893_)
                                            (let ((_e8385083896_
                                                   (gx#syntax-e
                                                    _tl8384583893_)))
                                              (let ((_hd8384983900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8385083896_)))
                                                    (_tl8384883903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8385083896_))))
                                                (if (gx#stx-pair?
                                                     _tl8384883903_)
                                                    (let ((_e8385383906_
                                                           (gx#syntax-e
                                                            _tl8384883903_)))
                                                      (let ((_hd8385283910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8385383906_)))
                    (_tl8385183913_
                     (let () (declare (not safe)) (##cdr _e8385383906_))))
                (if (gx#stx-null? _tl8385183913_)
                    ((lambda (_L83916_ _L83918_ _L83919_ _L83920_)
                       (let ((__tmp89800 (gx#datum->syntax '#f 'if))
                             (__tmp89754
                              (let ((__tmp89797
                                     (let ((__tmp89799
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89798
                                            (let ()
                                              (declare (not safe))
                                              (cons _L83920_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89799 __tmp89798)))
                                    (__tmp89755
                                     (let ((__tmp89760
                                            (let ((__tmp89796
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89761
                                                   (let ((__tmp89790
                                                          (let ((__tmp89795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89791
                         (let ((__tmp89792
                                (let ((__tmp89794
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89793
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83920_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89794 __tmp89793))))
                           (declare (not safe))
                           (cons __tmp89792 '()))))
                    (declare (not safe))
                    (cons __tmp89795 __tmp89791)))
                 (__tmp89762
                  (let ((__tmp89763
                         (let ((__tmp89789 (gx#datum->syntax '#f 'cond))
                               (__tmp89764
                                (let ((__tmp89772
                                       (let ((__tmp89776
                                              (let ((__tmp89788
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89777
                                                     (let ((__tmp89784
                                                            (let ((__tmp89787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89785
                           (let ((__tmp89786 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89786 '()))))
                      (declare (not safe))
                      (cons __tmp89787 __tmp89785)))
                   (__tmp89778
                    (let ((__tmp89779
                           (let ((__tmp89783
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89780
                                  (let ((__tmp89782
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89781
                                         (let ()
                                           (declare (not safe))
                                           (cons _L83919_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89782 __tmp89781))))
                             (declare (not safe))
                             (cons __tmp89783 __tmp89780))))
                      (declare (not safe))
                      (cons __tmp89779 '()))))
               (declare (not safe))
               (cons __tmp89784 __tmp89778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89788 __tmp89777)))
                                             (__tmp89773
                                              (let ((__tmp89775
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89774
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L83918_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89775 __tmp89774))))
                                         (declare (not safe))
                                         (cons __tmp89776 __tmp89773)))
                                      (__tmp89765
                                       (let ((__tmp89766
                                              (let ((__tmp89771
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89767
                                                     (let ((__tmp89768
                                                            (let ((__tmp89769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89770
                                  (let ()
                                    (declare (not safe))
                                    (cons _L83919_ '()))))
                             (declare (not safe))
                             (cons _L83920_ __tmp89770))))
                      (declare (not safe))
                      (cons _L83916_ __tmp89769))))
               (declare (not safe))
               (cons __tmp89768 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89771 __tmp89767))))
                                         (declare (not safe))
                                         (cons __tmp89766 '()))))
                                  (declare (not safe))
                                  (cons __tmp89772 __tmp89765))))
                           (declare (not safe))
                           (cons __tmp89789 __tmp89764))))
                    (declare (not safe))
                    (cons __tmp89763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89790
                                                           __tmp89762))))
                                              (declare (not safe))
                                              (cons __tmp89796 __tmp89761)))
                                           (__tmp89756
                                            (let ((__tmp89757
                                                   (let ((__tmp89758
                                                          (let ((__tmp89759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L83919_ '()))))
                    (declare (not safe))
                    (cons _L83920_ __tmp89759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83916_
                                                           __tmp89758))))
                                              (declare (not safe))
                                              (cons __tmp89757 '()))))
                                       (declare (not safe))
                                       (cons __tmp89760 __tmp89756))))
                                (declare (not safe))
                                (cons __tmp89797 __tmp89755))))
                         (declare (not safe))
                         (cons __tmp89800 __tmp89754)))
                     _hd8385283910_
                     _hd8384983900_
                     _hd8384683890_
                     _hd8384383880_)
                    (_g8383383859_ _g8383483863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8383383859_
                                                     _g8383483863_))))
                                            (_g8383383859_ _g8383483863_))))
                                    (_g8383383859_ _g8383483863_))))
                            (_g8383383859_ _g8383483863_))))
                    (_g8383383859_ _g8383483863_)))))
        (_g8383283942_ _$stx83829_)))))
