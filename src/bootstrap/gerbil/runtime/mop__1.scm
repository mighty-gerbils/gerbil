(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61930_)
      (let* ((___stx6447164472_ _$stx61930_)
             (_g6193561964_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6447164472_))))
        (let ((___kont6447464475_
               (lambda (_L62057_ _L62059_)
                 (let ((__tmp64811 (gx#datum->syntax '#f '##fx=))
                       (__tmp64805
                        (let ((__tmp64807
                               (let ((__tmp64810
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64808
                                      (let ((__tmp64809
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62057_ '()))))
                                        (declare (not safe))
                                        (cons _L62059_ __tmp64809))))
                                 (declare (not safe))
                                 (cons __tmp64810 __tmp64808)))
                              (__tmp64806
                               (let ()
                                 (declare (not safe))
                                 (cons _L62057_ '()))))
                          (declare (not safe))
                          (cons __tmp64807 __tmp64806))))
                   (declare (not safe))
                   (cons __tmp64811 __tmp64805))))
              (___kont6447664477_
               (lambda (_L62001_ _L62003_)
                 (let ((__tmp64824 (gx#datum->syntax '#f 'let))
                       (__tmp64812
                        (let ((__tmp64822
                               (let ((__tmp64823
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62001_ '()))))
                                 (declare (not safe))
                                 (cons _L62001_ __tmp64823)))
                              (__tmp64813
                               (let ((__tmp64814
                                      (let ((__tmp64821
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64815
                                             (let ((__tmp64817
                                                    (let ((__tmp64820
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64818
                                                           (let ((__tmp64819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62001_ '()))))
                     (declare (not safe))
                     (cons _L62003_ __tmp64819))))
              (declare (not safe))
              (cons __tmp64820 __tmp64818)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64816
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62001_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64817 __tmp64816))))
                                        (declare (not safe))
                                        (cons __tmp64821 __tmp64815))))
                                 (declare (not safe))
                                 (cons __tmp64814 '()))))
                          (declare (not safe))
                          (cons __tmp64822 __tmp64813))))
                   (declare (not safe))
                   (cons __tmp64824 __tmp64812)))))
          (let ((___match6449864499_
                 (lambda (_e6194162027_
                          _hd6194062031_
                          _tl6193962034_
                          _e6194462037_
                          _hd6194362041_
                          _tl6194262044_
                          _e6194762047_
                          _hd6194662051_
                          _tl6194562054_)
                   (let ((_L62057_ _hd6194662051_) (_L62059_ _hd6194362041_))
                     (if (or (gx#identifier? _L62057_)
                             (gx#stx-fixnum? _L62057_))
                         (___kont6447464475_ _L62057_ _L62059_)
                         (___kont6447664477_
                          _hd6194662051_
                          _hd6194362041_))))))
            (if (gx#stx-pair? ___stx6447164472_)
                (let ((_e6194162027_ (gx#syntax-e ___stx6447164472_)))
                  (let ((_tl6193962034_
                         (let () (declare (not safe)) (##cdr _e6194162027_)))
                        (_hd6194062031_
                         (let () (declare (not safe)) (##car _e6194162027_))))
                    (if (gx#stx-pair? _tl6193962034_)
                        (let ((_e6194462037_ (gx#syntax-e _tl6193962034_)))
                          (let ((_tl6194262044_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6194462037_)))
                                (_hd6194362041_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6194462037_))))
                            (if (gx#stx-pair? _tl6194262044_)
                                (let ((_e6194762047_
                                       (gx#syntax-e _tl6194262044_)))
                                  (let ((_tl6194562054_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6194762047_)))
                                        (_hd6194662051_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6194762047_))))
                                    (if (gx#stx-null? _tl6194562054_)
                                        (___match6449864499_
                                         _e6194162027_
                                         _hd6194062031_
                                         _tl6193962034_
                                         _e6194462037_
                                         _hd6194362041_
                                         _tl6194262044_
                                         _e6194762047_
                                         _hd6194662051_
                                         _tl6194562054_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6193561964_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6193561964_)))))
                        (let () (declare (not safe)) (_g6193561964_)))))
                (let () (declare (not safe)) (_g6193561964_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62082_)
      (let* ((___stx6452164522_ _$stx62082_)
             (_g6208762116_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6452164522_))))
        (let ((___kont6452464525_
               (lambda (_L62208_ _L62210_)
                 (let ((__tmp64831 (gx#datum->syntax '#f '##fx=))
                       (__tmp64825
                        (let ((__tmp64827
                               (let ((__tmp64830
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64828
                                      (let ((__tmp64829
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62208_ '()))))
                                        (declare (not safe))
                                        (cons _L62210_ __tmp64829))))
                                 (declare (not safe))
                                 (cons __tmp64830 __tmp64828)))
                              (__tmp64826
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64827 __tmp64826))))
                   (declare (not safe))
                   (cons __tmp64831 __tmp64825))))
              (___kont6452664527_
               (lambda (_L62153_ _L62155_)
                 (let ((__tmp64844 (gx#datum->syntax '#f 'let))
                       (__tmp64832
                        (let ((__tmp64842
                               (let ((__tmp64843
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62153_ '()))))
                                 (declare (not safe))
                                 (cons _L62153_ __tmp64843)))
                              (__tmp64833
                               (let ((__tmp64834
                                      (let ((__tmp64841
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64835
                                             (let ((__tmp64837
                                                    (let ((__tmp64840
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64838
                                                           (let ((__tmp64839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62153_ '()))))
                     (declare (not safe))
                     (cons _L62155_ __tmp64839))))
              (declare (not safe))
              (cons __tmp64840 __tmp64838)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64836
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64837 __tmp64836))))
                                        (declare (not safe))
                                        (cons __tmp64841 __tmp64835))))
                                 (declare (not safe))
                                 (cons __tmp64834 '()))))
                          (declare (not safe))
                          (cons __tmp64842 __tmp64833))))
                   (declare (not safe))
                   (cons __tmp64844 __tmp64832)))))
          (let ((___match6454864549_
                 (lambda (_e6209362178_
                          _hd6209262182_
                          _tl6209162185_
                          _e6209662188_
                          _hd6209562192_
                          _tl6209462195_
                          _e6209962198_
                          _hd6209862202_
                          _tl6209762205_)
                   (let ((_L62208_ _hd6209862202_) (_L62210_ _hd6209562192_))
                     (if (or (gx#identifier? _L62208_)
                             (gx#stx-fixnum? _L62208_))
                         (___kont6452464525_ _L62208_ _L62210_)
                         (___kont6452664527_
                          _hd6209862202_
                          _hd6209562192_))))))
            (if (gx#stx-pair? ___stx6452164522_)
                (let ((_e6209362178_ (gx#syntax-e ___stx6452164522_)))
                  (let ((_tl6209162185_
                         (let () (declare (not safe)) (##cdr _e6209362178_)))
                        (_hd6209262182_
                         (let () (declare (not safe)) (##car _e6209362178_))))
                    (if (gx#stx-pair? _tl6209162185_)
                        (let ((_e6209662188_ (gx#syntax-e _tl6209162185_)))
                          (let ((_tl6209462195_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6209662188_)))
                                (_hd6209562192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6209662188_))))
                            (if (gx#stx-pair? _tl6209462195_)
                                (let ((_e6209962198_
                                       (gx#syntax-e _tl6209462195_)))
                                  (let ((_tl6209762205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6209962198_)))
                                        (_hd6209862202_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6209962198_))))
                                    (if (gx#stx-null? _tl6209762205_)
                                        (___match6454864549_
                                         _e6209362178_
                                         _hd6209262182_
                                         _tl6209162185_
                                         _e6209662188_
                                         _hd6209562192_
                                         _tl6209462195_
                                         _e6209962198_
                                         _hd6209862202_
                                         _tl6209762205_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6208762116_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6208762116_)))))
                        (let () (declare (not safe)) (_g6208762116_)))))
                (let () (declare (not safe)) (_g6208762116_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62233_)
      (let* ((_g6223662257_
              (lambda (_g6223762253_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6223762253_)))
             (_g6223562485_
              (lambda (_g6223762261_)
                (if (gx#stx-pair? _g6223762261_)
                    (let ((_e6224262264_ (gx#syntax-e _g6223762261_)))
                      (let ((_hd6224162268_
                             (let ()
                               (declare (not safe))
                               (##car _e6224262264_)))
                            (_tl6224062271_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6224262264_))))
                        (if (gx#stx-pair? _tl6224062271_)
                            (let ((_e6224562274_ (gx#syntax-e _tl6224062271_)))
                              (let ((_hd6224462278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6224562274_)))
                                    (_tl6224362281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6224562274_))))
                                (if (gx#stx-pair? _hd6224462278_)
                                    (let ((_e6224862284_
                                           (gx#syntax-e _hd6224462278_)))
                                      (let ((_hd6224762288_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6224862284_)))
                                            (_tl6224662291_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6224862284_))))
                                        (if (gx#stx-pair? _tl6224662291_)
                                            (let ((_e6225162294_
                                                   (gx#syntax-e
                                                    _tl6224662291_)))
                                              (let ((_hd6225062298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6225162294_)))
                                                    (_tl6224962301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6225162294_))))
                                                (if (gx#stx-null?
                                                     _tl6224962301_)
                                                    (if (gx#stx-null?
                                                         _tl6224362281_)
                                                        ((lambda (_L62304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62306_)
                   (let* ((_g6232462332_
                           (lambda (_g6232562328_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6232562328_)))
                          (_g6232362481_
                           (lambda (_g6232562336_)
                             ((lambda (_L62339_)
                                (let ()
                                  (let* ((_g6235162359_
                                          (lambda (_g6235262355_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6235262355_)))
                                         (_g6235062477_
                                          (lambda (_g6235262363_)
                                            ((lambda (_L62366_)
                                               (let ()
                                                 (let* ((_g6237962387_
                                                         (lambda (_g6238062383_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6238062383_)))
                                                        (_g6237862473_
                                                         (lambda (_g6238062391_)
                                                           ((lambda (_L62394_)
                                                              (let ()
                                                                (let* ((_g6240762415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6240862411_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6240862411_)))
                               (_g6240662469_
                                (lambda (_g6240862419_)
                                  ((lambda (_L62422_)
                                     (let ()
                                       (let* ((_g6243562443_
                                               (lambda (_g6243662439_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6243662439_)))
                                              (_g6243462465_
                                               (lambda (_g6243662447_)
                                                 ((lambda (_L62450_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64977
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64845
                                                               (let ((__tmp64947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64976 (gx#datum->syntax '#f 'def))
                                    (__tmp64948
                                     (let ((__tmp64949
                                            (let ((__tmp64950
                                                   (let ((__tmp64975
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64951
                                                          (let ((__tmp64970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64974
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64971
                                (let ((__tmp64972
                                       (let ((__tmp64973
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62306_ __tmp64973))))
                                  (declare (not safe))
                                  (cons _L62339_ __tmp64972))))
                           (declare (not safe))
                           (cons __tmp64974 __tmp64971)))
                        (__tmp64952
                         (let ((__tmp64953
                                (let ((__tmp64969
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64954
                                       (let ((__tmp64967
                                              (let ((__tmp64968
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64968 '())))
                                             (__tmp64955
                                              (let ((__tmp64956
                                                     (let ((__tmp64966
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64957
                                                            (let ((__tmp64965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64958
                           (let ((__tmp64959
                                  (let ((__tmp64964
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64960
                                         (let ((__tmp64961
                                                (let ((__tmp64963
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64962
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62306_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64963
                                                        __tmp64962))))
                                           (declare (not safe))
                                           (cons __tmp64961 '()))))
                                    (declare (not safe))
                                    (cons __tmp64964 __tmp64960))))
                             (declare (not safe))
                             (cons _L62304_ __tmp64959))))
                      (declare (not safe))
                      (cons __tmp64965 __tmp64958))))
               (declare (not safe))
               (cons __tmp64966 __tmp64957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64956 '()))))
                                         (declare (not safe))
                                         (cons __tmp64967 __tmp64955))))
                                  (declare (not safe))
                                  (cons __tmp64969 __tmp64954))))
                           (declare (not safe))
                           (cons __tmp64953 '()))))
                    (declare (not safe))
                    (cons __tmp64970 __tmp64952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64975
                                                           __tmp64951))))
                                              (declare (not safe))
                                              (cons __tmp64950 '()))))
                                       (declare (not safe))
                                       (cons _L62366_ __tmp64949))))
                                (declare (not safe))
                                (cons __tmp64976 __tmp64948)))
                             (__tmp64846
                              (let ((__tmp64917
                                     (let ((__tmp64946
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64918
                                            (let ((__tmp64919
                                                   (let ((__tmp64920
                                                          (let ((__tmp64945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64921
                         (let ((__tmp64940
                                (let ((__tmp64944
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64941
                                       (let ((__tmp64942
                                              (let ((__tmp64943
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62306_ __tmp64943))))
                                         (declare (not safe))
                                         (cons _L62339_ __tmp64942))))
                                  (declare (not safe))
                                  (cons __tmp64944 __tmp64941)))
                               (__tmp64922
                                (let ((__tmp64923
                                       (let ((__tmp64939
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64924
                                              (let ((__tmp64937
                                                     (let ((__tmp64938
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64938 '())))
                                                    (__tmp64925
                                                     (let ((__tmp64926
                                                            (let ((__tmp64936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64927
                           (let ((__tmp64935 (gx#datum->syntax '#f 'klass))
                                 (__tmp64928
                                  (let ((__tmp64929
                                         (let ((__tmp64934
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64930
                                                (let ((__tmp64931
                                                       (let ((__tmp64933
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64932
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62306_ '()))))
                 (declare (not safe))
                 (cons __tmp64933 __tmp64932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64931 '()))))
                                           (declare (not safe))
                                           (cons __tmp64934 __tmp64930))))
                                    (declare (not safe))
                                    (cons _L62304_ __tmp64929))))
                             (declare (not safe))
                             (cons __tmp64935 __tmp64928))))
                      (declare (not safe))
                      (cons __tmp64936 __tmp64927))))
               (declare (not safe))
               (cons __tmp64926 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64937 __tmp64925))))
                                         (declare (not safe))
                                         (cons __tmp64939 __tmp64924))))
                                  (declare (not safe))
                                  (cons __tmp64923 '()))))
                           (declare (not safe))
                           (cons __tmp64940 __tmp64922))))
                    (declare (not safe))
                    (cons __tmp64945 __tmp64921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64920 '()))))
                                              (declare (not safe))
                                              (cons _L62394_ __tmp64919))))
                                       (declare (not safe))
                                       (cons __tmp64946 __tmp64918)))
                                    (__tmp64847
                                     (let ((__tmp64883
                                            (let ((__tmp64916
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64884
                                                   (let ((__tmp64885
                                                          (let ((__tmp64886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64915
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64887
                                (let ((__tmp64910
                                       (let ((__tmp64914
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64911
                                              (let ((__tmp64912
                                                     (let ((__tmp64913
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62306_
                                                             __tmp64913))))
                                                (declare (not safe))
                                                (cons _L62339_ __tmp64912))))
                                         (declare (not safe))
                                         (cons __tmp64914 __tmp64911)))
                                      (__tmp64888
                                       (let ((__tmp64889
                                              (let ((__tmp64909
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64890
                                                     (let ((__tmp64905
                                                            (let ((__tmp64908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64906
                           (let ((__tmp64907 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64907 '()))))
                      (declare (not safe))
                      (cons __tmp64908 __tmp64906)))
                   (__tmp64891
                    (let ((__tmp64892
                           (let ((__tmp64904
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64893
                                  (let ((__tmp64903
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64894
                                         (let ((__tmp64902
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64895
                                                (let ((__tmp64896
                                                       (let ((__tmp64901
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64897
                                                              (let ((__tmp64898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64900 (gx#datum->syntax '#f 'quote))
                                   (__tmp64899
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62306_ '()))))
                               (declare (not safe))
                               (cons __tmp64900 __tmp64899))))
                        (declare (not safe))
                        (cons __tmp64898 '()))))
                 (declare (not safe))
                 (cons __tmp64901 __tmp64897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62304_ __tmp64896))))
                                           (declare (not safe))
                                           (cons __tmp64902 __tmp64895))))
                                    (declare (not safe))
                                    (cons __tmp64903 __tmp64894))))
                             (declare (not safe))
                             (cons __tmp64904 __tmp64893))))
                      (declare (not safe))
                      (cons __tmp64892 '()))))
               (declare (not safe))
               (cons __tmp64905 __tmp64891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64909 __tmp64890))))
                                         (declare (not safe))
                                         (cons __tmp64889 '()))))
                                  (declare (not safe))
                                  (cons __tmp64910 __tmp64888))))
                           (declare (not safe))
                           (cons __tmp64915 __tmp64887))))
                    (declare (not safe))
                    (cons __tmp64886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62422_
                                                           __tmp64885))))
                                              (declare (not safe))
                                              (cons __tmp64916 __tmp64884)))
                                           (__tmp64848
                                            (let ((__tmp64849
                                                   (let ((__tmp64882
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64850
                                                          (let ((__tmp64851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64852
                                (let ((__tmp64881
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64853
                                       (let ((__tmp64876
                                              (let ((__tmp64880
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64877
                                                     (let ((__tmp64878
                                                            (let ((__tmp64879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62306_ __tmp64879))))
               (declare (not safe))
               (cons _L62339_ __tmp64878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64880 __tmp64877)))
                                             (__tmp64854
                                              (let ((__tmp64855
                                                     (let ((__tmp64875
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64856
                                                            (let ((__tmp64871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64874 (gx#datum->syntax '#f 'klass))
                                 (__tmp64872
                                  (let ((__tmp64873
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64873 '()))))
                             (declare (not safe))
                             (cons __tmp64874 __tmp64872)))
                          (__tmp64857
                           (let ((__tmp64858
                                  (let ((__tmp64870
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64859
                                         (let ((__tmp64869
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64860
                                                (let ((__tmp64868
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64861
                                                       (let ((__tmp64862
                                                              (let ((__tmp64867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64863
                             (let ((__tmp64864
                                    (let ((__tmp64866
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64865
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62306_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64866 __tmp64865))))
                               (declare (not safe))
                               (cons __tmp64864 '()))))
                        (declare (not safe))
                        (cons __tmp64867 __tmp64863))))
                 (declare (not safe))
                 (cons _L62304_ __tmp64862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64868
                                                        __tmp64861))))
                                           (declare (not safe))
                                           (cons __tmp64869 __tmp64860))))
                                    (declare (not safe))
                                    (cons __tmp64870 __tmp64859))))
                             (declare (not safe))
                             (cons __tmp64858 '()))))
                      (declare (not safe))
                      (cons __tmp64871 __tmp64857))))
               (declare (not safe))
               (cons __tmp64875 __tmp64856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64855 '()))))
                                         (declare (not safe))
                                         (cons __tmp64876 __tmp64854))))
                                  (declare (not safe))
                                  (cons __tmp64881 __tmp64853))))
                           (declare (not safe))
                           (cons __tmp64852 '()))))
                    (declare (not safe))
                    (cons _L62450_ __tmp64851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64882
                                                           __tmp64850))))
                                              (declare (not safe))
                                              (cons __tmp64849 '()))))
                                       (declare (not safe))
                                       (cons __tmp64883 __tmp64848))))
                                (declare (not safe))
                                (cons __tmp64917 __tmp64847))))
                         (declare (not safe))
                         (cons __tmp64947 __tmp64846))))
                  (declare (not safe))
                  (cons __tmp64977 __tmp64845)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6243662447_))))
                                         (_g6243462465_
                                          (gx#stx-identifier
                                           _L62306_
                                           '"&"
                                           _L62422_)))))
                                   _g6240862419_))))
                          (_g6240662469_
                           (gx#stx-identifier _L62306_ _L62366_ '"-set!")))))
                    _g6238062391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6237862473_
                                                    (gx#stx-identifier
                                                     _L62306_
                                                     '"&"
                                                     _L62366_)))))
                                             _g6235262363_))))
                                    (_g6235062477_
                                     (gx#stx-identifier
                                      _L62306_
                                      '"class-type-"
                                      _L62306_)))))
                              _g6232562336_))))
                     (_g6232362481_ (gx#core-quote-syntax 'class::t))))
                 _hd6225062298_
                 _hd6224762288_)
                (_g6223662257_ _g6223762261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6223662257_
                                                     _g6223762261_))))
                                            (_g6223662257_ _g6223762261_))))
                                    (_g6223662257_ _g6223762261_))))
                            (_g6223662257_ _g6223762261_))))
                    (_g6223662257_ _g6223762261_)))))
        (_g6223562485_ _stx62233_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62489_)
      (let* ((_g6249362522_
              (lambda (_g6249462518_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6249462518_)))
             (_g6249262622_
              (lambda (_g6249462526_)
                (if (gx#stx-pair? _g6249462526_)
                    (let ((_e6249962529_ (gx#syntax-e _g6249462526_)))
                      (let ((_hd6249862533_
                             (let ()
                               (declare (not safe))
                               (##car _e6249962529_)))
                            (_tl6249762536_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6249962529_))))
                        (if (gx#stx-pair/null? _tl6249762536_)
                            (let ((_g64978_
                                   (gx#syntax-split-splice _tl6249762536_ '0)))
                              (begin
                                (let ((_g64979_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64978_)
                                             (##vector-length _g64978_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64979_ 2)))
                                      (error "Context expects 2 values"
                                             _g64979_)))
                                (let ((_target6250062539_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64978_ 0)))
                                      (_tl6250262542_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64978_ 1))))
                                  (if (gx#stx-null? _tl6250262542_)
                                      (letrec ((_loop6250362545_
                                                (lambda (_hd6250162549_
                                                         _field6250762552_
                                                         _slot6250862554_)
                                                  (if (gx#stx-pair?
                                                       _hd6250162549_)
                                                      (let ((_e6250462557_
                                                             (gx#syntax-e
                                                              _hd6250162549_)))
                                                        (let ((_lp-hd6250562561_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6250462557_)))
                      (_lp-tl6250662564_
                       (let () (declare (not safe)) (##cdr _e6250462557_))))
                  (if (gx#stx-pair? _lp-hd6250562561_)
                      (let ((_e6251362567_ (gx#syntax-e _lp-hd6250562561_)))
                        (let ((_hd6251262571_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6251362567_)))
                              (_tl6251162574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6251362567_))))
                          (if (gx#stx-pair? _tl6251162574_)
                              (let ((_e6251662577_
                                     (gx#syntax-e _tl6251162574_)))
                                (let ((_hd6251562581_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6251662577_)))
                                      (_tl6251462584_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6251662577_))))
                                  (if (gx#stx-null? _tl6251462584_)
                                      (_loop6250362545_
                                       _lp-tl6250662564_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6251562581_
                                               _field6250762552_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6251262571_
                                               _slot6250862554_)))
                                      (_g6249362522_ _g6249462526_))))
                              (_g6249362522_ _g6249462526_))))
                      (_g6249362522_ _g6249462526_))))
              (let ((_field6250962587_ (reverse _field6250762552_))
                    (_slot6251062590_ (reverse _slot6250862554_)))
                ((lambda (_L62593_ _L62595_)
                   (let ((__tmp64987 (gx#datum->syntax '#f 'begin))
                         (__tmp64980
                          (begin
                            (gx#syntax-check-splice-targets _L62593_ _L62595_)
                            (let ((__tmp64981
                                   (lambda (_g6261062614_
                                            _g6261162617_
                                            _g6261262619_)
                                     (let ((__tmp64982
                                            (let ((__tmp64986
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64983
                                                   (let ((__tmp64984
                                                          (let ((__tmp64985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6261062614_ '()))))
                    (declare (not safe))
                    (cons _g6261162617_ __tmp64985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64984 '()))))
                                              (declare (not safe))
                                              (cons __tmp64986 __tmp64983))))
                                       (declare (not safe))
                                       (cons __tmp64982 _g6261262619_)))))
                              (declare (not safe))
                              (foldr2 __tmp64981 '() _L62593_ _L62595_)))))
                     (declare (not safe))
                     (cons __tmp64987 __tmp64980)))
                 _field6250962587_
                 _slot6251062590_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6250362545_
                                         _target6250062539_
                                         '()
                                         '()))
                                      (_g6249362522_ _g6249462526_)))))
                            (_g6249362522_ _g6249462526_))))
                    (_g6249362522_ _g6249462526_)))))
        (_g6249262622_ _$stx62489_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62627_)
      (let* ((_g6263162657_
              (lambda (_g6263262653_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6263262653_)))
             (_g6263062740_
              (lambda (_g6263262661_)
                (if (gx#stx-pair? _g6263262661_)
                    (let ((_e6263962664_ (gx#syntax-e _g6263262661_)))
                      (let ((_hd6263862668_
                             (let ()
                               (declare (not safe))
                               (##car _e6263962664_)))
                            (_tl6263762671_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6263962664_))))
                        (if (gx#stx-pair? _tl6263762671_)
                            (let ((_e6264262674_ (gx#syntax-e _tl6263762671_)))
                              (let ((_hd6264162678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6264262674_)))
                                    (_tl6264062681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6264262674_))))
                                (if (gx#stx-pair? _tl6264062681_)
                                    (let ((_e6264562684_
                                           (gx#syntax-e _tl6264062681_)))
                                      (let ((_hd6264462688_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6264562684_)))
                                            (_tl6264362691_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6264562684_))))
                                        (if (gx#stx-pair? _tl6264362691_)
                                            (let ((_e6264862694_
                                                   (gx#syntax-e
                                                    _tl6264362691_)))
                                              (let ((_hd6264762698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6264862694_)))
                                                    (_tl6264662701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6264862694_))))
                                                (if (gx#stx-pair?
                                                     _tl6264662701_)
                                                    (let ((_e6265162704_
                                                           (gx#syntax-e
                                                            _tl6264662701_)))
                                                      (let ((_hd6265062708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6265162704_)))
                    (_tl6264962711_
                     (let () (declare (not safe)) (##cdr _e6265162704_))))
                (if (gx#stx-null? _tl6264962711_)
                    ((lambda (_L62714_ _L62716_ _L62717_ _L62718_)
                       (let ((__tmp65034 (gx#datum->syntax '#f 'if))
                             (__tmp64988
                              (let ((__tmp65031
                                     (let ((__tmp65033
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65032
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62718_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65033 __tmp65032)))
                                    (__tmp64989
                                     (let ((__tmp64994
                                            (let ((__tmp65030
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64995
                                                   (let ((__tmp65024
                                                          (let ((__tmp65029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65025
                         (let ((__tmp65026
                                (let ((__tmp65028
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65027
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62718_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65028 __tmp65027))))
                           (declare (not safe))
                           (cons __tmp65026 '()))))
                    (declare (not safe))
                    (cons __tmp65029 __tmp65025)))
                 (__tmp64996
                  (let ((__tmp64997
                         (let ((__tmp65023 (gx#datum->syntax '#f 'cond))
                               (__tmp64998
                                (let ((__tmp65006
                                       (let ((__tmp65010
                                              (let ((__tmp65022
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65011
                                                     (let ((__tmp65018
                                                            (let ((__tmp65021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65019
                           (let ((__tmp65020 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65020 '()))))
                      (declare (not safe))
                      (cons __tmp65021 __tmp65019)))
                   (__tmp65012
                    (let ((__tmp65013
                           (let ((__tmp65017
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65014
                                  (let ((__tmp65016
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65015
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62717_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65016 __tmp65015))))
                             (declare (not safe))
                             (cons __tmp65017 __tmp65014))))
                      (declare (not safe))
                      (cons __tmp65013 '()))))
               (declare (not safe))
               (cons __tmp65018 __tmp65012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65022 __tmp65011)))
                                             (__tmp65007
                                              (let ((__tmp65009
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65008
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62716_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65009 __tmp65008))))
                                         (declare (not safe))
                                         (cons __tmp65010 __tmp65007)))
                                      (__tmp64999
                                       (let ((__tmp65000
                                              (let ((__tmp65005
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65001
                                                     (let ((__tmp65002
                                                            (let ((__tmp65003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65004
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62717_ '()))))
                             (declare (not safe))
                             (cons _L62718_ __tmp65004))))
                      (declare (not safe))
                      (cons _L62714_ __tmp65003))))
               (declare (not safe))
               (cons __tmp65002 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65005 __tmp65001))))
                                         (declare (not safe))
                                         (cons __tmp65000 '()))))
                                  (declare (not safe))
                                  (cons __tmp65006 __tmp64999))))
                           (declare (not safe))
                           (cons __tmp65023 __tmp64998))))
                    (declare (not safe))
                    (cons __tmp64997 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65024
                                                           __tmp64996))))
                                              (declare (not safe))
                                              (cons __tmp65030 __tmp64995)))
                                           (__tmp64990
                                            (let ((__tmp64991
                                                   (let ((__tmp64992
                                                          (let ((__tmp64993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62717_ '()))))
                    (declare (not safe))
                    (cons _L62718_ __tmp64993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62714_
                                                           __tmp64992))))
                                              (declare (not safe))
                                              (cons __tmp64991 '()))))
                                       (declare (not safe))
                                       (cons __tmp64994 __tmp64990))))
                                (declare (not safe))
                                (cons __tmp65031 __tmp64989))))
                         (declare (not safe))
                         (cons __tmp65034 __tmp64988)))
                     _hd6265062708_
                     _hd6264762698_
                     _hd6264462688_
                     _hd6264162678_)
                    (_g6263162657_ _g6263262661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6263162657_
                                                     _g6263262661_))))
                                            (_g6263162657_ _g6263262661_))))
                                    (_g6263162657_ _g6263262661_))))
                            (_g6263162657_ _g6263262661_))))
                    (_g6263162657_ _g6263262661_)))))
        (_g6263062740_ _$stx62627_)))))
