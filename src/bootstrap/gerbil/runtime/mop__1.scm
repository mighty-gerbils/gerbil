(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61927_)
      (let* ((___stx6446864469_ _$stx61927_)
             (_g6193261961_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6446864469_))))
        (let ((___kont6447164472_
               (lambda (_L62054_ _L62056_)
                 (let ((__tmp64808 (gx#datum->syntax '#f '##fx=))
                       (__tmp64802
                        (let ((__tmp64804
                               (let ((__tmp64807
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64805
                                      (let ((__tmp64806
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62054_ '()))))
                                        (declare (not safe))
                                        (cons _L62056_ __tmp64806))))
                                 (declare (not safe))
                                 (cons __tmp64807 __tmp64805)))
                              (__tmp64803
                               (let ()
                                 (declare (not safe))
                                 (cons _L62054_ '()))))
                          (declare (not safe))
                          (cons __tmp64804 __tmp64803))))
                   (declare (not safe))
                   (cons __tmp64808 __tmp64802))))
              (___kont6447364474_
               (lambda (_L61998_ _L62000_)
                 (let ((__tmp64821 (gx#datum->syntax '#f 'let))
                       (__tmp64809
                        (let ((__tmp64819
                               (let ((__tmp64820
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61998_ '()))))
                                 (declare (not safe))
                                 (cons _L61998_ __tmp64820)))
                              (__tmp64810
                               (let ((__tmp64811
                                      (let ((__tmp64818
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64812
                                             (let ((__tmp64814
                                                    (let ((__tmp64817
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64815
                                                           (let ((__tmp64816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61998_ '()))))
                     (declare (not safe))
                     (cons _L62000_ __tmp64816))))
              (declare (not safe))
              (cons __tmp64817 __tmp64815)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64813
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61998_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64814 __tmp64813))))
                                        (declare (not safe))
                                        (cons __tmp64818 __tmp64812))))
                                 (declare (not safe))
                                 (cons __tmp64811 '()))))
                          (declare (not safe))
                          (cons __tmp64819 __tmp64810))))
                   (declare (not safe))
                   (cons __tmp64821 __tmp64809)))))
          (let ((___match6449564496_
                 (lambda (_e6193862024_
                          _hd6193762028_
                          _tl6193662031_
                          _e6194162034_
                          _hd6194062038_
                          _tl6193962041_
                          _e6194462044_
                          _hd6194362048_
                          _tl6194262051_)
                   (let ((_L62054_ _hd6194362048_) (_L62056_ _hd6194062038_))
                     (if (or (gx#identifier? _L62054_)
                             (gx#stx-fixnum? _L62054_))
                         (___kont6447164472_ _L62054_ _L62056_)
                         (___kont6447364474_
                          _hd6194362048_
                          _hd6194062038_))))))
            (if (gx#stx-pair? ___stx6446864469_)
                (let ((_e6193862024_ (gx#syntax-e ___stx6446864469_)))
                  (let ((_tl6193662031_
                         (let () (declare (not safe)) (##cdr _e6193862024_)))
                        (_hd6193762028_
                         (let () (declare (not safe)) (##car _e6193862024_))))
                    (if (gx#stx-pair? _tl6193662031_)
                        (let ((_e6194162034_ (gx#syntax-e _tl6193662031_)))
                          (let ((_tl6193962041_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6194162034_)))
                                (_hd6194062038_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6194162034_))))
                            (if (gx#stx-pair? _tl6193962041_)
                                (let ((_e6194462044_
                                       (gx#syntax-e _tl6193962041_)))
                                  (let ((_tl6194262051_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6194462044_)))
                                        (_hd6194362048_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6194462044_))))
                                    (if (gx#stx-null? _tl6194262051_)
                                        (___match6449564496_
                                         _e6193862024_
                                         _hd6193762028_
                                         _tl6193662031_
                                         _e6194162034_
                                         _hd6194062038_
                                         _tl6193962041_
                                         _e6194462044_
                                         _hd6194362048_
                                         _tl6194262051_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6193261961_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6193261961_)))))
                        (let () (declare (not safe)) (_g6193261961_)))))
                (let () (declare (not safe)) (_g6193261961_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62079_)
      (let* ((___stx6451864519_ _$stx62079_)
             (_g6208462113_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6451864519_))))
        (let ((___kont6452164522_
               (lambda (_L62205_ _L62207_)
                 (let ((__tmp64828 (gx#datum->syntax '#f '##fx=))
                       (__tmp64822
                        (let ((__tmp64824
                               (let ((__tmp64827
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64825
                                      (let ((__tmp64826
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62205_ '()))))
                                        (declare (not safe))
                                        (cons _L62207_ __tmp64826))))
                                 (declare (not safe))
                                 (cons __tmp64827 __tmp64825)))
                              (__tmp64823
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64824 __tmp64823))))
                   (declare (not safe))
                   (cons __tmp64828 __tmp64822))))
              (___kont6452364524_
               (lambda (_L62150_ _L62152_)
                 (let ((__tmp64841 (gx#datum->syntax '#f 'let))
                       (__tmp64829
                        (let ((__tmp64839
                               (let ((__tmp64840
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62150_ '()))))
                                 (declare (not safe))
                                 (cons _L62150_ __tmp64840)))
                              (__tmp64830
                               (let ((__tmp64831
                                      (let ((__tmp64838
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64832
                                             (let ((__tmp64834
                                                    (let ((__tmp64837
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64835
                                                           (let ((__tmp64836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62150_ '()))))
                     (declare (not safe))
                     (cons _L62152_ __tmp64836))))
              (declare (not safe))
              (cons __tmp64837 __tmp64835)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64833
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64834 __tmp64833))))
                                        (declare (not safe))
                                        (cons __tmp64838 __tmp64832))))
                                 (declare (not safe))
                                 (cons __tmp64831 '()))))
                          (declare (not safe))
                          (cons __tmp64839 __tmp64830))))
                   (declare (not safe))
                   (cons __tmp64841 __tmp64829)))))
          (let ((___match6454564546_
                 (lambda (_e6209062175_
                          _hd6208962179_
                          _tl6208862182_
                          _e6209362185_
                          _hd6209262189_
                          _tl6209162192_
                          _e6209662195_
                          _hd6209562199_
                          _tl6209462202_)
                   (let ((_L62205_ _hd6209562199_) (_L62207_ _hd6209262189_))
                     (if (or (gx#identifier? _L62205_)
                             (gx#stx-fixnum? _L62205_))
                         (___kont6452164522_ _L62205_ _L62207_)
                         (___kont6452364524_
                          _hd6209562199_
                          _hd6209262189_))))))
            (if (gx#stx-pair? ___stx6451864519_)
                (let ((_e6209062175_ (gx#syntax-e ___stx6451864519_)))
                  (let ((_tl6208862182_
                         (let () (declare (not safe)) (##cdr _e6209062175_)))
                        (_hd6208962179_
                         (let () (declare (not safe)) (##car _e6209062175_))))
                    (if (gx#stx-pair? _tl6208862182_)
                        (let ((_e6209362185_ (gx#syntax-e _tl6208862182_)))
                          (let ((_tl6209162192_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6209362185_)))
                                (_hd6209262189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6209362185_))))
                            (if (gx#stx-pair? _tl6209162192_)
                                (let ((_e6209662195_
                                       (gx#syntax-e _tl6209162192_)))
                                  (let ((_tl6209462202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6209662195_)))
                                        (_hd6209562199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6209662195_))))
                                    (if (gx#stx-null? _tl6209462202_)
                                        (___match6454564546_
                                         _e6209062175_
                                         _hd6208962179_
                                         _tl6208862182_
                                         _e6209362185_
                                         _hd6209262189_
                                         _tl6209162192_
                                         _e6209662195_
                                         _hd6209562199_
                                         _tl6209462202_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6208462113_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6208462113_)))))
                        (let () (declare (not safe)) (_g6208462113_)))))
                (let () (declare (not safe)) (_g6208462113_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62230_)
      (let* ((_g6223362254_
              (lambda (_g6223462250_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6223462250_)))
             (_g6223262482_
              (lambda (_g6223462258_)
                (if (gx#stx-pair? _g6223462258_)
                    (let ((_e6223962261_ (gx#syntax-e _g6223462258_)))
                      (let ((_hd6223862265_
                             (let ()
                               (declare (not safe))
                               (##car _e6223962261_)))
                            (_tl6223762268_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6223962261_))))
                        (if (gx#stx-pair? _tl6223762268_)
                            (let ((_e6224262271_ (gx#syntax-e _tl6223762268_)))
                              (let ((_hd6224162275_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6224262271_)))
                                    (_tl6224062278_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6224262271_))))
                                (if (gx#stx-pair? _hd6224162275_)
                                    (let ((_e6224562281_
                                           (gx#syntax-e _hd6224162275_)))
                                      (let ((_hd6224462285_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6224562281_)))
                                            (_tl6224362288_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6224562281_))))
                                        (if (gx#stx-pair? _tl6224362288_)
                                            (let ((_e6224862291_
                                                   (gx#syntax-e
                                                    _tl6224362288_)))
                                              (let ((_hd6224762295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6224862291_)))
                                                    (_tl6224662298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6224862291_))))
                                                (if (gx#stx-null?
                                                     _tl6224662298_)
                                                    (if (gx#stx-null?
                                                         _tl6224062278_)
                                                        ((lambda (_L62301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62303_)
                   (let* ((_g6232162329_
                           (lambda (_g6232262325_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6232262325_)))
                          (_g6232062478_
                           (lambda (_g6232262333_)
                             ((lambda (_L62336_)
                                (let ()
                                  (let* ((_g6234862356_
                                          (lambda (_g6234962352_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6234962352_)))
                                         (_g6234762474_
                                          (lambda (_g6234962360_)
                                            ((lambda (_L62363_)
                                               (let ()
                                                 (let* ((_g6237662384_
                                                         (lambda (_g6237762380_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6237762380_)))
                                                        (_g6237562470_
                                                         (lambda (_g6237762388_)
                                                           ((lambda (_L62391_)
                                                              (let ()
                                                                (let* ((_g6240462412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6240562408_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6240562408_)))
                               (_g6240362466_
                                (lambda (_g6240562416_)
                                  ((lambda (_L62419_)
                                     (let ()
                                       (let* ((_g6243262440_
                                               (lambda (_g6243362436_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6243362436_)))
                                              (_g6243162462_
                                               (lambda (_g6243362444_)
                                                 ((lambda (_L62447_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64974
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64842
                                                               (let ((__tmp64944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64973 (gx#datum->syntax '#f 'def))
                                    (__tmp64945
                                     (let ((__tmp64946
                                            (let ((__tmp64947
                                                   (let ((__tmp64972
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64948
                                                          (let ((__tmp64967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64971
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64968
                                (let ((__tmp64969
                                       (let ((__tmp64970
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62303_ __tmp64970))))
                                  (declare (not safe))
                                  (cons _L62336_ __tmp64969))))
                           (declare (not safe))
                           (cons __tmp64971 __tmp64968)))
                        (__tmp64949
                         (let ((__tmp64950
                                (let ((__tmp64966
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64951
                                       (let ((__tmp64964
                                              (let ((__tmp64965
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64965 '())))
                                             (__tmp64952
                                              (let ((__tmp64953
                                                     (let ((__tmp64963
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64954
                                                            (let ((__tmp64962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64955
                           (let ((__tmp64956
                                  (let ((__tmp64961
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64957
                                         (let ((__tmp64958
                                                (let ((__tmp64960
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64959
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62303_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64960
                                                        __tmp64959))))
                                           (declare (not safe))
                                           (cons __tmp64958 '()))))
                                    (declare (not safe))
                                    (cons __tmp64961 __tmp64957))))
                             (declare (not safe))
                             (cons _L62301_ __tmp64956))))
                      (declare (not safe))
                      (cons __tmp64962 __tmp64955))))
               (declare (not safe))
               (cons __tmp64963 __tmp64954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64953 '()))))
                                         (declare (not safe))
                                         (cons __tmp64964 __tmp64952))))
                                  (declare (not safe))
                                  (cons __tmp64966 __tmp64951))))
                           (declare (not safe))
                           (cons __tmp64950 '()))))
                    (declare (not safe))
                    (cons __tmp64967 __tmp64949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64972
                                                           __tmp64948))))
                                              (declare (not safe))
                                              (cons __tmp64947 '()))))
                                       (declare (not safe))
                                       (cons _L62363_ __tmp64946))))
                                (declare (not safe))
                                (cons __tmp64973 __tmp64945)))
                             (__tmp64843
                              (let ((__tmp64914
                                     (let ((__tmp64943
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64915
                                            (let ((__tmp64916
                                                   (let ((__tmp64917
                                                          (let ((__tmp64942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64918
                         (let ((__tmp64937
                                (let ((__tmp64941
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64938
                                       (let ((__tmp64939
                                              (let ((__tmp64940
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62303_ __tmp64940))))
                                         (declare (not safe))
                                         (cons _L62336_ __tmp64939))))
                                  (declare (not safe))
                                  (cons __tmp64941 __tmp64938)))
                               (__tmp64919
                                (let ((__tmp64920
                                       (let ((__tmp64936
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64921
                                              (let ((__tmp64934
                                                     (let ((__tmp64935
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64935 '())))
                                                    (__tmp64922
                                                     (let ((__tmp64923
                                                            (let ((__tmp64933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64924
                           (let ((__tmp64932 (gx#datum->syntax '#f 'klass))
                                 (__tmp64925
                                  (let ((__tmp64926
                                         (let ((__tmp64931
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64927
                                                (let ((__tmp64928
                                                       (let ((__tmp64930
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64929
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62303_ '()))))
                 (declare (not safe))
                 (cons __tmp64930 __tmp64929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64928 '()))))
                                           (declare (not safe))
                                           (cons __tmp64931 __tmp64927))))
                                    (declare (not safe))
                                    (cons _L62301_ __tmp64926))))
                             (declare (not safe))
                             (cons __tmp64932 __tmp64925))))
                      (declare (not safe))
                      (cons __tmp64933 __tmp64924))))
               (declare (not safe))
               (cons __tmp64923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64934 __tmp64922))))
                                         (declare (not safe))
                                         (cons __tmp64936 __tmp64921))))
                                  (declare (not safe))
                                  (cons __tmp64920 '()))))
                           (declare (not safe))
                           (cons __tmp64937 __tmp64919))))
                    (declare (not safe))
                    (cons __tmp64942 __tmp64918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64917 '()))))
                                              (declare (not safe))
                                              (cons _L62391_ __tmp64916))))
                                       (declare (not safe))
                                       (cons __tmp64943 __tmp64915)))
                                    (__tmp64844
                                     (let ((__tmp64880
                                            (let ((__tmp64913
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64881
                                                   (let ((__tmp64882
                                                          (let ((__tmp64883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64912
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64884
                                (let ((__tmp64907
                                       (let ((__tmp64911
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64908
                                              (let ((__tmp64909
                                                     (let ((__tmp64910
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62303_
                                                             __tmp64910))))
                                                (declare (not safe))
                                                (cons _L62336_ __tmp64909))))
                                         (declare (not safe))
                                         (cons __tmp64911 __tmp64908)))
                                      (__tmp64885
                                       (let ((__tmp64886
                                              (let ((__tmp64906
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64887
                                                     (let ((__tmp64902
                                                            (let ((__tmp64905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64903
                           (let ((__tmp64904 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64904 '()))))
                      (declare (not safe))
                      (cons __tmp64905 __tmp64903)))
                   (__tmp64888
                    (let ((__tmp64889
                           (let ((__tmp64901
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64890
                                  (let ((__tmp64900
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64891
                                         (let ((__tmp64899
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64892
                                                (let ((__tmp64893
                                                       (let ((__tmp64898
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64894
                                                              (let ((__tmp64895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64897 (gx#datum->syntax '#f 'quote))
                                   (__tmp64896
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62303_ '()))))
                               (declare (not safe))
                               (cons __tmp64897 __tmp64896))))
                        (declare (not safe))
                        (cons __tmp64895 '()))))
                 (declare (not safe))
                 (cons __tmp64898 __tmp64894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62301_ __tmp64893))))
                                           (declare (not safe))
                                           (cons __tmp64899 __tmp64892))))
                                    (declare (not safe))
                                    (cons __tmp64900 __tmp64891))))
                             (declare (not safe))
                             (cons __tmp64901 __tmp64890))))
                      (declare (not safe))
                      (cons __tmp64889 '()))))
               (declare (not safe))
               (cons __tmp64902 __tmp64888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64906 __tmp64887))))
                                         (declare (not safe))
                                         (cons __tmp64886 '()))))
                                  (declare (not safe))
                                  (cons __tmp64907 __tmp64885))))
                           (declare (not safe))
                           (cons __tmp64912 __tmp64884))))
                    (declare (not safe))
                    (cons __tmp64883 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62419_
                                                           __tmp64882))))
                                              (declare (not safe))
                                              (cons __tmp64913 __tmp64881)))
                                           (__tmp64845
                                            (let ((__tmp64846
                                                   (let ((__tmp64879
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64847
                                                          (let ((__tmp64848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64849
                                (let ((__tmp64878
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64850
                                       (let ((__tmp64873
                                              (let ((__tmp64877
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64874
                                                     (let ((__tmp64875
                                                            (let ((__tmp64876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62303_ __tmp64876))))
               (declare (not safe))
               (cons _L62336_ __tmp64875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64877 __tmp64874)))
                                             (__tmp64851
                                              (let ((__tmp64852
                                                     (let ((__tmp64872
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64853
                                                            (let ((__tmp64868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64871 (gx#datum->syntax '#f 'klass))
                                 (__tmp64869
                                  (let ((__tmp64870
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64870 '()))))
                             (declare (not safe))
                             (cons __tmp64871 __tmp64869)))
                          (__tmp64854
                           (let ((__tmp64855
                                  (let ((__tmp64867
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64856
                                         (let ((__tmp64866
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64857
                                                (let ((__tmp64865
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64858
                                                       (let ((__tmp64859
                                                              (let ((__tmp64864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64860
                             (let ((__tmp64861
                                    (let ((__tmp64863
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64862
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62303_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64863 __tmp64862))))
                               (declare (not safe))
                               (cons __tmp64861 '()))))
                        (declare (not safe))
                        (cons __tmp64864 __tmp64860))))
                 (declare (not safe))
                 (cons _L62301_ __tmp64859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64865
                                                        __tmp64858))))
                                           (declare (not safe))
                                           (cons __tmp64866 __tmp64857))))
                                    (declare (not safe))
                                    (cons __tmp64867 __tmp64856))))
                             (declare (not safe))
                             (cons __tmp64855 '()))))
                      (declare (not safe))
                      (cons __tmp64868 __tmp64854))))
               (declare (not safe))
               (cons __tmp64872 __tmp64853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64852 '()))))
                                         (declare (not safe))
                                         (cons __tmp64873 __tmp64851))))
                                  (declare (not safe))
                                  (cons __tmp64878 __tmp64850))))
                           (declare (not safe))
                           (cons __tmp64849 '()))))
                    (declare (not safe))
                    (cons _L62447_ __tmp64848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64879
                                                           __tmp64847))))
                                              (declare (not safe))
                                              (cons __tmp64846 '()))))
                                       (declare (not safe))
                                       (cons __tmp64880 __tmp64845))))
                                (declare (not safe))
                                (cons __tmp64914 __tmp64844))))
                         (declare (not safe))
                         (cons __tmp64944 __tmp64843))))
                  (declare (not safe))
                  (cons __tmp64974 __tmp64842)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6243362444_))))
                                         (_g6243162462_
                                          (gx#stx-identifier
                                           _L62303_
                                           '"&"
                                           _L62419_)))))
                                   _g6240562416_))))
                          (_g6240362466_
                           (gx#stx-identifier _L62303_ _L62363_ '"-set!")))))
                    _g6237762388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6237562470_
                                                    (gx#stx-identifier
                                                     _L62303_
                                                     '"&"
                                                     _L62363_)))))
                                             _g6234962360_))))
                                    (_g6234762474_
                                     (gx#stx-identifier
                                      _L62303_
                                      '"class-type-"
                                      _L62303_)))))
                              _g6232262333_))))
                     (_g6232062478_ (gx#core-quote-syntax 'class::t))))
                 _hd6224762295_
                 _hd6224462285_)
                (_g6223362254_ _g6223462258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6223362254_
                                                     _g6223462258_))))
                                            (_g6223362254_ _g6223462258_))))
                                    (_g6223362254_ _g6223462258_))))
                            (_g6223362254_ _g6223462258_))))
                    (_g6223362254_ _g6223462258_)))))
        (_g6223262482_ _stx62230_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62486_)
      (let* ((_g6249062519_
              (lambda (_g6249162515_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6249162515_)))
             (_g6248962619_
              (lambda (_g6249162523_)
                (if (gx#stx-pair? _g6249162523_)
                    (let ((_e6249662526_ (gx#syntax-e _g6249162523_)))
                      (let ((_hd6249562530_
                             (let ()
                               (declare (not safe))
                               (##car _e6249662526_)))
                            (_tl6249462533_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6249662526_))))
                        (if (gx#stx-pair/null? _tl6249462533_)
                            (let ((_g64975_
                                   (gx#syntax-split-splice _tl6249462533_ '0)))
                              (begin
                                (let ((_g64976_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64975_)
                                             (##vector-length _g64975_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64976_ 2)))
                                      (error "Context expects 2 values"
                                             _g64976_)))
                                (let ((_target6249762536_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64975_ 0)))
                                      (_tl6249962539_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64975_ 1))))
                                  (if (gx#stx-null? _tl6249962539_)
                                      (letrec ((_loop6250062542_
                                                (lambda (_hd6249862546_
                                                         _field6250462549_
                                                         _slot6250562551_)
                                                  (if (gx#stx-pair?
                                                       _hd6249862546_)
                                                      (let ((_e6250162554_
                                                             (gx#syntax-e
                                                              _hd6249862546_)))
                                                        (let ((_lp-hd6250262558_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6250162554_)))
                      (_lp-tl6250362561_
                       (let () (declare (not safe)) (##cdr _e6250162554_))))
                  (if (gx#stx-pair? _lp-hd6250262558_)
                      (let ((_e6251062564_ (gx#syntax-e _lp-hd6250262558_)))
                        (let ((_hd6250962568_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6251062564_)))
                              (_tl6250862571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6251062564_))))
                          (if (gx#stx-pair? _tl6250862571_)
                              (let ((_e6251362574_
                                     (gx#syntax-e _tl6250862571_)))
                                (let ((_hd6251262578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6251362574_)))
                                      (_tl6251162581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6251362574_))))
                                  (if (gx#stx-null? _tl6251162581_)
                                      (_loop6250062542_
                                       _lp-tl6250362561_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6251262578_
                                               _field6250462549_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6250962568_
                                               _slot6250562551_)))
                                      (_g6249062519_ _g6249162523_))))
                              (_g6249062519_ _g6249162523_))))
                      (_g6249062519_ _g6249162523_))))
              (let ((_field6250662584_ (reverse _field6250462549_))
                    (_slot6250762587_ (reverse _slot6250562551_)))
                ((lambda (_L62590_ _L62592_)
                   (let ((__tmp64984 (gx#datum->syntax '#f 'begin))
                         (__tmp64977
                          (begin
                            (gx#syntax-check-splice-targets _L62590_ _L62592_)
                            (let ((__tmp64978
                                   (lambda (_g6260762611_
                                            _g6260862614_
                                            _g6260962616_)
                                     (let ((__tmp64979
                                            (let ((__tmp64983
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64980
                                                   (let ((__tmp64981
                                                          (let ((__tmp64982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6260762611_ '()))))
                    (declare (not safe))
                    (cons _g6260862614_ __tmp64982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64981 '()))))
                                              (declare (not safe))
                                              (cons __tmp64983 __tmp64980))))
                                       (declare (not safe))
                                       (cons __tmp64979 _g6260962616_)))))
                              (declare (not safe))
                              (foldr2 __tmp64978 '() _L62590_ _L62592_)))))
                     (declare (not safe))
                     (cons __tmp64984 __tmp64977)))
                 _field6250662584_
                 _slot6250762587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6250062542_
                                         _target6249762536_
                                         '()
                                         '()))
                                      (_g6249062519_ _g6249162523_)))))
                            (_g6249062519_ _g6249162523_))))
                    (_g6249062519_ _g6249162523_)))))
        (_g6248962619_ _$stx62486_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62624_)
      (let* ((_g6262862654_
              (lambda (_g6262962650_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6262962650_)))
             (_g6262762737_
              (lambda (_g6262962658_)
                (if (gx#stx-pair? _g6262962658_)
                    (let ((_e6263662661_ (gx#syntax-e _g6262962658_)))
                      (let ((_hd6263562665_
                             (let ()
                               (declare (not safe))
                               (##car _e6263662661_)))
                            (_tl6263462668_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6263662661_))))
                        (if (gx#stx-pair? _tl6263462668_)
                            (let ((_e6263962671_ (gx#syntax-e _tl6263462668_)))
                              (let ((_hd6263862675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6263962671_)))
                                    (_tl6263762678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6263962671_))))
                                (if (gx#stx-pair? _tl6263762678_)
                                    (let ((_e6264262681_
                                           (gx#syntax-e _tl6263762678_)))
                                      (let ((_hd6264162685_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6264262681_)))
                                            (_tl6264062688_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6264262681_))))
                                        (if (gx#stx-pair? _tl6264062688_)
                                            (let ((_e6264562691_
                                                   (gx#syntax-e
                                                    _tl6264062688_)))
                                              (let ((_hd6264462695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6264562691_)))
                                                    (_tl6264362698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6264562691_))))
                                                (if (gx#stx-pair?
                                                     _tl6264362698_)
                                                    (let ((_e6264862701_
                                                           (gx#syntax-e
                                                            _tl6264362698_)))
                                                      (let ((_hd6264762705_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6264862701_)))
                    (_tl6264662708_
                     (let () (declare (not safe)) (##cdr _e6264862701_))))
                (if (gx#stx-null? _tl6264662708_)
                    ((lambda (_L62711_ _L62713_ _L62714_ _L62715_)
                       (let ((__tmp65031 (gx#datum->syntax '#f 'if))
                             (__tmp64985
                              (let ((__tmp65028
                                     (let ((__tmp65030
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65029
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62715_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65030 __tmp65029)))
                                    (__tmp64986
                                     (let ((__tmp64991
                                            (let ((__tmp65027
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64992
                                                   (let ((__tmp65021
                                                          (let ((__tmp65026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65022
                         (let ((__tmp65023
                                (let ((__tmp65025
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65024
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62715_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65025 __tmp65024))))
                           (declare (not safe))
                           (cons __tmp65023 '()))))
                    (declare (not safe))
                    (cons __tmp65026 __tmp65022)))
                 (__tmp64993
                  (let ((__tmp64994
                         (let ((__tmp65020 (gx#datum->syntax '#f 'cond))
                               (__tmp64995
                                (let ((__tmp65003
                                       (let ((__tmp65007
                                              (let ((__tmp65019
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65008
                                                     (let ((__tmp65015
                                                            (let ((__tmp65018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65016
                           (let ((__tmp65017 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65017 '()))))
                      (declare (not safe))
                      (cons __tmp65018 __tmp65016)))
                   (__tmp65009
                    (let ((__tmp65010
                           (let ((__tmp65014
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65011
                                  (let ((__tmp65013
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65012
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62714_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65013 __tmp65012))))
                             (declare (not safe))
                             (cons __tmp65014 __tmp65011))))
                      (declare (not safe))
                      (cons __tmp65010 '()))))
               (declare (not safe))
               (cons __tmp65015 __tmp65009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65019 __tmp65008)))
                                             (__tmp65004
                                              (let ((__tmp65006
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65005
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62713_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65006 __tmp65005))))
                                         (declare (not safe))
                                         (cons __tmp65007 __tmp65004)))
                                      (__tmp64996
                                       (let ((__tmp64997
                                              (let ((__tmp65002
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64998
                                                     (let ((__tmp64999
                                                            (let ((__tmp65000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65001
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62714_ '()))))
                             (declare (not safe))
                             (cons _L62715_ __tmp65001))))
                      (declare (not safe))
                      (cons _L62711_ __tmp65000))))
               (declare (not safe))
               (cons __tmp64999 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65002 __tmp64998))))
                                         (declare (not safe))
                                         (cons __tmp64997 '()))))
                                  (declare (not safe))
                                  (cons __tmp65003 __tmp64996))))
                           (declare (not safe))
                           (cons __tmp65020 __tmp64995))))
                    (declare (not safe))
                    (cons __tmp64994 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65021
                                                           __tmp64993))))
                                              (declare (not safe))
                                              (cons __tmp65027 __tmp64992)))
                                           (__tmp64987
                                            (let ((__tmp64988
                                                   (let ((__tmp64989
                                                          (let ((__tmp64990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62714_ '()))))
                    (declare (not safe))
                    (cons _L62715_ __tmp64990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62711_
                                                           __tmp64989))))
                                              (declare (not safe))
                                              (cons __tmp64988 '()))))
                                       (declare (not safe))
                                       (cons __tmp64991 __tmp64987))))
                                (declare (not safe))
                                (cons __tmp65028 __tmp64986))))
                         (declare (not safe))
                         (cons __tmp65031 __tmp64985)))
                     _hd6264762705_
                     _hd6264462695_
                     _hd6264162685_
                     _hd6263862675_)
                    (_g6262862654_ _g6262962658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6262862654_
                                                     _g6262962658_))))
                                            (_g6262862654_ _g6262962658_))))
                                    (_g6262862654_ _g6262962658_))))
                            (_g6262862654_ _g6262962658_))))
                    (_g6262862654_ _g6262962658_)))))
        (_g6262762737_ _$stx62624_)))))
