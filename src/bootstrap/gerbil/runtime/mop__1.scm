(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83385_)
      (let* ((___stx8948489485_ _$stx83385_)
             (_g8339083419_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8948489485_))))
        (let ((___kont8948789488_
               (lambda (_L83512_ _L83514_)
                 (let ((__tmp89746 (gx#datum->syntax '#f '##fx=))
                       (__tmp89740
                        (let ((__tmp89742
                               (let ((__tmp89745
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89743
                                      (let ((__tmp89744
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83512_ '()))))
                                        (declare (not safe))
                                        (cons _L83514_ __tmp89744))))
                                 (declare (not safe))
                                 (cons __tmp89745 __tmp89743)))
                              (__tmp89741
                               (let ()
                                 (declare (not safe))
                                 (cons _L83512_ '()))))
                          (declare (not safe))
                          (cons __tmp89742 __tmp89741))))
                   (declare (not safe))
                   (cons __tmp89746 __tmp89740))))
              (___kont8948989490_
               (lambda (_L83456_ _L83458_)
                 (let ((__tmp89759 (gx#datum->syntax '#f 'let))
                       (__tmp89747
                        (let ((__tmp89757
                               (let ((__tmp89758
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83456_ '()))))
                                 (declare (not safe))
                                 (cons _L83456_ __tmp89758)))
                              (__tmp89748
                               (let ((__tmp89749
                                      (let ((__tmp89756
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89750
                                             (let ((__tmp89752
                                                    (let ((__tmp89755
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89753
                                                           (let ((__tmp89754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83456_ '()))))
                     (declare (not safe))
                     (cons _L83458_ __tmp89754))))
              (declare (not safe))
              (cons __tmp89755 __tmp89753)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89751
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L83456_ '()))))
                                               (declare (not safe))
                                               (cons __tmp89752 __tmp89751))))
                                        (declare (not safe))
                                        (cons __tmp89756 __tmp89750))))
                                 (declare (not safe))
                                 (cons __tmp89749 '()))))
                          (declare (not safe))
                          (cons __tmp89757 __tmp89748))))
                   (declare (not safe))
                   (cons __tmp89759 __tmp89747)))))
          (let ((___match8951189512_
                 (lambda (_e8339683482_
                          _hd8339583486_
                          _tl8339483489_
                          _e8339983492_
                          _hd8339883496_
                          _tl8339783499_
                          _e8340283502_
                          _hd8340183506_
                          _tl8340083509_)
                   (let ((_L83512_ _hd8340183506_) (_L83514_ _hd8339883496_))
                     (if (or (gx#identifier? _L83512_)
                             (gx#stx-fixnum? _L83512_))
                         (___kont8948789488_ _L83512_ _L83514_)
                         (___kont8948989490_
                          _hd8340183506_
                          _hd8339883496_))))))
            (if (gx#stx-pair? ___stx8948489485_)
                (let ((_e8339683482_ (gx#syntax-e ___stx8948489485_)))
                  (let ((_tl8339483489_
                         (let () (declare (not safe)) (##cdr _e8339683482_)))
                        (_hd8339583486_
                         (let () (declare (not safe)) (##car _e8339683482_))))
                    (if (gx#stx-pair? _tl8339483489_)
                        (let ((_e8339983492_ (gx#syntax-e _tl8339483489_)))
                          (let ((_tl8339783499_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8339983492_)))
                                (_hd8339883496_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8339983492_))))
                            (if (gx#stx-pair? _tl8339783499_)
                                (let ((_e8340283502_
                                       (gx#syntax-e _tl8339783499_)))
                                  (let ((_tl8340083509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8340283502_)))
                                        (_hd8340183506_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8340283502_))))
                                    (if (gx#stx-null? _tl8340083509_)
                                        (___match8951189512_
                                         _e8339683482_
                                         _hd8339583486_
                                         _tl8339483489_
                                         _e8339983492_
                                         _hd8339883496_
                                         _tl8339783499_
                                         _e8340283502_
                                         _hd8340183506_
                                         _tl8340083509_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8339083419_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8339083419_)))))
                        (let () (declare (not safe)) (_g8339083419_)))))
                (let () (declare (not safe)) (_g8339083419_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx83537_)
      (let* ((___stx8953489535_ _$stx83537_)
             (_g8354283571_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8953489535_))))
        (let ((___kont8953789538_
               (lambda (_L83663_ _L83665_)
                 (let ((__tmp89766 (gx#datum->syntax '#f '##fx=))
                       (__tmp89760
                        (let ((__tmp89762
                               (let ((__tmp89765
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89763
                                      (let ((__tmp89764
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83663_ '()))))
                                        (declare (not safe))
                                        (cons _L83665_ __tmp89764))))
                                 (declare (not safe))
                                 (cons __tmp89765 __tmp89763)))
                              (__tmp89761
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp89762 __tmp89761))))
                   (declare (not safe))
                   (cons __tmp89766 __tmp89760))))
              (___kont8953989540_
               (lambda (_L83608_ _L83610_)
                 (let ((__tmp89779 (gx#datum->syntax '#f 'let))
                       (__tmp89767
                        (let ((__tmp89777
                               (let ((__tmp89778
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83608_ '()))))
                                 (declare (not safe))
                                 (cons _L83608_ __tmp89778)))
                              (__tmp89768
                               (let ((__tmp89769
                                      (let ((__tmp89776
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89770
                                             (let ((__tmp89772
                                                    (let ((__tmp89775
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89773
                                                           (let ((__tmp89774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83608_ '()))))
                     (declare (not safe))
                     (cons _L83610_ __tmp89774))))
              (declare (not safe))
              (cons __tmp89775 __tmp89773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89771
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp89772 __tmp89771))))
                                        (declare (not safe))
                                        (cons __tmp89776 __tmp89770))))
                                 (declare (not safe))
                                 (cons __tmp89769 '()))))
                          (declare (not safe))
                          (cons __tmp89777 __tmp89768))))
                   (declare (not safe))
                   (cons __tmp89779 __tmp89767)))))
          (let ((___match8956189562_
                 (lambda (_e8354883633_
                          _hd8354783637_
                          _tl8354683640_
                          _e8355183643_
                          _hd8355083647_
                          _tl8354983650_
                          _e8355483653_
                          _hd8355383657_
                          _tl8355283660_)
                   (let ((_L83663_ _hd8355383657_) (_L83665_ _hd8355083647_))
                     (if (or (gx#identifier? _L83663_)
                             (gx#stx-fixnum? _L83663_))
                         (___kont8953789538_ _L83663_ _L83665_)
                         (___kont8953989540_
                          _hd8355383657_
                          _hd8355083647_))))))
            (if (gx#stx-pair? ___stx8953489535_)
                (let ((_e8354883633_ (gx#syntax-e ___stx8953489535_)))
                  (let ((_tl8354683640_
                         (let () (declare (not safe)) (##cdr _e8354883633_)))
                        (_hd8354783637_
                         (let () (declare (not safe)) (##car _e8354883633_))))
                    (if (gx#stx-pair? _tl8354683640_)
                        (let ((_e8355183643_ (gx#syntax-e _tl8354683640_)))
                          (let ((_tl8354983650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8355183643_)))
                                (_hd8355083647_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8355183643_))))
                            (if (gx#stx-pair? _tl8354983650_)
                                (let ((_e8355483653_
                                       (gx#syntax-e _tl8354983650_)))
                                  (let ((_tl8355283660_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8355483653_)))
                                        (_hd8355383657_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8355483653_))))
                                    (if (gx#stx-null? _tl8355283660_)
                                        (___match8956189562_
                                         _e8354883633_
                                         _hd8354783637_
                                         _tl8354683640_
                                         _e8355183643_
                                         _hd8355083647_
                                         _tl8354983650_
                                         _e8355483653_
                                         _hd8355383657_
                                         _tl8355283660_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8354283571_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8354283571_)))))
                        (let () (declare (not safe)) (_g8354283571_)))))
                (let () (declare (not safe)) (_g8354283571_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx83688_)
      (let* ((_g8369183712_
              (lambda (_g8369283708_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8369283708_)))
             (_g8369083940_
              (lambda (_g8369283716_)
                (if (gx#stx-pair? _g8369283716_)
                    (let ((_e8369783719_ (gx#syntax-e _g8369283716_)))
                      (let ((_hd8369683723_
                             (let ()
                               (declare (not safe))
                               (##car _e8369783719_)))
                            (_tl8369583726_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8369783719_))))
                        (if (gx#stx-pair? _tl8369583726_)
                            (let ((_e8370083729_ (gx#syntax-e _tl8369583726_)))
                              (let ((_hd8369983733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8370083729_)))
                                    (_tl8369883736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8370083729_))))
                                (if (gx#stx-pair? _hd8369983733_)
                                    (let ((_e8370383739_
                                           (gx#syntax-e _hd8369983733_)))
                                      (let ((_hd8370283743_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8370383739_)))
                                            (_tl8370183746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8370383739_))))
                                        (if (gx#stx-pair? _tl8370183746_)
                                            (let ((_e8370683749_
                                                   (gx#syntax-e
                                                    _tl8370183746_)))
                                              (let ((_hd8370583753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8370683749_)))
                                                    (_tl8370483756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8370683749_))))
                                                (if (gx#stx-null?
                                                     _tl8370483756_)
                                                    (if (gx#stx-null?
                                                         _tl8369883736_)
                                                        ((lambda (_L83759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L83761_)
                   (let* ((_g8377983787_
                           (lambda (_g8378083783_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8378083783_)))
                          (_g8377883936_
                           (lambda (_g8378083791_)
                             ((lambda (_L83794_)
                                (let ()
                                  (let* ((_g8380683814_
                                          (lambda (_g8380783810_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8380783810_)))
                                         (_g8380583932_
                                          (lambda (_g8380783818_)
                                            ((lambda (_L83821_)
                                               (let ()
                                                 (let* ((_g8383483842_
                                                         (lambda (_g8383583838_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8383583838_)))
                                                        (_g8383383928_
                                                         (lambda (_g8383583846_)
                                                           ((lambda (_L83849_)
                                                              (let ()
                                                                (let* ((_g8386283870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8386383866_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8386383866_)))
                               (_g8386183924_
                                (lambda (_g8386383874_)
                                  ((lambda (_L83877_)
                                     (let ()
                                       (let* ((_g8389083898_
                                               (lambda (_g8389183894_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8389183894_)))
                                              (_g8388983920_
                                               (lambda (_g8389183902_)
                                                 ((lambda (_L83905_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89912
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp89780
                                                               (let ((__tmp89882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89911 (gx#datum->syntax '#f 'def))
                                    (__tmp89883
                                     (let ((__tmp89884
                                            (let ((__tmp89885
                                                   (let ((__tmp89910
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp89886
                                                          (let ((__tmp89905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89909
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp89906
                                (let ((__tmp89907
                                       (let ((__tmp89908
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L83761_ __tmp89908))))
                                  (declare (not safe))
                                  (cons _L83794_ __tmp89907))))
                           (declare (not safe))
                           (cons __tmp89909 __tmp89906)))
                        (__tmp89887
                         (let ((__tmp89888
                                (let ((__tmp89904
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp89889
                                       (let ((__tmp89902
                                              (let ((__tmp89903
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp89903 '())))
                                             (__tmp89890
                                              (let ((__tmp89891
                                                     (let ((__tmp89901
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp89892
                                                            (let ((__tmp89900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89893
                           (let ((__tmp89894
                                  (let ((__tmp89899
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp89895
                                         (let ((__tmp89896
                                                (let ((__tmp89898
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp89897
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L83761_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp89898
                                                        __tmp89897))))
                                           (declare (not safe))
                                           (cons __tmp89896 '()))))
                                    (declare (not safe))
                                    (cons __tmp89899 __tmp89895))))
                             (declare (not safe))
                             (cons _L83759_ __tmp89894))))
                      (declare (not safe))
                      (cons __tmp89900 __tmp89893))))
               (declare (not safe))
               (cons __tmp89901 __tmp89892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89891 '()))))
                                         (declare (not safe))
                                         (cons __tmp89902 __tmp89890))))
                                  (declare (not safe))
                                  (cons __tmp89904 __tmp89889))))
                           (declare (not safe))
                           (cons __tmp89888 '()))))
                    (declare (not safe))
                    (cons __tmp89905 __tmp89887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89910
                                                           __tmp89886))))
                                              (declare (not safe))
                                              (cons __tmp89885 '()))))
                                       (declare (not safe))
                                       (cons _L83821_ __tmp89884))))
                                (declare (not safe))
                                (cons __tmp89911 __tmp89883)))
                             (__tmp89781
                              (let ((__tmp89852
                                     (let ((__tmp89881
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp89853
                                            (let ((__tmp89854
                                                   (let ((__tmp89855
                                                          (let ((__tmp89880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp89856
                         (let ((__tmp89875
                                (let ((__tmp89879
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp89876
                                       (let ((__tmp89877
                                              (let ((__tmp89878
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L83761_ __tmp89878))))
                                         (declare (not safe))
                                         (cons _L83794_ __tmp89877))))
                                  (declare (not safe))
                                  (cons __tmp89879 __tmp89876)))
                               (__tmp89857
                                (let ((__tmp89858
                                       (let ((__tmp89874
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp89859
                                              (let ((__tmp89872
                                                     (let ((__tmp89873
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp89873 '())))
                                                    (__tmp89860
                                                     (let ((__tmp89861
                                                            (let ((__tmp89871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp89862
                           (let ((__tmp89870 (gx#datum->syntax '#f 'klass))
                                 (__tmp89863
                                  (let ((__tmp89864
                                         (let ((__tmp89869
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp89865
                                                (let ((__tmp89866
                                                       (let ((__tmp89868
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp89867
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L83761_ '()))))
                 (declare (not safe))
                 (cons __tmp89868 __tmp89867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89866 '()))))
                                           (declare (not safe))
                                           (cons __tmp89869 __tmp89865))))
                                    (declare (not safe))
                                    (cons _L83759_ __tmp89864))))
                             (declare (not safe))
                             (cons __tmp89870 __tmp89863))))
                      (declare (not safe))
                      (cons __tmp89871 __tmp89862))))
               (declare (not safe))
               (cons __tmp89861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89872 __tmp89860))))
                                         (declare (not safe))
                                         (cons __tmp89874 __tmp89859))))
                                  (declare (not safe))
                                  (cons __tmp89858 '()))))
                           (declare (not safe))
                           (cons __tmp89875 __tmp89857))))
                    (declare (not safe))
                    (cons __tmp89880 __tmp89856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89855 '()))))
                                              (declare (not safe))
                                              (cons _L83849_ __tmp89854))))
                                       (declare (not safe))
                                       (cons __tmp89881 __tmp89853)))
                                    (__tmp89782
                                     (let ((__tmp89818
                                            (let ((__tmp89851
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp89819
                                                   (let ((__tmp89820
                                                          (let ((__tmp89821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89850
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp89822
                                (let ((__tmp89845
                                       (let ((__tmp89849
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp89846
                                              (let ((__tmp89847
                                                     (let ((__tmp89848
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L83761_
                                                             __tmp89848))))
                                                (declare (not safe))
                                                (cons _L83794_ __tmp89847))))
                                         (declare (not safe))
                                         (cons __tmp89849 __tmp89846)))
                                      (__tmp89823
                                       (let ((__tmp89824
                                              (let ((__tmp89844
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp89825
                                                     (let ((__tmp89840
                                                            (let ((__tmp89843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89841
                           (let ((__tmp89842 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp89842 '()))))
                      (declare (not safe))
                      (cons __tmp89843 __tmp89841)))
                   (__tmp89826
                    (let ((__tmp89827
                           (let ((__tmp89839
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp89828
                                  (let ((__tmp89838
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89829
                                         (let ((__tmp89837
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp89830
                                                (let ((__tmp89831
                                                       (let ((__tmp89836
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp89832
                                                              (let ((__tmp89833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89835 (gx#datum->syntax '#f 'quote))
                                   (__tmp89834
                                    (let ()
                                      (declare (not safe))
                                      (cons _L83761_ '()))))
                               (declare (not safe))
                               (cons __tmp89835 __tmp89834))))
                        (declare (not safe))
                        (cons __tmp89833 '()))))
                 (declare (not safe))
                 (cons __tmp89836 __tmp89832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L83759_ __tmp89831))))
                                           (declare (not safe))
                                           (cons __tmp89837 __tmp89830))))
                                    (declare (not safe))
                                    (cons __tmp89838 __tmp89829))))
                             (declare (not safe))
                             (cons __tmp89839 __tmp89828))))
                      (declare (not safe))
                      (cons __tmp89827 '()))))
               (declare (not safe))
               (cons __tmp89840 __tmp89826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89844 __tmp89825))))
                                         (declare (not safe))
                                         (cons __tmp89824 '()))))
                                  (declare (not safe))
                                  (cons __tmp89845 __tmp89823))))
                           (declare (not safe))
                           (cons __tmp89850 __tmp89822))))
                    (declare (not safe))
                    (cons __tmp89821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83877_
                                                           __tmp89820))))
                                              (declare (not safe))
                                              (cons __tmp89851 __tmp89819)))
                                           (__tmp89783
                                            (let ((__tmp89784
                                                   (let ((__tmp89817
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp89785
                                                          (let ((__tmp89786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89787
                                (let ((__tmp89816
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp89788
                                       (let ((__tmp89811
                                              (let ((__tmp89815
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp89812
                                                     (let ((__tmp89813
                                                            (let ((__tmp89814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L83761_ __tmp89814))))
               (declare (not safe))
               (cons _L83794_ __tmp89813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89815 __tmp89812)))
                                             (__tmp89789
                                              (let ((__tmp89790
                                                     (let ((__tmp89810
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp89791
                                                            (let ((__tmp89806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89809 (gx#datum->syntax '#f 'klass))
                                 (__tmp89807
                                  (let ((__tmp89808
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp89808 '()))))
                             (declare (not safe))
                             (cons __tmp89809 __tmp89807)))
                          (__tmp89792
                           (let ((__tmp89793
                                  (let ((__tmp89805
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp89794
                                         (let ((__tmp89804
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp89795
                                                (let ((__tmp89803
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp89796
                                                       (let ((__tmp89797
                                                              (let ((__tmp89802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp89798
                             (let ((__tmp89799
                                    (let ((__tmp89801
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp89800
                                           (let ()
                                             (declare (not safe))
                                             (cons _L83761_ '()))))
                                      (declare (not safe))
                                      (cons __tmp89801 __tmp89800))))
                               (declare (not safe))
                               (cons __tmp89799 '()))))
                        (declare (not safe))
                        (cons __tmp89802 __tmp89798))))
                 (declare (not safe))
                 (cons _L83759_ __tmp89797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89803
                                                        __tmp89796))))
                                           (declare (not safe))
                                           (cons __tmp89804 __tmp89795))))
                                    (declare (not safe))
                                    (cons __tmp89805 __tmp89794))))
                             (declare (not safe))
                             (cons __tmp89793 '()))))
                      (declare (not safe))
                      (cons __tmp89806 __tmp89792))))
               (declare (not safe))
               (cons __tmp89810 __tmp89791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89790 '()))))
                                         (declare (not safe))
                                         (cons __tmp89811 __tmp89789))))
                                  (declare (not safe))
                                  (cons __tmp89816 __tmp89788))))
                           (declare (not safe))
                           (cons __tmp89787 '()))))
                    (declare (not safe))
                    (cons _L83905_ __tmp89786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89817
                                                           __tmp89785))))
                                              (declare (not safe))
                                              (cons __tmp89784 '()))))
                                       (declare (not safe))
                                       (cons __tmp89818 __tmp89783))))
                                (declare (not safe))
                                (cons __tmp89852 __tmp89782))))
                         (declare (not safe))
                         (cons __tmp89882 __tmp89781))))
                  (declare (not safe))
                  (cons __tmp89912 __tmp89780)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8389183902_))))
                                         (_g8388983920_
                                          (gx#stx-identifier
                                           _L83761_
                                           '"&"
                                           _L83877_)))))
                                   _g8386383874_))))
                          (_g8386183924_
                           (gx#stx-identifier _L83761_ _L83821_ '"-set!")))))
                    _g8383583846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8383383928_
                                                    (gx#stx-identifier
                                                     _L83761_
                                                     '"&"
                                                     _L83821_)))))
                                             _g8380783818_))))
                                    (_g8380583932_
                                     (gx#stx-identifier
                                      _L83761_
                                      '"class-type-"
                                      _L83761_)))))
                              _g8378083791_))))
                     (_g8377883936_ (gx#core-quote-syntax 'class::t))))
                 _hd8370583753_
                 _hd8370283743_)
                (_g8369183712_ _g8369283716_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8369183712_
                                                     _g8369283716_))))
                                            (_g8369183712_ _g8369283716_))))
                                    (_g8369183712_ _g8369283716_))))
                            (_g8369183712_ _g8369283716_))))
                    (_g8369183712_ _g8369283716_)))))
        (_g8369083940_ _stx83688_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83944_)
      (let* ((_g8394883977_
              (lambda (_g8394983973_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8394983973_)))
             (_g8394784077_
              (lambda (_g8394983981_)
                (if (gx#stx-pair? _g8394983981_)
                    (let ((_e8395483984_ (gx#syntax-e _g8394983981_)))
                      (let ((_hd8395383988_
                             (let ()
                               (declare (not safe))
                               (##car _e8395483984_)))
                            (_tl8395283991_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8395483984_))))
                        (if (gx#stx-pair/null? _tl8395283991_)
                            (let ((_g89913_
                                   (gx#syntax-split-splice _tl8395283991_ '0)))
                              (begin
                                (let ((_g89914_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89913_)
                                             (##vector-length _g89913_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89914_ 2)))
                                      (error "Context expects 2 values"
                                             _g89914_)))
                                (let ((_target8395583994_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89913_ 0)))
                                      (_tl8395783997_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89913_ 1))))
                                  (if (gx#stx-null? _tl8395783997_)
                                      (letrec ((_loop8395884000_
                                                (lambda (_hd8395684004_
                                                         _field8396284007_
                                                         _slot8396384009_)
                                                  (if (gx#stx-pair?
                                                       _hd8395684004_)
                                                      (let ((_e8395984012_
                                                             (gx#syntax-e
                                                              _hd8395684004_)))
                                                        (let ((_lp-hd8396084016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8395984012_)))
                      (_lp-tl8396184019_
                       (let () (declare (not safe)) (##cdr _e8395984012_))))
                  (if (gx#stx-pair? _lp-hd8396084016_)
                      (let ((_e8396884022_ (gx#syntax-e _lp-hd8396084016_)))
                        (let ((_hd8396784026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8396884022_)))
                              (_tl8396684029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8396884022_))))
                          (if (gx#stx-pair? _tl8396684029_)
                              (let ((_e8397184032_
                                     (gx#syntax-e _tl8396684029_)))
                                (let ((_hd8397084036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8397184032_)))
                                      (_tl8396984039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8397184032_))))
                                  (if (gx#stx-null? _tl8396984039_)
                                      (_loop8395884000_
                                       _lp-tl8396184019_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8397084036_
                                               _field8396284007_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8396784026_
                                               _slot8396384009_)))
                                      (_g8394883977_ _g8394983981_))))
                              (_g8394883977_ _g8394983981_))))
                      (_g8394883977_ _g8394983981_))))
              (let ((_field8396484042_ (reverse _field8396284007_))
                    (_slot8396584045_ (reverse _slot8396384009_)))
                ((lambda (_L84048_ _L84050_)
                   (let ((__tmp89922 (gx#datum->syntax '#f 'begin))
                         (__tmp89915
                          (begin
                            (gx#syntax-check-splice-targets _L84048_ _L84050_)
                            (let ((__tmp89916
                                   (lambda (_g8406584069_
                                            _g8406684072_
                                            _g8406784074_)
                                     (let ((__tmp89917
                                            (let ((__tmp89921
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89918
                                                   (let ((__tmp89919
                                                          (let ((__tmp89920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8406584069_ '()))))
                    (declare (not safe))
                    (cons _g8406684072_ __tmp89920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89919 '()))))
                                              (declare (not safe))
                                              (cons __tmp89921 __tmp89918))))
                                       (declare (not safe))
                                       (cons __tmp89917 _g8406784074_)))))
                              (declare (not safe))
                              (foldr2 __tmp89916 '() _L84048_ _L84050_)))))
                     (declare (not safe))
                     (cons __tmp89922 __tmp89915)))
                 _field8396484042_
                 _slot8396584045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8395884000_
                                         _target8395583994_
                                         '()
                                         '()))
                                      (_g8394883977_ _g8394983981_)))))
                            (_g8394883977_ _g8394983981_))))
                    (_g8394883977_ _g8394983981_)))))
        (_g8394784077_ _$stx83944_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84082_)
      (let* ((_g8408684112_
              (lambda (_g8408784108_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8408784108_)))
             (_g8408584195_
              (lambda (_g8408784116_)
                (if (gx#stx-pair? _g8408784116_)
                    (let ((_e8409484119_ (gx#syntax-e _g8408784116_)))
                      (let ((_hd8409384123_
                             (let ()
                               (declare (not safe))
                               (##car _e8409484119_)))
                            (_tl8409284126_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8409484119_))))
                        (if (gx#stx-pair? _tl8409284126_)
                            (let ((_e8409784129_ (gx#syntax-e _tl8409284126_)))
                              (let ((_hd8409684133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8409784129_)))
                                    (_tl8409584136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8409784129_))))
                                (if (gx#stx-pair? _tl8409584136_)
                                    (let ((_e8410084139_
                                           (gx#syntax-e _tl8409584136_)))
                                      (let ((_hd8409984143_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8410084139_)))
                                            (_tl8409884146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8410084139_))))
                                        (if (gx#stx-pair? _tl8409884146_)
                                            (let ((_e8410384149_
                                                   (gx#syntax-e
                                                    _tl8409884146_)))
                                              (let ((_hd8410284153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8410384149_)))
                                                    (_tl8410184156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8410384149_))))
                                                (if (gx#stx-pair?
                                                     _tl8410184156_)
                                                    (let ((_e8410684159_
                                                           (gx#syntax-e
                                                            _tl8410184156_)))
                                                      (let ((_hd8410584163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8410684159_)))
                    (_tl8410484166_
                     (let () (declare (not safe)) (##cdr _e8410684159_))))
                (if (gx#stx-null? _tl8410484166_)
                    ((lambda (_L84169_ _L84171_ _L84172_ _L84173_)
                       (let ((__tmp89969 (gx#datum->syntax '#f 'if))
                             (__tmp89923
                              (let ((__tmp89966
                                     (let ((__tmp89968
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89967
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84173_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89968 __tmp89967)))
                                    (__tmp89924
                                     (let ((__tmp89929
                                            (let ((__tmp89965
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89930
                                                   (let ((__tmp89959
                                                          (let ((__tmp89964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89960
                         (let ((__tmp89961
                                (let ((__tmp89963
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89962
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84173_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89963 __tmp89962))))
                           (declare (not safe))
                           (cons __tmp89961 '()))))
                    (declare (not safe))
                    (cons __tmp89964 __tmp89960)))
                 (__tmp89931
                  (let ((__tmp89932
                         (let ((__tmp89958 (gx#datum->syntax '#f 'cond))
                               (__tmp89933
                                (let ((__tmp89941
                                       (let ((__tmp89945
                                              (let ((__tmp89957
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89946
                                                     (let ((__tmp89953
                                                            (let ((__tmp89956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89954
                           (let ((__tmp89955 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89955 '()))))
                      (declare (not safe))
                      (cons __tmp89956 __tmp89954)))
                   (__tmp89947
                    (let ((__tmp89948
                           (let ((__tmp89952
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89949
                                  (let ((__tmp89951
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89950
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84172_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89951 __tmp89950))))
                             (declare (not safe))
                             (cons __tmp89952 __tmp89949))))
                      (declare (not safe))
                      (cons __tmp89948 '()))))
               (declare (not safe))
               (cons __tmp89953 __tmp89947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89957 __tmp89946)))
                                             (__tmp89942
                                              (let ((__tmp89944
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89943
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84171_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89944 __tmp89943))))
                                         (declare (not safe))
                                         (cons __tmp89945 __tmp89942)))
                                      (__tmp89934
                                       (let ((__tmp89935
                                              (let ((__tmp89940
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89936
                                                     (let ((__tmp89937
                                                            (let ((__tmp89938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89939
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84172_ '()))))
                             (declare (not safe))
                             (cons _L84173_ __tmp89939))))
                      (declare (not safe))
                      (cons _L84169_ __tmp89938))))
               (declare (not safe))
               (cons __tmp89937 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89940 __tmp89936))))
                                         (declare (not safe))
                                         (cons __tmp89935 '()))))
                                  (declare (not safe))
                                  (cons __tmp89941 __tmp89934))))
                           (declare (not safe))
                           (cons __tmp89958 __tmp89933))))
                    (declare (not safe))
                    (cons __tmp89932 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89959
                                                           __tmp89931))))
                                              (declare (not safe))
                                              (cons __tmp89965 __tmp89930)))
                                           (__tmp89925
                                            (let ((__tmp89926
                                                   (let ((__tmp89927
                                                          (let ((__tmp89928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84172_ '()))))
                    (declare (not safe))
                    (cons _L84173_ __tmp89928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84169_
                                                           __tmp89927))))
                                              (declare (not safe))
                                              (cons __tmp89926 '()))))
                                       (declare (not safe))
                                       (cons __tmp89929 __tmp89925))))
                                (declare (not safe))
                                (cons __tmp89966 __tmp89924))))
                         (declare (not safe))
                         (cons __tmp89969 __tmp89923)))
                     _hd8410584163_
                     _hd8410284153_
                     _hd8409984143_
                     _hd8409684133_)
                    (_g8408684112_ _g8408784116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8408684112_
                                                     _g8408784116_))))
                                            (_g8408684112_ _g8408784116_))))
                                    (_g8408684112_ _g8408784116_))))
                            (_g8408684112_ _g8408784116_))))
                    (_g8408684112_ _g8408784116_)))))
        (_g8408584195_ _$stx84082_)))))
