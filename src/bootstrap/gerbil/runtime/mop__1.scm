(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61920_)
      (let* ((___stx6446164462_ _$stx61920_)
             (_g6192561954_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6446164462_))))
        (let ((___kont6446464465_
               (lambda (_L62047_ _L62049_)
                 (let ((__tmp64801 (gx#datum->syntax '#f '##fx=))
                       (__tmp64795
                        (let ((__tmp64797
                               (let ((__tmp64800
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64798
                                      (let ((__tmp64799
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62047_ '()))))
                                        (declare (not safe))
                                        (cons _L62049_ __tmp64799))))
                                 (declare (not safe))
                                 (cons __tmp64800 __tmp64798)))
                              (__tmp64796
                               (let ()
                                 (declare (not safe))
                                 (cons _L62047_ '()))))
                          (declare (not safe))
                          (cons __tmp64797 __tmp64796))))
                   (declare (not safe))
                   (cons __tmp64801 __tmp64795))))
              (___kont6446664467_
               (lambda (_L61991_ _L61993_)
                 (let ((__tmp64814 (gx#datum->syntax '#f 'let))
                       (__tmp64802
                        (let ((__tmp64812
                               (let ((__tmp64813
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61991_ '()))))
                                 (declare (not safe))
                                 (cons _L61991_ __tmp64813)))
                              (__tmp64803
                               (let ((__tmp64804
                                      (let ((__tmp64811
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64805
                                             (let ((__tmp64807
                                                    (let ((__tmp64810
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64808
                                                           (let ((__tmp64809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61991_ '()))))
                     (declare (not safe))
                     (cons _L61993_ __tmp64809))))
              (declare (not safe))
              (cons __tmp64810 __tmp64808)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64806
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61991_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64807 __tmp64806))))
                                        (declare (not safe))
                                        (cons __tmp64811 __tmp64805))))
                                 (declare (not safe))
                                 (cons __tmp64804 '()))))
                          (declare (not safe))
                          (cons __tmp64812 __tmp64803))))
                   (declare (not safe))
                   (cons __tmp64814 __tmp64802)))))
          (let ((___match6448864489_
                 (lambda (_e6193162017_
                          _hd6193062021_
                          _tl6192962024_
                          _e6193462027_
                          _hd6193362031_
                          _tl6193262034_
                          _e6193762037_
                          _hd6193662041_
                          _tl6193562044_)
                   (let ((_L62047_ _hd6193662041_) (_L62049_ _hd6193362031_))
                     (if (or (gx#identifier? _L62047_)
                             (gx#stx-fixnum? _L62047_))
                         (___kont6446464465_ _L62047_ _L62049_)
                         (___kont6446664467_
                          _hd6193662041_
                          _hd6193362031_))))))
            (if (gx#stx-pair? ___stx6446164462_)
                (let ((_e6193162017_ (gx#syntax-e ___stx6446164462_)))
                  (let ((_tl6192962024_
                         (let () (declare (not safe)) (##cdr _e6193162017_)))
                        (_hd6193062021_
                         (let () (declare (not safe)) (##car _e6193162017_))))
                    (if (gx#stx-pair? _tl6192962024_)
                        (let ((_e6193462027_ (gx#syntax-e _tl6192962024_)))
                          (let ((_tl6193262034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6193462027_)))
                                (_hd6193362031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6193462027_))))
                            (if (gx#stx-pair? _tl6193262034_)
                                (let ((_e6193762037_
                                       (gx#syntax-e _tl6193262034_)))
                                  (let ((_tl6193562044_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6193762037_)))
                                        (_hd6193662041_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6193762037_))))
                                    (if (gx#stx-null? _tl6193562044_)
                                        (___match6448864489_
                                         _e6193162017_
                                         _hd6193062021_
                                         _tl6192962024_
                                         _e6193462027_
                                         _hd6193362031_
                                         _tl6193262034_
                                         _e6193762037_
                                         _hd6193662041_
                                         _tl6193562044_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6192561954_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6192561954_)))))
                        (let () (declare (not safe)) (_g6192561954_)))))
                (let () (declare (not safe)) (_g6192561954_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62072_)
      (let* ((___stx6451164512_ _$stx62072_)
             (_g6207762106_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6451164512_))))
        (let ((___kont6451464515_
               (lambda (_L62198_ _L62200_)
                 (let ((__tmp64821 (gx#datum->syntax '#f '##fx=))
                       (__tmp64815
                        (let ((__tmp64817
                               (let ((__tmp64820
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64818
                                      (let ((__tmp64819
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62198_ '()))))
                                        (declare (not safe))
                                        (cons _L62200_ __tmp64819))))
                                 (declare (not safe))
                                 (cons __tmp64820 __tmp64818)))
                              (__tmp64816
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64817 __tmp64816))))
                   (declare (not safe))
                   (cons __tmp64821 __tmp64815))))
              (___kont6451664517_
               (lambda (_L62143_ _L62145_)
                 (let ((__tmp64834 (gx#datum->syntax '#f 'let))
                       (__tmp64822
                        (let ((__tmp64832
                               (let ((__tmp64833
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62143_ '()))))
                                 (declare (not safe))
                                 (cons _L62143_ __tmp64833)))
                              (__tmp64823
                               (let ((__tmp64824
                                      (let ((__tmp64831
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64825
                                             (let ((__tmp64827
                                                    (let ((__tmp64830
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64828
                                                           (let ((__tmp64829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62143_ '()))))
                     (declare (not safe))
                     (cons _L62145_ __tmp64829))))
              (declare (not safe))
              (cons __tmp64830 __tmp64828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64826
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64827 __tmp64826))))
                                        (declare (not safe))
                                        (cons __tmp64831 __tmp64825))))
                                 (declare (not safe))
                                 (cons __tmp64824 '()))))
                          (declare (not safe))
                          (cons __tmp64832 __tmp64823))))
                   (declare (not safe))
                   (cons __tmp64834 __tmp64822)))))
          (let ((___match6453864539_
                 (lambda (_e6208362168_
                          _hd6208262172_
                          _tl6208162175_
                          _e6208662178_
                          _hd6208562182_
                          _tl6208462185_
                          _e6208962188_
                          _hd6208862192_
                          _tl6208762195_)
                   (let ((_L62198_ _hd6208862192_) (_L62200_ _hd6208562182_))
                     (if (or (gx#identifier? _L62198_)
                             (gx#stx-fixnum? _L62198_))
                         (___kont6451464515_ _L62198_ _L62200_)
                         (___kont6451664517_
                          _hd6208862192_
                          _hd6208562182_))))))
            (if (gx#stx-pair? ___stx6451164512_)
                (let ((_e6208362168_ (gx#syntax-e ___stx6451164512_)))
                  (let ((_tl6208162175_
                         (let () (declare (not safe)) (##cdr _e6208362168_)))
                        (_hd6208262172_
                         (let () (declare (not safe)) (##car _e6208362168_))))
                    (if (gx#stx-pair? _tl6208162175_)
                        (let ((_e6208662178_ (gx#syntax-e _tl6208162175_)))
                          (let ((_tl6208462185_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6208662178_)))
                                (_hd6208562182_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6208662178_))))
                            (if (gx#stx-pair? _tl6208462185_)
                                (let ((_e6208962188_
                                       (gx#syntax-e _tl6208462185_)))
                                  (let ((_tl6208762195_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6208962188_)))
                                        (_hd6208862192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6208962188_))))
                                    (if (gx#stx-null? _tl6208762195_)
                                        (___match6453864539_
                                         _e6208362168_
                                         _hd6208262172_
                                         _tl6208162175_
                                         _e6208662178_
                                         _hd6208562182_
                                         _tl6208462185_
                                         _e6208962188_
                                         _hd6208862192_
                                         _tl6208762195_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6207762106_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6207762106_)))))
                        (let () (declare (not safe)) (_g6207762106_)))))
                (let () (declare (not safe)) (_g6207762106_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62223_)
      (let* ((_g6222662247_
              (lambda (_g6222762243_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6222762243_)))
             (_g6222562475_
              (lambda (_g6222762251_)
                (if (gx#stx-pair? _g6222762251_)
                    (let ((_e6223262254_ (gx#syntax-e _g6222762251_)))
                      (let ((_hd6223162258_
                             (let ()
                               (declare (not safe))
                               (##car _e6223262254_)))
                            (_tl6223062261_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6223262254_))))
                        (if (gx#stx-pair? _tl6223062261_)
                            (let ((_e6223562264_ (gx#syntax-e _tl6223062261_)))
                              (let ((_hd6223462268_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6223562264_)))
                                    (_tl6223362271_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6223562264_))))
                                (if (gx#stx-pair? _hd6223462268_)
                                    (let ((_e6223862274_
                                           (gx#syntax-e _hd6223462268_)))
                                      (let ((_hd6223762278_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6223862274_)))
                                            (_tl6223662281_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6223862274_))))
                                        (if (gx#stx-pair? _tl6223662281_)
                                            (let ((_e6224162284_
                                                   (gx#syntax-e
                                                    _tl6223662281_)))
                                              (let ((_hd6224062288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6224162284_)))
                                                    (_tl6223962291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6224162284_))))
                                                (if (gx#stx-null?
                                                     _tl6223962291_)
                                                    (if (gx#stx-null?
                                                         _tl6223362271_)
                                                        ((lambda (_L62294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62296_)
                   (let* ((_g6231462322_
                           (lambda (_g6231562318_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6231562318_)))
                          (_g6231362471_
                           (lambda (_g6231562326_)
                             ((lambda (_L62329_)
                                (let ()
                                  (let* ((_g6234162349_
                                          (lambda (_g6234262345_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6234262345_)))
                                         (_g6234062467_
                                          (lambda (_g6234262353_)
                                            ((lambda (_L62356_)
                                               (let ()
                                                 (let* ((_g6236962377_
                                                         (lambda (_g6237062373_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6237062373_)))
                                                        (_g6236862463_
                                                         (lambda (_g6237062381_)
                                                           ((lambda (_L62384_)
                                                              (let ()
                                                                (let* ((_g6239762405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6239862401_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6239862401_)))
                               (_g6239662459_
                                (lambda (_g6239862409_)
                                  ((lambda (_L62412_)
                                     (let ()
                                       (let* ((_g6242562433_
                                               (lambda (_g6242662429_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6242662429_)))
                                              (_g6242462455_
                                               (lambda (_g6242662437_)
                                                 ((lambda (_L62440_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64967
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64835
                                                               (let ((__tmp64937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64966 (gx#datum->syntax '#f 'def))
                                    (__tmp64938
                                     (let ((__tmp64939
                                            (let ((__tmp64940
                                                   (let ((__tmp64965
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64941
                                                          (let ((__tmp64960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64964
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64961
                                (let ((__tmp64962
                                       (let ((__tmp64963
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62296_ __tmp64963))))
                                  (declare (not safe))
                                  (cons _L62329_ __tmp64962))))
                           (declare (not safe))
                           (cons __tmp64964 __tmp64961)))
                        (__tmp64942
                         (let ((__tmp64943
                                (let ((__tmp64959
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64944
                                       (let ((__tmp64957
                                              (let ((__tmp64958
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64958 '())))
                                             (__tmp64945
                                              (let ((__tmp64946
                                                     (let ((__tmp64956
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64947
                                                            (let ((__tmp64955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64948
                           (let ((__tmp64949
                                  (let ((__tmp64954
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64950
                                         (let ((__tmp64951
                                                (let ((__tmp64953
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64952
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62296_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64953
                                                        __tmp64952))))
                                           (declare (not safe))
                                           (cons __tmp64951 '()))))
                                    (declare (not safe))
                                    (cons __tmp64954 __tmp64950))))
                             (declare (not safe))
                             (cons _L62294_ __tmp64949))))
                      (declare (not safe))
                      (cons __tmp64955 __tmp64948))))
               (declare (not safe))
               (cons __tmp64956 __tmp64947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64946 '()))))
                                         (declare (not safe))
                                         (cons __tmp64957 __tmp64945))))
                                  (declare (not safe))
                                  (cons __tmp64959 __tmp64944))))
                           (declare (not safe))
                           (cons __tmp64943 '()))))
                    (declare (not safe))
                    (cons __tmp64960 __tmp64942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64965
                                                           __tmp64941))))
                                              (declare (not safe))
                                              (cons __tmp64940 '()))))
                                       (declare (not safe))
                                       (cons _L62356_ __tmp64939))))
                                (declare (not safe))
                                (cons __tmp64966 __tmp64938)))
                             (__tmp64836
                              (let ((__tmp64907
                                     (let ((__tmp64936
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64908
                                            (let ((__tmp64909
                                                   (let ((__tmp64910
                                                          (let ((__tmp64935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64911
                         (let ((__tmp64930
                                (let ((__tmp64934
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64931
                                       (let ((__tmp64932
                                              (let ((__tmp64933
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62296_ __tmp64933))))
                                         (declare (not safe))
                                         (cons _L62329_ __tmp64932))))
                                  (declare (not safe))
                                  (cons __tmp64934 __tmp64931)))
                               (__tmp64912
                                (let ((__tmp64913
                                       (let ((__tmp64929
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64914
                                              (let ((__tmp64927
                                                     (let ((__tmp64928
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64928 '())))
                                                    (__tmp64915
                                                     (let ((__tmp64916
                                                            (let ((__tmp64926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64917
                           (let ((__tmp64925 (gx#datum->syntax '#f 'klass))
                                 (__tmp64918
                                  (let ((__tmp64919
                                         (let ((__tmp64924
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64920
                                                (let ((__tmp64921
                                                       (let ((__tmp64923
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64922
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62296_ '()))))
                 (declare (not safe))
                 (cons __tmp64923 __tmp64922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64921 '()))))
                                           (declare (not safe))
                                           (cons __tmp64924 __tmp64920))))
                                    (declare (not safe))
                                    (cons _L62294_ __tmp64919))))
                             (declare (not safe))
                             (cons __tmp64925 __tmp64918))))
                      (declare (not safe))
                      (cons __tmp64926 __tmp64917))))
               (declare (not safe))
               (cons __tmp64916 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64927 __tmp64915))))
                                         (declare (not safe))
                                         (cons __tmp64929 __tmp64914))))
                                  (declare (not safe))
                                  (cons __tmp64913 '()))))
                           (declare (not safe))
                           (cons __tmp64930 __tmp64912))))
                    (declare (not safe))
                    (cons __tmp64935 __tmp64911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64910 '()))))
                                              (declare (not safe))
                                              (cons _L62384_ __tmp64909))))
                                       (declare (not safe))
                                       (cons __tmp64936 __tmp64908)))
                                    (__tmp64837
                                     (let ((__tmp64873
                                            (let ((__tmp64906
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64874
                                                   (let ((__tmp64875
                                                          (let ((__tmp64876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64905
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64877
                                (let ((__tmp64900
                                       (let ((__tmp64904
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64901
                                              (let ((__tmp64902
                                                     (let ((__tmp64903
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62296_
                                                             __tmp64903))))
                                                (declare (not safe))
                                                (cons _L62329_ __tmp64902))))
                                         (declare (not safe))
                                         (cons __tmp64904 __tmp64901)))
                                      (__tmp64878
                                       (let ((__tmp64879
                                              (let ((__tmp64899
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64880
                                                     (let ((__tmp64895
                                                            (let ((__tmp64898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64896
                           (let ((__tmp64897 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64897 '()))))
                      (declare (not safe))
                      (cons __tmp64898 __tmp64896)))
                   (__tmp64881
                    (let ((__tmp64882
                           (let ((__tmp64894
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64883
                                  (let ((__tmp64893
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64884
                                         (let ((__tmp64892
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64885
                                                (let ((__tmp64886
                                                       (let ((__tmp64891
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64887
                                                              (let ((__tmp64888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64890 (gx#datum->syntax '#f 'quote))
                                   (__tmp64889
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62296_ '()))))
                               (declare (not safe))
                               (cons __tmp64890 __tmp64889))))
                        (declare (not safe))
                        (cons __tmp64888 '()))))
                 (declare (not safe))
                 (cons __tmp64891 __tmp64887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62294_ __tmp64886))))
                                           (declare (not safe))
                                           (cons __tmp64892 __tmp64885))))
                                    (declare (not safe))
                                    (cons __tmp64893 __tmp64884))))
                             (declare (not safe))
                             (cons __tmp64894 __tmp64883))))
                      (declare (not safe))
                      (cons __tmp64882 '()))))
               (declare (not safe))
               (cons __tmp64895 __tmp64881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64899 __tmp64880))))
                                         (declare (not safe))
                                         (cons __tmp64879 '()))))
                                  (declare (not safe))
                                  (cons __tmp64900 __tmp64878))))
                           (declare (not safe))
                           (cons __tmp64905 __tmp64877))))
                    (declare (not safe))
                    (cons __tmp64876 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62412_
                                                           __tmp64875))))
                                              (declare (not safe))
                                              (cons __tmp64906 __tmp64874)))
                                           (__tmp64838
                                            (let ((__tmp64839
                                                   (let ((__tmp64872
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64840
                                                          (let ((__tmp64841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64842
                                (let ((__tmp64871
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64843
                                       (let ((__tmp64866
                                              (let ((__tmp64870
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64867
                                                     (let ((__tmp64868
                                                            (let ((__tmp64869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62296_ __tmp64869))))
               (declare (not safe))
               (cons _L62329_ __tmp64868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64870 __tmp64867)))
                                             (__tmp64844
                                              (let ((__tmp64845
                                                     (let ((__tmp64865
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64846
                                                            (let ((__tmp64861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64864 (gx#datum->syntax '#f 'klass))
                                 (__tmp64862
                                  (let ((__tmp64863
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64863 '()))))
                             (declare (not safe))
                             (cons __tmp64864 __tmp64862)))
                          (__tmp64847
                           (let ((__tmp64848
                                  (let ((__tmp64860
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64849
                                         (let ((__tmp64859
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64850
                                                (let ((__tmp64858
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64851
                                                       (let ((__tmp64852
                                                              (let ((__tmp64857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64853
                             (let ((__tmp64854
                                    (let ((__tmp64856
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64855
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62296_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64856 __tmp64855))))
                               (declare (not safe))
                               (cons __tmp64854 '()))))
                        (declare (not safe))
                        (cons __tmp64857 __tmp64853))))
                 (declare (not safe))
                 (cons _L62294_ __tmp64852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64858
                                                        __tmp64851))))
                                           (declare (not safe))
                                           (cons __tmp64859 __tmp64850))))
                                    (declare (not safe))
                                    (cons __tmp64860 __tmp64849))))
                             (declare (not safe))
                             (cons __tmp64848 '()))))
                      (declare (not safe))
                      (cons __tmp64861 __tmp64847))))
               (declare (not safe))
               (cons __tmp64865 __tmp64846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64845 '()))))
                                         (declare (not safe))
                                         (cons __tmp64866 __tmp64844))))
                                  (declare (not safe))
                                  (cons __tmp64871 __tmp64843))))
                           (declare (not safe))
                           (cons __tmp64842 '()))))
                    (declare (not safe))
                    (cons _L62440_ __tmp64841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64872
                                                           __tmp64840))))
                                              (declare (not safe))
                                              (cons __tmp64839 '()))))
                                       (declare (not safe))
                                       (cons __tmp64873 __tmp64838))))
                                (declare (not safe))
                                (cons __tmp64907 __tmp64837))))
                         (declare (not safe))
                         (cons __tmp64937 __tmp64836))))
                  (declare (not safe))
                  (cons __tmp64967 __tmp64835)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6242662437_))))
                                         (_g6242462455_
                                          (gx#stx-identifier
                                           _L62296_
                                           '"&"
                                           _L62412_)))))
                                   _g6239862409_))))
                          (_g6239662459_
                           (gx#stx-identifier _L62296_ _L62356_ '"-set!")))))
                    _g6237062381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6236862463_
                                                    (gx#stx-identifier
                                                     _L62296_
                                                     '"&"
                                                     _L62356_)))))
                                             _g6234262353_))))
                                    (_g6234062467_
                                     (gx#stx-identifier
                                      _L62296_
                                      '"class-type-"
                                      _L62296_)))))
                              _g6231562326_))))
                     (_g6231362471_ (gx#core-quote-syntax 'class::t))))
                 _hd6224062288_
                 _hd6223762278_)
                (_g6222662247_ _g6222762251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6222662247_
                                                     _g6222762251_))))
                                            (_g6222662247_ _g6222762251_))))
                                    (_g6222662247_ _g6222762251_))))
                            (_g6222662247_ _g6222762251_))))
                    (_g6222662247_ _g6222762251_)))))
        (_g6222562475_ _stx62223_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62479_)
      (let* ((_g6248362512_
              (lambda (_g6248462508_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6248462508_)))
             (_g6248262612_
              (lambda (_g6248462516_)
                (if (gx#stx-pair? _g6248462516_)
                    (let ((_e6248962519_ (gx#syntax-e _g6248462516_)))
                      (let ((_hd6248862523_
                             (let ()
                               (declare (not safe))
                               (##car _e6248962519_)))
                            (_tl6248762526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6248962519_))))
                        (if (gx#stx-pair/null? _tl6248762526_)
                            (let ((_g64968_
                                   (gx#syntax-split-splice _tl6248762526_ '0)))
                              (begin
                                (let ((_g64969_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64968_)
                                             (##vector-length _g64968_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64969_ 2)))
                                      (error "Context expects 2 values"
                                             _g64969_)))
                                (let ((_target6249062529_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64968_ 0)))
                                      (_tl6249262532_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64968_ 1))))
                                  (if (gx#stx-null? _tl6249262532_)
                                      (letrec ((_loop6249362535_
                                                (lambda (_hd6249162539_
                                                         _field6249762542_
                                                         _slot6249862544_)
                                                  (if (gx#stx-pair?
                                                       _hd6249162539_)
                                                      (let ((_e6249462547_
                                                             (gx#syntax-e
                                                              _hd6249162539_)))
                                                        (let ((_lp-hd6249562551_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6249462547_)))
                      (_lp-tl6249662554_
                       (let () (declare (not safe)) (##cdr _e6249462547_))))
                  (if (gx#stx-pair? _lp-hd6249562551_)
                      (let ((_e6250362557_ (gx#syntax-e _lp-hd6249562551_)))
                        (let ((_hd6250262561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6250362557_)))
                              (_tl6250162564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6250362557_))))
                          (if (gx#stx-pair? _tl6250162564_)
                              (let ((_e6250662567_
                                     (gx#syntax-e _tl6250162564_)))
                                (let ((_hd6250562571_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6250662567_)))
                                      (_tl6250462574_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6250662567_))))
                                  (if (gx#stx-null? _tl6250462574_)
                                      (_loop6249362535_
                                       _lp-tl6249662554_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6250562571_
                                               _field6249762542_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6250262561_
                                               _slot6249862544_)))
                                      (_g6248362512_ _g6248462516_))))
                              (_g6248362512_ _g6248462516_))))
                      (_g6248362512_ _g6248462516_))))
              (let ((_field6249962577_ (reverse _field6249762542_))
                    (_slot6250062580_ (reverse _slot6249862544_)))
                ((lambda (_L62583_ _L62585_)
                   (let ((__tmp64977 (gx#datum->syntax '#f 'begin))
                         (__tmp64970
                          (begin
                            (gx#syntax-check-splice-targets _L62583_ _L62585_)
                            (let ((__tmp64971
                                   (lambda (_g6260062604_
                                            _g6260162607_
                                            _g6260262609_)
                                     (let ((__tmp64972
                                            (let ((__tmp64976
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64973
                                                   (let ((__tmp64974
                                                          (let ((__tmp64975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6260062604_ '()))))
                    (declare (not safe))
                    (cons _g6260162607_ __tmp64975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64974 '()))))
                                              (declare (not safe))
                                              (cons __tmp64976 __tmp64973))))
                                       (declare (not safe))
                                       (cons __tmp64972 _g6260262609_)))))
                              (declare (not safe))
                              (foldr2 __tmp64971 '() _L62583_ _L62585_)))))
                     (declare (not safe))
                     (cons __tmp64977 __tmp64970)))
                 _field6249962577_
                 _slot6250062580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6249362535_
                                         _target6249062529_
                                         '()
                                         '()))
                                      (_g6248362512_ _g6248462516_)))))
                            (_g6248362512_ _g6248462516_))))
                    (_g6248362512_ _g6248462516_)))))
        (_g6248262612_ _$stx62479_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62617_)
      (let* ((_g6262162647_
              (lambda (_g6262262643_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6262262643_)))
             (_g6262062730_
              (lambda (_g6262262651_)
                (if (gx#stx-pair? _g6262262651_)
                    (let ((_e6262962654_ (gx#syntax-e _g6262262651_)))
                      (let ((_hd6262862658_
                             (let ()
                               (declare (not safe))
                               (##car _e6262962654_)))
                            (_tl6262762661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6262962654_))))
                        (if (gx#stx-pair? _tl6262762661_)
                            (let ((_e6263262664_ (gx#syntax-e _tl6262762661_)))
                              (let ((_hd6263162668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6263262664_)))
                                    (_tl6263062671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6263262664_))))
                                (if (gx#stx-pair? _tl6263062671_)
                                    (let ((_e6263562674_
                                           (gx#syntax-e _tl6263062671_)))
                                      (let ((_hd6263462678_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6263562674_)))
                                            (_tl6263362681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6263562674_))))
                                        (if (gx#stx-pair? _tl6263362681_)
                                            (let ((_e6263862684_
                                                   (gx#syntax-e
                                                    _tl6263362681_)))
                                              (let ((_hd6263762688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6263862684_)))
                                                    (_tl6263662691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6263862684_))))
                                                (if (gx#stx-pair?
                                                     _tl6263662691_)
                                                    (let ((_e6264162694_
                                                           (gx#syntax-e
                                                            _tl6263662691_)))
                                                      (let ((_hd6264062698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6264162694_)))
                    (_tl6263962701_
                     (let () (declare (not safe)) (##cdr _e6264162694_))))
                (if (gx#stx-null? _tl6263962701_)
                    ((lambda (_L62704_ _L62706_ _L62707_ _L62708_)
                       (let ((__tmp65024 (gx#datum->syntax '#f 'if))
                             (__tmp64978
                              (let ((__tmp65021
                                     (let ((__tmp65023
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65022
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62708_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65023 __tmp65022)))
                                    (__tmp64979
                                     (let ((__tmp64984
                                            (let ((__tmp65020
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64985
                                                   (let ((__tmp65014
                                                          (let ((__tmp65019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65015
                         (let ((__tmp65016
                                (let ((__tmp65018
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65017
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62708_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65018 __tmp65017))))
                           (declare (not safe))
                           (cons __tmp65016 '()))))
                    (declare (not safe))
                    (cons __tmp65019 __tmp65015)))
                 (__tmp64986
                  (let ((__tmp64987
                         (let ((__tmp65013 (gx#datum->syntax '#f 'cond))
                               (__tmp64988
                                (let ((__tmp64996
                                       (let ((__tmp65000
                                              (let ((__tmp65012
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65001
                                                     (let ((__tmp65008
                                                            (let ((__tmp65011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65009
                           (let ((__tmp65010 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65010 '()))))
                      (declare (not safe))
                      (cons __tmp65011 __tmp65009)))
                   (__tmp65002
                    (let ((__tmp65003
                           (let ((__tmp65007
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65004
                                  (let ((__tmp65006
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65005
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62707_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65006 __tmp65005))))
                             (declare (not safe))
                             (cons __tmp65007 __tmp65004))))
                      (declare (not safe))
                      (cons __tmp65003 '()))))
               (declare (not safe))
               (cons __tmp65008 __tmp65002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65012 __tmp65001)))
                                             (__tmp64997
                                              (let ((__tmp64999
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp64998
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62706_ '()))))
                                                (declare (not safe))
                                                (cons __tmp64999 __tmp64998))))
                                         (declare (not safe))
                                         (cons __tmp65000 __tmp64997)))
                                      (__tmp64989
                                       (let ((__tmp64990
                                              (let ((__tmp64995
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64991
                                                     (let ((__tmp64992
                                                            (let ((__tmp64993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64994
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62707_ '()))))
                             (declare (not safe))
                             (cons _L62708_ __tmp64994))))
                      (declare (not safe))
                      (cons _L62704_ __tmp64993))))
               (declare (not safe))
               (cons __tmp64992 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64995 __tmp64991))))
                                         (declare (not safe))
                                         (cons __tmp64990 '()))))
                                  (declare (not safe))
                                  (cons __tmp64996 __tmp64989))))
                           (declare (not safe))
                           (cons __tmp65013 __tmp64988))))
                    (declare (not safe))
                    (cons __tmp64987 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65014
                                                           __tmp64986))))
                                              (declare (not safe))
                                              (cons __tmp65020 __tmp64985)))
                                           (__tmp64980
                                            (let ((__tmp64981
                                                   (let ((__tmp64982
                                                          (let ((__tmp64983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62707_ '()))))
                    (declare (not safe))
                    (cons _L62708_ __tmp64983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62704_
                                                           __tmp64982))))
                                              (declare (not safe))
                                              (cons __tmp64981 '()))))
                                       (declare (not safe))
                                       (cons __tmp64984 __tmp64980))))
                                (declare (not safe))
                                (cons __tmp65021 __tmp64979))))
                         (declare (not safe))
                         (cons __tmp65024 __tmp64978)))
                     _hd6264062698_
                     _hd6263762688_
                     _hd6263462678_
                     _hd6263162668_)
                    (_g6262162647_ _g6262262651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6262162647_
                                                     _g6262262651_))))
                                            (_g6262162647_ _g6262262651_))))
                                    (_g6262162647_ _g6262262651_))))
                            (_g6262162647_ _g6262262651_))))
                    (_g6262162647_ _g6262262651_)))))
        (_g6262062730_ _$stx62617_)))))
