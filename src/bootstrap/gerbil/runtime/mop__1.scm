(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83383_)
      (let* ((___stx8948289483_ _$stx83383_)
             (_g8338883417_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8948289483_))))
        (let ((___kont8948589486_
               (lambda (_L83510_ _L83512_)
                 (let ((__tmp89744 (gx#datum->syntax '#f '##fx=))
                       (__tmp89738
                        (let ((__tmp89740
                               (let ((__tmp89743
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89741
                                      (let ((__tmp89742
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83510_ '()))))
                                        (declare (not safe))
                                        (cons _L83512_ __tmp89742))))
                                 (declare (not safe))
                                 (cons __tmp89743 __tmp89741)))
                              (__tmp89739
                               (let ()
                                 (declare (not safe))
                                 (cons _L83510_ '()))))
                          (declare (not safe))
                          (cons __tmp89740 __tmp89739))))
                   (declare (not safe))
                   (cons __tmp89744 __tmp89738))))
              (___kont8948789488_
               (lambda (_L83454_ _L83456_)
                 (let ((__tmp89757 (gx#datum->syntax '#f 'let))
                       (__tmp89745
                        (let ((__tmp89755
                               (let ((__tmp89756
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83454_ '()))))
                                 (declare (not safe))
                                 (cons _L83454_ __tmp89756)))
                              (__tmp89746
                               (let ((__tmp89747
                                      (let ((__tmp89754
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89748
                                             (let ((__tmp89750
                                                    (let ((__tmp89753
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89751
                                                           (let ((__tmp89752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83454_ '()))))
                     (declare (not safe))
                     (cons _L83456_ __tmp89752))))
              (declare (not safe))
              (cons __tmp89753 __tmp89751)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89749
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L83454_ '()))))
                                               (declare (not safe))
                                               (cons __tmp89750 __tmp89749))))
                                        (declare (not safe))
                                        (cons __tmp89754 __tmp89748))))
                                 (declare (not safe))
                                 (cons __tmp89747 '()))))
                          (declare (not safe))
                          (cons __tmp89755 __tmp89746))))
                   (declare (not safe))
                   (cons __tmp89757 __tmp89745)))))
          (let ((___match8950989510_
                 (lambda (_e8339483480_
                          _hd8339383484_
                          _tl8339283487_
                          _e8339783490_
                          _hd8339683494_
                          _tl8339583497_
                          _e8340083500_
                          _hd8339983504_
                          _tl8339883507_)
                   (let ((_L83510_ _hd8339983504_) (_L83512_ _hd8339683494_))
                     (if (or (gx#identifier? _L83510_)
                             (gx#stx-fixnum? _L83510_))
                         (___kont8948589486_ _L83510_ _L83512_)
                         (___kont8948789488_
                          _hd8339983504_
                          _hd8339683494_))))))
            (if (gx#stx-pair? ___stx8948289483_)
                (let ((_e8339483480_ (gx#syntax-e ___stx8948289483_)))
                  (let ((_tl8339283487_
                         (let () (declare (not safe)) (##cdr _e8339483480_)))
                        (_hd8339383484_
                         (let () (declare (not safe)) (##car _e8339483480_))))
                    (if (gx#stx-pair? _tl8339283487_)
                        (let ((_e8339783490_ (gx#syntax-e _tl8339283487_)))
                          (let ((_tl8339583497_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8339783490_)))
                                (_hd8339683494_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8339783490_))))
                            (if (gx#stx-pair? _tl8339583497_)
                                (let ((_e8340083500_
                                       (gx#syntax-e _tl8339583497_)))
                                  (let ((_tl8339883507_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8340083500_)))
                                        (_hd8339983504_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8340083500_))))
                                    (if (gx#stx-null? _tl8339883507_)
                                        (___match8950989510_
                                         _e8339483480_
                                         _hd8339383484_
                                         _tl8339283487_
                                         _e8339783490_
                                         _hd8339683494_
                                         _tl8339583497_
                                         _e8340083500_
                                         _hd8339983504_
                                         _tl8339883507_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8338883417_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8338883417_)))))
                        (let () (declare (not safe)) (_g8338883417_)))))
                (let () (declare (not safe)) (_g8338883417_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx83535_)
      (let* ((___stx8953289533_ _$stx83535_)
             (_g8354083569_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8953289533_))))
        (let ((___kont8953589536_
               (lambda (_L83661_ _L83663_)
                 (let ((__tmp89764 (gx#datum->syntax '#f '##fx=))
                       (__tmp89758
                        (let ((__tmp89760
                               (let ((__tmp89763
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89761
                                      (let ((__tmp89762
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83661_ '()))))
                                        (declare (not safe))
                                        (cons _L83663_ __tmp89762))))
                                 (declare (not safe))
                                 (cons __tmp89763 __tmp89761)))
                              (__tmp89759
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp89760 __tmp89759))))
                   (declare (not safe))
                   (cons __tmp89764 __tmp89758))))
              (___kont8953789538_
               (lambda (_L83606_ _L83608_)
                 (let ((__tmp89777 (gx#datum->syntax '#f 'let))
                       (__tmp89765
                        (let ((__tmp89775
                               (let ((__tmp89776
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83606_ '()))))
                                 (declare (not safe))
                                 (cons _L83606_ __tmp89776)))
                              (__tmp89766
                               (let ((__tmp89767
                                      (let ((__tmp89774
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89768
                                             (let ((__tmp89770
                                                    (let ((__tmp89773
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89771
                                                           (let ((__tmp89772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83606_ '()))))
                     (declare (not safe))
                     (cons _L83608_ __tmp89772))))
              (declare (not safe))
              (cons __tmp89773 __tmp89771)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89769
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp89770 __tmp89769))))
                                        (declare (not safe))
                                        (cons __tmp89774 __tmp89768))))
                                 (declare (not safe))
                                 (cons __tmp89767 '()))))
                          (declare (not safe))
                          (cons __tmp89775 __tmp89766))))
                   (declare (not safe))
                   (cons __tmp89777 __tmp89765)))))
          (let ((___match8955989560_
                 (lambda (_e8354683631_
                          _hd8354583635_
                          _tl8354483638_
                          _e8354983641_
                          _hd8354883645_
                          _tl8354783648_
                          _e8355283651_
                          _hd8355183655_
                          _tl8355083658_)
                   (let ((_L83661_ _hd8355183655_) (_L83663_ _hd8354883645_))
                     (if (or (gx#identifier? _L83661_)
                             (gx#stx-fixnum? _L83661_))
                         (___kont8953589536_ _L83661_ _L83663_)
                         (___kont8953789538_
                          _hd8355183655_
                          _hd8354883645_))))))
            (if (gx#stx-pair? ___stx8953289533_)
                (let ((_e8354683631_ (gx#syntax-e ___stx8953289533_)))
                  (let ((_tl8354483638_
                         (let () (declare (not safe)) (##cdr _e8354683631_)))
                        (_hd8354583635_
                         (let () (declare (not safe)) (##car _e8354683631_))))
                    (if (gx#stx-pair? _tl8354483638_)
                        (let ((_e8354983641_ (gx#syntax-e _tl8354483638_)))
                          (let ((_tl8354783648_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8354983641_)))
                                (_hd8354883645_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8354983641_))))
                            (if (gx#stx-pair? _tl8354783648_)
                                (let ((_e8355283651_
                                       (gx#syntax-e _tl8354783648_)))
                                  (let ((_tl8355083658_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8355283651_)))
                                        (_hd8355183655_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8355283651_))))
                                    (if (gx#stx-null? _tl8355083658_)
                                        (___match8955989560_
                                         _e8354683631_
                                         _hd8354583635_
                                         _tl8354483638_
                                         _e8354983641_
                                         _hd8354883645_
                                         _tl8354783648_
                                         _e8355283651_
                                         _hd8355183655_
                                         _tl8355083658_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8354083569_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8354083569_)))))
                        (let () (declare (not safe)) (_g8354083569_)))))
                (let () (declare (not safe)) (_g8354083569_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx83686_)
      (let* ((_g8368983710_
              (lambda (_g8369083706_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8369083706_)))
             (_g8368883938_
              (lambda (_g8369083714_)
                (if (gx#stx-pair? _g8369083714_)
                    (let ((_e8369583717_ (gx#syntax-e _g8369083714_)))
                      (let ((_hd8369483721_
                             (let ()
                               (declare (not safe))
                               (##car _e8369583717_)))
                            (_tl8369383724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8369583717_))))
                        (if (gx#stx-pair? _tl8369383724_)
                            (let ((_e8369883727_ (gx#syntax-e _tl8369383724_)))
                              (let ((_hd8369783731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8369883727_)))
                                    (_tl8369683734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8369883727_))))
                                (if (gx#stx-pair? _hd8369783731_)
                                    (let ((_e8370183737_
                                           (gx#syntax-e _hd8369783731_)))
                                      (let ((_hd8370083741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8370183737_)))
                                            (_tl8369983744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8370183737_))))
                                        (if (gx#stx-pair? _tl8369983744_)
                                            (let ((_e8370483747_
                                                   (gx#syntax-e
                                                    _tl8369983744_)))
                                              (let ((_hd8370383751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8370483747_)))
                                                    (_tl8370283754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8370483747_))))
                                                (if (gx#stx-null?
                                                     _tl8370283754_)
                                                    (if (gx#stx-null?
                                                         _tl8369683734_)
                                                        ((lambda (_L83757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L83759_)
                   (let* ((_g8377783785_
                           (lambda (_g8377883781_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8377883781_)))
                          (_g8377683934_
                           (lambda (_g8377883789_)
                             ((lambda (_L83792_)
                                (let ()
                                  (let* ((_g8380483812_
                                          (lambda (_g8380583808_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8380583808_)))
                                         (_g8380383930_
                                          (lambda (_g8380583816_)
                                            ((lambda (_L83819_)
                                               (let ()
                                                 (let* ((_g8383283840_
                                                         (lambda (_g8383383836_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8383383836_)))
                                                        (_g8383183926_
                                                         (lambda (_g8383383844_)
                                                           ((lambda (_L83847_)
                                                              (let ()
                                                                (let* ((_g8386083868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8386183864_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8386183864_)))
                               (_g8385983922_
                                (lambda (_g8386183872_)
                                  ((lambda (_L83875_)
                                     (let ()
                                       (let* ((_g8388883896_
                                               (lambda (_g8388983892_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8388983892_)))
                                              (_g8388783918_
                                               (lambda (_g8388983900_)
                                                 ((lambda (_L83903_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89910
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp89778
                                                               (let ((__tmp89880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89909 (gx#datum->syntax '#f 'def))
                                    (__tmp89881
                                     (let ((__tmp89882
                                            (let ((__tmp89883
                                                   (let ((__tmp89908
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp89884
                                                          (let ((__tmp89903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89907
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp89904
                                (let ((__tmp89905
                                       (let ((__tmp89906
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L83759_ __tmp89906))))
                                  (declare (not safe))
                                  (cons _L83792_ __tmp89905))))
                           (declare (not safe))
                           (cons __tmp89907 __tmp89904)))
                        (__tmp89885
                         (let ((__tmp89886
                                (let ((__tmp89902
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp89887
                                       (let ((__tmp89900
                                              (let ((__tmp89901
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp89901 '())))
                                             (__tmp89888
                                              (let ((__tmp89889
                                                     (let ((__tmp89899
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp89890
                                                            (let ((__tmp89898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89891
                           (let ((__tmp89892
                                  (let ((__tmp89897
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp89893
                                         (let ((__tmp89894
                                                (let ((__tmp89896
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp89895
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L83759_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp89896
                                                        __tmp89895))))
                                           (declare (not safe))
                                           (cons __tmp89894 '()))))
                                    (declare (not safe))
                                    (cons __tmp89897 __tmp89893))))
                             (declare (not safe))
                             (cons _L83757_ __tmp89892))))
                      (declare (not safe))
                      (cons __tmp89898 __tmp89891))))
               (declare (not safe))
               (cons __tmp89899 __tmp89890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89889 '()))))
                                         (declare (not safe))
                                         (cons __tmp89900 __tmp89888))))
                                  (declare (not safe))
                                  (cons __tmp89902 __tmp89887))))
                           (declare (not safe))
                           (cons __tmp89886 '()))))
                    (declare (not safe))
                    (cons __tmp89903 __tmp89885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89908
                                                           __tmp89884))))
                                              (declare (not safe))
                                              (cons __tmp89883 '()))))
                                       (declare (not safe))
                                       (cons _L83819_ __tmp89882))))
                                (declare (not safe))
                                (cons __tmp89909 __tmp89881)))
                             (__tmp89779
                              (let ((__tmp89850
                                     (let ((__tmp89879
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp89851
                                            (let ((__tmp89852
                                                   (let ((__tmp89853
                                                          (let ((__tmp89878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp89854
                         (let ((__tmp89873
                                (let ((__tmp89877
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp89874
                                       (let ((__tmp89875
                                              (let ((__tmp89876
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L83759_ __tmp89876))))
                                         (declare (not safe))
                                         (cons _L83792_ __tmp89875))))
                                  (declare (not safe))
                                  (cons __tmp89877 __tmp89874)))
                               (__tmp89855
                                (let ((__tmp89856
                                       (let ((__tmp89872
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp89857
                                              (let ((__tmp89870
                                                     (let ((__tmp89871
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp89871 '())))
                                                    (__tmp89858
                                                     (let ((__tmp89859
                                                            (let ((__tmp89869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp89860
                           (let ((__tmp89868 (gx#datum->syntax '#f 'klass))
                                 (__tmp89861
                                  (let ((__tmp89862
                                         (let ((__tmp89867
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp89863
                                                (let ((__tmp89864
                                                       (let ((__tmp89866
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp89865
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L83759_ '()))))
                 (declare (not safe))
                 (cons __tmp89866 __tmp89865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89864 '()))))
                                           (declare (not safe))
                                           (cons __tmp89867 __tmp89863))))
                                    (declare (not safe))
                                    (cons _L83757_ __tmp89862))))
                             (declare (not safe))
                             (cons __tmp89868 __tmp89861))))
                      (declare (not safe))
                      (cons __tmp89869 __tmp89860))))
               (declare (not safe))
               (cons __tmp89859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89870 __tmp89858))))
                                         (declare (not safe))
                                         (cons __tmp89872 __tmp89857))))
                                  (declare (not safe))
                                  (cons __tmp89856 '()))))
                           (declare (not safe))
                           (cons __tmp89873 __tmp89855))))
                    (declare (not safe))
                    (cons __tmp89878 __tmp89854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89853 '()))))
                                              (declare (not safe))
                                              (cons _L83847_ __tmp89852))))
                                       (declare (not safe))
                                       (cons __tmp89879 __tmp89851)))
                                    (__tmp89780
                                     (let ((__tmp89816
                                            (let ((__tmp89849
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp89817
                                                   (let ((__tmp89818
                                                          (let ((__tmp89819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89848
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp89820
                                (let ((__tmp89843
                                       (let ((__tmp89847
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp89844
                                              (let ((__tmp89845
                                                     (let ((__tmp89846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L83759_
                                                             __tmp89846))))
                                                (declare (not safe))
                                                (cons _L83792_ __tmp89845))))
                                         (declare (not safe))
                                         (cons __tmp89847 __tmp89844)))
                                      (__tmp89821
                                       (let ((__tmp89822
                                              (let ((__tmp89842
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp89823
                                                     (let ((__tmp89838
                                                            (let ((__tmp89841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89839
                           (let ((__tmp89840 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp89840 '()))))
                      (declare (not safe))
                      (cons __tmp89841 __tmp89839)))
                   (__tmp89824
                    (let ((__tmp89825
                           (let ((__tmp89837
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp89826
                                  (let ((__tmp89836
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89827
                                         (let ((__tmp89835
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp89828
                                                (let ((__tmp89829
                                                       (let ((__tmp89834
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp89830
                                                              (let ((__tmp89831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89833 (gx#datum->syntax '#f 'quote))
                                   (__tmp89832
                                    (let ()
                                      (declare (not safe))
                                      (cons _L83759_ '()))))
                               (declare (not safe))
                               (cons __tmp89833 __tmp89832))))
                        (declare (not safe))
                        (cons __tmp89831 '()))))
                 (declare (not safe))
                 (cons __tmp89834 __tmp89830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L83757_ __tmp89829))))
                                           (declare (not safe))
                                           (cons __tmp89835 __tmp89828))))
                                    (declare (not safe))
                                    (cons __tmp89836 __tmp89827))))
                             (declare (not safe))
                             (cons __tmp89837 __tmp89826))))
                      (declare (not safe))
                      (cons __tmp89825 '()))))
               (declare (not safe))
               (cons __tmp89838 __tmp89824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89842 __tmp89823))))
                                         (declare (not safe))
                                         (cons __tmp89822 '()))))
                                  (declare (not safe))
                                  (cons __tmp89843 __tmp89821))))
                           (declare (not safe))
                           (cons __tmp89848 __tmp89820))))
                    (declare (not safe))
                    (cons __tmp89819 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83875_
                                                           __tmp89818))))
                                              (declare (not safe))
                                              (cons __tmp89849 __tmp89817)))
                                           (__tmp89781
                                            (let ((__tmp89782
                                                   (let ((__tmp89815
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp89783
                                                          (let ((__tmp89784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89785
                                (let ((__tmp89814
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp89786
                                       (let ((__tmp89809
                                              (let ((__tmp89813
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp89810
                                                     (let ((__tmp89811
                                                            (let ((__tmp89812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L83759_ __tmp89812))))
               (declare (not safe))
               (cons _L83792_ __tmp89811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89813 __tmp89810)))
                                             (__tmp89787
                                              (let ((__tmp89788
                                                     (let ((__tmp89808
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp89789
                                                            (let ((__tmp89804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89807 (gx#datum->syntax '#f 'klass))
                                 (__tmp89805
                                  (let ((__tmp89806
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp89806 '()))))
                             (declare (not safe))
                             (cons __tmp89807 __tmp89805)))
                          (__tmp89790
                           (let ((__tmp89791
                                  (let ((__tmp89803
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp89792
                                         (let ((__tmp89802
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp89793
                                                (let ((__tmp89801
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp89794
                                                       (let ((__tmp89795
                                                              (let ((__tmp89800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp89796
                             (let ((__tmp89797
                                    (let ((__tmp89799
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp89798
                                           (let ()
                                             (declare (not safe))
                                             (cons _L83759_ '()))))
                                      (declare (not safe))
                                      (cons __tmp89799 __tmp89798))))
                               (declare (not safe))
                               (cons __tmp89797 '()))))
                        (declare (not safe))
                        (cons __tmp89800 __tmp89796))))
                 (declare (not safe))
                 (cons _L83757_ __tmp89795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89801
                                                        __tmp89794))))
                                           (declare (not safe))
                                           (cons __tmp89802 __tmp89793))))
                                    (declare (not safe))
                                    (cons __tmp89803 __tmp89792))))
                             (declare (not safe))
                             (cons __tmp89791 '()))))
                      (declare (not safe))
                      (cons __tmp89804 __tmp89790))))
               (declare (not safe))
               (cons __tmp89808 __tmp89789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89788 '()))))
                                         (declare (not safe))
                                         (cons __tmp89809 __tmp89787))))
                                  (declare (not safe))
                                  (cons __tmp89814 __tmp89786))))
                           (declare (not safe))
                           (cons __tmp89785 '()))))
                    (declare (not safe))
                    (cons _L83903_ __tmp89784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89815
                                                           __tmp89783))))
                                              (declare (not safe))
                                              (cons __tmp89782 '()))))
                                       (declare (not safe))
                                       (cons __tmp89816 __tmp89781))))
                                (declare (not safe))
                                (cons __tmp89850 __tmp89780))))
                         (declare (not safe))
                         (cons __tmp89880 __tmp89779))))
                  (declare (not safe))
                  (cons __tmp89910 __tmp89778)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8388983900_))))
                                         (_g8388783918_
                                          (gx#stx-identifier
                                           _L83759_
                                           '"&"
                                           _L83875_)))))
                                   _g8386183872_))))
                          (_g8385983922_
                           (gx#stx-identifier _L83759_ _L83819_ '"-set!")))))
                    _g8383383844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8383183926_
                                                    (gx#stx-identifier
                                                     _L83759_
                                                     '"&"
                                                     _L83819_)))))
                                             _g8380583816_))))
                                    (_g8380383930_
                                     (gx#stx-identifier
                                      _L83759_
                                      '"class-type-"
                                      _L83759_)))))
                              _g8377883789_))))
                     (_g8377683934_ (gx#core-quote-syntax 'class::t))))
                 _hd8370383751_
                 _hd8370083741_)
                (_g8368983710_ _g8369083714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8368983710_
                                                     _g8369083714_))))
                                            (_g8368983710_ _g8369083714_))))
                                    (_g8368983710_ _g8369083714_))))
                            (_g8368983710_ _g8369083714_))))
                    (_g8368983710_ _g8369083714_)))))
        (_g8368883938_ _stx83686_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83942_)
      (let* ((_g8394683975_
              (lambda (_g8394783971_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8394783971_)))
             (_g8394584075_
              (lambda (_g8394783979_)
                (if (gx#stx-pair? _g8394783979_)
                    (let ((_e8395283982_ (gx#syntax-e _g8394783979_)))
                      (let ((_hd8395183986_
                             (let ()
                               (declare (not safe))
                               (##car _e8395283982_)))
                            (_tl8395083989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8395283982_))))
                        (if (gx#stx-pair/null? _tl8395083989_)
                            (let ((_g89911_
                                   (gx#syntax-split-splice _tl8395083989_ '0)))
                              (begin
                                (let ((_g89912_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89911_)
                                             (##vector-length _g89911_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89912_ 2)))
                                      (error "Context expects 2 values"
                                             _g89912_)))
                                (let ((_target8395383992_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89911_ 0)))
                                      (_tl8395583995_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89911_ 1))))
                                  (if (gx#stx-null? _tl8395583995_)
                                      (letrec ((_loop8395683998_
                                                (lambda (_hd8395484002_
                                                         _field8396084005_
                                                         _slot8396184007_)
                                                  (if (gx#stx-pair?
                                                       _hd8395484002_)
                                                      (let ((_e8395784010_
                                                             (gx#syntax-e
                                                              _hd8395484002_)))
                                                        (let ((_lp-hd8395884014_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8395784010_)))
                      (_lp-tl8395984017_
                       (let () (declare (not safe)) (##cdr _e8395784010_))))
                  (if (gx#stx-pair? _lp-hd8395884014_)
                      (let ((_e8396684020_ (gx#syntax-e _lp-hd8395884014_)))
                        (let ((_hd8396584024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8396684020_)))
                              (_tl8396484027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8396684020_))))
                          (if (gx#stx-pair? _tl8396484027_)
                              (let ((_e8396984030_
                                     (gx#syntax-e _tl8396484027_)))
                                (let ((_hd8396884034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8396984030_)))
                                      (_tl8396784037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8396984030_))))
                                  (if (gx#stx-null? _tl8396784037_)
                                      (_loop8395683998_
                                       _lp-tl8395984017_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8396884034_
                                               _field8396084005_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8396584024_
                                               _slot8396184007_)))
                                      (_g8394683975_ _g8394783979_))))
                              (_g8394683975_ _g8394783979_))))
                      (_g8394683975_ _g8394783979_))))
              (let ((_field8396284040_ (reverse _field8396084005_))
                    (_slot8396384043_ (reverse _slot8396184007_)))
                ((lambda (_L84046_ _L84048_)
                   (let ((__tmp89920 (gx#datum->syntax '#f 'begin))
                         (__tmp89913
                          (begin
                            (gx#syntax-check-splice-targets _L84046_ _L84048_)
                            (let ((__tmp89914
                                   (lambda (_g8406384067_
                                            _g8406484070_
                                            _g8406584072_)
                                     (let ((__tmp89915
                                            (let ((__tmp89919
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89916
                                                   (let ((__tmp89917
                                                          (let ((__tmp89918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8406384067_ '()))))
                    (declare (not safe))
                    (cons _g8406484070_ __tmp89918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89917 '()))))
                                              (declare (not safe))
                                              (cons __tmp89919 __tmp89916))))
                                       (declare (not safe))
                                       (cons __tmp89915 _g8406584072_)))))
                              (declare (not safe))
                              (foldr2 __tmp89914 '() _L84046_ _L84048_)))))
                     (declare (not safe))
                     (cons __tmp89920 __tmp89913)))
                 _field8396284040_
                 _slot8396384043_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8395683998_
                                         _target8395383992_
                                         '()
                                         '()))
                                      (_g8394683975_ _g8394783979_)))))
                            (_g8394683975_ _g8394783979_))))
                    (_g8394683975_ _g8394783979_)))))
        (_g8394584075_ _$stx83942_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84080_)
      (let* ((_g8408484110_
              (lambda (_g8408584106_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8408584106_)))
             (_g8408384193_
              (lambda (_g8408584114_)
                (if (gx#stx-pair? _g8408584114_)
                    (let ((_e8409284117_ (gx#syntax-e _g8408584114_)))
                      (let ((_hd8409184121_
                             (let ()
                               (declare (not safe))
                               (##car _e8409284117_)))
                            (_tl8409084124_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8409284117_))))
                        (if (gx#stx-pair? _tl8409084124_)
                            (let ((_e8409584127_ (gx#syntax-e _tl8409084124_)))
                              (let ((_hd8409484131_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8409584127_)))
                                    (_tl8409384134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8409584127_))))
                                (if (gx#stx-pair? _tl8409384134_)
                                    (let ((_e8409884137_
                                           (gx#syntax-e _tl8409384134_)))
                                      (let ((_hd8409784141_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8409884137_)))
                                            (_tl8409684144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8409884137_))))
                                        (if (gx#stx-pair? _tl8409684144_)
                                            (let ((_e8410184147_
                                                   (gx#syntax-e
                                                    _tl8409684144_)))
                                              (let ((_hd8410084151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8410184147_)))
                                                    (_tl8409984154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8410184147_))))
                                                (if (gx#stx-pair?
                                                     _tl8409984154_)
                                                    (let ((_e8410484157_
                                                           (gx#syntax-e
                                                            _tl8409984154_)))
                                                      (let ((_hd8410384161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8410484157_)))
                    (_tl8410284164_
                     (let () (declare (not safe)) (##cdr _e8410484157_))))
                (if (gx#stx-null? _tl8410284164_)
                    ((lambda (_L84167_ _L84169_ _L84170_ _L84171_)
                       (let ((__tmp89967 (gx#datum->syntax '#f 'if))
                             (__tmp89921
                              (let ((__tmp89964
                                     (let ((__tmp89966
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89965
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84171_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89966 __tmp89965)))
                                    (__tmp89922
                                     (let ((__tmp89927
                                            (let ((__tmp89963
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89928
                                                   (let ((__tmp89957
                                                          (let ((__tmp89962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89958
                         (let ((__tmp89959
                                (let ((__tmp89961
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89960
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84171_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89961 __tmp89960))))
                           (declare (not safe))
                           (cons __tmp89959 '()))))
                    (declare (not safe))
                    (cons __tmp89962 __tmp89958)))
                 (__tmp89929
                  (let ((__tmp89930
                         (let ((__tmp89956 (gx#datum->syntax '#f 'cond))
                               (__tmp89931
                                (let ((__tmp89939
                                       (let ((__tmp89943
                                              (let ((__tmp89955
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89944
                                                     (let ((__tmp89951
                                                            (let ((__tmp89954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89952
                           (let ((__tmp89953 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89953 '()))))
                      (declare (not safe))
                      (cons __tmp89954 __tmp89952)))
                   (__tmp89945
                    (let ((__tmp89946
                           (let ((__tmp89950
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89947
                                  (let ((__tmp89949
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89948
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84170_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89949 __tmp89948))))
                             (declare (not safe))
                             (cons __tmp89950 __tmp89947))))
                      (declare (not safe))
                      (cons __tmp89946 '()))))
               (declare (not safe))
               (cons __tmp89951 __tmp89945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89955 __tmp89944)))
                                             (__tmp89940
                                              (let ((__tmp89942
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89941
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84169_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89942 __tmp89941))))
                                         (declare (not safe))
                                         (cons __tmp89943 __tmp89940)))
                                      (__tmp89932
                                       (let ((__tmp89933
                                              (let ((__tmp89938
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89934
                                                     (let ((__tmp89935
                                                            (let ((__tmp89936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89937
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84170_ '()))))
                             (declare (not safe))
                             (cons _L84171_ __tmp89937))))
                      (declare (not safe))
                      (cons _L84167_ __tmp89936))))
               (declare (not safe))
               (cons __tmp89935 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89938 __tmp89934))))
                                         (declare (not safe))
                                         (cons __tmp89933 '()))))
                                  (declare (not safe))
                                  (cons __tmp89939 __tmp89932))))
                           (declare (not safe))
                           (cons __tmp89956 __tmp89931))))
                    (declare (not safe))
                    (cons __tmp89930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89957
                                                           __tmp89929))))
                                              (declare (not safe))
                                              (cons __tmp89963 __tmp89928)))
                                           (__tmp89923
                                            (let ((__tmp89924
                                                   (let ((__tmp89925
                                                          (let ((__tmp89926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84170_ '()))))
                    (declare (not safe))
                    (cons _L84171_ __tmp89926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84167_
                                                           __tmp89925))))
                                              (declare (not safe))
                                              (cons __tmp89924 '()))))
                                       (declare (not safe))
                                       (cons __tmp89927 __tmp89923))))
                                (declare (not safe))
                                (cons __tmp89964 __tmp89922))))
                         (declare (not safe))
                         (cons __tmp89967 __tmp89921)))
                     _hd8410384161_
                     _hd8410084151_
                     _hd8409784141_
                     _hd8409484131_)
                    (_g8408484110_ _g8408584114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8408484110_
                                                     _g8408584114_))))
                                            (_g8408484110_ _g8408584114_))))
                                    (_g8408484110_ _g8408584114_))))
                            (_g8408484110_ _g8408584114_))))
                    (_g8408484110_ _g8408584114_)))))
        (_g8408384193_ _$stx84080_)))))
