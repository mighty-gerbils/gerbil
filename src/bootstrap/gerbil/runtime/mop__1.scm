(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61932_)
      (let* ((___stx6447364474_ _$stx61932_)
             (_g6193761966_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6447364474_))))
        (let ((___kont6447664477_
               (lambda (_L62059_ _L62061_)
                 (let ((__tmp64813 (gx#datum->syntax '#f '##fx=))
                       (__tmp64807
                        (let ((__tmp64809
                               (let ((__tmp64812
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64810
                                      (let ((__tmp64811
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62059_ '()))))
                                        (declare (not safe))
                                        (cons _L62061_ __tmp64811))))
                                 (declare (not safe))
                                 (cons __tmp64812 __tmp64810)))
                              (__tmp64808
                               (let ()
                                 (declare (not safe))
                                 (cons _L62059_ '()))))
                          (declare (not safe))
                          (cons __tmp64809 __tmp64808))))
                   (declare (not safe))
                   (cons __tmp64813 __tmp64807))))
              (___kont6447864479_
               (lambda (_L62003_ _L62005_)
                 (let ((__tmp64826 (gx#datum->syntax '#f 'let))
                       (__tmp64814
                        (let ((__tmp64824
                               (let ((__tmp64825
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62003_ '()))))
                                 (declare (not safe))
                                 (cons _L62003_ __tmp64825)))
                              (__tmp64815
                               (let ((__tmp64816
                                      (let ((__tmp64823
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64817
                                             (let ((__tmp64819
                                                    (let ((__tmp64822
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64820
                                                           (let ((__tmp64821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62003_ '()))))
                     (declare (not safe))
                     (cons _L62005_ __tmp64821))))
              (declare (not safe))
              (cons __tmp64822 __tmp64820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64818
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L62003_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64819 __tmp64818))))
                                        (declare (not safe))
                                        (cons __tmp64823 __tmp64817))))
                                 (declare (not safe))
                                 (cons __tmp64816 '()))))
                          (declare (not safe))
                          (cons __tmp64824 __tmp64815))))
                   (declare (not safe))
                   (cons __tmp64826 __tmp64814)))))
          (let ((___match6450064501_
                 (lambda (_e6194362029_
                          _hd6194262033_
                          _tl6194162036_
                          _e6194662039_
                          _hd6194562043_
                          _tl6194462046_
                          _e6194962049_
                          _hd6194862053_
                          _tl6194762056_)
                   (let ((_L62059_ _hd6194862053_) (_L62061_ _hd6194562043_))
                     (if (or (gx#identifier? _L62059_)
                             (gx#stx-fixnum? _L62059_))
                         (___kont6447664477_ _L62059_ _L62061_)
                         (___kont6447864479_
                          _hd6194862053_
                          _hd6194562043_))))))
            (if (gx#stx-pair? ___stx6447364474_)
                (let ((_e6194362029_ (gx#syntax-e ___stx6447364474_)))
                  (let ((_tl6194162036_
                         (let () (declare (not safe)) (##cdr _e6194362029_)))
                        (_hd6194262033_
                         (let () (declare (not safe)) (##car _e6194362029_))))
                    (if (gx#stx-pair? _tl6194162036_)
                        (let ((_e6194662039_ (gx#syntax-e _tl6194162036_)))
                          (let ((_tl6194462046_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6194662039_)))
                                (_hd6194562043_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6194662039_))))
                            (if (gx#stx-pair? _tl6194462046_)
                                (let ((_e6194962049_
                                       (gx#syntax-e _tl6194462046_)))
                                  (let ((_tl6194762056_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6194962049_)))
                                        (_hd6194862053_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6194962049_))))
                                    (if (gx#stx-null? _tl6194762056_)
                                        (___match6450064501_
                                         _e6194362029_
                                         _hd6194262033_
                                         _tl6194162036_
                                         _e6194662039_
                                         _hd6194562043_
                                         _tl6194462046_
                                         _e6194962049_
                                         _hd6194862053_
                                         _tl6194762056_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6193761966_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6193761966_)))))
                        (let () (declare (not safe)) (_g6193761966_)))))
                (let () (declare (not safe)) (_g6193761966_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx62084_)
      (let* ((___stx6452364524_ _$stx62084_)
             (_g6208962118_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6452364524_))))
        (let ((___kont6452664527_
               (lambda (_L62210_ _L62212_)
                 (let ((__tmp64833 (gx#datum->syntax '#f '##fx=))
                       (__tmp64827
                        (let ((__tmp64829
                               (let ((__tmp64832
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64830
                                      (let ((__tmp64831
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62210_ '()))))
                                        (declare (not safe))
                                        (cons _L62212_ __tmp64831))))
                                 (declare (not safe))
                                 (cons __tmp64832 __tmp64830)))
                              (__tmp64828
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64829 __tmp64828))))
                   (declare (not safe))
                   (cons __tmp64833 __tmp64827))))
              (___kont6452864529_
               (lambda (_L62155_ _L62157_)
                 (let ((__tmp64846 (gx#datum->syntax '#f 'let))
                       (__tmp64834
                        (let ((__tmp64844
                               (let ((__tmp64845
                                      (let ()
                                        (declare (not safe))
                                        (cons _L62155_ '()))))
                                 (declare (not safe))
                                 (cons _L62155_ __tmp64845)))
                              (__tmp64835
                               (let ((__tmp64836
                                      (let ((__tmp64843
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64837
                                             (let ((__tmp64839
                                                    (let ((__tmp64842
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64840
                                                           (let ((__tmp64841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L62155_ '()))))
                     (declare (not safe))
                     (cons _L62157_ __tmp64841))))
              (declare (not safe))
              (cons __tmp64842 __tmp64840)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64838
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64839 __tmp64838))))
                                        (declare (not safe))
                                        (cons __tmp64843 __tmp64837))))
                                 (declare (not safe))
                                 (cons __tmp64836 '()))))
                          (declare (not safe))
                          (cons __tmp64844 __tmp64835))))
                   (declare (not safe))
                   (cons __tmp64846 __tmp64834)))))
          (let ((___match6455064551_
                 (lambda (_e6209562180_
                          _hd6209462184_
                          _tl6209362187_
                          _e6209862190_
                          _hd6209762194_
                          _tl6209662197_
                          _e6210162200_
                          _hd6210062204_
                          _tl6209962207_)
                   (let ((_L62210_ _hd6210062204_) (_L62212_ _hd6209762194_))
                     (if (or (gx#identifier? _L62210_)
                             (gx#stx-fixnum? _L62210_))
                         (___kont6452664527_ _L62210_ _L62212_)
                         (___kont6452864529_
                          _hd6210062204_
                          _hd6209762194_))))))
            (if (gx#stx-pair? ___stx6452364524_)
                (let ((_e6209562180_ (gx#syntax-e ___stx6452364524_)))
                  (let ((_tl6209362187_
                         (let () (declare (not safe)) (##cdr _e6209562180_)))
                        (_hd6209462184_
                         (let () (declare (not safe)) (##car _e6209562180_))))
                    (if (gx#stx-pair? _tl6209362187_)
                        (let ((_e6209862190_ (gx#syntax-e _tl6209362187_)))
                          (let ((_tl6209662197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6209862190_)))
                                (_hd6209762194_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6209862190_))))
                            (if (gx#stx-pair? _tl6209662197_)
                                (let ((_e6210162200_
                                       (gx#syntax-e _tl6209662197_)))
                                  (let ((_tl6209962207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6210162200_)))
                                        (_hd6210062204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6210162200_))))
                                    (if (gx#stx-null? _tl6209962207_)
                                        (___match6455064551_
                                         _e6209562180_
                                         _hd6209462184_
                                         _tl6209362187_
                                         _e6209862190_
                                         _hd6209762194_
                                         _tl6209662197_
                                         _e6210162200_
                                         _hd6210062204_
                                         _tl6209962207_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6208962118_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6208962118_)))))
                        (let () (declare (not safe)) (_g6208962118_)))))
                (let () (declare (not safe)) (_g6208962118_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx62235_)
      (let* ((_g6223862259_
              (lambda (_g6223962255_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6223962255_)))
             (_g6223762487_
              (lambda (_g6223962263_)
                (if (gx#stx-pair? _g6223962263_)
                    (let ((_e6224462266_ (gx#syntax-e _g6223962263_)))
                      (let ((_hd6224362270_
                             (let ()
                               (declare (not safe))
                               (##car _e6224462266_)))
                            (_tl6224262273_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6224462266_))))
                        (if (gx#stx-pair? _tl6224262273_)
                            (let ((_e6224762276_ (gx#syntax-e _tl6224262273_)))
                              (let ((_hd6224662280_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6224762276_)))
                                    (_tl6224562283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6224762276_))))
                                (if (gx#stx-pair? _hd6224662280_)
                                    (let ((_e6225062286_
                                           (gx#syntax-e _hd6224662280_)))
                                      (let ((_hd6224962290_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6225062286_)))
                                            (_tl6224862293_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6225062286_))))
                                        (if (gx#stx-pair? _tl6224862293_)
                                            (let ((_e6225362296_
                                                   (gx#syntax-e
                                                    _tl6224862293_)))
                                              (let ((_hd6225262300_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6225362296_)))
                                                    (_tl6225162303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6225362296_))))
                                                (if (gx#stx-null?
                                                     _tl6225162303_)
                                                    (if (gx#stx-null?
                                                         _tl6224562283_)
                                                        ((lambda (_L62306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L62308_)
                   (let* ((_g6232662334_
                           (lambda (_g6232762330_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6232762330_)))
                          (_g6232562483_
                           (lambda (_g6232762338_)
                             ((lambda (_L62341_)
                                (let ()
                                  (let* ((_g6235362361_
                                          (lambda (_g6235462357_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6235462357_)))
                                         (_g6235262479_
                                          (lambda (_g6235462365_)
                                            ((lambda (_L62368_)
                                               (let ()
                                                 (let* ((_g6238162389_
                                                         (lambda (_g6238262385_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6238262385_)))
                                                        (_g6238062475_
                                                         (lambda (_g6238262393_)
                                                           ((lambda (_L62396_)
                                                              (let ()
                                                                (let* ((_g6240962417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6241062413_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6241062413_)))
                               (_g6240862471_
                                (lambda (_g6241062421_)
                                  ((lambda (_L62424_)
                                     (let ()
                                       (let* ((_g6243762445_
                                               (lambda (_g6243862441_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6243862441_)))
                                              (_g6243662467_
                                               (lambda (_g6243862449_)
                                                 ((lambda (_L62452_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64979
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64847
                                                               (let ((__tmp64949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64978 (gx#datum->syntax '#f 'def))
                                    (__tmp64950
                                     (let ((__tmp64951
                                            (let ((__tmp64952
                                                   (let ((__tmp64977
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64953
                                                          (let ((__tmp64972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64976
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64973
                                (let ((__tmp64974
                                       (let ((__tmp64975
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L62308_ __tmp64975))))
                                  (declare (not safe))
                                  (cons _L62341_ __tmp64974))))
                           (declare (not safe))
                           (cons __tmp64976 __tmp64973)))
                        (__tmp64954
                         (let ((__tmp64955
                                (let ((__tmp64971
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64956
                                       (let ((__tmp64969
                                              (let ((__tmp64970
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64970 '())))
                                             (__tmp64957
                                              (let ((__tmp64958
                                                     (let ((__tmp64968
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64959
                                                            (let ((__tmp64967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64960
                           (let ((__tmp64961
                                  (let ((__tmp64966
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64962
                                         (let ((__tmp64963
                                                (let ((__tmp64965
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64964
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L62308_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64965
                                                        __tmp64964))))
                                           (declare (not safe))
                                           (cons __tmp64963 '()))))
                                    (declare (not safe))
                                    (cons __tmp64966 __tmp64962))))
                             (declare (not safe))
                             (cons _L62306_ __tmp64961))))
                      (declare (not safe))
                      (cons __tmp64967 __tmp64960))))
               (declare (not safe))
               (cons __tmp64968 __tmp64959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64958 '()))))
                                         (declare (not safe))
                                         (cons __tmp64969 __tmp64957))))
                                  (declare (not safe))
                                  (cons __tmp64971 __tmp64956))))
                           (declare (not safe))
                           (cons __tmp64955 '()))))
                    (declare (not safe))
                    (cons __tmp64972 __tmp64954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64977
                                                           __tmp64953))))
                                              (declare (not safe))
                                              (cons __tmp64952 '()))))
                                       (declare (not safe))
                                       (cons _L62368_ __tmp64951))))
                                (declare (not safe))
                                (cons __tmp64978 __tmp64950)))
                             (__tmp64848
                              (let ((__tmp64919
                                     (let ((__tmp64948
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64920
                                            (let ((__tmp64921
                                                   (let ((__tmp64922
                                                          (let ((__tmp64947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64923
                         (let ((__tmp64942
                                (let ((__tmp64946
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64943
                                       (let ((__tmp64944
                                              (let ((__tmp64945
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L62308_ __tmp64945))))
                                         (declare (not safe))
                                         (cons _L62341_ __tmp64944))))
                                  (declare (not safe))
                                  (cons __tmp64946 __tmp64943)))
                               (__tmp64924
                                (let ((__tmp64925
                                       (let ((__tmp64941
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64926
                                              (let ((__tmp64939
                                                     (let ((__tmp64940
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64940 '())))
                                                    (__tmp64927
                                                     (let ((__tmp64928
                                                            (let ((__tmp64938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64929
                           (let ((__tmp64937 (gx#datum->syntax '#f 'klass))
                                 (__tmp64930
                                  (let ((__tmp64931
                                         (let ((__tmp64936
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64932
                                                (let ((__tmp64933
                                                       (let ((__tmp64935
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64934
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L62308_ '()))))
                 (declare (not safe))
                 (cons __tmp64935 __tmp64934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64933 '()))))
                                           (declare (not safe))
                                           (cons __tmp64936 __tmp64932))))
                                    (declare (not safe))
                                    (cons _L62306_ __tmp64931))))
                             (declare (not safe))
                             (cons __tmp64937 __tmp64930))))
                      (declare (not safe))
                      (cons __tmp64938 __tmp64929))))
               (declare (not safe))
               (cons __tmp64928 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64939 __tmp64927))))
                                         (declare (not safe))
                                         (cons __tmp64941 __tmp64926))))
                                  (declare (not safe))
                                  (cons __tmp64925 '()))))
                           (declare (not safe))
                           (cons __tmp64942 __tmp64924))))
                    (declare (not safe))
                    (cons __tmp64947 __tmp64923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64922 '()))))
                                              (declare (not safe))
                                              (cons _L62396_ __tmp64921))))
                                       (declare (not safe))
                                       (cons __tmp64948 __tmp64920)))
                                    (__tmp64849
                                     (let ((__tmp64885
                                            (let ((__tmp64918
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64886
                                                   (let ((__tmp64887
                                                          (let ((__tmp64888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64917
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64889
                                (let ((__tmp64912
                                       (let ((__tmp64916
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64913
                                              (let ((__tmp64914
                                                     (let ((__tmp64915
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L62308_
                                                             __tmp64915))))
                                                (declare (not safe))
                                                (cons _L62341_ __tmp64914))))
                                         (declare (not safe))
                                         (cons __tmp64916 __tmp64913)))
                                      (__tmp64890
                                       (let ((__tmp64891
                                              (let ((__tmp64911
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64892
                                                     (let ((__tmp64907
                                                            (let ((__tmp64910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64908
                           (let ((__tmp64909 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64909 '()))))
                      (declare (not safe))
                      (cons __tmp64910 __tmp64908)))
                   (__tmp64893
                    (let ((__tmp64894
                           (let ((__tmp64906
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64895
                                  (let ((__tmp64905
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64896
                                         (let ((__tmp64904
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64897
                                                (let ((__tmp64898
                                                       (let ((__tmp64903
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64899
                                                              (let ((__tmp64900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64902 (gx#datum->syntax '#f 'quote))
                                   (__tmp64901
                                    (let ()
                                      (declare (not safe))
                                      (cons _L62308_ '()))))
                               (declare (not safe))
                               (cons __tmp64902 __tmp64901))))
                        (declare (not safe))
                        (cons __tmp64900 '()))))
                 (declare (not safe))
                 (cons __tmp64903 __tmp64899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62306_ __tmp64898))))
                                           (declare (not safe))
                                           (cons __tmp64904 __tmp64897))))
                                    (declare (not safe))
                                    (cons __tmp64905 __tmp64896))))
                             (declare (not safe))
                             (cons __tmp64906 __tmp64895))))
                      (declare (not safe))
                      (cons __tmp64894 '()))))
               (declare (not safe))
               (cons __tmp64907 __tmp64893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64911 __tmp64892))))
                                         (declare (not safe))
                                         (cons __tmp64891 '()))))
                                  (declare (not safe))
                                  (cons __tmp64912 __tmp64890))))
                           (declare (not safe))
                           (cons __tmp64917 __tmp64889))))
                    (declare (not safe))
                    (cons __tmp64888 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62424_
                                                           __tmp64887))))
                                              (declare (not safe))
                                              (cons __tmp64918 __tmp64886)))
                                           (__tmp64850
                                            (let ((__tmp64851
                                                   (let ((__tmp64884
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64852
                                                          (let ((__tmp64853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64854
                                (let ((__tmp64883
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64855
                                       (let ((__tmp64878
                                              (let ((__tmp64882
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64879
                                                     (let ((__tmp64880
                                                            (let ((__tmp64881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L62308_ __tmp64881))))
               (declare (not safe))
               (cons _L62341_ __tmp64880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64882 __tmp64879)))
                                             (__tmp64856
                                              (let ((__tmp64857
                                                     (let ((__tmp64877
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64858
                                                            (let ((__tmp64873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64876 (gx#datum->syntax '#f 'klass))
                                 (__tmp64874
                                  (let ((__tmp64875
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64875 '()))))
                             (declare (not safe))
                             (cons __tmp64876 __tmp64874)))
                          (__tmp64859
                           (let ((__tmp64860
                                  (let ((__tmp64872
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64861
                                         (let ((__tmp64871
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64862
                                                (let ((__tmp64870
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64863
                                                       (let ((__tmp64864
                                                              (let ((__tmp64869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64865
                             (let ((__tmp64866
                                    (let ((__tmp64868
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64867
                                           (let ()
                                             (declare (not safe))
                                             (cons _L62308_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64868 __tmp64867))))
                               (declare (not safe))
                               (cons __tmp64866 '()))))
                        (declare (not safe))
                        (cons __tmp64869 __tmp64865))))
                 (declare (not safe))
                 (cons _L62306_ __tmp64864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64870
                                                        __tmp64863))))
                                           (declare (not safe))
                                           (cons __tmp64871 __tmp64862))))
                                    (declare (not safe))
                                    (cons __tmp64872 __tmp64861))))
                             (declare (not safe))
                             (cons __tmp64860 '()))))
                      (declare (not safe))
                      (cons __tmp64873 __tmp64859))))
               (declare (not safe))
               (cons __tmp64877 __tmp64858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64857 '()))))
                                         (declare (not safe))
                                         (cons __tmp64878 __tmp64856))))
                                  (declare (not safe))
                                  (cons __tmp64883 __tmp64855))))
                           (declare (not safe))
                           (cons __tmp64854 '()))))
                    (declare (not safe))
                    (cons _L62452_ __tmp64853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64884
                                                           __tmp64852))))
                                              (declare (not safe))
                                              (cons __tmp64851 '()))))
                                       (declare (not safe))
                                       (cons __tmp64885 __tmp64850))))
                                (declare (not safe))
                                (cons __tmp64919 __tmp64849))))
                         (declare (not safe))
                         (cons __tmp64949 __tmp64848))))
                  (declare (not safe))
                  (cons __tmp64979 __tmp64847)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6243862449_))))
                                         (_g6243662467_
                                          (gx#stx-identifier
                                           _L62308_
                                           '"&"
                                           _L62424_)))))
                                   _g6241062421_))))
                          (_g6240862471_
                           (gx#stx-identifier _L62308_ _L62368_ '"-set!")))))
                    _g6238262393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6238062475_
                                                    (gx#stx-identifier
                                                     _L62308_
                                                     '"&"
                                                     _L62368_)))))
                                             _g6235462365_))))
                                    (_g6235262479_
                                     (gx#stx-identifier
                                      _L62308_
                                      '"class-type-"
                                      _L62308_)))))
                              _g6232762338_))))
                     (_g6232562483_ (gx#core-quote-syntax 'class::t))))
                 _hd6225262300_
                 _hd6224962290_)
                (_g6223862259_ _g6223962263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6223862259_
                                                     _g6223962263_))))
                                            (_g6223862259_ _g6223962263_))))
                                    (_g6223862259_ _g6223962263_))))
                            (_g6223862259_ _g6223962263_))))
                    (_g6223862259_ _g6223962263_)))))
        (_g6223762487_ _stx62235_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62491_)
      (let* ((_g6249562524_
              (lambda (_g6249662520_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6249662520_)))
             (_g6249462624_
              (lambda (_g6249662528_)
                (if (gx#stx-pair? _g6249662528_)
                    (let ((_e6250162531_ (gx#syntax-e _g6249662528_)))
                      (let ((_hd6250062535_
                             (let ()
                               (declare (not safe))
                               (##car _e6250162531_)))
                            (_tl6249962538_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6250162531_))))
                        (if (gx#stx-pair/null? _tl6249962538_)
                            (let ((_g64980_
                                   (gx#syntax-split-splice _tl6249962538_ '0)))
                              (begin
                                (let ((_g64981_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64980_)
                                             (##vector-length _g64980_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64981_ 2)))
                                      (error "Context expects 2 values"
                                             _g64981_)))
                                (let ((_target6250262541_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64980_ 0)))
                                      (_tl6250462544_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64980_ 1))))
                                  (if (gx#stx-null? _tl6250462544_)
                                      (letrec ((_loop6250562547_
                                                (lambda (_hd6250362551_
                                                         _field6250962554_
                                                         _slot6251062556_)
                                                  (if (gx#stx-pair?
                                                       _hd6250362551_)
                                                      (let ((_e6250662559_
                                                             (gx#syntax-e
                                                              _hd6250362551_)))
                                                        (let ((_lp-hd6250762563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6250662559_)))
                      (_lp-tl6250862566_
                       (let () (declare (not safe)) (##cdr _e6250662559_))))
                  (if (gx#stx-pair? _lp-hd6250762563_)
                      (let ((_e6251562569_ (gx#syntax-e _lp-hd6250762563_)))
                        (let ((_hd6251462573_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6251562569_)))
                              (_tl6251362576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6251562569_))))
                          (if (gx#stx-pair? _tl6251362576_)
                              (let ((_e6251862579_
                                     (gx#syntax-e _tl6251362576_)))
                                (let ((_hd6251762583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6251862579_)))
                                      (_tl6251662586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6251862579_))))
                                  (if (gx#stx-null? _tl6251662586_)
                                      (_loop6250562547_
                                       _lp-tl6250862566_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6251762583_
                                               _field6250962554_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6251462573_
                                               _slot6251062556_)))
                                      (_g6249562524_ _g6249662528_))))
                              (_g6249562524_ _g6249662528_))))
                      (_g6249562524_ _g6249662528_))))
              (let ((_field6251162589_ (reverse _field6250962554_))
                    (_slot6251262592_ (reverse _slot6251062556_)))
                ((lambda (_L62595_ _L62597_)
                   (let ((__tmp64989 (gx#datum->syntax '#f 'begin))
                         (__tmp64982
                          (begin
                            (gx#syntax-check-splice-targets _L62595_ _L62597_)
                            (let ((__tmp64983
                                   (lambda (_g6261262616_
                                            _g6261362619_
                                            _g6261462621_)
                                     (let ((__tmp64984
                                            (let ((__tmp64988
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64985
                                                   (let ((__tmp64986
                                                          (let ((__tmp64987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6261262616_ '()))))
                    (declare (not safe))
                    (cons _g6261362619_ __tmp64987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64986 '()))))
                                              (declare (not safe))
                                              (cons __tmp64988 __tmp64985))))
                                       (declare (not safe))
                                       (cons __tmp64984 _g6261462621_)))))
                              (declare (not safe))
                              (foldr2 __tmp64983 '() _L62595_ _L62597_)))))
                     (declare (not safe))
                     (cons __tmp64989 __tmp64982)))
                 _field6251162589_
                 _slot6251262592_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6250562547_
                                         _target6250262541_
                                         '()
                                         '()))
                                      (_g6249562524_ _g6249662528_)))))
                            (_g6249562524_ _g6249662528_))))
                    (_g6249562524_ _g6249662528_)))))
        (_g6249462624_ _$stx62491_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62629_)
      (let* ((_g6263362659_
              (lambda (_g6263462655_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6263462655_)))
             (_g6263262742_
              (lambda (_g6263462663_)
                (if (gx#stx-pair? _g6263462663_)
                    (let ((_e6264162666_ (gx#syntax-e _g6263462663_)))
                      (let ((_hd6264062670_
                             (let ()
                               (declare (not safe))
                               (##car _e6264162666_)))
                            (_tl6263962673_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6264162666_))))
                        (if (gx#stx-pair? _tl6263962673_)
                            (let ((_e6264462676_ (gx#syntax-e _tl6263962673_)))
                              (let ((_hd6264362680_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6264462676_)))
                                    (_tl6264262683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6264462676_))))
                                (if (gx#stx-pair? _tl6264262683_)
                                    (let ((_e6264762686_
                                           (gx#syntax-e _tl6264262683_)))
                                      (let ((_hd6264662690_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6264762686_)))
                                            (_tl6264562693_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6264762686_))))
                                        (if (gx#stx-pair? _tl6264562693_)
                                            (let ((_e6265062696_
                                                   (gx#syntax-e
                                                    _tl6264562693_)))
                                              (let ((_hd6264962700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6265062696_)))
                                                    (_tl6264862703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6265062696_))))
                                                (if (gx#stx-pair?
                                                     _tl6264862703_)
                                                    (let ((_e6265362706_
                                                           (gx#syntax-e
                                                            _tl6264862703_)))
                                                      (let ((_hd6265262710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6265362706_)))
                    (_tl6265162713_
                     (let () (declare (not safe)) (##cdr _e6265362706_))))
                (if (gx#stx-null? _tl6265162713_)
                    ((lambda (_L62716_ _L62718_ _L62719_ _L62720_)
                       (let ((__tmp65036 (gx#datum->syntax '#f 'if))
                             (__tmp64990
                              (let ((__tmp65033
                                     (let ((__tmp65035
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp65034
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62720_ '()))))
                                       (declare (not safe))
                                       (cons __tmp65035 __tmp65034)))
                                    (__tmp64991
                                     (let ((__tmp64996
                                            (let ((__tmp65032
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64997
                                                   (let ((__tmp65026
                                                          (let ((__tmp65031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp65027
                         (let ((__tmp65028
                                (let ((__tmp65030
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp65029
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62720_ '()))))
                                  (declare (not safe))
                                  (cons __tmp65030 __tmp65029))))
                           (declare (not safe))
                           (cons __tmp65028 '()))))
                    (declare (not safe))
                    (cons __tmp65031 __tmp65027)))
                 (__tmp64998
                  (let ((__tmp64999
                         (let ((__tmp65025 (gx#datum->syntax '#f 'cond))
                               (__tmp65000
                                (let ((__tmp65008
                                       (let ((__tmp65012
                                              (let ((__tmp65024
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp65013
                                                     (let ((__tmp65020
                                                            (let ((__tmp65023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp65021
                           (let ((__tmp65022 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp65022 '()))))
                      (declare (not safe))
                      (cons __tmp65023 __tmp65021)))
                   (__tmp65014
                    (let ((__tmp65015
                           (let ((__tmp65019
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp65016
                                  (let ((__tmp65018
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp65017
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62719_ '()))))
                                    (declare (not safe))
                                    (cons __tmp65018 __tmp65017))))
                             (declare (not safe))
                             (cons __tmp65019 __tmp65016))))
                      (declare (not safe))
                      (cons __tmp65015 '()))))
               (declare (not safe))
               (cons __tmp65020 __tmp65014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65024 __tmp65013)))
                                             (__tmp65009
                                              (let ((__tmp65011
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp65010
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62718_ '()))))
                                                (declare (not safe))
                                                (cons __tmp65011 __tmp65010))))
                                         (declare (not safe))
                                         (cons __tmp65012 __tmp65009)))
                                      (__tmp65001
                                       (let ((__tmp65002
                                              (let ((__tmp65007
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp65003
                                                     (let ((__tmp65004
                                                            (let ((__tmp65005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65006
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62719_ '()))))
                             (declare (not safe))
                             (cons _L62720_ __tmp65006))))
                      (declare (not safe))
                      (cons _L62716_ __tmp65005))))
               (declare (not safe))
               (cons __tmp65004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp65007 __tmp65003))))
                                         (declare (not safe))
                                         (cons __tmp65002 '()))))
                                  (declare (not safe))
                                  (cons __tmp65008 __tmp65001))))
                           (declare (not safe))
                           (cons __tmp65025 __tmp65000))))
                    (declare (not safe))
                    (cons __tmp64999 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp65026
                                                           __tmp64998))))
                                              (declare (not safe))
                                              (cons __tmp65032 __tmp64997)))
                                           (__tmp64992
                                            (let ((__tmp64993
                                                   (let ((__tmp64994
                                                          (let ((__tmp64995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62719_ '()))))
                    (declare (not safe))
                    (cons _L62720_ __tmp64995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62716_
                                                           __tmp64994))))
                                              (declare (not safe))
                                              (cons __tmp64993 '()))))
                                       (declare (not safe))
                                       (cons __tmp64996 __tmp64992))))
                                (declare (not safe))
                                (cons __tmp65033 __tmp64991))))
                         (declare (not safe))
                         (cons __tmp65036 __tmp64990)))
                     _hd6265262710_
                     _hd6264962700_
                     _hd6264662690_
                     _hd6264362680_)
                    (_g6263362659_ _g6263462663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6263362659_
                                                     _g6263462663_))))
                                            (_g6263362659_ _g6263462663_))))
                                    (_g6263362659_ _g6263462663_))))
                            (_g6263362659_ _g6263462663_))))
                    (_g6263362659_ _g6263462663_)))))
        (_g6263262742_ _$stx62629_)))))
