(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83381_)
      (let* ((___stx8948089481_ _$stx83381_)
             (_g8338683415_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8948089481_))))
        (let ((___kont8948389484_
               (lambda (_L83508_ _L83510_)
                 (let ((__tmp89742 (gx#datum->syntax '#f '##fx=))
                       (__tmp89736
                        (let ((__tmp89738
                               (let ((__tmp89741
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89739
                                      (let ((__tmp89740
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83508_ '()))))
                                        (declare (not safe))
                                        (cons _L83510_ __tmp89740))))
                                 (declare (not safe))
                                 (cons __tmp89741 __tmp89739)))
                              (__tmp89737
                               (let ()
                                 (declare (not safe))
                                 (cons _L83508_ '()))))
                          (declare (not safe))
                          (cons __tmp89738 __tmp89737))))
                   (declare (not safe))
                   (cons __tmp89742 __tmp89736))))
              (___kont8948589486_
               (lambda (_L83452_ _L83454_)
                 (let ((__tmp89755 (gx#datum->syntax '#f 'let))
                       (__tmp89743
                        (let ((__tmp89753
                               (let ((__tmp89754
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83452_ '()))))
                                 (declare (not safe))
                                 (cons _L83452_ __tmp89754)))
                              (__tmp89744
                               (let ((__tmp89745
                                      (let ((__tmp89752
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89746
                                             (let ((__tmp89748
                                                    (let ((__tmp89751
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89749
                                                           (let ((__tmp89750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83452_ '()))))
                     (declare (not safe))
                     (cons _L83454_ __tmp89750))))
              (declare (not safe))
              (cons __tmp89751 __tmp89749)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89747
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L83452_ '()))))
                                               (declare (not safe))
                                               (cons __tmp89748 __tmp89747))))
                                        (declare (not safe))
                                        (cons __tmp89752 __tmp89746))))
                                 (declare (not safe))
                                 (cons __tmp89745 '()))))
                          (declare (not safe))
                          (cons __tmp89753 __tmp89744))))
                   (declare (not safe))
                   (cons __tmp89755 __tmp89743)))))
          (let ((___match8950789508_
                 (lambda (_e8339083478_
                          _hd8339183482_
                          _tl8339283485_
                          _e8339383488_
                          _hd8339483492_
                          _tl8339583495_
                          _e8339683498_
                          _hd8339783502_
                          _tl8339883505_)
                   (let ((_L83508_ _hd8339783502_) (_L83510_ _hd8339483492_))
                     (if (or (gx#identifier? _L83508_)
                             (gx#stx-fixnum? _L83508_))
                         (___kont8948389484_ _L83508_ _L83510_)
                         (___kont8948589486_
                          _hd8339783502_
                          _hd8339483492_))))))
            (if (gx#stx-pair? ___stx8948089481_)
                (let ((_e8339083478_ (gx#syntax-e ___stx8948089481_)))
                  (let ((_tl8339283485_
                         (let () (declare (not safe)) (##cdr _e8339083478_)))
                        (_hd8339183482_
                         (let () (declare (not safe)) (##car _e8339083478_))))
                    (if (gx#stx-pair? _tl8339283485_)
                        (let ((_e8339383488_ (gx#syntax-e _tl8339283485_)))
                          (let ((_tl8339583495_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8339383488_)))
                                (_hd8339483492_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8339383488_))))
                            (if (gx#stx-pair? _tl8339583495_)
                                (let ((_e8339683498_
                                       (gx#syntax-e _tl8339583495_)))
                                  (let ((_tl8339883505_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8339683498_)))
                                        (_hd8339783502_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8339683498_))))
                                    (if (gx#stx-null? _tl8339883505_)
                                        (___match8950789508_
                                         _e8339083478_
                                         _hd8339183482_
                                         _tl8339283485_
                                         _e8339383488_
                                         _hd8339483492_
                                         _tl8339583495_
                                         _e8339683498_
                                         _hd8339783502_
                                         _tl8339883505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8338683415_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8338683415_)))))
                        (let () (declare (not safe)) (_g8338683415_)))))
                (let () (declare (not safe)) (_g8338683415_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx83533_)
      (let* ((___stx8953089531_ _$stx83533_)
             (_g8353883567_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx8953089531_))))
        (let ((___kont8953389534_
               (lambda (_L83659_ _L83661_)
                 (let ((__tmp89762 (gx#datum->syntax '#f '##fx=))
                       (__tmp89756
                        (let ((__tmp89758
                               (let ((__tmp89761
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp89759
                                      (let ((__tmp89760
                                             (let ()
                                               (declare (not safe))
                                               (cons _L83659_ '()))))
                                        (declare (not safe))
                                        (cons _L83661_ __tmp89760))))
                                 (declare (not safe))
                                 (cons __tmp89761 __tmp89759)))
                              (__tmp89757
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp89758 __tmp89757))))
                   (declare (not safe))
                   (cons __tmp89762 __tmp89756))))
              (___kont8953589536_
               (lambda (_L83604_ _L83606_)
                 (let ((__tmp89775 (gx#datum->syntax '#f 'let))
                       (__tmp89763
                        (let ((__tmp89773
                               (let ((__tmp89774
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83604_ '()))))
                                 (declare (not safe))
                                 (cons _L83604_ __tmp89774)))
                              (__tmp89764
                               (let ((__tmp89765
                                      (let ((__tmp89772
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp89766
                                             (let ((__tmp89768
                                                    (let ((__tmp89771
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp89769
                                                           (let ((__tmp89770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83604_ '()))))
                     (declare (not safe))
                     (cons _L83606_ __tmp89770))))
              (declare (not safe))
              (cons __tmp89771 __tmp89769)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp89767
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp89768 __tmp89767))))
                                        (declare (not safe))
                                        (cons __tmp89772 __tmp89766))))
                                 (declare (not safe))
                                 (cons __tmp89765 '()))))
                          (declare (not safe))
                          (cons __tmp89773 __tmp89764))))
                   (declare (not safe))
                   (cons __tmp89775 __tmp89763)))))
          (let ((___match8955789558_
                 (lambda (_e8354283629_
                          _hd8354383633_
                          _tl8354483636_
                          _e8354583639_
                          _hd8354683643_
                          _tl8354783646_
                          _e8354883649_
                          _hd8354983653_
                          _tl8355083656_)
                   (let ((_L83659_ _hd8354983653_) (_L83661_ _hd8354683643_))
                     (if (or (gx#identifier? _L83659_)
                             (gx#stx-fixnum? _L83659_))
                         (___kont8953389534_ _L83659_ _L83661_)
                         (___kont8953589536_
                          _hd8354983653_
                          _hd8354683643_))))))
            (if (gx#stx-pair? ___stx8953089531_)
                (let ((_e8354283629_ (gx#syntax-e ___stx8953089531_)))
                  (let ((_tl8354483636_
                         (let () (declare (not safe)) (##cdr _e8354283629_)))
                        (_hd8354383633_
                         (let () (declare (not safe)) (##car _e8354283629_))))
                    (if (gx#stx-pair? _tl8354483636_)
                        (let ((_e8354583639_ (gx#syntax-e _tl8354483636_)))
                          (let ((_tl8354783646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8354583639_)))
                                (_hd8354683643_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8354583639_))))
                            (if (gx#stx-pair? _tl8354783646_)
                                (let ((_e8354883649_
                                       (gx#syntax-e _tl8354783646_)))
                                  (let ((_tl8355083656_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8354883649_)))
                                        (_hd8354983653_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8354883649_))))
                                    (if (gx#stx-null? _tl8355083656_)
                                        (___match8955789558_
                                         _e8354283629_
                                         _hd8354383633_
                                         _tl8354483636_
                                         _e8354583639_
                                         _hd8354683643_
                                         _tl8354783646_
                                         _e8354883649_
                                         _hd8354983653_
                                         _tl8355083656_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8353883567_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8353883567_)))))
                        (let () (declare (not safe)) (_g8353883567_)))))
                (let () (declare (not safe)) (_g8353883567_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx83684_)
      (let* ((_g8368783708_
              (lambda (_g8368883704_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8368883704_)))
             (_g8368683936_
              (lambda (_g8368883712_)
                (if (gx#stx-pair? _g8368883712_)
                    (let ((_e8369183715_ (gx#syntax-e _g8368883712_)))
                      (let ((_hd8369283719_
                             (let ()
                               (declare (not safe))
                               (##car _e8369183715_)))
                            (_tl8369383722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8369183715_))))
                        (if (gx#stx-pair? _tl8369383722_)
                            (let ((_e8369483725_ (gx#syntax-e _tl8369383722_)))
                              (let ((_hd8369583729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8369483725_)))
                                    (_tl8369683732_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8369483725_))))
                                (if (gx#stx-pair? _hd8369583729_)
                                    (let ((_e8369783735_
                                           (gx#syntax-e _hd8369583729_)))
                                      (let ((_hd8369883739_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8369783735_)))
                                            (_tl8369983742_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8369783735_))))
                                        (if (gx#stx-pair? _tl8369983742_)
                                            (let ((_e8370083745_
                                                   (gx#syntax-e
                                                    _tl8369983742_)))
                                              (let ((_hd8370183749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8370083745_)))
                                                    (_tl8370283752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8370083745_))))
                                                (if (gx#stx-null?
                                                     _tl8370283752_)
                                                    (if (gx#stx-null?
                                                         _tl8369683732_)
                                                        ((lambda (_L83755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L83757_)
                   (let* ((_g8377583783_
                           (lambda (_g8377683779_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8377683779_)))
                          (_g8377483932_
                           (lambda (_g8377683787_)
                             ((lambda (_L83790_)
                                (let ()
                                  (let* ((_g8380283810_
                                          (lambda (_g8380383806_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8380383806_)))
                                         (_g8380183928_
                                          (lambda (_g8380383814_)
                                            ((lambda (_L83817_)
                                               (let ()
                                                 (let* ((_g8383083838_
                                                         (lambda (_g8383183834_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8383183834_)))
                                                        (_g8382983924_
                                                         (lambda (_g8383183842_)
                                                           ((lambda (_L83845_)
                                                              (let ()
                                                                (let* ((_g8385883866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8385983862_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8385983862_)))
                               (_g8385783920_
                                (lambda (_g8385983870_)
                                  ((lambda (_L83873_)
                                     (let ()
                                       (let* ((_g8388683894_
                                               (lambda (_g8388783890_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8388783890_)))
                                              (_g8388583916_
                                               (lambda (_g8388783898_)
                                                 ((lambda (_L83901_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp89908
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp89776
                                                               (let ((__tmp89878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89907 (gx#datum->syntax '#f 'def))
                                    (__tmp89879
                                     (let ((__tmp89880
                                            (let ((__tmp89881
                                                   (let ((__tmp89906
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp89882
                                                          (let ((__tmp89901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89905
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp89902
                                (let ((__tmp89903
                                       (let ((__tmp89904
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L83757_ __tmp89904))))
                                  (declare (not safe))
                                  (cons _L83790_ __tmp89903))))
                           (declare (not safe))
                           (cons __tmp89905 __tmp89902)))
                        (__tmp89883
                         (let ((__tmp89884
                                (let ((__tmp89900
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp89885
                                       (let ((__tmp89898
                                              (let ((__tmp89899
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp89899 '())))
                                             (__tmp89886
                                              (let ((__tmp89887
                                                     (let ((__tmp89897
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp89888
                                                            (let ((__tmp89896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89889
                           (let ((__tmp89890
                                  (let ((__tmp89895
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp89891
                                         (let ((__tmp89892
                                                (let ((__tmp89894
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp89893
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L83757_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp89894
                                                        __tmp89893))))
                                           (declare (not safe))
                                           (cons __tmp89892 '()))))
                                    (declare (not safe))
                                    (cons __tmp89895 __tmp89891))))
                             (declare (not safe))
                             (cons _L83755_ __tmp89890))))
                      (declare (not safe))
                      (cons __tmp89896 __tmp89889))))
               (declare (not safe))
               (cons __tmp89897 __tmp89888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89887 '()))))
                                         (declare (not safe))
                                         (cons __tmp89898 __tmp89886))))
                                  (declare (not safe))
                                  (cons __tmp89900 __tmp89885))))
                           (declare (not safe))
                           (cons __tmp89884 '()))))
                    (declare (not safe))
                    (cons __tmp89901 __tmp89883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89906
                                                           __tmp89882))))
                                              (declare (not safe))
                                              (cons __tmp89881 '()))))
                                       (declare (not safe))
                                       (cons _L83817_ __tmp89880))))
                                (declare (not safe))
                                (cons __tmp89907 __tmp89879)))
                             (__tmp89777
                              (let ((__tmp89848
                                     (let ((__tmp89877
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp89849
                                            (let ((__tmp89850
                                                   (let ((__tmp89851
                                                          (let ((__tmp89876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp89852
                         (let ((__tmp89871
                                (let ((__tmp89875
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp89872
                                       (let ((__tmp89873
                                              (let ((__tmp89874
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L83757_ __tmp89874))))
                                         (declare (not safe))
                                         (cons _L83790_ __tmp89873))))
                                  (declare (not safe))
                                  (cons __tmp89875 __tmp89872)))
                               (__tmp89853
                                (let ((__tmp89854
                                       (let ((__tmp89870
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp89855
                                              (let ((__tmp89868
                                                     (let ((__tmp89869
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp89869 '())))
                                                    (__tmp89856
                                                     (let ((__tmp89857
                                                            (let ((__tmp89867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp89858
                           (let ((__tmp89866 (gx#datum->syntax '#f 'klass))
                                 (__tmp89859
                                  (let ((__tmp89860
                                         (let ((__tmp89865
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp89861
                                                (let ((__tmp89862
                                                       (let ((__tmp89864
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp89863
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L83757_ '()))))
                 (declare (not safe))
                 (cons __tmp89864 __tmp89863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89862 '()))))
                                           (declare (not safe))
                                           (cons __tmp89865 __tmp89861))))
                                    (declare (not safe))
                                    (cons _L83755_ __tmp89860))))
                             (declare (not safe))
                             (cons __tmp89866 __tmp89859))))
                      (declare (not safe))
                      (cons __tmp89867 __tmp89858))))
               (declare (not safe))
               (cons __tmp89857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89868 __tmp89856))))
                                         (declare (not safe))
                                         (cons __tmp89870 __tmp89855))))
                                  (declare (not safe))
                                  (cons __tmp89854 '()))))
                           (declare (not safe))
                           (cons __tmp89871 __tmp89853))))
                    (declare (not safe))
                    (cons __tmp89876 __tmp89852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89851 '()))))
                                              (declare (not safe))
                                              (cons _L83845_ __tmp89850))))
                                       (declare (not safe))
                                       (cons __tmp89877 __tmp89849)))
                                    (__tmp89778
                                     (let ((__tmp89814
                                            (let ((__tmp89847
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp89815
                                                   (let ((__tmp89816
                                                          (let ((__tmp89817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89846
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp89818
                                (let ((__tmp89841
                                       (let ((__tmp89845
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp89842
                                              (let ((__tmp89843
                                                     (let ((__tmp89844
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L83757_
                                                             __tmp89844))))
                                                (declare (not safe))
                                                (cons _L83790_ __tmp89843))))
                                         (declare (not safe))
                                         (cons __tmp89845 __tmp89842)))
                                      (__tmp89819
                                       (let ((__tmp89820
                                              (let ((__tmp89840
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp89821
                                                     (let ((__tmp89836
                                                            (let ((__tmp89839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp89837
                           (let ((__tmp89838 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp89838 '()))))
                      (declare (not safe))
                      (cons __tmp89839 __tmp89837)))
                   (__tmp89822
                    (let ((__tmp89823
                           (let ((__tmp89835
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp89824
                                  (let ((__tmp89834
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89825
                                         (let ((__tmp89833
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp89826
                                                (let ((__tmp89827
                                                       (let ((__tmp89832
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp89828
                                                              (let ((__tmp89829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89831 (gx#datum->syntax '#f 'quote))
                                   (__tmp89830
                                    (let ()
                                      (declare (not safe))
                                      (cons _L83757_ '()))))
                               (declare (not safe))
                               (cons __tmp89831 __tmp89830))))
                        (declare (not safe))
                        (cons __tmp89829 '()))))
                 (declare (not safe))
                 (cons __tmp89832 __tmp89828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L83755_ __tmp89827))))
                                           (declare (not safe))
                                           (cons __tmp89833 __tmp89826))))
                                    (declare (not safe))
                                    (cons __tmp89834 __tmp89825))))
                             (declare (not safe))
                             (cons __tmp89835 __tmp89824))))
                      (declare (not safe))
                      (cons __tmp89823 '()))))
               (declare (not safe))
               (cons __tmp89836 __tmp89822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89840 __tmp89821))))
                                         (declare (not safe))
                                         (cons __tmp89820 '()))))
                                  (declare (not safe))
                                  (cons __tmp89841 __tmp89819))))
                           (declare (not safe))
                           (cons __tmp89846 __tmp89818))))
                    (declare (not safe))
                    (cons __tmp89817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L83873_
                                                           __tmp89816))))
                                              (declare (not safe))
                                              (cons __tmp89847 __tmp89815)))
                                           (__tmp89779
                                            (let ((__tmp89780
                                                   (let ((__tmp89813
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp89781
                                                          (let ((__tmp89782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89783
                                (let ((__tmp89812
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp89784
                                       (let ((__tmp89807
                                              (let ((__tmp89811
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp89808
                                                     (let ((__tmp89809
                                                            (let ((__tmp89810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L83757_ __tmp89810))))
               (declare (not safe))
               (cons _L83790_ __tmp89809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89811 __tmp89808)))
                                             (__tmp89785
                                              (let ((__tmp89786
                                                     (let ((__tmp89806
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp89787
                                                            (let ((__tmp89802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89805 (gx#datum->syntax '#f 'klass))
                                 (__tmp89803
                                  (let ((__tmp89804
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp89804 '()))))
                             (declare (not safe))
                             (cons __tmp89805 __tmp89803)))
                          (__tmp89788
                           (let ((__tmp89789
                                  (let ((__tmp89801
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp89790
                                         (let ((__tmp89800
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp89791
                                                (let ((__tmp89799
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp89792
                                                       (let ((__tmp89793
                                                              (let ((__tmp89798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp89794
                             (let ((__tmp89795
                                    (let ((__tmp89797
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp89796
                                           (let ()
                                             (declare (not safe))
                                             (cons _L83757_ '()))))
                                      (declare (not safe))
                                      (cons __tmp89797 __tmp89796))))
                               (declare (not safe))
                               (cons __tmp89795 '()))))
                        (declare (not safe))
                        (cons __tmp89798 __tmp89794))))
                 (declare (not safe))
                 (cons _L83755_ __tmp89793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp89799
                                                        __tmp89792))))
                                           (declare (not safe))
                                           (cons __tmp89800 __tmp89791))))
                                    (declare (not safe))
                                    (cons __tmp89801 __tmp89790))))
                             (declare (not safe))
                             (cons __tmp89789 '()))))
                      (declare (not safe))
                      (cons __tmp89802 __tmp89788))))
               (declare (not safe))
               (cons __tmp89806 __tmp89787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89786 '()))))
                                         (declare (not safe))
                                         (cons __tmp89807 __tmp89785))))
                                  (declare (not safe))
                                  (cons __tmp89812 __tmp89784))))
                           (declare (not safe))
                           (cons __tmp89783 '()))))
                    (declare (not safe))
                    (cons _L83901_ __tmp89782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89813
                                                           __tmp89781))))
                                              (declare (not safe))
                                              (cons __tmp89780 '()))))
                                       (declare (not safe))
                                       (cons __tmp89814 __tmp89779))))
                                (declare (not safe))
                                (cons __tmp89848 __tmp89778))))
                         (declare (not safe))
                         (cons __tmp89878 __tmp89777))))
                  (declare (not safe))
                  (cons __tmp89908 __tmp89776)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8388783898_))))
                                         (_g8388583916_
                                          (gx#stx-identifier
                                           _L83757_
                                           '"&"
                                           _L83873_)))))
                                   _g8385983870_))))
                          (_g8385783920_
                           (gx#stx-identifier _L83757_ _L83817_ '"-set!")))))
                    _g8383183842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8382983924_
                                                    (gx#stx-identifier
                                                     _L83757_
                                                     '"&"
                                                     _L83817_)))))
                                             _g8380383814_))))
                                    (_g8380183928_
                                     (gx#stx-identifier
                                      _L83757_
                                      '"class-type-"
                                      _L83757_)))))
                              _g8377683787_))))
                     (_g8377483932_ (gx#core-quote-syntax 'class::t))))
                 _hd8370183749_
                 _hd8369883739_)
                (_g8368783708_ _g8368883712_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8368783708_
                                                     _g8368883712_))))
                                            (_g8368783708_ _g8368883712_))))
                                    (_g8368783708_ _g8368883712_))))
                            (_g8368783708_ _g8368883712_))))
                    (_g8368783708_ _g8368883712_)))))
        (_g8368683936_ _stx83684_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx83940_)
      (let* ((_g8394483973_
              (lambda (_g8394583969_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8394583969_)))
             (_g8394384073_
              (lambda (_g8394583977_)
                (if (gx#stx-pair? _g8394583977_)
                    (let ((_e8394883980_ (gx#syntax-e _g8394583977_)))
                      (let ((_hd8394983984_
                             (let ()
                               (declare (not safe))
                               (##car _e8394883980_)))
                            (_tl8395083987_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8394883980_))))
                        (if (gx#stx-pair/null? _tl8395083987_)
                            (let ((_g89909_
                                   (gx#syntax-split-splice _tl8395083987_ '0)))
                              (begin
                                (let ((_g89910_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g89909_)
                                             (##vector-length _g89909_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g89910_ 2)))
                                      (error "Context expects 2 values"
                                             _g89910_)))
                                (let ((_target8395183990_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89909_ 0)))
                                      (_tl8395383993_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g89909_ 1))))
                                  (if (gx#stx-null? _tl8395383993_)
                                      (letrec ((_loop8395483996_
                                                (lambda (_hd8395284000_
                                                         _field8395884003_
                                                         _slot8395984005_)
                                                  (if (gx#stx-pair?
                                                       _hd8395284000_)
                                                      (let ((_e8395584008_
                                                             (gx#syntax-e
                                                              _hd8395284000_)))
                                                        (let ((_lp-hd8395684012_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8395584008_)))
                      (_lp-tl8395784015_
                       (let () (declare (not safe)) (##cdr _e8395584008_))))
                  (if (gx#stx-pair? _lp-hd8395684012_)
                      (let ((_e8396284018_ (gx#syntax-e _lp-hd8395684012_)))
                        (let ((_hd8396384022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8396284018_)))
                              (_tl8396484025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8396284018_))))
                          (if (gx#stx-pair? _tl8396484025_)
                              (let ((_e8396584028_
                                     (gx#syntax-e _tl8396484025_)))
                                (let ((_hd8396684032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8396584028_)))
                                      (_tl8396784035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8396584028_))))
                                  (if (gx#stx-null? _tl8396784035_)
                                      (_loop8395483996_
                                       _lp-tl8395784015_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8396684032_
                                               _field8395884003_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8396384022_
                                               _slot8395984005_)))
                                      (_g8394483973_ _g8394583977_))))
                              (_g8394483973_ _g8394583977_))))
                      (_g8394483973_ _g8394583977_))))
              (let ((_field8396084038_ (reverse _field8395884003_))
                    (_slot8396184041_ (reverse _slot8395984005_)))
                ((lambda (_L84044_ _L84046_)
                   (let ((__tmp89918 (gx#datum->syntax '#f 'begin))
                         (__tmp89911
                          (begin
                            (gx#syntax-check-splice-targets _L84044_ _L84046_)
                            (let ((__tmp89912
                                   (lambda (_g8406184065_
                                            _g8406284068_
                                            _g8406384070_)
                                     (let ((__tmp89913
                                            (let ((__tmp89917
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp89914
                                                   (let ((__tmp89915
                                                          (let ((__tmp89916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8406184065_ '()))))
                    (declare (not safe))
                    (cons _g8406284068_ __tmp89916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89915 '()))))
                                              (declare (not safe))
                                              (cons __tmp89917 __tmp89914))))
                                       (declare (not safe))
                                       (cons __tmp89913 _g8406384070_)))))
                              (declare (not safe))
                              (foldr2 __tmp89912 '() _L84044_ _L84046_)))))
                     (declare (not safe))
                     (cons __tmp89918 __tmp89911)))
                 _field8396084038_
                 _slot8396184041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8395483996_
                                         _target8395183990_
                                         '()
                                         '()))
                                      (_g8394483973_ _g8394583977_)))))
                            (_g8394483973_ _g8394583977_))))
                    (_g8394483973_ _g8394583977_)))))
        (_g8394384073_ _$stx83940_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84078_)
      (let* ((_g8408284108_
              (lambda (_g8408384104_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8408384104_)))
             (_g8408184191_
              (lambda (_g8408384112_)
                (if (gx#stx-pair? _g8408384112_)
                    (let ((_e8408884115_ (gx#syntax-e _g8408384112_)))
                      (let ((_hd8408984119_
                             (let ()
                               (declare (not safe))
                               (##car _e8408884115_)))
                            (_tl8409084122_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8408884115_))))
                        (if (gx#stx-pair? _tl8409084122_)
                            (let ((_e8409184125_ (gx#syntax-e _tl8409084122_)))
                              (let ((_hd8409284129_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8409184125_)))
                                    (_tl8409384132_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8409184125_))))
                                (if (gx#stx-pair? _tl8409384132_)
                                    (let ((_e8409484135_
                                           (gx#syntax-e _tl8409384132_)))
                                      (let ((_hd8409584139_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8409484135_)))
                                            (_tl8409684142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8409484135_))))
                                        (if (gx#stx-pair? _tl8409684142_)
                                            (let ((_e8409784145_
                                                   (gx#syntax-e
                                                    _tl8409684142_)))
                                              (let ((_hd8409884149_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8409784145_)))
                                                    (_tl8409984152_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8409784145_))))
                                                (if (gx#stx-pair?
                                                     _tl8409984152_)
                                                    (let ((_e8410084155_
                                                           (gx#syntax-e
                                                            _tl8409984152_)))
                                                      (let ((_hd8410184159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8410084155_)))
                    (_tl8410284162_
                     (let () (declare (not safe)) (##cdr _e8410084155_))))
                (if (gx#stx-null? _tl8410284162_)
                    ((lambda (_L84165_ _L84167_ _L84168_ _L84169_)
                       (let ((__tmp89965 (gx#datum->syntax '#f 'if))
                             (__tmp89919
                              (let ((__tmp89962
                                     (let ((__tmp89964
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp89963
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84169_ '()))))
                                       (declare (not safe))
                                       (cons __tmp89964 __tmp89963)))
                                    (__tmp89920
                                     (let ((__tmp89925
                                            (let ((__tmp89961
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp89926
                                                   (let ((__tmp89955
                                                          (let ((__tmp89960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp89956
                         (let ((__tmp89957
                                (let ((__tmp89959
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp89958
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84169_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89959 __tmp89958))))
                           (declare (not safe))
                           (cons __tmp89957 '()))))
                    (declare (not safe))
                    (cons __tmp89960 __tmp89956)))
                 (__tmp89927
                  (let ((__tmp89928
                         (let ((__tmp89954 (gx#datum->syntax '#f 'cond))
                               (__tmp89929
                                (let ((__tmp89937
                                       (let ((__tmp89941
                                              (let ((__tmp89953
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp89942
                                                     (let ((__tmp89949
                                                            (let ((__tmp89952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp89950
                           (let ((__tmp89951 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp89951 '()))))
                      (declare (not safe))
                      (cons __tmp89952 __tmp89950)))
                   (__tmp89943
                    (let ((__tmp89944
                           (let ((__tmp89948
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp89945
                                  (let ((__tmp89947
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp89946
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84168_ '()))))
                                    (declare (not safe))
                                    (cons __tmp89947 __tmp89946))))
                             (declare (not safe))
                             (cons __tmp89948 __tmp89945))))
                      (declare (not safe))
                      (cons __tmp89944 '()))))
               (declare (not safe))
               (cons __tmp89949 __tmp89943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89953 __tmp89942)))
                                             (__tmp89938
                                              (let ((__tmp89940
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp89939
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84167_ '()))))
                                                (declare (not safe))
                                                (cons __tmp89940 __tmp89939))))
                                         (declare (not safe))
                                         (cons __tmp89941 __tmp89938)))
                                      (__tmp89930
                                       (let ((__tmp89931
                                              (let ((__tmp89936
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp89932
                                                     (let ((__tmp89933
                                                            (let ((__tmp89934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp89935
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84168_ '()))))
                             (declare (not safe))
                             (cons _L84169_ __tmp89935))))
                      (declare (not safe))
                      (cons _L84165_ __tmp89934))))
               (declare (not safe))
               (cons __tmp89933 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp89936 __tmp89932))))
                                         (declare (not safe))
                                         (cons __tmp89931 '()))))
                                  (declare (not safe))
                                  (cons __tmp89937 __tmp89930))))
                           (declare (not safe))
                           (cons __tmp89954 __tmp89929))))
                    (declare (not safe))
                    (cons __tmp89928 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89955
                                                           __tmp89927))))
                                              (declare (not safe))
                                              (cons __tmp89961 __tmp89926)))
                                           (__tmp89921
                                            (let ((__tmp89922
                                                   (let ((__tmp89923
                                                          (let ((__tmp89924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84168_ '()))))
                    (declare (not safe))
                    (cons _L84169_ __tmp89924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84165_
                                                           __tmp89923))))
                                              (declare (not safe))
                                              (cons __tmp89922 '()))))
                                       (declare (not safe))
                                       (cons __tmp89925 __tmp89921))))
                                (declare (not safe))
                                (cons __tmp89962 __tmp89920))))
                         (declare (not safe))
                         (cons __tmp89965 __tmp89919)))
                     _hd8410184159_
                     _hd8409884149_
                     _hd8409584139_
                     _hd8409284129_)
                    (_g8408284108_ _g8408384112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8408284108_
                                                     _g8408384112_))))
                                            (_g8408284108_ _g8408384112_))))
                                    (_g8408284108_ _g8408384112_))))
                            (_g8408284108_ _g8408384112_))))
                    (_g8408284108_ _g8408384112_)))))
        (_g8408184191_ _$stx84078_)))))
