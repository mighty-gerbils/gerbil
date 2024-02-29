(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61940_)
      (let* ((___stx6448164482_ _$stx61940_)
             (_g6194561974_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6448164482_))))
        (let ((___kont6448464485_
               (lambda (_L62067_ _L62069_)
                 (let ((__tmp64821 (gx#datum->syntax '#f '##fx=))
                       (__tmp64815
                        (let ((__tmp64817
                               (let ((__tmp64820
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64818
                                      (let ((__tmp64819
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62067_ '()))))
                                        (declare (not safe))
                                        (cons _L62069_ __tmp64819))))
                                 (declare (not safe))
                                 (cons __tmp64820 __tmp64818)))
                              (__tmp64816
                               (let ()
                                 (declare (not safe))
                                 (cons _L62067_ '()))))
                          (declare (not safe))
                          (cons __tmp64817 __tmp64816))))
                   (declare (not safe))
                   (cons __tmp64821 __tmp64815))))
              (___kont6448664487_
               (lambda (_L62011_ _L62013_)
                 (let ((__tmp64834 (gx#datum->syntax '#f 'let))
                       (__tmp64822
                        (let ((__tmp64832
                               (let ((__tmp64833
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62011_ '()))))
                                 (declare (not safe))
                                 (cons _L62011_ __tmp64833)))
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
                          (let () (declare (not safe)) (cons _L62011_ '()))))
                     (declare (not safe))
                     (cons _L62013_ __tmp64829))))
              (declare (not safe))
              (cons __tmp64830 __tmp64828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64826
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62011_ '()))))
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
          (let ((___match6450864509_
                 (lambda (_e6195162037_
                          _hd6195062041_
                          _tl6194962044_
                          _e6195462047_
                          _hd6195362051_
                          _tl6195262054_
                          _e6195762057_
                          _hd6195662061_
                          _tl6195562064_)
                   (let ((_L62067_ _hd6195662061_) (_L62069_ _hd6195362051_))
                     (if (or (gx#identifier? _L62067_)
                             (gx#stx-fixnum? _L62067_))
                         (___kont6448464485_ _L62067_ _L62069_)
                         (___kont6448664487_
                          _hd6195662061_
                          _hd6195362051_))))))
            (if (gx#stx-pair? ___stx6448164482_)
                (let ((_e6195162037_ (gx#syntax-e ___stx6448164482_)))
                  (let ((_tl6194962044_
                         (let () (declare (not safe)) (##cdr _e6195162037_)))
                        (_hd6195062041_
                         (let () (declare (not safe)) (##car _e6195162037_))))
                    (if (gx#stx-pair? _tl6194962044_)
                        (let ((_e6195462047_ (gx#syntax-e _tl6194962044_)))
                          (let ((_tl6195262054_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6195462047_)))
                                (_hd6195362051_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6195462047_))))
                            (if (gx#stx-pair? _tl6195262054_)
                                (let ((_e6195762057_
                                       (gx#syntax-e _tl6195262054_)))
                                  (let ((_tl6195562064_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6195762057_)))
                                        (_hd6195662061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6195762057_))))
                                    (if (gx#stx-null? _tl6195562064_)
                                        (___match6450864509_
                                         _e6195162037_
                                         _hd6195062041_
                                         _tl6194962044_
                                         _e6195462047_
                                         _hd6195362051_
                                         _tl6195262054_
                                         _e6195762057_
                                         _hd6195662061_
                                         _tl6195562064_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6194561974_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6194561974_)))))
                        (let () (declare (not safe)) (_g6194561974_)))))
                (let () (declare (not safe)) (_g6194561974_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62092_)
      (let* ((___stx6453164532_ _$stx62092_)
             (_g6209762126_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6453164532_))))
        (let ((___kont6453464535_
               (lambda (_L62218_ _L62220_)
                 (let ((__tmp64841 (gx#datum->syntax '#f '##fx=))
                       (__tmp64835
                        (let ((__tmp64837
                               (let ((__tmp64840
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64838
                                      (let ((__tmp64839
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62218_ '()))))
                                        (declare (not safe))
                                        (cons _L62220_ __tmp64839))))
                                 (declare (not safe))
                                 (cons __tmp64840 __tmp64838)))
                              (__tmp64836
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64837 __tmp64836))))
                   (declare (not safe))
                   (cons __tmp64841 __tmp64835))))
              (___kont6453664537_
               (lambda (_L62163_ _L62165_)
                 (let ((__tmp64854 (gx#datum->syntax '#f 'let))
                       (__tmp64842
                        (let ((__tmp64852
                               (let ((__tmp64853
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62163_ '()))))
                                 (declare (not safe))
                                 (cons _L62163_ __tmp64853)))
                              (__tmp64843
                               (let ((__tmp64844
                                      (let ((__tmp64851
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64845
                                             (let ((__tmp64847
                                                    (let ((__tmp64850
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64848
                                                           (let ((__tmp64849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62163_ '()))))
                     (declare (not safe))
                     (cons _L62165_ __tmp64849))))
              (declare (not safe))
              (cons __tmp64850 __tmp64848)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64846
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64847 __tmp64846))))
                                        (declare (not safe))
                                        (cons __tmp64851 __tmp64845))))
                                 (declare (not safe))
                                 (cons __tmp64844 '()))))
                          (declare (not safe))
                          (cons __tmp64852 __tmp64843))))
                   (declare (not safe))
                   (cons __tmp64854 __tmp64842)))))
          (let ((___match6455864559_
                 (lambda (_e6210362188_
                          _hd6210262192_
                          _tl6210162195_
                          _e6210662198_
                          _hd6210562202_
                          _tl6210462205_
                          _e6210962208_
                          _hd6210862212_
                          _tl6210762215_)
                   (let ((_L62218_ _hd6210862212_) (_L62220_ _hd6210562202_))
                     (if (or (gx#identifier? _L62218_)
                             (gx#stx-fixnum? _L62218_))
                         (___kont6453464535_ _L62218_ _L62220_)
                         (___kont6453664537_
                          _hd6210862212_
                          _hd6210562202_))))))
            (if (gx#stx-pair? ___stx6453164532_)
                (let ((_e6210362188_ (gx#syntax-e ___stx6453164532_)))
                  (let ((_tl6210162195_
                         (let () (declare (not safe)) (##cdr _e6210362188_)))
                        (_hd6210262192_
                         (let () (declare (not safe)) (##car _e6210362188_))))
                    (if (gx#stx-pair? _tl6210162195_)
                        (let ((_e6210662198_ (gx#syntax-e _tl6210162195_)))
                          (let ((_tl6210462205_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6210662198_)))
                                (_hd6210562202_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6210662198_))))
                            (if (gx#stx-pair? _tl6210462205_)
                                (let ((_e6210962208_
                                       (gx#syntax-e _tl6210462205_)))
                                  (let ((_tl6210762215_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6210962208_)))
                                        (_hd6210862212_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6210962208_))))
                                    (if (gx#stx-null? _tl6210762215_)
                                        (___match6455864559_
                                         _e6210362188_
                                         _hd6210262192_
                                         _tl6210162195_
                                         _e6210662198_
                                         _hd6210562202_
                                         _tl6210462205_
                                         _e6210962208_
                                         _hd6210862212_
                                         _tl6210762215_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6209762126_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6209762126_)))))
                        (let () (declare (not safe)) (_g6209762126_)))))
                (let () (declare (not safe)) (_g6209762126_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62243_)
      (let* ((_g6224662267_
              (lambda (_g6224762263_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6224762263_)))
             (_g6224562495_
              (lambda (_g6224762271_)
                (if (gx#stx-pair? _g6224762271_)
                    (let ((_e6225262274_ (gx#syntax-e _g6224762271_)))
                      (let ((_hd6225162278_
                             (let ()
                               (declare (not safe))
                               (##car _e6225262274_)))
                            (_tl6225062281_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6225262274_))))
                        (if (gx#stx-pair? _tl6225062281_)
                            (let ((_e6225562284_ (gx#syntax-e _tl6225062281_)))
                              (let ((_hd6225462288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6225562284_)))
                                    (_tl6225362291_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6225562284_))))
                                (if (gx#stx-pair? _hd6225462288_)
                                    (let ((_e6225862294_
                                           (gx#syntax-e _hd6225462288_)))
                                      (let ((_hd6225762298_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6225862294_)))
                                            (_tl6225662301_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6225862294_))))
                                        (if (gx#stx-pair? _tl6225662301_)
                                            (let ((_e6226162304_
                                                   (gx#syntax-e
                                                    _tl6225662301_)))
                                              (let ((_hd6226062308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6226162304_)))
                                                    (_tl6225962311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6226162304_))))
                                                (if (gx#stx-null?
                                                     _tl6225962311_)
                                                    (if (gx#stx-null?
                                                         _tl6225362291_)
                                                        ((lambda (_L62314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62316_)
                   (let* ((_g6233462342_
                           (lambda (_g6233562338_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6233562338_)))
                          (_g6233362491_
                           (lambda (_g6233562346_)
                             ((lambda (_L62349_)
                                (let ()
                                  (let* ((_g6236162369_
                                          (lambda (_g6236262365_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6236262365_)))
                                         (_g6236062487_
                                          (lambda (_g6236262373_)
                                            ((lambda (_L62376_)
                                               (let ()
                                                 (let* ((_g6238962397_
                                                         (lambda (_g6239062393_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6239062393_)))
                                                        (_g6238862483_
                                                         (lambda (_g6239062401_)
                                                           ((lambda (_L62404_)
                                                              (let ()
                                                                (let* ((_g6241762425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6241862421_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6241862421_)))
                               (_g6241662479_
                                (lambda (_g6241862429_)
                                  ((lambda (_L62432_)
                                     (let ()
                                       (let* ((_g6244562453_
                                               (lambda (_g6244662449_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6244662449_)))
                                              (_g6244462475_
                                               (lambda (_g6244662457_)
                                                 ((lambda (_L62460_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64987
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64855
                                                               (let ((__tmp64957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64986 (gx#datum->syntax '#f 'def))
                                    (__tmp64958
                                     (let ((__tmp64959
                                            (let ((__tmp64960
                                                   (let ((__tmp64985
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64961
                                                          (let ((__tmp64980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64984
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64981
                                (let ((__tmp64982
                                       (let ((__tmp64983
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62316_ __tmp64983))))
                                  (declare (not safe))
                                  (cons _L62349_ __tmp64982))))
                           (declare (not safe))
                           (cons __tmp64984 __tmp64981)))
                        (__tmp64962
                         (let ((__tmp64963
                                (let ((__tmp64979
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64964
                                       (let ((__tmp64977
                                              (let ((__tmp64978
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64978 '())))
                                             (__tmp64965
                                              (let ((__tmp64966
                                                     (let ((__tmp64976
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64967
                                                            (let ((__tmp64975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64968
                           (let ((__tmp64969
                                  (let ((__tmp64974
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64970
                                         (let ((__tmp64971
                                                (let ((__tmp64973
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64972
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62316_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64973
                                                        __tmp64972))))
                                           (declare (not safe))
                                           (cons __tmp64971 '()))))
                                    (declare (not safe))
                                    (cons __tmp64974 __tmp64970))))
                             (declare (not safe))
                             (cons _L62314_ __tmp64969))))
                      (declare (not safe))
                      (cons __tmp64975 __tmp64968))))
               (declare (not safe))
               (cons __tmp64976 __tmp64967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64966 '()))))
                                         (declare (not safe))
                                         (cons __tmp64977 __tmp64965))))
                                  (declare (not safe))
                                  (cons __tmp64979 __tmp64964))))
                           (declare (not safe))
                           (cons __tmp64963 '()))))
                    (declare (not safe))
                    (cons __tmp64980 __tmp64962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64985
                                                           __tmp64961))))
                                              (declare (not safe))
                                              (cons __tmp64960 '()))))
                                       (declare (not safe))
                                       (cons _L62376_ __tmp64959))))
                                (declare (not safe))
                                (cons __tmp64986 __tmp64958)))
                             (__tmp64856
                              (let ((__tmp64927
                                     (let ((__tmp64956
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64928
                                            (let ((__tmp64929
                                                   (let ((__tmp64930
                                                          (let ((__tmp64955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64931
                         (let ((__tmp64950
                                (let ((__tmp64954
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64951
                                       (let ((__tmp64952
                                              (let ((__tmp64953
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62316_ __tmp64953))))
                                         (declare (not safe))
                                         (cons _L62349_ __tmp64952))))
                                  (declare (not safe))
                                  (cons __tmp64954 __tmp64951)))
                               (__tmp64932
                                (let ((__tmp64933
                                       (let ((__tmp64949
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64934
                                              (let ((__tmp64947
                                                     (let ((__tmp64948
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64948 '())))
                                                    (__tmp64935
                                                     (let ((__tmp64936
                                                            (let ((__tmp64946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64937
                           (let ((__tmp64945 (gx#datum->syntax '#f 'klass))
                                 (__tmp64938
                                  (let ((__tmp64939
                                         (let ((__tmp64944
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64940
                                                (let ((__tmp64941
                                                       (let ((__tmp64943
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64942
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62316_ '()))))
                 (declare (not safe))
                 (cons __tmp64943 __tmp64942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64941 '()))))
                                           (declare (not safe))
                                           (cons __tmp64944 __tmp64940))))
                                    (declare (not safe))
                                    (cons _L62314_ __tmp64939))))
                             (declare (not safe))
                             (cons __tmp64945 __tmp64938))))
                      (declare (not safe))
                      (cons __tmp64946 __tmp64937))))
               (declare (not safe))
               (cons __tmp64936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64947 __tmp64935))))
                                         (declare (not safe))
                                         (cons __tmp64949 __tmp64934))))
                                  (declare (not safe))
                                  (cons __tmp64933 '()))))
                           (declare (not safe))
                           (cons __tmp64950 __tmp64932))))
                    (declare (not safe))
                    (cons __tmp64955 __tmp64931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64930 '()))))
                                              (declare (not safe))
                                              (cons _L62404_ __tmp64929))))
                                       (declare (not safe))
                                       (cons __tmp64956 __tmp64928)))
                                    (__tmp64857
                                     (let ((__tmp64893
                                            (let ((__tmp64926
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64894
                                                   (let ((__tmp64895
                                                          (let ((__tmp64896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64925
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64897
                                (let ((__tmp64920
                                       (let ((__tmp64924
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64921
                                              (let ((__tmp64922
                                                     (let ((__tmp64923
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62316_
                                                             __tmp64923))))
                                                (declare (not safe))
                                                (cons _L62349_ __tmp64922))))
                                         (declare (not safe))
                                         (cons __tmp64924 __tmp64921)))
                                      (__tmp64898
                                       (let ((__tmp64899
                                              (let ((__tmp64919
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64900
                                                     (let ((__tmp64915
                                                            (let ((__tmp64918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64916
                           (let ((__tmp64917 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64917 '()))))
                      (declare (not safe))
                      (cons __tmp64918 __tmp64916)))
                   (__tmp64901
                    (let ((__tmp64902
                           (let ((__tmp64914
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64903
                                  (let ((__tmp64913
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64904
                                         (let ((__tmp64912
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64905
                                                (let ((__tmp64906
                                                       (let ((__tmp64911
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64907
                                                              (let ((__tmp64908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64910 (gx#datum->syntax '#f 'quote))
                                   (__tmp64909
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62316_ '()))))
                               (declare (not safe))
                               (cons __tmp64910 __tmp64909))))
                        (declare (not safe))
                        (cons __tmp64908 '()))))
                 (declare (not safe))
                 (cons __tmp64911 __tmp64907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62314_ __tmp64906))))
                                           (declare (not safe))
                                           (cons __tmp64912 __tmp64905))))
                                    (declare (not safe))
                                    (cons __tmp64913 __tmp64904))))
                             (declare (not safe))
                             (cons __tmp64914 __tmp64903))))
                      (declare (not safe))
                      (cons __tmp64902 '()))))
               (declare (not safe))
               (cons __tmp64915 __tmp64901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64919 __tmp64900))))
                                         (declare (not safe))
                                         (cons __tmp64899 '()))))
                                  (declare (not safe))
                                  (cons __tmp64920 __tmp64898))))
                           (declare (not safe))
                           (cons __tmp64925 __tmp64897))))
                    (declare (not safe))
                    (cons __tmp64896 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62432_
                                                           __tmp64895))))
                                              (declare (not safe))
                                              (cons __tmp64926 __tmp64894)))
                                           (__tmp64858
                                            (let ((__tmp64859
                                                   (let ((__tmp64892
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64860
                                                          (let ((__tmp64861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64862
                                (let ((__tmp64891
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64863
                                       (let ((__tmp64886
                                              (let ((__tmp64890
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64887
                                                     (let ((__tmp64888
                                                            (let ((__tmp64889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62316_ __tmp64889))))
               (declare (not safe))
               (cons _L62349_ __tmp64888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64890 __tmp64887)))
                                             (__tmp64864
                                              (let ((__tmp64865
                                                     (let ((__tmp64885
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64866
                                                            (let ((__tmp64881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64884 (gx#datum->syntax '#f 'klass))
                                 (__tmp64882
                                  (let ((__tmp64883
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64883 '()))))
                             (declare (not safe))
                             (cons __tmp64884 __tmp64882)))
                          (__tmp64867
                           (let ((__tmp64868
                                  (let ((__tmp64880
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64869
                                         (let ((__tmp64879
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64870
                                                (let ((__tmp64878
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64871
                                                       (let ((__tmp64872
                                                              (let ((__tmp64877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64873
                             (let ((__tmp64874
                                    (let ((__tmp64876
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64875
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62316_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64876 __tmp64875))))
                               (declare (not safe))
                               (cons __tmp64874 '()))))
                        (declare (not safe))
                        (cons __tmp64877 __tmp64873))))
                 (declare (not safe))
                 (cons _L62314_ __tmp64872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64878
                                                        __tmp64871))))
                                           (declare (not safe))
                                           (cons __tmp64879 __tmp64870))))
                                    (declare (not safe))
                                    (cons __tmp64880 __tmp64869))))
                             (declare (not safe))
                             (cons __tmp64868 '()))))
                      (declare (not safe))
                      (cons __tmp64881 __tmp64867))))
               (declare (not safe))
               (cons __tmp64885 __tmp64866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64865 '()))))
                                         (declare (not safe))
                                         (cons __tmp64886 __tmp64864))))
                                  (declare (not safe))
                                  (cons __tmp64891 __tmp64863))))
                           (declare (not safe))
                           (cons __tmp64862 '()))))
                    (declare (not safe))
                    (cons _L62460_ __tmp64861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64892
                                                           __tmp64860))))
                                              (declare (not safe))
                                              (cons __tmp64859 '()))))
                                       (declare (not safe))
                                       (cons __tmp64893 __tmp64858))))
                                (declare (not safe))
                                (cons __tmp64927 __tmp64857))))
                         (declare (not safe))
                         (cons __tmp64957 __tmp64856))))
                  (declare (not safe))
                  (cons __tmp64987 __tmp64855)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6244662457_))))
                                         (_g6244462475_
                                          (gx#stx-identifier
                                           _L62316_
                                           '"&"
                                           _L62432_)))))
                                   _g6241862429_))))
                          (_g6241662479_
                           (gx#stx-identifier _L62316_ _L62376_ '"-set!")))))
                    _g6239062401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6238862483_
                                                    (gx#stx-identifier
                                                     _L62316_
                                                     '"&"
                                                     _L62376_)))))
                                             _g6236262373_))))
                                    (_g6236062487_
                                     (gx#stx-identifier
                                      _L62316_
                                      '"class-type-"
                                      _L62316_)))))
                              _g6233562346_))))
                     (_g6233362491_ (gx#core-quote-syntax 'class::t))))
                 _hd6226062308_
                 _hd6225762298_)
                (_g6224662267_ _g6224762271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6224662267_
                                                     _g6224762271_))))
                                            (_g6224662267_ _g6224762271_))))
                                    (_g6224662267_ _g6224762271_))))
                            (_g6224662267_ _g6224762271_))))
                    (_g6224662267_ _g6224762271_)))))
        (_g6224562495_ _stx62243_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62499_)
      (let* ((_g6250362532_
              (lambda (_g6250462528_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6250462528_)))
             (_g6250262632_
              (lambda (_g6250462536_)
                (if (gx#stx-pair? _g6250462536_)
                    (let ((_e6250962539_ (gx#syntax-e _g6250462536_)))
                      (let ((_hd6250862543_
                             (let ()
                               (declare (not safe))
                               (##car _e6250962539_)))
                            (_tl6250762546_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6250962539_))))
                        (if (gx#stx-pair/null? _tl6250762546_)
                            (let ((_g64988_
                                   (gx#syntax-split-splice _tl6250762546_ '0)))
                              (begin
                                (let ((_g64989_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64988_)
                                             (##vector-length _g64988_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64989_ 2)))
                                      (error "Context expects 2 values"
                                             _g64989_)))
                                (let ((_target6251062549_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64988_ 0)))
                                      (_tl6251262552_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64988_ 1))))
                                  (if (gx#stx-null? _tl6251262552_)
                                      (letrec ((_loop6251362555_
                                                (lambda (_hd6251162559_
                                                         _field6251762562_
                                                         _slot6251862564_)
                                                  (if (gx#stx-pair?
                                                       _hd6251162559_)
                                                      (let ((_e6251462567_
                                                             (gx#syntax-e
                                                              _hd6251162559_)))
                                                        (let ((_lp-hd6251562571_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6251462567_)))
                      (_lp-tl6251662574_
                       (let () (declare (not safe)) (##cdr _e6251462567_))))
                  (if (gx#stx-pair? _lp-hd6251562571_)
                      (let ((_e6252362577_ (gx#syntax-e _lp-hd6251562571_)))
                        (let ((_hd6252262581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6252362577_)))
                              (_tl6252162584_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6252362577_))))
                          (if (gx#stx-pair? _tl6252162584_)
                              (let ((_e6252662587_
                                     (gx#syntax-e _tl6252162584_)))
                                (let ((_hd6252562591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6252662587_)))
                                      (_tl6252462594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6252662587_))))
                                  (if (gx#stx-null? _tl6252462594_)
                                      (_loop6251362555_
                                       _lp-tl6251662574_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6252562591_
                                               _field6251762562_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6252262581_
                                               _slot6251862564_)))
                                      (_g6250362532_ _g6250462536_))))
                              (_g6250362532_ _g6250462536_))))
                      (_g6250362532_ _g6250462536_))))
              (let ((_field6251962597_ (reverse _field6251762562_))
                    (_slot6252062600_ (reverse _slot6251862564_)))
                ((lambda (_L62603_ _L62605_)
                   (let ((__tmp64997 (gx#datum->syntax '#f 'begin))
                         (__tmp64990
                          (begin
                            (gx#syntax-check-splice-targets _L62603_ _L62605_)
                            (let ((__tmp64991
                                   (lambda (_g6262062624_
                                            _g6262162627_
                                            _g6262262629_)
                                     (let ((__tmp64992
                                            (let ((__tmp64996
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64993
                                                   (let ((__tmp64994
                                                          (let ((__tmp64995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6262062624_ '()))))
                    (declare (not safe))
                    (cons _g6262162627_ __tmp64995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64994 '()))))
                                              (declare (not safe))
                                              (cons __tmp64996 __tmp64993))))
                                       (declare (not safe))
                                       (cons __tmp64992 _g6262262629_)))))
                              (declare (not safe))
                              (foldr2 __tmp64991 '() _L62603_ _L62605_)))))
                     (declare (not safe))
                     (cons __tmp64997 __tmp64990)))
                 _field6251962597_
                 _slot6252062600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6251362555_
                                         _target6251062549_
                                         '()
                                         '()))
                                      (_g6250362532_ _g6250462536_)))))
                            (_g6250362532_ _g6250462536_))))
                    (_g6250362532_ _g6250462536_)))))
        (_g6250262632_ _$stx62499_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62637_)
      (let* ((_g6264162667_
              (lambda (_g6264262663_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6264262663_)))
             (_g6264062750_
              (lambda (_g6264262671_)
                (if (gx#stx-pair? _g6264262671_)
                    (let ((_e6264962674_ (gx#syntax-e _g6264262671_)))
                      (let ((_hd6264862678_
                             (let ()
                               (declare (not safe))
                               (##car _e6264962674_)))
                            (_tl6264762681_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6264962674_))))
                        (if (gx#stx-pair? _tl6264762681_)
                            (let ((_e6265262684_ (gx#syntax-e _tl6264762681_)))
                              (let ((_hd6265162688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6265262684_)))
                                    (_tl6265062691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6265262684_))))
                                (if (gx#stx-pair? _tl6265062691_)
                                    (let ((_e6265562694_
                                           (gx#syntax-e _tl6265062691_)))
                                      (let ((_hd6265462698_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6265562694_)))
                                            (_tl6265362701_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6265562694_))))
                                        (if (gx#stx-pair? _tl6265362701_)
                                            (let ((_e6265862704_
                                                   (gx#syntax-e
                                                    _tl6265362701_)))
                                              (let ((_hd6265762708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6265862704_)))
                                                    (_tl6265662711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6265862704_))))
                                                (if (gx#stx-pair?
                                                     _tl6265662711_)
                                                    (let ((_e6266162714_
                                                           (gx#syntax-e
                                                            _tl6265662711_)))
                                                      (let ((_hd6266062718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6266162714_)))
                    (_tl6265962721_
                     (let () (declare (not safe)) (##cdr _e6266162714_))))
                (if (gx#stx-null? _tl6265962721_)
                    ((lambda (_L62724_ _L62726_ _L62727_ _L62728_)
                       (let ((__tmp65044 (gx#datum->syntax '#f 'if))
                             (__tmp64998
                              (let ((__tmp65041
                                     (let ((__tmp65043
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65042
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62728_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65043 __tmp65042)))
                                    (__tmp64999
                                     (let ((__tmp65004
                                            (let ((__tmp65040
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp65005
                                                   (let ((__tmp65034
                                                          (let ((__tmp65039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65035
                         (let ((__tmp65036
                                (let ((__tmp65038
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65037
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62728_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65038 __tmp65037))))
                           (declare (not safe))
                           (cons __tmp65036 '()))))
                    (declare (not safe))
                    (cons __tmp65039 __tmp65035)))
                 (__tmp65006
                  (let ((__tmp65007
                         (let ((__tmp65033 (gx#datum->syntax '#f 'cond))
                               (__tmp65008
                                (let ((__tmp65016
                                       (let ((__tmp65020
                                              (let ((__tmp65032
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65021
                                                     (let ((__tmp65028
                                                            (let ((__tmp65031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65029
                           (let ((__tmp65030 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65030 '()))))
                      (declare (not safe))
                      (cons __tmp65031 __tmp65029)))
                   (__tmp65022
                    (let ((__tmp65023
                           (let ((__tmp65027
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65024
                                  (let ((__tmp65026
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65025
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62727_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65026 __tmp65025))))
                             (declare (not safe))
                             (cons __tmp65027 __tmp65024))))
                      (declare (not safe))
                      (cons __tmp65023 '()))))
               (declare (not safe))
               (cons __tmp65028 __tmp65022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65032 __tmp65021)))
                                             (__tmp65017
                                              (let ((__tmp65019
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65018
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62726_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65019 __tmp65018))))
                                         (declare (not safe))
                                         (cons __tmp65020 __tmp65017)))
                                      (__tmp65009
                                       (let ((__tmp65010
                                              (let ((__tmp65015
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65011
                                                     (let ((__tmp65012
                                                            (let ((__tmp65013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65014
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62727_ '()))))
                             (declare (not safe))
                             (cons _L62728_ __tmp65014))))
                      (declare (not safe))
                      (cons _L62724_ __tmp65013))))
               (declare (not safe))
               (cons __tmp65012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65015 __tmp65011))))
                                         (declare (not safe))
                                         (cons __tmp65010 '()))))
                                  (declare (not safe))
                                  (cons __tmp65016 __tmp65009))))
                           (declare (not safe))
                           (cons __tmp65033 __tmp65008))))
                    (declare (not safe))
                    (cons __tmp65007 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65034
                                                           __tmp65006))))
                                              (declare (not safe))
                                              (cons __tmp65040 __tmp65005)))
                                           (__tmp65000
                                            (let ((__tmp65001
                                                   (let ((__tmp65002
                                                          (let ((__tmp65003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62727_ '()))))
                    (declare (not safe))
                    (cons _L62728_ __tmp65003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62724_
                                                           __tmp65002))))
                                              (declare (not safe))
                                              (cons __tmp65001 '()))))
                                       (declare (not safe))
                                       (cons __tmp65004 __tmp65000))))
                                (declare (not safe))
                                (cons __tmp65041 __tmp64999))))
                         (declare (not safe))
                         (cons __tmp65044 __tmp64998)))
                     _hd6266062718_
                     _hd6265762708_
                     _hd6265462698_
                     _hd6265162688_)
                    (_g6264162667_ _g6264262671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6264162667_
                                                     _g6264262671_))))
                                            (_g6264162667_ _g6264262671_))))
                                    (_g6264162667_ _g6264262671_))))
                            (_g6264162667_ _g6264262671_))))
                    (_g6264162667_ _g6264262671_)))))
        (_g6264062750_ _$stx62637_)))))
