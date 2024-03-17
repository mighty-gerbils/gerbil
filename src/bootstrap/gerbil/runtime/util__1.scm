(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g55200_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g55201_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx50929_)
        (let* ((_g5093350947_
                (lambda (_g5093450943_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5093450943_)))
               (_g5093250989_
                (lambda (_g5093450951_)
                  (if (gx#stx-pair? _g5093450951_)
                      (let ((_e5093650954_ (gx#syntax-e _g5093450951_)))
                        (let ((_hd5093750958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5093650954_)))
                              (_tl5093850961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5093650954_))))
                          (if (gx#stx-pair? _tl5093850961_)
                              (let ((_e5093950964_
                                     (gx#syntax-e _tl5093850961_)))
                                (let ((_hd5094050968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5093950964_)))
                                      (_tl5094150971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5093950964_))))
                                  (if (gx#stx-null? _tl5094150971_)
                                      ((lambda (_L50974_)
                                         (let ((__tmp54905
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp54870
                                                (let ((__tmp54871
                                                       (let ((__tmp54898
                                                              (let ((__tmp54904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp54899
                             (let ((__tmp54900
                                    (let ((__tmp54903
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp54901
                                           (let ((__tmp54902
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp54902 '()))))
                                      (declare (not safe))
                                      (cons __tmp54903 __tmp54901))))
                               (declare (not safe))
                               (cons __tmp54900 '()))))
                        (declare (not safe))
                        (cons __tmp54904 __tmp54899)))
                     (__tmp54872
                      (let ((__tmp54873
                             (let ((__tmp54897 (gx#datum->syntax '#f 'let))
                                   (__tmp54874
                                    (let ((__tmp54896
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp54875
                                           (let ((__tmp54876
                                                  (let ((__tmp54877
                                                         (let ((__tmp54895
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp54878
                        (let ((__tmp54885
                               (let ((__tmp54894 (gx#datum->syntax '#f '##fx=))
                                     (__tmp54886
                                      (let ((__tmp54888
                                             (let ((__tmp54893
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp54889
                                                    (let ((__tmp54890
                                                           (let ((__tmp54891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp54892
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp54892))))
                     (declare (not safe))
                     (cons '0 __tmp54891))))
              (declare (not safe))
              (cons _L50974_ __tmp54890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp54893 __tmp54889)))
                                            (__tmp54887
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp54888 __tmp54887))))
                                 (declare (not safe))
                                 (cons __tmp54894 __tmp54886)))
                              (__tmp54879
                               (let ((__tmp54883
                                      (let ((__tmp54884
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp54884 '())))
                                     (__tmp54880
                                      (let ((__tmp54881
                                             (let ((__tmp54882
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp54882 '()))))
                                        (declare (not safe))
                                        (cons __tmp54881 '()))))
                                 (declare (not safe))
                                 (cons __tmp54883 __tmp54880))))
                          (declare (not safe))
                          (cons __tmp54885 __tmp54879))))
                   (declare (not safe))
                   (cons __tmp54895 __tmp54878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp54877 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp54876))))
                                      (declare (not safe))
                                      (cons __tmp54896 __tmp54875))))
                               (declare (not safe))
                               (cons __tmp54897 __tmp54874))))
                        (declare (not safe))
                        (cons __tmp54873 '()))))
                 (declare (not safe))
                 (cons __tmp54898 __tmp54872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp54871))))
                                           (declare (not safe))
                                           (cons __tmp54905 __tmp54870)))
                                       _hd5094050968_)
                                      (_g5093350947_ _g5093450951_))))
                              (_g5093350947_ _g5093450951_))))
                      (_g5093350947_ _g5093450951_)))))
          (_g5093250989_ _$stx50929_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx50993_)
        (let* ((_g5099751011_
                (lambda (_g5099851007_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5099851007_)))
               (_g5099651052_
                (lambda (_g5099851015_)
                  (if (gx#stx-pair? _g5099851015_)
                      (let ((_e5100051018_ (gx#syntax-e _g5099851015_)))
                        (let ((_hd5100151022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5100051018_)))
                              (_tl5100251025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5100051018_))))
                          (if (gx#stx-pair? _tl5100251025_)
                              (let ((_e5100351028_
                                     (gx#syntax-e _tl5100251025_)))
                                (let ((_hd5100451032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5100351028_)))
                                      (_tl5100551035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5100351028_))))
                                  (if (gx#stx-null? _tl5100551035_)
                                      ((lambda (_L51038_)
                                         (let ((__tmp54910
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp54906
                                                (let ((__tmp54907
                                                       (let ((__tmp54908
                                                              (let ((__tmp54909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp54909))))
                 (declare (not safe))
                 (cons '0 __tmp54908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L51038_ __tmp54907))))
                                           (declare (not safe))
                                           (cons __tmp54910 __tmp54906)))
                                       _hd5100451032_)
                                      (_g5099751011_ _g5099851015_))))
                              (_g5099751011_ _g5099851015_))))
                      (_g5099751011_ _g5099851015_)))))
          (_g5099651052_ _$stx50993_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx51056_)
        (let* ((_g5106051070_
                (lambda (_g5106151066_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5106151066_)))
               (_g5105951091_
                (lambda (_g5106151074_)
                  (if (gx#stx-pair? _g5106151074_)
                      (let ((_e5106251077_ (gx#syntax-e _g5106151074_)))
                        (let ((_hd5106351081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5106251077_)))
                              (_tl5106451084_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5106251077_))))
                          (if (gx#stx-null? _tl5106451084_)
                              ((lambda ()
                                 (let ((__tmp54912
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp54911
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp54912 __tmp54911))))
                              (_g5106051070_ _g5106151074_))))
                      (_g5106051070_ _g5106151074_)))))
          (_g5105951091_ _$stx51056_))))
    (define |[:0:]#defassget|
      (lambda (_$stx51095_)
        (let* ((_g5109951117_
                (lambda (_g5110051113_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5110051113_)))
               (_g5109851172_
                (lambda (_g5110051121_)
                  (if (gx#stx-pair? _g5110051121_)
                      (let ((_e5110351124_ (gx#syntax-e _g5110051121_)))
                        (let ((_hd5110451128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5110351124_)))
                              (_tl5110551131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5110351124_))))
                          (if (gx#stx-pair? _tl5110551131_)
                              (let ((_e5110651134_
                                     (gx#syntax-e _tl5110551131_)))
                                (let ((_hd5110751138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5110651134_)))
                                      (_tl5110851141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5110651134_))))
                                  (if (gx#stx-pair? _tl5110851141_)
                                      (let ((_e5110951144_
                                             (gx#syntax-e _tl5110851141_)))
                                        (let ((_hd5111051148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5110951144_)))
                                              (_tl5111151151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5110951144_))))
                                          (if (gx#stx-null? _tl5111151151_)
                                              ((lambda (_L51154_ _L51156_)
                                                 (let ((__tmp54961
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54913
                                                        (let ((__tmp54952
                                                               (let ((__tmp54953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54960 (gx#datum->syntax '#f 'key))
                                    (__tmp54954
                                     (let ((__tmp54959
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54955
                                            (let ((__tmp54956
                                                   (let ((__tmp54958
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54957
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54958
                                                           __tmp54957))))
                                              (declare (not safe))
                                              (cons __tmp54956 '()))))
                                       (declare (not safe))
                                       (cons __tmp54959 __tmp54955))))
                                (declare (not safe))
                                (cons __tmp54960 __tmp54954))))
                         (declare (not safe))
                         (cons _L51156_ __tmp54953)))
                      (__tmp54914
                       (let ((__tmp54915
                              (let ((__tmp54951 (gx#datum->syntax '#f 'cond))
                                    (__tmp54916
                                     (let ((__tmp54933
                                            (let ((__tmp54938
                                                   (let ((__tmp54950
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp54939
                                                          (let ((__tmp54946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp54949 (gx#datum->syntax '#f 'pair?))
                               (__tmp54947
                                (let ((__tmp54948 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp54948 '()))))
                           (declare (not safe))
                           (cons __tmp54949 __tmp54947)))
                        (__tmp54940
                         (let ((__tmp54941
                                (let ((__tmp54942
                                       (let ((__tmp54945
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp54943
                                              (let ((__tmp54944
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp54944 '()))))
                                         (declare (not safe))
                                         (cons __tmp54945 __tmp54943))))
                                  (declare (not safe))
                                  (cons _L51154_ __tmp54942))))
                           (declare (not safe))
                           (cons __tmp54941 '()))))
                    (declare (not safe))
                    (cons __tmp54946 __tmp54940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54950
                                                           __tmp54939)))
                                                  (__tmp54934
                                                   (let ((__tmp54937
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp54935
                                                          (let ((__tmp54936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp54936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54937
                                                           __tmp54935))))
                                              (declare (not safe))
                                              (cons __tmp54938 __tmp54934)))
                                           (__tmp54917
                                            (let ((__tmp54923
                                                   (let ((__tmp54929
                                                          (let ((__tmp54932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp54930
                         (let ((__tmp54931 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54931 '()))))
                    (declare (not safe))
                    (cons __tmp54932 __tmp54930)))
                 (__tmp54924
                  (let ((__tmp54925
                         (let ((__tmp54928 (gx#datum->syntax '#f 'default))
                               (__tmp54926
                                (let ((__tmp54927 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp54927 '()))))
                           (declare (not safe))
                           (cons __tmp54928 __tmp54926))))
                    (declare (not safe))
                    (cons __tmp54925 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54929
                                                           __tmp54924)))
                                                  (__tmp54918
                                                   (let ((__tmp54919
                                                          (let ((__tmp54922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp54920
                         (let ((__tmp54921 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54921 '()))))
                    (declare (not safe))
                    (cons __tmp54922 __tmp54920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54919 '()))))
                                              (declare (not safe))
                                              (cons __tmp54923 __tmp54918))))
                                       (declare (not safe))
                                       (cons __tmp54933 __tmp54917))))
                                (declare (not safe))
                                (cons __tmp54951 __tmp54916))))
                         (declare (not safe))
                         (cons __tmp54915 '()))))
                  (declare (not safe))
                  (cons __tmp54952 __tmp54914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54961
                                                         __tmp54913)))
                                               _hd5111051148_
                                               _hd5110751138_)
                                              (_g5109951117_ _g5110051121_))))
                                      (_g5109951117_ _g5110051121_))))
                              (_g5109951117_ _g5110051121_))))
                      (_g5109951117_ _g5110051121_)))))
          (_g5109851172_ _$stx51095_))))
    (define |[:0:]#defpget|
      (lambda (_$stx51176_)
        (let* ((_g5118051198_
                (lambda (_g5118151194_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5118151194_)))
               (_g5117951253_
                (lambda (_g5118151202_)
                  (if (gx#stx-pair? _g5118151202_)
                      (let ((_e5118451205_ (gx#syntax-e _g5118151202_)))
                        (let ((_hd5118551209_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5118451205_)))
                              (_tl5118651212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5118451205_))))
                          (if (gx#stx-pair? _tl5118651212_)
                              (let ((_e5118751215_
                                     (gx#syntax-e _tl5118651212_)))
                                (let ((_hd5118851219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5118751215_)))
                                      (_tl5118951222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5118751215_))))
                                  (if (gx#stx-pair? _tl5118951222_)
                                      (let ((_e5119051225_
                                             (gx#syntax-e _tl5118951222_)))
                                        (let ((_hd5119151229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5119051225_)))
                                              (_tl5119251232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5119051225_))))
                                          (if (gx#stx-null? _tl5119251232_)
                                              ((lambda (_L51235_ _L51237_)
                                                 (let ((__tmp55031
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54962
                                                        (let ((__tmp55022
                                                               (let ((__tmp55023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp55030 (gx#datum->syntax '#f 'key))
                                    (__tmp55024
                                     (let ((__tmp55029
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp55025
                                            (let ((__tmp55026
                                                   (let ((__tmp55028
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp55027
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp55028
                                                           __tmp55027))))
                                              (declare (not safe))
                                              (cons __tmp55026 '()))))
                                       (declare (not safe))
                                       (cons __tmp55029 __tmp55025))))
                                (declare (not safe))
                                (cons __tmp55030 __tmp55024))))
                         (declare (not safe))
                         (cons _L51237_ __tmp55023)))
                      (__tmp54963
                       (let ((__tmp54964
                              (let ((__tmp55021 (gx#datum->syntax '#f 'let))
                                    (__tmp54965
                                     (let ((__tmp55020
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54966
                                            (let ((__tmp55015
                                                   (let ((__tmp55016
                                                          (let ((__tmp55019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp55017
                         (let ((__tmp55018 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp55018 '()))))
                    (declare (not safe))
                    (cons __tmp55019 __tmp55017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp55016 '())))
                                                  (__tmp54967
                                                   (let ((__tmp54968
                                                          (let ((__tmp55014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54969
                         (let ((__tmp55013 (gx#datum->syntax '#f 'rest))
                               (__tmp54970
                                (let ((__tmp54989
                                       (let ((__tmp55006
                                              (let ((__tmp55012
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp55007
                                                     (let ((__tmp55011
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp55008
                                                            (let ((__tmp55010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp55009 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp55010 __tmp55009))))
               (declare (not safe))
               (cons __tmp55011 __tmp55008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp55012 __tmp55007)))
                                             (__tmp54990
                                              (let ((__tmp54991
                                                     (let ((__tmp55005
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54992
                                                            (let ((__tmp55000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp55001
                                  (let ((__tmp55004 (gx#datum->syntax '#f 'k))
                                        (__tmp55002
                                         (let ((__tmp55003
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp55003 '()))))
                                    (declare (not safe))
                                    (cons __tmp55004 __tmp55002))))
                             (declare (not safe))
                             (cons _L51235_ __tmp55001)))
                          (__tmp54993
                           (let ((__tmp54999 (gx#datum->syntax '#f 'v))
                                 (__tmp54994
                                  (let ((__tmp54995
                                         (let ((__tmp54998
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54996
                                                (let ((__tmp54997
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp54997 '()))))
                                           (declare (not safe))
                                           (cons __tmp54998 __tmp54996))))
                                    (declare (not safe))
                                    (cons __tmp54995 '()))))
                             (declare (not safe))
                             (cons __tmp54999 __tmp54994))))
                      (declare (not safe))
                      (cons __tmp55000 __tmp54993))))
               (declare (not safe))
               (cons __tmp55005 __tmp54992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54991 '()))))
                                         (declare (not safe))
                                         (cons __tmp55006 __tmp54990)))
                                      (__tmp54971
                                       (let ((__tmp54972
                                              (let ((__tmp54988
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54973
                                                     (let ((__tmp54974
                                                            (let ((__tmp54987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp54975
                           (let ((__tmp54983
                                  (let ((__tmp54986
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp54984
                                         (let ((__tmp54985
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54985 '()))))
                                    (declare (not safe))
                                    (cons __tmp54986 __tmp54984)))
                                 (__tmp54976
                                  (let ((__tmp54979
                                         (let ((__tmp54982
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp54980
                                                (let ((__tmp54981
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp54981 '()))))
                                           (declare (not safe))
                                           (cons __tmp54982 __tmp54980)))
                                        (__tmp54977
                                         (let ((__tmp54978
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54978 '()))))
                                    (declare (not safe))
                                    (cons __tmp54979 __tmp54977))))
                             (declare (not safe))
                             (cons __tmp54983 __tmp54976))))
                      (declare (not safe))
                      (cons __tmp54987 __tmp54975))))
               (declare (not safe))
               (cons __tmp54974 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54988 __tmp54973))))
                                         (declare (not safe))
                                         (cons __tmp54972 '()))))
                                  (declare (not safe))
                                  (cons __tmp54989 __tmp54971))))
                           (declare (not safe))
                           (cons __tmp55013 __tmp54970))))
                    (declare (not safe))
                    (cons __tmp55014 __tmp54969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54968 '()))))
                                              (declare (not safe))
                                              (cons __tmp55015 __tmp54967))))
                                       (declare (not safe))
                                       (cons __tmp55020 __tmp54966))))
                                (declare (not safe))
                                (cons __tmp55021 __tmp54965))))
                         (declare (not safe))
                         (cons __tmp54964 '()))))
                  (declare (not safe))
                  (cons __tmp55022 __tmp54963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55031
                                                         __tmp54962)))
                                               _hd5119151229_
                                               _hd5118851219_)
                                              (_g5118051198_ _g5118151202_))))
                                      (_g5118051198_ _g5118151202_))))
                              (_g5118051198_ _g5118151202_))))
                      (_g5118051198_ _g5118151202_)))))
          (_g5117951253_ _$stx51176_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx51257_)
        (let* ((_g5126151279_
                (lambda (_g5126251275_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5126251275_)))
               (_g5126051334_
                (lambda (_g5126251283_)
                  (if (gx#stx-pair? _g5126251283_)
                      (let ((_e5126551286_ (gx#syntax-e _g5126251283_)))
                        (let ((_hd5126651290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5126551286_)))
                              (_tl5126751293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5126551286_))))
                          (if (gx#stx-pair? _tl5126751293_)
                              (let ((_e5126851296_
                                     (gx#syntax-e _tl5126751293_)))
                                (let ((_hd5126951300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5126851296_)))
                                      (_tl5127051303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5126851296_))))
                                  (if (gx#stx-pair? _tl5127051303_)
                                      (let ((_e5127151306_
                                             (gx#syntax-e _tl5127051303_)))
                                        (let ((_hd5127251310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5127151306_)))
                                              (_tl5127351313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5127151306_))))
                                          (if (gx#stx-null? _tl5127351313_)
                                              ((lambda (_L51316_ _L51318_)
                                                 (let ((__tmp55102
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp55032
                                                        (let ((__tmp55097
                                                               (let ((__tmp55098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp55101 (gx#datum->syntax '#f 'el))
                                    (__tmp55099
                                     (let ((__tmp55100
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp55100 '()))))
                                (declare (not safe))
                                (cons __tmp55101 __tmp55099))))
                         (declare (not safe))
                         (cons _L51318_ __tmp55098)))
                      (__tmp55033
                       (let ((__tmp55034
                              (let ((__tmp55096 (gx#datum->syntax '#f 'let))
                                    (__tmp55035
                                     (let ((__tmp55095
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp55036
                                            (let ((__tmp55084
                                                   (let ((__tmp55091
                                                          (let ((__tmp55094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp55092
                         (let ((__tmp55093 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp55093 '()))))
                    (declare (not safe))
                    (cons __tmp55094 __tmp55092)))
                 (__tmp55085
                  (let ((__tmp55086
                         (let ((__tmp55090 (gx#datum->syntax '#f 'r))
                               (__tmp55087
                                (let ((__tmp55088
                                       (let ((__tmp55089
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp55089 '()))))
                                  (declare (not safe))
                                  (cons __tmp55088 '()))))
                           (declare (not safe))
                           (cons __tmp55090 __tmp55087))))
                    (declare (not safe))
                    (cons __tmp55086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp55091
                                                           __tmp55085)))
                                                  (__tmp55037
                                                   (let ((__tmp55038
                                                          (let ((__tmp55083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp55039
                         (let ((__tmp55082 (gx#datum->syntax '#f 'rest))
                               (__tmp55040
                                (let ((__tmp55046
                                       (let ((__tmp55077
                                              (let ((__tmp55081
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp55078
                                                     (let ((__tmp55080
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp55079
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp55080
                                                             __tmp55079))))
                                                (declare (not safe))
                                                (cons __tmp55081 __tmp55078)))
                                             (__tmp55047
                                              (let ((__tmp55048
                                                     (let ((__tmp55076
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp55049
                                                            (let ((__tmp55071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp55072
                                  (let ((__tmp55075 (gx#datum->syntax '#f 'el))
                                        (__tmp55073
                                         (let ((__tmp55074
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp55074 '()))))
                                    (declare (not safe))
                                    (cons __tmp55075 __tmp55073))))
                             (declare (not safe))
                             (cons _L51316_ __tmp55072)))
                          (__tmp55050
                           (let ((__tmp55063
                                  (let ((__tmp55070
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp55064
                                         (let ((__tmp55069
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp55065
                                                (let ((__tmp55068
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp55066
                                                       (let ((__tmp55067
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp55067
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp55068
                                                        __tmp55066))))
                                           (declare (not safe))
                                           (cons __tmp55069 __tmp55065))))
                                    (declare (not safe))
                                    (cons __tmp55070 __tmp55064)))
                                 (__tmp55051
                                  (let ((__tmp55052
                                         (let ((__tmp55062
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp55053
                                                (let ((__tmp55061
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp55054
                                                       (let ((__tmp55055
                                                              (let ((__tmp55060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp55056
                             (let ((__tmp55059 (gx#datum->syntax '#f 'hd))
                                   (__tmp55057
                                    (let ((__tmp55058
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp55058 '()))))
                               (declare (not safe))
                               (cons __tmp55059 __tmp55057))))
                        (declare (not safe))
                        (cons __tmp55060 __tmp55056))))
                 (declare (not safe))
                 (cons __tmp55055 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp55061
                                                        __tmp55054))))
                                           (declare (not safe))
                                           (cons __tmp55062 __tmp55053))))
                                    (declare (not safe))
                                    (cons __tmp55052 '()))))
                             (declare (not safe))
                             (cons __tmp55063 __tmp55051))))
                      (declare (not safe))
                      (cons __tmp55071 __tmp55050))))
               (declare (not safe))
               (cons __tmp55076 __tmp55049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp55048 '()))))
                                         (declare (not safe))
                                         (cons __tmp55077 __tmp55047)))
                                      (__tmp55041
                                       (let ((__tmp55042
                                              (let ((__tmp55045
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp55043
                                                     (let ((__tmp55044
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp55044 '()))))
                                                (declare (not safe))
                                                (cons __tmp55045 __tmp55043))))
                                         (declare (not safe))
                                         (cons __tmp55042 '()))))
                                  (declare (not safe))
                                  (cons __tmp55046 __tmp55041))))
                           (declare (not safe))
                           (cons __tmp55082 __tmp55040))))
                    (declare (not safe))
                    (cons __tmp55083 __tmp55039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp55038 '()))))
                                              (declare (not safe))
                                              (cons __tmp55084 __tmp55037))))
                                       (declare (not safe))
                                       (cons __tmp55095 __tmp55036))))
                                (declare (not safe))
                                (cons __tmp55096 __tmp55035))))
                         (declare (not safe))
                         (cons __tmp55034 '()))))
                  (declare (not safe))
                  (cons __tmp55097 __tmp55033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55102
                                                         __tmp55032)))
                                               _hd5127251310_
                                               _hd5126951300_)
                                              (_g5126151279_ _g5126251283_))))
                                      (_g5126151279_ _g5126251283_))))
                              (_g5126151279_ _g5126251283_))))
                      (_g5126151279_ _g5126251283_)))))
          (_g5126051334_ _$stx51257_))))
    (define |[:0:]#DBG|
      (lambda (_$stx51338_)
        (let* ((_g5134251353_
                (lambda (_g5134351349_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5134351349_)))
               (_g5134151382_
                (lambda (_g5134351357_)
                  (if (gx#stx-pair? _g5134351357_)
                      (let ((_e5134551360_ (gx#syntax-e _g5134351357_)))
                        (let ((_hd5134651364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5134551360_)))
                              (_tl5134751367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5134551360_))))
                          ((lambda (_L51370_)
                             (let ((__tmp55104 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp55103
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L51370_))))
                               (declare (not safe))
                               (cons __tmp55104 __tmp55103)))
                           _tl5134751367_)))
                      (_g5134251353_ _g5134351357_)))))
          (_g5134151382_ _$stx51338_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx51386_)
        (let* ((___stx5441254413_ _$stx51386_)
               (_g5139751611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5441254413_))))
          (let ((___kont5441554416_
                 (lambda (_L52464_ _L52466_ _L52467_ _L52468_ _L52469_)
                   (let ((__tmp55105
                          (let ((__tmp55106
                                 (let ((__tmp55107
                                        (let ((__tmp55111
                                               (let ((__tmp55112
                                                      (lambda (_g5249952502_
                                                               _g5250052505_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5249952502_
                                                                _g5250052505_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp55112
                                                         '()
                                                         _L52467_)))
                                              (__tmp55108
                                               (let ((__tmp55109
                                                      (let ((__tmp55110
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L52464_ '()))))
                (declare (not safe))
                (cons _L52466_ __tmp55110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L52468_ __tmp55109))))
                                          (declare (not safe))
                                          (cons __tmp55111 __tmp55108))))
                                   (declare (not safe))
                                   (cons '() __tmp55107))))
                            (declare (not safe))
                            (cons '2 __tmp55106))))
                     (declare (not safe))
                     (cons _L52469_ __tmp55105))))
                (___kont5441954420_
                 (lambda (_L52317_ _L52319_ _L52320_ _L52321_)
                   (let ((__tmp55113
                          (let ((__tmp55114
                                 (let ((__tmp55115
                                        (let ((__tmp55119
                                               (let ((__tmp55120
                                                      (lambda (_g5234452347_
                                                               _g5234552350_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5234452347_
                                                                _g5234552350_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp55120
                                                         '()
                                                         _L52319_)))
                                              (__tmp55116
                                               (let ((__tmp55117
                                                      (let ((__tmp55118
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L52317_ '()))))
                (declare (not safe))
                (cons _L52317_ __tmp55118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L52320_ __tmp55117))))
                                          (declare (not safe))
                                          (cons __tmp55119 __tmp55116))))
                                   (declare (not safe))
                                   (cons '() __tmp55115))))
                            (declare (not safe))
                            (cons '2 __tmp55114))))
                     (declare (not safe))
                     (cons _L52321_ __tmp55113))))
                (___kont5442354424_
                 (lambda (_L52220_)
                   (let ((__tmp55132 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp55121
                          (let ((__tmp55122
                                 (let ((__tmp55129
                                        (let ((__tmp55131
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp55130
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp55131 __tmp55130)))
                                       (__tmp55123
                                        (let ((__tmp55126
                                               (let ((__tmp55128
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp55127
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp55128 __tmp55127)))
                                              (__tmp55124
                                               (let ((__tmp55125
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp55125))))
                                          (declare (not safe))
                                          (cons __tmp55126 __tmp55124))))
                                   (declare (not safe))
                                   (cons __tmp55129 __tmp55123))))
                            (declare (not safe))
                            (cons _L52220_ __tmp55122))))
                     (declare (not safe))
                     (cons __tmp55132 __tmp55121))))
                (___kont5442554426_
                 (lambda (_L52143_
                          _L52145_
                          _L52146_
                          _L52147_
                          _L52148_
                          _L52149_)
                   (let ((__tmp55133
                          (let ((__tmp55134
                                 (let ((__tmp55136
                                        (let ((__tmp55137
                                               (let ((__tmp55138
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L52146_ '()))))
                                                 (declare (not safe))
                                                 (cons _L52147_ __tmp55138))))
                                          (declare (not safe))
                                          (cons __tmp55137 _L52148_)))
                                       (__tmp55135
                                        (let ()
                                          (declare (not safe))
                                          (cons _L52145_ _L52143_))))
                                   (declare (not safe))
                                   (cons __tmp55136 __tmp55135))))
                            (declare (not safe))
                            (cons '2 __tmp55134))))
                     (declare (not safe))
                     (cons _L52149_ __tmp55133))))
                (___kont5442754428_
                 (lambda (_L52024_ _L52026_ _L52027_ _L52028_ _L52029_)
                   (let ((__tmp55139
                          (let ((__tmp55140
                                 (let ((__tmp55142
                                        (let ((__tmp55143
                                               (let ((__tmp55144
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L52027_ '()))))
                                                 (declare (not safe))
                                                 (cons _L52027_ __tmp55144))))
                                          (declare (not safe))
                                          (cons __tmp55143 _L52028_)))
                                       (__tmp55141
                                        (let ()
                                          (declare (not safe))
                                          (cons _L52026_ _L52024_))))
                                   (declare (not safe))
                                   (cons __tmp55142 __tmp55141))))
                            (declare (not safe))
                            (cons '2 __tmp55140))))
                     (declare (not safe))
                     (cons _L52029_ __tmp55139))))
                (___kont5442954430_
                 (lambda (_L51941_ _L51943_ _L51944_)
                   (let ((__tmp55145
                          (let ((__tmp55146
                                 (let ((__tmp55147
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51943_ _L51941_))))
                                   (declare (not safe))
                                   (cons '() __tmp55147))))
                            (declare (not safe))
                            (cons '3 __tmp55146))))
                     (declare (not safe))
                     (cons _L51944_ __tmp55145))))
                (___kont5443154432_
                 (lambda (_L51862_ _L51864_ _L51865_ _L51866_ _L51867_)
                   (let ((__tmp55148
                          (let ((__tmp55149
                                 (let ((__tmp55151
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51865_ _L51866_)))
                                       (__tmp55150
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51864_ _L51862_))))
                                   (declare (not safe))
                                   (cons __tmp55151 __tmp55150))))
                            (declare (not safe))
                            (cons '3 __tmp55149))))
                     (declare (not safe))
                     (cons _L51867_ __tmp55148))))
                (___kont5443354434_
                 (lambda (_L51746_
                          _L51748_
                          _L51749_
                          _L51750_
                          _L51751_
                          _L51752_)
                   (let ((__tmp55199 (gx#datum->syntax '#f 'let))
                         (__tmp55152
                          (let ((__tmp55187
                                 (let ((__tmp55196
                                        (let ((__tmp55198
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp55197
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L51749_ '()))))
                                          (declare (not safe))
                                          (cons __tmp55198 __tmp55197)))
                                       (__tmp55188
                                        (let ((__tmp55189
                                               (let ((__tmp55195
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp55190
                                                      (let ((__tmp55191
                                                             (let ((__tmp55194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp55192
                            (let ((__tmp55193
                                   (let ()
                                     (declare (not safe))
                                     (cons _L51746_ '()))))
                              (declare (not safe))
                              (cons '() __tmp55193))))
                       (declare (not safe))
                       (cons __tmp55194 __tmp55192))))
                (declare (not safe))
                (cons __tmp55191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp55195
                                                       __tmp55190))))
                                          (declare (not safe))
                                          (cons __tmp55189 '()))))
                                   (declare (not safe))
                                   (cons __tmp55196 __tmp55188)))
                                (__tmp55153
                                 (let ((__tmp55154
                                        (let ((__tmp55186
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp55155
                                               (let ((__tmp55185
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp55156
                                                      (let ((__tmp55160
                                                             (let ((__tmp55184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp55161
                            (let ((__tmp55183 (gx#datum->syntax '#f 'tagval))
                                  (__tmp55162
                                   (let ((__tmp55178
                                          (let ((__tmp55182
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp55179
                                                 (let ((__tmp55180
                                                        (let ((__tmp55181
                                                               (lambda (_g5178451789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5178551792_)
                         (let ()
                           (declare (not safe))
                           (cons _g5178451789_ _g5178551792_)))))
                  (declare (not safe))
                  (foldr1 __tmp55181 '() _L51751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55180 '()))))
                                            (declare (not safe))
                                            (cons __tmp55182 __tmp55179)))
                                         (__tmp55163
                                          (let ((__tmp55170
                                                 (let ((__tmp55177
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp55171
                                                        (let ((__tmp55172
                                                               (lambda (_g5178651795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5178751798_)
                         (let ((__tmp55173
                                (let ((__tmp55176
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp55174
                                       (let ((__tmp55175
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5178651795_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp55175))))
                                  (declare (not safe))
                                  (cons __tmp55176 __tmp55174))))
                           (declare (not safe))
                           (cons __tmp55173 _g5178751798_)))))
                  (declare (not safe))
                  (foldr1 __tmp55172 '() _L51750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55177
                                                         __tmp55171)))
                                                (__tmp55164
                                                 (let ((__tmp55167
                                                        (let ((__tmp55169
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp55168
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L51748_ '()))))
                  (declare (not safe))
                  (cons __tmp55169 __tmp55168)))
               (__tmp55165
                (let ((__tmp55166 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp55166 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp55167
                                                         __tmp55165))))
                                            (declare (not safe))
                                            (cons __tmp55170 __tmp55164))))
                                     (declare (not safe))
                                     (cons __tmp55178 __tmp55163))))
                              (declare (not safe))
                              (cons __tmp55183 __tmp55162))))
                       (declare (not safe))
                       (cons __tmp55184 __tmp55161)))
                    (__tmp55157
                     (let ((__tmp55158
                            (let ((__tmp55159 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp55159 '()))))
                       (declare (not safe))
                       (cons __tmp55158 '()))))
                (declare (not safe))
                (cons __tmp55160 __tmp55157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp55185
                                                       __tmp55156))))
                                          (declare (not safe))
                                          (cons __tmp55186 __tmp55155))))
                                   (declare (not safe))
                                   (cons __tmp55154 '()))))
                            (declare (not safe))
                            (cons __tmp55187 __tmp55153))))
                     (declare (not safe))
                     (cons __tmp55199 __tmp55152)))))
            (let* ((___match5476354764_
                    (lambda (_e5156751618_
                             _hd5156851622_
                             _tl5156951625_
                             _e5157051628_
                             _hd5157151632_
                             _tl5157251635_
                             _e5157351638_
                             _e5157451642_
                             _hd5157551646_
                             _tl5157651649_
                             ___splice5443554436_
                             _target5157751652_
                             _tl5157951655_)
                      (letrec ((_loop5158051658_
                                (lambda (_hd5157851662_
                                         _exprs5158451665_
                                         _names5158551667_)
                                  (if (gx#stx-pair? _hd5157851662_)
                                      (let ((_e5158151670_
                                             (gx#syntax-e _hd5157851662_)))
                                        (let ((_lp-tl5158351677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5158151670_)))
                                              (_lp-hd5158251674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5158151670_))))
                                          (if (gx#stx-pair? _lp-hd5158251674_)
                                              (let ((_e5158851680_
                                                     (gx#syntax-e
                                                      _lp-hd5158251674_)))
                                                (let ((_tl5159051687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5158851680_)))
                                                      (_hd5158951684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5158851680_))))
                                                  (if (gx#stx-pair?
                                                       _tl5159051687_)
                                                      (let ((_e5159151690_
                                                             (gx#syntax-e
                                                              _tl5159051687_)))
                                                        (let ((_tl5159351697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5159151690_)))
                      (_hd5159251694_
                       (let () (declare (not safe)) (##car _e5159151690_))))
                  (if (gx#stx-null? _tl5159351697_)
                      (_loop5158051658_
                       _lp-tl5158351677_
                       (let ()
                         (declare (not safe))
                         (cons _hd5159251694_ _exprs5158451665_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5158951684_ _names5158551667_)))
                      (let () (declare (not safe)) (_g5139751611_)))))
              (let () (declare (not safe)) (_g5139751611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5139751611_)))))
                                      (let ((_names5158751703_
                                             (reverse _names5158551667_))
                                            (_exprs5158651700_
                                             (reverse _exprs5158451665_)))
                                        (if (gx#stx-pair? _tl5157651649_)
                                            (let ((_e5159451706_
                                                   (gx#syntax-e
                                                    _tl5157651649_)))
                                              (let ((_tl5159651713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5159451706_)))
                                                    (_hd5159551710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5159451706_))))
                                                (if (gx#stx-null?
                                                     _hd5159551710_)
                                                    (if (gx#stx-pair?
                                                         _tl5159651713_)
                                                        (let ((_e5159751716_
                                                               (gx#syntax-e
                                                                _tl5159651713_)))
                                                          (let ((_tl5159951723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5159751716_)))
                        (_hd5159851720_
                         (let () (declare (not safe)) (##car _e5159751716_))))
                    (if (gx#stx-pair? _tl5159951723_)
                        (let ((_e5160051726_ (gx#syntax-e _tl5159951723_)))
                          (let ((_tl5160251733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5160051726_)))
                                (_hd5160151730_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5160051726_))))
                            (if (gx#stx-pair? _tl5160251733_)
                                (let ((_e5160351736_
                                       (gx#syntax-e _tl5160251733_)))
                                  (let ((_tl5160551743_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5160351736_)))
                                        (_hd5160451740_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5160351736_))))
                                    (if (gx#stx-null? _tl5160551743_)
                                        (___kont5443354434_
                                         _hd5160451740_
                                         _hd5160151730_
                                         _hd5159851720_
                                         _exprs5158651700_
                                         _names5158751703_
                                         _hd5156851622_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_)))))
                        (let () (declare (not safe)) (_g5139751611_)))))
                (let () (declare (not safe)) (_g5139751611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5139751611_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5139751611_))))))))
                        (_loop5158051658_ _target5157751652_ '() '()))))
                   (___match5454154542_
                    (lambda (_e5143952243_
                             _hd5144052247_
                             _tl5144152250_
                             _e5144252253_
                             _hd5144352257_
                             _tl5144452260_
                             _e5144552263_
                             _e5144652267_
                             _hd5144752271_
                             _tl5144852274_
                             ___splice5442154422_
                             _target5144952277_
                             _tl5145152280_
                             _e5145852283_
                             _hd5145952287_
                             _tl5146052290_)
                      (letrec ((_loop5145252293_
                                (lambda (_hd5145052297_ _exprs5145652300_)
                                  (if (gx#stx-pair? _hd5145052297_)
                                      (let ((_e5145352303_
                                             (gx#syntax-e _hd5145052297_)))
                                        (let ((_lp-tl5145552310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5145352303_)))
                                              (_lp-hd5145452307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5145352303_))))
                                          (_loop5145252293_
                                           _lp-tl5145552310_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5145452307_
                                                   _exprs5145652300_)))))
                                      (let ((_exprs5145752313_
                                             (reverse _exprs5145652300_)))
                                        (___kont5441954420_
                                         _hd5145952287_
                                         _exprs5145752313_
                                         _hd5144752271_
                                         _hd5144052247_))))))
                        (_loop5145252293_ _target5144952277_ '()))))
                   (___match5450154502_
                    (lambda (_e5140452360_
                             _hd5140552364_
                             _tl5140652367_
                             _e5140752370_
                             _hd5140852374_
                             _tl5140952377_
                             _e5141052380_
                             _e5141152384_
                             _hd5141252388_
                             _tl5141352391_
                             ___splice5441754418_
                             _target5141452394_
                             _tl5141652397_
                             _e5142352400_
                             _hd5142452404_
                             _tl5142552407_
                             _e5142652410_
                             _hd5142752414_
                             _tl5142852417_
                             _e5142952420_
                             _hd5143052424_
                             _tl5143152427_
                             _e5143252430_
                             _hd5143352434_
                             _tl5143452437_)
                      (letrec ((_loop5141752440_
                                (lambda (_hd5141552444_ _exprs5142152447_)
                                  (if (gx#stx-pair? _hd5141552444_)
                                      (let ((_e5141852450_
                                             (gx#syntax-e _hd5141552444_)))
                                        (let ((_lp-tl5142052457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5141852450_)))
                                              (_lp-hd5141952454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5141852450_))))
                                          (_loop5141752440_
                                           _lp-tl5142052457_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5141952454_
                                                   _exprs5142152447_)))))
                                      (let ((_exprs5142252460_
                                             (reverse _exprs5142152447_)))
                                        (___kont5441554416_
                                         _hd5143352434_
                                         _hd5143052424_
                                         _exprs5142252460_
                                         _hd5141252388_
                                         _hd5140552364_))))))
                        (_loop5141752440_ _target5141452394_ '())))))
              (if (gx#stx-pair? ___stx5441254413_)
                  (let ((_e5140452360_ (gx#syntax-e ___stx5441254413_)))
                    (let ((_tl5140652367_
                           (let () (declare (not safe)) (##cdr _e5140452360_)))
                          (_hd5140552364_
                           (let ()
                             (declare (not safe))
                             (##car _e5140452360_))))
                      (if (gx#stx-pair? _tl5140652367_)
                          (let ((_e5140752370_ (gx#syntax-e _tl5140652367_)))
                            (let ((_tl5140952377_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5140752370_)))
                                  (_hd5140852374_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5140752370_))))
                              (if (gx#stx-datum? _hd5140852374_)
                                  (let ((_e5141052380_
                                         (gx#stx-e _hd5140852374_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5141052380_ '1))
                                        (if (gx#stx-pair? _tl5140952377_)
                                            (let ((_e5141152384_
                                                   (gx#syntax-e
                                                    _tl5140952377_)))
                                              (let ((_tl5141352391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5141152384_)))
                                                    (_hd5141252388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5141152384_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5141352391_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5141352391_)
                                                              '2)
                                                        (let ((___splice5441754418_
                                                               (gx#syntax-split-splice
                                                                _tl5141352391_
                                                                '2)))
                                                          (let ((_tl5141652397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5441754418_ '1)))
                        (_target5141452394_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5441754418_ '0))))
                    (if (gx#stx-pair? _tl5141652397_)
                        (let ((_e5142352400_ (gx#syntax-e _tl5141652397_)))
                          (let ((_tl5142552407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5142352400_)))
                                (_hd5142452404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5142352400_))))
                            (if (gx#stx-pair? _hd5142452404_)
                                (let ((_e5142652410_
                                       (gx#syntax-e _hd5142452404_)))
                                  (let ((_tl5142852417_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5142652410_)))
                                        (_hd5142752414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5142652410_))))
                                    (if (gx#identifier? _hd5142752414_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g55200_|
                                             _hd5142752414_)
                                            (if (gx#stx-pair? _tl5142852417_)
                                                (let ((_e5142952420_
                                                       (gx#syntax-e
                                                        _tl5142852417_)))
                                                  (let ((_tl5143152427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5142952420_)))
                                                        (_hd5143052424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5142952420_))))
                                                    (if (gx#stx-null?
                                                         _tl5143152427_)
                                                        (if (gx#stx-pair?
                                                             _tl5142552407_)
                                                            (let ((_e5143252430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5142552407_)))
                      (let ((_tl5143452437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5143252430_)))
                            (_hd5143352434_
                             (let ()
                               (declare (not safe))
                               (##car _e5143252430_))))
                        (if (gx#stx-null? _tl5143452437_)
                            (___match5450154502_
                             _e5140452360_
                             _hd5140552364_
                             _tl5140652367_
                             _e5140752370_
                             _hd5140852374_
                             _tl5140952377_
                             _e5141052380_
                             _e5141152384_
                             _hd5141252388_
                             _tl5141352391_
                             ___splice5441754418_
                             _target5141452394_
                             _tl5141652397_
                             _e5142352400_
                             _hd5142452404_
                             _tl5142552407_
                             _e5142652410_
                             _hd5142752414_
                             _tl5142852417_
                             _e5142952420_
                             _hd5143052424_
                             _tl5143152427_
                             _e5143252430_
                             _hd5143352434_
                             _tl5143452437_)
                            (if (fx>= (gx#stx-length _tl5141352391_) '1)
                                (let ((___splice5442154422_
                                       (gx#syntax-split-splice
                                        _tl5141352391_
                                        '1)))
                                  (let ((_tl5145152280_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5442154422_
                                            '1)))
                                        (_target5144952277_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5442154422_
                                            '0))))
                                    (if (gx#stx-pair? _tl5145152280_)
                                        (let ((_e5145852283_
                                               (gx#syntax-e _tl5145152280_)))
                                          (let ((_tl5146052290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5145852283_)))
                                                (_hd5145952287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5145852283_))))
                                            (if (gx#stx-null? _tl5146052290_)
                                                (___match5454154542_
                                                 _e5140452360_
                                                 _hd5140552364_
                                                 _tl5140652367_
                                                 _e5140752370_
                                                 _hd5140852374_
                                                 _tl5140952377_
                                                 _e5141052380_
                                                 _e5141152384_
                                                 _hd5141252388_
                                                 _tl5141352391_
                                                 ___splice5442154422_
                                                 _target5144952277_
                                                 _tl5145152280_
                                                 _e5145852283_
                                                 _hd5145952287_
                                                 _tl5146052290_)
                                                (if (gx#stx-null?
                                                     _tl5141352391_)
                                                    (___kont5442354424_
                                                     _hd5141252388_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5139751611_))))))
                                        (if (gx#stx-null? _tl5141352391_)
                                            (___kont5442354424_ _hd5141252388_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5139751611_))))))
                                (if (gx#stx-null? _tl5141352391_)
                                    (___kont5442354424_ _hd5141252388_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5139751611_)))))))
                    (if (fx>= (gx#stx-length _tl5141352391_) '1)
                        (let ((___splice5442154422_
                               (gx#syntax-split-splice _tl5141352391_ '1)))
                          (let ((_tl5145152280_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5442154422_ '1)))
                                (_target5144952277_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5442154422_ '0))))
                            (if (gx#stx-pair? _tl5145152280_)
                                (let ((_e5145852283_
                                       (gx#syntax-e _tl5145152280_)))
                                  (let ((_tl5146052290_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5145852283_)))
                                        (_hd5145952287_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5145852283_))))
                                    (if (gx#stx-null? _tl5146052290_)
                                        (___match5454154542_
                                         _e5140452360_
                                         _hd5140552364_
                                         _tl5140652367_
                                         _e5140752370_
                                         _hd5140852374_
                                         _tl5140952377_
                                         _e5141052380_
                                         _e5141152384_
                                         _hd5141252388_
                                         _tl5141352391_
                                         ___splice5442154422_
                                         _target5144952277_
                                         _tl5145152280_
                                         _e5145852283_
                                         _hd5145952287_
                                         _tl5146052290_)
                                        (if (gx#stx-null? _tl5141352391_)
                                            (___kont5442354424_ _hd5141252388_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5139751611_))))))
                                (if (gx#stx-null? _tl5141352391_)
                                    (___kont5442354424_ _hd5141252388_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5139751611_))))))
                        (if (gx#stx-null? _tl5141352391_)
                            (___kont5442354424_ _hd5141252388_)
                            (let () (declare (not safe)) (_g5139751611_)))))
                (if (fx>= (gx#stx-length _tl5141352391_) '1)
                    (let ((___splice5442154422_
                           (gx#syntax-split-splice _tl5141352391_ '1)))
                      (let ((_tl5145152280_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5442154422_ '1)))
                            (_target5144952277_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5442154422_ '0))))
                        (if (gx#stx-pair? _tl5145152280_)
                            (let ((_e5145852283_ (gx#syntax-e _tl5145152280_)))
                              (let ((_tl5146052290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5145852283_)))
                                    (_hd5145952287_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5145852283_))))
                                (if (gx#stx-null? _tl5146052290_)
                                    (___match5454154542_
                                     _e5140452360_
                                     _hd5140552364_
                                     _tl5140652367_
                                     _e5140752370_
                                     _hd5140852374_
                                     _tl5140952377_
                                     _e5141052380_
                                     _e5141152384_
                                     _hd5141252388_
                                     _tl5141352391_
                                     ___splice5442154422_
                                     _target5144952277_
                                     _tl5145152280_
                                     _e5145852283_
                                     _hd5145952287_
                                     _tl5146052290_)
                                    (if (gx#stx-null? _tl5141352391_)
                                        (___kont5442354424_ _hd5141252388_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_))))))
                            (if (gx#stx-null? _tl5141352391_)
                                (___kont5442354424_ _hd5141252388_)
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_))))))
                    (if (gx#stx-null? _tl5141352391_)
                        (___kont5442354424_ _hd5141252388_)
                        (let () (declare (not safe)) (_g5139751611_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5141352391_)
                                                          '1)
                                                    (let ((___splice5442154422_
                                                           (gx#syntax-split-splice
                                                            _tl5141352391_
                                                            '1)))
                                                      (let ((_tl5145152280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5442154422_ '1)))
                    (_target5144952277_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5442154422_ '0))))
                (if (gx#stx-pair? _tl5145152280_)
                    (let ((_e5145852283_ (gx#syntax-e _tl5145152280_)))
                      (let ((_tl5146052290_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5145852283_)))
                            (_hd5145952287_
                             (let ()
                               (declare (not safe))
                               (##car _e5145852283_))))
                        (if (gx#stx-null? _tl5146052290_)
                            (___match5454154542_
                             _e5140452360_
                             _hd5140552364_
                             _tl5140652367_
                             _e5140752370_
                             _hd5140852374_
                             _tl5140952377_
                             _e5141052380_
                             _e5141152384_
                             _hd5141252388_
                             _tl5141352391_
                             ___splice5442154422_
                             _target5144952277_
                             _tl5145152280_
                             _e5145852283_
                             _hd5145952287_
                             _tl5146052290_)
                            (if (gx#stx-null? _tl5141352391_)
                                (___kont5442354424_ _hd5141252388_)
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_))))))
                    (if (gx#stx-null? _tl5141352391_)
                        (___kont5442354424_ _hd5141252388_)
                        (let () (declare (not safe)) (_g5139751611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5141352391_)
                                                        (___kont5442354424_
                                                         _hd5141252388_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5139751611_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5141352391_)
                                                      '1)
                                                (let ((___splice5442154422_
                                                       (gx#syntax-split-splice
                                                        _tl5141352391_
                                                        '1)))
                                                  (let ((_tl5145152280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5442154422_
                                                            '1)))
                                                        (_target5144952277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5442154422_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5145152280_)
                                                        (let ((_e5145852283_
                                                               (gx#syntax-e
                                                                _tl5145152280_)))
                                                          (let ((_tl5146052290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5145852283_)))
                        (_hd5145952287_
                         (let () (declare (not safe)) (##car _e5145852283_))))
                    (if (gx#stx-null? _tl5146052290_)
                        (___match5454154542_
                         _e5140452360_
                         _hd5140552364_
                         _tl5140652367_
                         _e5140752370_
                         _hd5140852374_
                         _tl5140952377_
                         _e5141052380_
                         _e5141152384_
                         _hd5141252388_
                         _tl5141352391_
                         ___splice5442154422_
                         _target5144952277_
                         _tl5145152280_
                         _e5145852283_
                         _hd5145952287_
                         _tl5146052290_)
                        (if (gx#stx-null? _tl5141352391_)
                            (___kont5442354424_ _hd5141252388_)
                            (let () (declare (not safe)) (_g5139751611_))))))
                (if (gx#stx-null? _tl5141352391_)
                    (___kont5442354424_ _hd5141252388_)
                    (let () (declare (not safe)) (_g5139751611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5141352391_)
                                                    (___kont5442354424_
                                                     _hd5141252388_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5139751611_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5141352391_)
                                                  '1)
                                            (let ((___splice5442154422_
                                                   (gx#syntax-split-splice
                                                    _tl5141352391_
                                                    '1)))
                                              (let ((_tl5145152280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5442154422_
                                                        '1)))
                                                    (_target5144952277_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5442154422_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5145152280_)
                                                    (let ((_e5145852283_
                                                           (gx#syntax-e
                                                            _tl5145152280_)))
                                                      (let ((_tl5146052290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5145852283_)))
                    (_hd5145952287_
                     (let () (declare (not safe)) (##car _e5145852283_))))
                (if (gx#stx-null? _tl5146052290_)
                    (___match5454154542_
                     _e5140452360_
                     _hd5140552364_
                     _tl5140652367_
                     _e5140752370_
                     _hd5140852374_
                     _tl5140952377_
                     _e5141052380_
                     _e5141152384_
                     _hd5141252388_
                     _tl5141352391_
                     ___splice5442154422_
                     _target5144952277_
                     _tl5145152280_
                     _e5145852283_
                     _hd5145952287_
                     _tl5146052290_)
                    (if (gx#stx-null? _tl5141352391_)
                        (___kont5442354424_ _hd5141252388_)
                        (let () (declare (not safe)) (_g5139751611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5141352391_)
                                                        (___kont5442354424_
                                                         _hd5141252388_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5139751611_))))))
                                            (if (gx#stx-null? _tl5141352391_)
                                                (___kont5442354424_
                                                 _hd5141252388_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5139751611_)))))))
                                (if (fx>= (gx#stx-length _tl5141352391_) '1)
                                    (let ((___splice5442154422_
                                           (gx#syntax-split-splice
                                            _tl5141352391_
                                            '1)))
                                      (let ((_tl5145152280_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5442154422_
                                                '1)))
                                            (_target5144952277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5442154422_
                                                '0))))
                                        (if (gx#stx-pair? _tl5145152280_)
                                            (let ((_e5145852283_
                                                   (gx#syntax-e
                                                    _tl5145152280_)))
                                              (let ((_tl5146052290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5145852283_)))
                                                    (_hd5145952287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5145852283_))))
                                                (if (gx#stx-null?
                                                     _tl5146052290_)
                                                    (___match5454154542_
                                                     _e5140452360_
                                                     _hd5140552364_
                                                     _tl5140652367_
                                                     _e5140752370_
                                                     _hd5140852374_
                                                     _tl5140952377_
                                                     _e5141052380_
                                                     _e5141152384_
                                                     _hd5141252388_
                                                     _tl5141352391_
                                                     ___splice5442154422_
                                                     _target5144952277_
                                                     _tl5145152280_
                                                     _e5145852283_
                                                     _hd5145952287_
                                                     _tl5146052290_)
                                                    (if (gx#stx-null?
                                                         _tl5141352391_)
                                                        (___kont5442354424_
                                                         _hd5141252388_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5139751611_))))))
                                            (if (gx#stx-null? _tl5141352391_)
                                                (___kont5442354424_
                                                 _hd5141252388_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5139751611_))))))
                                    (if (gx#stx-null? _tl5141352391_)
                                        (___kont5442354424_ _hd5141252388_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_)))))))
                        (if (fx>= (gx#stx-length _tl5141352391_) '1)
                            (let ((___splice5442154422_
                                   (gx#syntax-split-splice _tl5141352391_ '1)))
                              (let ((_tl5145152280_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5442154422_ '1)))
                                    (_target5144952277_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5442154422_
                                        '0))))
                                (if (gx#stx-pair? _tl5145152280_)
                                    (let ((_e5145852283_
                                           (gx#syntax-e _tl5145152280_)))
                                      (let ((_tl5146052290_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5145852283_)))
                                            (_hd5145952287_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5145852283_))))
                                        (if (gx#stx-null? _tl5146052290_)
                                            (___match5454154542_
                                             _e5140452360_
                                             _hd5140552364_
                                             _tl5140652367_
                                             _e5140752370_
                                             _hd5140852374_
                                             _tl5140952377_
                                             _e5141052380_
                                             _e5141152384_
                                             _hd5141252388_
                                             _tl5141352391_
                                             ___splice5442154422_
                                             _target5144952277_
                                             _tl5145152280_
                                             _e5145852283_
                                             _hd5145952287_
                                             _tl5146052290_)
                                            (if (gx#stx-null? _tl5141352391_)
                                                (___kont5442354424_
                                                 _hd5141252388_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5139751611_))))))
                                    (if (gx#stx-null? _tl5141352391_)
                                        (___kont5442354424_ _hd5141252388_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_))))))
                            (if (gx#stx-null? _tl5141352391_)
                                (___kont5442354424_ _hd5141252388_)
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_)))))))
                (if (fx>= (gx#stx-length _tl5141352391_) '1)
                    (let ((___splice5442154422_
                           (gx#syntax-split-splice _tl5141352391_ '1)))
                      (let ((_tl5145152280_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5442154422_ '1)))
                            (_target5144952277_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5442154422_ '0))))
                        (if (gx#stx-pair? _tl5145152280_)
                            (let ((_e5145852283_ (gx#syntax-e _tl5145152280_)))
                              (let ((_tl5146052290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5145852283_)))
                                    (_hd5145952287_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5145852283_))))
                                (if (gx#stx-null? _tl5146052290_)
                                    (___match5454154542_
                                     _e5140452360_
                                     _hd5140552364_
                                     _tl5140652367_
                                     _e5140752370_
                                     _hd5140852374_
                                     _tl5140952377_
                                     _e5141052380_
                                     _e5141152384_
                                     _hd5141252388_
                                     _tl5141352391_
                                     ___splice5442154422_
                                     _target5144952277_
                                     _tl5145152280_
                                     _e5145852283_
                                     _hd5145952287_
                                     _tl5146052290_)
                                    (if (gx#stx-null? _tl5141352391_)
                                        (___kont5442354424_ _hd5141252388_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_))))))
                            (if (gx#stx-null? _tl5141352391_)
                                (___kont5442354424_ _hd5141252388_)
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_))))))
                    (if (gx#stx-null? _tl5141352391_)
                        (___kont5442354424_ _hd5141252388_)
                        (let () (declare (not safe)) (_g5139751611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5141352391_)
                                                        (___kont5442354424_
                                                         _hd5141252388_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5139751611_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5139751611_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5141052380_ '2))
                                            (if (gx#stx-pair? _tl5140952377_)
                                                (let ((_e5148552083_
                                                       (gx#syntax-e
                                                        _tl5140952377_)))
                                                  (let ((_tl5148752090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5148552083_)))
                                                        (_hd5148652087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5148552083_))))
                                                    (if (gx#stx-pair?
                                                         _tl5148752090_)
                                                        (let ((_e5148852093_
                                                               (gx#syntax-e
                                                                _tl5148752090_)))
                                                          (let ((_tl5149052100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5148852093_)))
                        (_hd5148952097_
                         (let () (declare (not safe)) (##car _e5148852093_))))
                    (if (gx#stx-pair? _hd5148952097_)
                        (let ((_e5149152103_ (gx#syntax-e _hd5148952097_)))
                          (let ((_tl5149352110_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5149152103_)))
                                (_hd5149252107_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5149152103_))))
                            (if (gx#stx-pair? _hd5149252107_)
                                (let ((_e5149452113_
                                       (gx#syntax-e _hd5149252107_)))
                                  (let ((_tl5149652120_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5149452113_)))
                                        (_hd5149552117_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5149452113_))))
                                    (if (gx#identifier? _hd5149552117_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g55201_|
                                             _hd5149552117_)
                                            (if (gx#stx-pair? _tl5149652120_)
                                                (let ((_e5149752123_
                                                       (gx#syntax-e
                                                        _tl5149652120_)))
                                                  (let ((_tl5149952130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5149752123_)))
                                                        (_hd5149852127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5149752123_))))
                                                    (if (gx#stx-null?
                                                         _tl5149952130_)
                                                        (if (gx#stx-pair?
                                                             _tl5149352110_)
                                                            (let ((_e5150052133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5149352110_)))
                      (let ((_tl5150252140_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5150052133_)))
                            (_hd5150152137_
                             (let ()
                               (declare (not safe))
                               (##car _e5150052133_))))
                        (___kont5442554426_
                         _tl5149052100_
                         _tl5150252140_
                         _hd5150152137_
                         _hd5149852127_
                         _hd5148652087_
                         _hd5140552364_)))
                    (___kont5442754428_
                     _tl5149052100_
                     _tl5149352110_
                     _hd5149252107_
                     _hd5148652087_
                     _hd5140552364_))
                (___kont5442754428_
                 _tl5149052100_
                 _tl5149352110_
                 _hd5149252107_
                 _hd5148652087_
                 _hd5140552364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5442754428_
                                                 _tl5149052100_
                                                 _tl5149352110_
                                                 _hd5149252107_
                                                 _hd5148652087_
                                                 _hd5140552364_))
                                            (___kont5442754428_
                                             _tl5149052100_
                                             _tl5149352110_
                                             _hd5149252107_
                                             _hd5148652087_
                                             _hd5140552364_))
                                        (___kont5442754428_
                                         _tl5149052100_
                                         _tl5149352110_
                                         _hd5149252107_
                                         _hd5148652087_
                                         _hd5140552364_))))
                                (___kont5442754428_
                                 _tl5149052100_
                                 _tl5149352110_
                                 _hd5149252107_
                                 _hd5148652087_
                                 _hd5140552364_))))
                        (if (gx#stx-null? _hd5148952097_)
                            (___kont5442954430_
                             _tl5149052100_
                             _hd5148652087_
                             _hd5140552364_)
                            (let () (declare (not safe)) (_g5139751611_))))))
                (let () (declare (not safe)) (_g5139751611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5139751611_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5141052380_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5140952377_)
                                                    (let ((_e5155251832_
                                                           (gx#syntax-e
                                                            _tl5140952377_)))
                                                      (let ((_tl5155451839_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5155251832_)))
                    (_hd5155351836_
                     (let () (declare (not safe)) (##car _e5155251832_))))
                (if (gx#stx-pair? _tl5155451839_)
                    (let ((_e5155551842_ (gx#syntax-e _tl5155451839_)))
                      (let ((_tl5155751849_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5155551842_)))
                            (_hd5155651846_
                             (let ()
                               (declare (not safe))
                               (##car _e5155551842_))))
                        (if (gx#stx-pair? _hd5155651846_)
                            (let ((_e5155851852_ (gx#syntax-e _hd5155651846_)))
                              (let ((_tl5156051859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5155851852_)))
                                    (_hd5155951856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5155851852_))))
                                (___kont5443154432_
                                 _tl5155751849_
                                 _tl5156051859_
                                 _hd5155951856_
                                 _hd5155351836_
                                 _hd5140552364_)))
                            (if (gx#stx-pair/null? _hd5155351836_)
                                (let ((___splice5443554436_
                                       (gx#syntax-split-splice
                                        _hd5155351836_
                                        '0)))
                                  (let ((_tl5157951655_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5443554436_
                                            '1)))
                                        (_target5157751652_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5443554436_
                                            '0))))
                                    (if (gx#stx-null? _tl5157951655_)
                                        (___match5476354764_
                                         _e5140452360_
                                         _hd5140552364_
                                         _tl5140652367_
                                         _e5140752370_
                                         _hd5140852374_
                                         _tl5140952377_
                                         _e5141052380_
                                         _e5155251832_
                                         _hd5155351836_
                                         _tl5155451839_
                                         ___splice5443554436_
                                         _target5157751652_
                                         _tl5157951655_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5139751611_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_))))))
                    (if (gx#stx-pair/null? _hd5155351836_)
                        (let ((___splice5443554436_
                               (gx#syntax-split-splice _hd5155351836_ '0)))
                          (let ((_tl5157951655_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5443554436_ '1)))
                                (_target5157751652_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5443554436_ '0))))
                            (if (gx#stx-null? _tl5157951655_)
                                (___match5476354764_
                                 _e5140452360_
                                 _hd5140552364_
                                 _tl5140652367_
                                 _e5140752370_
                                 _hd5140852374_
                                 _tl5140952377_
                                 _e5141052380_
                                 _e5155251832_
                                 _hd5155351836_
                                 _tl5155451839_
                                 ___splice5443554436_
                                 _target5157751652_
                                 _tl5157951655_)
                                (let ()
                                  (declare (not safe))
                                  (_g5139751611_)))))
                        (let () (declare (not safe)) (_g5139751611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5139751611_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5139751611_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5139751611_)))))
                          (let () (declare (not safe)) (_g5139751611_)))))
                  (let () (declare (not safe)) (_g5139751611_))))))))))
