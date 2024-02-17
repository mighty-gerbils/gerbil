(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx63238_)
      (let* ((_g6324263280_
              (lambda (_g6324363276_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6324363276_)))
             (_g6324163406_
              (lambda (_g6324363284_)
                (if (gx#stx-pair? _g6324363284_)
                    (let ((_e6325363287_ (gx#syntax-e _g6324363284_)))
                      (let ((_hd6325263291_
                             (let ()
                               (declare (not safe))
                               (##car _e6325363287_)))
                            (_tl6325163294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6325363287_))))
                        (if (gx#stx-pair? _tl6325163294_)
                            (let ((_e6325663297_ (gx#syntax-e _tl6325163294_)))
                              (let ((_hd6325563301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325663297_)))
                                    (_tl6325463304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325663297_))))
                                (if (gx#stx-pair? _tl6325463304_)
                                    (let ((_e6325963307_
                                           (gx#syntax-e _tl6325463304_)))
                                      (let ((_hd6325863311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6325963307_)))
                                            (_tl6325763314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6325963307_))))
                                        (if (gx#stx-pair? _tl6325763314_)
                                            (let ((_e6326263317_
                                                   (gx#syntax-e
                                                    _tl6325763314_)))
                                              (let ((_hd6326163321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6326263317_)))
                                                    (_tl6326063324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6326263317_))))
                                                (if (gx#stx-pair?
                                                     _tl6326063324_)
                                                    (let ((_e6326563327_
                                                           (gx#syntax-e
                                                            _tl6326063324_)))
                                                      (let ((_hd6326463331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6326563327_)))
                    (_tl6326363334_
                     (let () (declare (not safe)) (##cdr _e6326563327_))))
                (if (gx#stx-pair? _tl6326363334_)
                    (let ((_e6326863337_ (gx#syntax-e _tl6326363334_)))
                      (let ((_hd6326763341_
                             (let ()
                               (declare (not safe))
                               (##car _e6326863337_)))
                            (_tl6326663344_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6326863337_))))
                        (if (gx#stx-pair? _tl6326663344_)
                            (let ((_e6327163347_ (gx#syntax-e _tl6326663344_)))
                              (let ((_hd6327063351_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6327163347_)))
                                    (_tl6326963354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6327163347_))))
                                (if (gx#stx-pair? _tl6326963354_)
                                    (let ((_e6327463357_
                                           (gx#syntax-e _tl6326963354_)))
                                      (let ((_hd6327363361_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6327463357_)))
                                            (_tl6327263364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6327463357_))))
                                        (if (gx#stx-null? _tl6327263364_)
                                            ((lambda (_L63367_
                                                      _L63369_
                                                      _L63370_
                                                      _L63371_
                                                      _L63372_
                                                      _L63373_
                                                      _L63374_)
                                               (let ((__tmp69055
                                                      (gx#datum->syntax
                                                       '#f
                                                       'begin))
                                                     (__tmp68773
                                                      (let ((__tmp69029
                                                             (let ((__tmp69054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'def))
                           (__tmp69030
                            (let ((__tmp69040
                                   (let ((__tmp69041
                                          (let ((__tmp69051
                                                 (let ((__tmp69053
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp69052
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69053
                                                         __tmp69052)))
                                                (__tmp69042
                                                 (let ((__tmp69043
                                                        (let ((__tmp69050
                                                               (gx#datum->syntax
                                                                '#f
                                                                'seed))
                                                              (__tmp69044
                                                               (let ((__tmp69045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69049
                                     (gx#datum->syntax '#f 'random-integer))
                                    (__tmp69046
                                     (let ((__tmp69047
                                            (let ((__tmp69048
                                                   (gx#datum->syntax
                                                    '#f
                                                    'macro-max-fixnum32)))
                                              (declare (not safe))
                                              (cons __tmp69048 '()))))
                                       (declare (not safe))
                                       (cons __tmp69047 '()))))
                                (declare (not safe))
                                (cons __tmp69049 __tmp69046))))
                         (declare (not safe))
                         (cons __tmp69045 '()))))
                  (declare (not safe))
                  (cons __tmp69050 __tmp69044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69043 '()))))
                                            (declare (not safe))
                                            (cons __tmp69051 __tmp69042))))
                                     (declare (not safe))
                                     (cons _L63374_ __tmp69041)))
                                  (__tmp69031
                                   (let ((__tmp69032
                                          (let ((__tmp69039
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-raw-table))
                                                (__tmp69033
                                                 (let ((__tmp69038
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp69034
                                                        (let ((__tmp69035
                                                               (let ((__tmp69036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69037 (gx#datum->syntax '#f 'seed)))
                                (declare (not safe))
                                (cons __tmp69037 '()))))
                         (declare (not safe))
                         (cons _L63367_ __tmp69036))))
                  (declare (not safe))
                  (cons _L63369_ __tmp69035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69038
                                                         __tmp69034))))
                                            (declare (not safe))
                                            (cons __tmp69039 __tmp69033))))
                                     (declare (not safe))
                                     (cons __tmp69032 '()))))
                              (declare (not safe))
                              (cons __tmp69040 __tmp69031))))
                       (declare (not safe))
                       (cons __tmp69054 __tmp69030)))
                    (__tmp68774
                     (let ((__tmp68986
                            (let ((__tmp69028 (gx#datum->syntax '#f 'def))
                                  (__tmp68987
                                   (let ((__tmp69021
                                          (let ((__tmp69022
                                                 (let ((__tmp69027
                                                        (gx#datum->syntax
                                                         '#f
                                                         'tab))
                                                       (__tmp69023
                                                        (let ((__tmp69026
                                                               (gx#datum->syntax
                                                                '#f
                                                                'key))
                                                              (__tmp69024
                                                               (let ((__tmp69025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp69025 '()))))
                  (declare (not safe))
                  (cons __tmp69026 __tmp69024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69027
                                                         __tmp69023))))
                                            (declare (not safe))
                                            (cons _L63373_ __tmp69022)))
                                         (__tmp68988
                                          (let ((__tmp68989
                                                 (let ((__tmp69020
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp68990
                                                        (let ((__tmp69004
                                                               (let ((__tmp69013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69019 (gx#datum->syntax '#f 'table))
                                    (__tmp69014
                                     (let ((__tmp69015
                                            (let ((__tmp69018
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-table))
                                                  (__tmp69016
                                                   (let ((__tmp69017
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp69017 '()))))
                                              (declare (not safe))
                                              (cons __tmp69018 __tmp69016))))
                                       (declare (not safe))
                                       (cons __tmp69015 '()))))
                                (declare (not safe))
                                (cons __tmp69019 __tmp69014)))
                             (__tmp69005
                              (let ((__tmp69006
                                     (let ((__tmp69012
                                            (gx#datum->syntax '#f 'seed))
                                           (__tmp69007
                                            (let ((__tmp69008
                                                   (let ((__tmp69011
                                                          (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-seed))
                                                         (__tmp69009
                                                          (let ((__tmp69010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'tab)))
                    (declare (not safe))
                    (cons __tmp69010 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69011
                                                           __tmp69009))))
                                              (declare (not safe))
                                              (cons __tmp69008 '()))))
                                       (declare (not safe))
                                       (cons __tmp69012 __tmp69007))))
                                (declare (not safe))
                                (cons __tmp69006 '()))))
                         (declare (not safe))
                         (cons __tmp69013 __tmp69005)))
                      (__tmp68991
                       (let ((__tmp68992
                              (let ((__tmp69003
                                     (gx#datum->syntax '#f '__table-ref))
                                    (__tmp68993
                                     (let ((__tmp69002
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp68994
                                            (let ((__tmp69001
                                                   (gx#datum->syntax
                                                    '#f
                                                    'seed))
                                                  (__tmp68995
                                                   (let ((__tmp68996
                                                          (let ((__tmp68997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69000 (gx#datum->syntax '#f 'key))
                               (__tmp68998
                                (let ((__tmp68999
                                       (gx#datum->syntax '#f 'default)))
                                  (declare (not safe))
                                  (cons __tmp68999 '()))))
                           (declare (not safe))
                           (cons __tmp69000 __tmp68998))))
                    (declare (not safe))
                    (cons _L63367_ __tmp68997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63369_
                                                           __tmp68996))))
                                              (declare (not safe))
                                              (cons __tmp69001 __tmp68995))))
                                       (declare (not safe))
                                       (cons __tmp69002 __tmp68994))))
                                (declare (not safe))
                                (cons __tmp69003 __tmp68993))))
                         (declare (not safe))
                         (cons __tmp68992 '()))))
                  (declare (not safe))
                  (cons __tmp69004 __tmp68991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69020
                                                         __tmp68990))))
                                            (declare (not safe))
                                            (cons __tmp68989 '()))))
                                     (declare (not safe))
                                     (cons __tmp69021 __tmp68988))))
                              (declare (not safe))
                              (cons __tmp69028 __tmp68987)))
                           (__tmp68775
                            (let ((__tmp68940
                                   (let ((__tmp68985
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp68941
                                          (let ((__tmp68978
                                                 (let ((__tmp68979
                                                        (let ((__tmp68984
                                                               (gx#datum->syntax
                                                                '#f
                                                                'tab))
                                                              (__tmp68980
                                                               (let ((__tmp68983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'key))
                             (__tmp68981
                              (let ((__tmp68982 (gx#datum->syntax '#f 'value)))
                                (declare (not safe))
                                (cons __tmp68982 '()))))
                         (declare (not safe))
                         (cons __tmp68983 __tmp68981))))
                  (declare (not safe))
                  (cons __tmp68984 __tmp68980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63372_ __tmp68979)))
                                                (__tmp68942
                                                 (let ((__tmp68951
                                                        (let ((__tmp68977
                                                               (gx#datum->syntax
                                                                '#f
                                                                'when))
                                                              (__tmp68952
                                                               (let ((__tmp68958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68976 (gx#datum->syntax '#f 'fx<))
                                    (__tmp68959
                                     (let ((__tmp68972
                                            (let ((__tmp68975
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-free))
                                                  (__tmp68973
                                                   (let ((__tmp68974
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp68974 '()))))
                                              (declare (not safe))
                                              (cons __tmp68975 __tmp68973)))
                                           (__tmp68960
                                            (let ((__tmp68961
                                                   (let ((__tmp68971
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fxquotient))
                                                         (__tmp68962
                                                          (let ((__tmp68964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68970
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp68965
                                (let ((__tmp68966
                                       (let ((__tmp68969
                                              (gx#datum->syntax
                                               '#f
                                               '&raw-table-table))
                                             (__tmp68967
                                              (let ((__tmp68968
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab)))
                                                (declare (not safe))
                                                (cons __tmp68968 '()))))
                                         (declare (not safe))
                                         (cons __tmp68969 __tmp68967))))
                                  (declare (not safe))
                                  (cons __tmp68966 '()))))
                           (declare (not safe))
                           (cons __tmp68970 __tmp68965)))
                        (__tmp68963
                         (let () (declare (not safe)) (cons '4 '()))))
                    (declare (not safe))
                    (cons __tmp68964 __tmp68963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68971
                                                           __tmp68962))))
                                              (declare (not safe))
                                              (cons __tmp68961 '()))))
                                       (declare (not safe))
                                       (cons __tmp68972 __tmp68960))))
                                (declare (not safe))
                                (cons __tmp68976 __tmp68959)))
                             (__tmp68953
                              (let ((__tmp68954
                                     (let ((__tmp68957
                                            (gx#datum->syntax
                                             '#f
                                             '__raw-table-rehash!))
                                           (__tmp68955
                                            (let ((__tmp68956
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp68956 '()))))
                                       (declare (not safe))
                                       (cons __tmp68957 __tmp68955))))
                                (declare (not safe))
                                (cons __tmp68954 '()))))
                         (declare (not safe))
                         (cons __tmp68958 __tmp68953))))
                  (declare (not safe))
                  (cons __tmp68977 __tmp68952)))
               (__tmp68943
                (let ((__tmp68944
                       (let ((__tmp68945
                              (let ((__tmp68950 (gx#datum->syntax '#f 'tab))
                                    (__tmp68946
                                     (let ((__tmp68949
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp68947
                                            (let ((__tmp68948
                                                   (gx#datum->syntax
                                                    '#f
                                                    'value)))
                                              (declare (not safe))
                                              (cons __tmp68948 '()))))
                                       (declare (not safe))
                                       (cons __tmp68949 __tmp68947))))
                                (declare (not safe))
                                (cons __tmp68950 __tmp68946))))
                         (declare (not safe))
                         (cons _L63371_ __tmp68945))))
                  (declare (not safe))
                  (cons __tmp68944 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68951
                                                         __tmp68943))))
                                            (declare (not safe))
                                            (cons __tmp68978 __tmp68942))))
                                     (declare (not safe))
                                     (cons __tmp68985 __tmp68941)))
                                  (__tmp68776
                                   (let ((__tmp68838
                                          (let ((__tmp68939
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp68839
                                                 (let ((__tmp68932
                                                        (let ((__tmp68933
                                                               (let ((__tmp68938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'tab))
                             (__tmp68934
                              (let ((__tmp68937 (gx#datum->syntax '#f 'key))
                                    (__tmp68935
                                     (let ((__tmp68936
                                            (gx#datum->syntax '#f 'value)))
                                       (declare (not safe))
                                       (cons __tmp68936 '()))))
                                (declare (not safe))
                                (cons __tmp68937 __tmp68935))))
                         (declare (not safe))
                         (cons __tmp68938 __tmp68934))))
                  (declare (not safe))
                  (cons _L63371_ __tmp68933)))
               (__tmp68840
                (let ((__tmp68841
                       (let ((__tmp68931 (gx#datum->syntax '#f 'let))
                             (__tmp68842
                              (let ((__tmp68915
                                     (let ((__tmp68924
                                            (let ((__tmp68930
                                                   (gx#datum->syntax
                                                    '#f
                                                    'table))
                                                  (__tmp68925
                                                   (let ((__tmp68926
                                                          (let ((__tmp68929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '&raw-table-table))
                        (__tmp68927
                         (let ((__tmp68928 (gx#datum->syntax '#f 'tab)))
                           (declare (not safe))
                           (cons __tmp68928 '()))))
                    (declare (not safe))
                    (cons __tmp68929 __tmp68927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68926 '()))))
                                              (declare (not safe))
                                              (cons __tmp68930 __tmp68925)))
                                           (__tmp68916
                                            (let ((__tmp68917
                                                   (let ((__tmp68923
                                                          (gx#datum->syntax
                                                           '#f
                                                           'seed))
                                                         (__tmp68918
                                                          (let ((__tmp68919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68922
                                (gx#datum->syntax '#f '&raw-table-seed))
                               (__tmp68920
                                (let ((__tmp68921 (gx#datum->syntax '#f 'tab)))
                                  (declare (not safe))
                                  (cons __tmp68921 '()))))
                           (declare (not safe))
                           (cons __tmp68922 __tmp68920))))
                    (declare (not safe))
                    (cons __tmp68919 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68923
                                                           __tmp68918))))
                                              (declare (not safe))
                                              (cons __tmp68917 '()))))
                                       (declare (not safe))
                                       (cons __tmp68924 __tmp68916)))
                                    (__tmp68843
                                     (let ((__tmp68844
                                            (let ((__tmp68914
                                                   (gx#datum->syntax
                                                    '#f
                                                    '__table-set!))
                                                  (__tmp68845
                                                   (let ((__tmp68913
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp68846
                                                          (let ((__tmp68912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'seed))
                        (__tmp68847
                         (let ((__tmp68848
                                (let ((__tmp68849
                                       (let ((__tmp68911
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp68850
                                              (let ((__tmp68910
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value))
                                                    (__tmp68851
                                                     (let ((__tmp68873
                                                            (let ((__tmp68909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp68874
                           (let ((__tmp68875
                                  (let ((__tmp68893
                                         (let ((__tmp68908
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68894
                                                (let ((__tmp68904
                                                       (let ((__tmp68907
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free))
                                                             (__tmp68905
                                                              (let ((__tmp68906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68906 '()))))
                 (declare (not safe))
                 (cons __tmp68907 __tmp68905)))
              (__tmp68895
               (let ((__tmp68896
                      (let ((__tmp68903 (gx#datum->syntax '#f 'fx-))
                            (__tmp68897
                             (let ((__tmp68899
                                    (let ((__tmp68902
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-free))
                                          (__tmp68900
                                           (let ((__tmp68901
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68901 '()))))
                                      (declare (not safe))
                                      (cons __tmp68902 __tmp68900)))
                                   (__tmp68898
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68899 __tmp68898))))
                        (declare (not safe))
                        (cons __tmp68903 __tmp68897))))
                 (declare (not safe))
                 (cons __tmp68896 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68904
                                                        __tmp68895))))
                                           (declare (not safe))
                                           (cons __tmp68908 __tmp68894)))
                                        (__tmp68876
                                         (let ((__tmp68877
                                                (let ((__tmp68892
                                                       (gx#datum->syntax
                                                        '#f
                                                        'set!))
                                                      (__tmp68878
                                                       (let ((__tmp68888
                                                              (let ((__tmp68891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-count))
                            (__tmp68889
                             (let ((__tmp68890 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp68890 '()))))
                        (declare (not safe))
                        (cons __tmp68891 __tmp68889)))
                     (__tmp68879
                      (let ((__tmp68880
                             (let ((__tmp68887 (gx#datum->syntax '#f 'fx+))
                                   (__tmp68881
                                    (let ((__tmp68883
                                           (let ((__tmp68886
                                                  (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count))
                                                 (__tmp68884
                                                  (let ((__tmp68885
                                                         (gx#datum->syntax
                                                          '#f
                                                          'tab)))
                                                    (declare (not safe))
                                                    (cons __tmp68885 '()))))
                                             (declare (not safe))
                                             (cons __tmp68886 __tmp68884)))
                                          (__tmp68882
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp68883 __tmp68882))))
                               (declare (not safe))
                               (cons __tmp68887 __tmp68881))))
                        (declare (not safe))
                        (cons __tmp68880 '()))))
                 (declare (not safe))
                 (cons __tmp68888 __tmp68879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68892
                                                        __tmp68878))))
                                           (declare (not safe))
                                           (cons __tmp68877 '()))))
                                    (declare (not safe))
                                    (cons __tmp68893 __tmp68876))))
                             (declare (not safe))
                             (cons '() __tmp68875))))
                      (declare (not safe))
                      (cons __tmp68909 __tmp68874)))
                   (__tmp68852
                    (let ((__tmp68853
                           (let ((__tmp68872 (gx#datum->syntax '#f 'lambda))
                                 (__tmp68854
                                  (let ((__tmp68855
                                         (let ((__tmp68856
                                                (let ((__tmp68871
                                                       (gx#datum->syntax
                                                        '#f
                                                        'set!))
                                                      (__tmp68857
                                                       (let ((__tmp68867
                                                              (let ((__tmp68870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-count))
                            (__tmp68868
                             (let ((__tmp68869 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp68869 '()))))
                        (declare (not safe))
                        (cons __tmp68870 __tmp68868)))
                     (__tmp68858
                      (let ((__tmp68859
                             (let ((__tmp68866 (gx#datum->syntax '#f 'fx+))
                                   (__tmp68860
                                    (let ((__tmp68862
                                           (let ((__tmp68865
                                                  (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count))
                                                 (__tmp68863
                                                  (let ((__tmp68864
                                                         (gx#datum->syntax
                                                          '#f
                                                          'tab)))
                                                    (declare (not safe))
                                                    (cons __tmp68864 '()))))
                                             (declare (not safe))
                                             (cons __tmp68865 __tmp68863)))
                                          (__tmp68861
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp68862 __tmp68861))))
                               (declare (not safe))
                               (cons __tmp68866 __tmp68860))))
                        (declare (not safe))
                        (cons __tmp68859 '()))))
                 (declare (not safe))
                 (cons __tmp68867 __tmp68858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68871
                                                        __tmp68857))))
                                           (declare (not safe))
                                           (cons __tmp68856 '()))))
                                    (declare (not safe))
                                    (cons '() __tmp68855))))
                             (declare (not safe))
                             (cons __tmp68872 __tmp68854))))
                      (declare (not safe))
                      (cons __tmp68853 '()))))
               (declare (not safe))
               (cons __tmp68873 __tmp68852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68910 __tmp68851))))
                                         (declare (not safe))
                                         (cons __tmp68911 __tmp68850))))
                                  (declare (not safe))
                                  (cons _L63367_ __tmp68849))))
                           (declare (not safe))
                           (cons _L63369_ __tmp68848))))
                    (declare (not safe))
                    (cons __tmp68912 __tmp68847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68913
                                                           __tmp68846))))
                                              (declare (not safe))
                                              (cons __tmp68914 __tmp68845))))
                                       (declare (not safe))
                                       (cons __tmp68844 '()))))
                                (declare (not safe))
                                (cons __tmp68915 __tmp68843))))
                         (declare (not safe))
                         (cons __tmp68931 __tmp68842))))
                  (declare (not safe))
                  (cons __tmp68841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68932
                                                         __tmp68840))))
                                            (declare (not safe))
                                            (cons __tmp68939 __tmp68839)))
                                         (__tmp68777
                                          (let ((__tmp68778
                                                 (let ((__tmp68837
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp68779
                                                        (let ((__tmp68832
                                                               (let ((__tmp68833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68836 (gx#datum->syntax '#f 'tab))
                                    (__tmp68834
                                     (let ((__tmp68835
                                            (gx#datum->syntax '#f 'key)))
                                       (declare (not safe))
                                       (cons __tmp68835 '()))))
                                (declare (not safe))
                                (cons __tmp68836 __tmp68834))))
                         (declare (not safe))
                         (cons _L63370_ __tmp68833)))
                      (__tmp68780
                       (let ((__tmp68781
                              (let ((__tmp68831 (gx#datum->syntax '#f 'let))
                                    (__tmp68782
                                     (let ((__tmp68815
                                            (let ((__tmp68824
                                                   (let ((__tmp68830
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp68825
                                                          (let ((__tmp68826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68829
                                (gx#datum->syntax '#f '&raw-table-table))
                               (__tmp68827
                                (let ((__tmp68828 (gx#datum->syntax '#f 'tab)))
                                  (declare (not safe))
                                  (cons __tmp68828 '()))))
                           (declare (not safe))
                           (cons __tmp68829 __tmp68827))))
                    (declare (not safe))
                    (cons __tmp68826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68830
                                                           __tmp68825)))
                                                  (__tmp68816
                                                   (let ((__tmp68817
                                                          (let ((__tmp68823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'seed))
                        (__tmp68818
                         (let ((__tmp68819
                                (let ((__tmp68822
                                       (gx#datum->syntax '#f '&raw-table-seed))
                                      (__tmp68820
                                       (let ((__tmp68821
                                              (gx#datum->syntax '#f 'tab)))
                                         (declare (not safe))
                                         (cons __tmp68821 '()))))
                                  (declare (not safe))
                                  (cons __tmp68822 __tmp68820))))
                           (declare (not safe))
                           (cons __tmp68819 '()))))
                    (declare (not safe))
                    (cons __tmp68823 __tmp68818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68817 '()))))
                                              (declare (not safe))
                                              (cons __tmp68824 __tmp68816)))
                                           (__tmp68783
                                            (let ((__tmp68784
                                                   (let ((__tmp68814
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__table-del!))
                                                         (__tmp68785
                                                          (let ((__tmp68813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'table))
                        (__tmp68786
                         (let ((__tmp68812 (gx#datum->syntax '#f 'seed))
                               (__tmp68787
                                (let ((__tmp68788
                                       (let ((__tmp68789
                                              (let ((__tmp68811
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp68790
                                                     (let ((__tmp68791
                                                            (let ((__tmp68810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp68792
                           (let ((__tmp68793
                                  (let ((__tmp68794
                                         (let ((__tmp68809
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68795
                                                (let ((__tmp68805
                                                       (let ((__tmp68808
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp68806
                                                              (let ((__tmp68807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68807 '()))))
                 (declare (not safe))
                 (cons __tmp68808 __tmp68806)))
              (__tmp68796
               (let ((__tmp68797
                      (let ((__tmp68804 (gx#datum->syntax '#f 'fx-))
                            (__tmp68798
                             (let ((__tmp68800
                                    (let ((__tmp68803
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp68801
                                           (let ((__tmp68802
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68802 '()))))
                                      (declare (not safe))
                                      (cons __tmp68803 __tmp68801)))
                                   (__tmp68799
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68800 __tmp68799))))
                        (declare (not safe))
                        (cons __tmp68804 __tmp68798))))
                 (declare (not safe))
                 (cons __tmp68797 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68805
                                                        __tmp68796))))
                                           (declare (not safe))
                                           (cons __tmp68809 __tmp68795))))
                                    (declare (not safe))
                                    (cons __tmp68794 '()))))
                             (declare (not safe))
                             (cons '() __tmp68793))))
                      (declare (not safe))
                      (cons __tmp68810 __tmp68792))))
               (declare (not safe))
               (cons __tmp68791 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68811 __tmp68790))))
                                         (declare (not safe))
                                         (cons _L63367_ __tmp68789))))
                                  (declare (not safe))
                                  (cons _L63369_ __tmp68788))))
                           (declare (not safe))
                           (cons __tmp68812 __tmp68787))))
                    (declare (not safe))
                    (cons __tmp68813 __tmp68786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68814
                                                           __tmp68785))))
                                              (declare (not safe))
                                              (cons __tmp68784 '()))))
                                       (declare (not safe))
                                       (cons __tmp68815 __tmp68783))))
                                (declare (not safe))
                                (cons __tmp68831 __tmp68782))))
                         (declare (not safe))
                         (cons __tmp68781 '()))))
                  (declare (not safe))
                  (cons __tmp68832 __tmp68780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68837
                                                         __tmp68779))))
                                            (declare (not safe))
                                            (cons __tmp68778 '()))))
                                     (declare (not safe))
                                     (cons __tmp68838 __tmp68777))))
                              (declare (not safe))
                              (cons __tmp68940 __tmp68776))))
                       (declare (not safe))
                       (cons __tmp68986 __tmp68775))))
                (declare (not safe))
                (cons __tmp69029 __tmp68774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69055 __tmp68773)))
                                             _hd6327363361_
                                             _hd6327063351_
                                             _hd6326763341_
                                             _hd6326463331_
                                             _hd6326163321_
                                             _hd6325863311_
                                             _hd6325563301_)
                                            (_g6324263280_ _g6324363284_))))
                                    (_g6324263280_ _g6324363284_))))
                            (_g6324263280_ _g6324363284_))))
                    (_g6324263280_ _g6324363284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6324263280_
                                                     _g6324363284_))))
                                            (_g6324263280_ _g6324363284_))))
                                    (_g6324263280_ _g6324363284_))))
                            (_g6324263280_ _g6324363284_))))
                    (_g6324263280_ _g6324363284_)))))
        (_g6324163406_ _$stx63238_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx63410_)
      (let* ((_g6341463436_
              (lambda (_g6341563432_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6341563432_)))
             (_g6341363505_
              (lambda (_g6341563440_)
                (if (gx#stx-pair? _g6341563440_)
                    (let ((_e6342163443_ (gx#syntax-e _g6341563440_)))
                      (let ((_hd6342063447_
                             (let ()
                               (declare (not safe))
                               (##car _e6342163443_)))
                            (_tl6341963450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6342163443_))))
                        (if (gx#stx-pair? _tl6341963450_)
                            (let ((_e6342463453_ (gx#syntax-e _tl6341963450_)))
                              (let ((_hd6342363457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6342463453_)))
                                    (_tl6342263460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6342463453_))))
                                (if (gx#stx-pair? _tl6342263460_)
                                    (let ((_e6342763463_
                                           (gx#syntax-e _tl6342263460_)))
                                      (let ((_hd6342663467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6342763463_)))
                                            (_tl6342563470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6342763463_))))
                                        (if (gx#stx-pair? _tl6342563470_)
                                            (let ((_e6343063473_
                                                   (gx#syntax-e
                                                    _tl6342563470_)))
                                              (let ((_hd6342963477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6343063473_)))
                                                    (_tl6342863480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6343063473_))))
                                                (if (gx#stx-null?
                                                     _tl6342863480_)
                                                    ((lambda (_L63483_
                                                              _L63485_
                                                              _L63486_)
                                                       (let ((__tmp69075
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp69056
                                                              (let ((__tmp69063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69074
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp69064
                                    (let ((__tmp69065
                                           (let ((__tmp69073
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69066
                                                  (let ((__tmp69067
                                                         (let ((__tmp69068
                                                                (let ((__tmp69069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69072 (gx#datum->syntax '#f 'fx*))
                                     (__tmp69070
                                      (let ((__tmp69071
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63485_ '()))))
                                        (declare (not safe))
                                        (cons _L63485_ __tmp69071))))
                                 (declare (not safe))
                                 (cons __tmp69072 __tmp69070))))
                          (declare (not safe))
                          (cons __tmp69069 '()))))
                   (declare (not safe))
                   (cons _L63485_ __tmp69068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63486_
                                                          __tmp69067))))
                                             (declare (not safe))
                                             (cons __tmp69073 __tmp69066))))
                                      (declare (not safe))
                                      (cons __tmp69065 '()))))
                               (declare (not safe))
                               (cons __tmp69074 __tmp69064)))
                            (__tmp69057
                             (let ((__tmp69058
                                    (let ((__tmp69062
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp69059
                                           (let ((__tmp69061
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp69060
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63483_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69061 __tmp69060))))
                                      (declare (not safe))
                                      (cons __tmp69062 __tmp69059))))
                               (declare (not safe))
                               (cons __tmp69058 '()))))
                        (declare (not safe))
                        (cons __tmp69063 __tmp69057))))
                 (declare (not safe))
                 (cons __tmp69075 __tmp69056)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6342963477_
                                                     _hd6342663467_
                                                     _hd6342363457_)
                                                    (_g6341463436_
                                                     _g6341563440_))))
                                            (_g6341463436_ _g6341563440_))))
                                    (_g6341463436_ _g6341563440_))))
                            (_g6341463436_ _g6341563440_))))
                    (_g6341463436_ _g6341563440_)))))
        (_g6341363505_ _$stx63410_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx63509_)
      (let* ((_g6351363547_
              (lambda (_g6351463543_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6351463543_)))
             (_g6351263658_
              (lambda (_g6351463551_)
                (if (gx#stx-pair? _g6351463551_)
                    (let ((_e6352363554_ (gx#syntax-e _g6351463551_)))
                      (let ((_hd6352263558_
                             (let ()
                               (declare (not safe))
                               (##car _e6352363554_)))
                            (_tl6352163561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6352363554_))))
                        (if (gx#stx-pair? _tl6352163561_)
                            (let ((_e6352663564_ (gx#syntax-e _tl6352163561_)))
                              (let ((_hd6352563568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6352663564_)))
                                    (_tl6352463571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6352663564_))))
                                (if (gx#stx-pair? _tl6352463571_)
                                    (let ((_e6352963574_
                                           (gx#syntax-e _tl6352463571_)))
                                      (let ((_hd6352863578_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6352963574_)))
                                            (_tl6352763581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6352963574_))))
                                        (if (gx#stx-pair? _tl6352763581_)
                                            (let ((_e6353263584_
                                                   (gx#syntax-e
                                                    _tl6352763581_)))
                                              (let ((_hd6353163588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6353263584_)))
                                                    (_tl6353063591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6353263584_))))
                                                (if (gx#stx-pair?
                                                     _tl6353063591_)
                                                    (let ((_e6353563594_
                                                           (gx#syntax-e
                                                            _tl6353063591_)))
                                                      (let ((_hd6353463598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6353563594_)))
                    (_tl6353363601_
                     (let () (declare (not safe)) (##cdr _e6353563594_))))
                (if (gx#stx-pair? _tl6353363601_)
                    (let ((_e6353863604_ (gx#syntax-e _tl6353363601_)))
                      (let ((_hd6353763608_
                             (let ()
                               (declare (not safe))
                               (##car _e6353863604_)))
                            (_tl6353663611_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6353863604_))))
                        (if (gx#stx-pair? _tl6353663611_)
                            (let ((_e6354163614_ (gx#syntax-e _tl6353663611_)))
                              (let ((_hd6354063618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6354163614_)))
                                    (_tl6353963621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6354163614_))))
                                (if (gx#stx-null? _tl6353963621_)
                                    ((lambda (_L63624_
                                              _L63626_
                                              _L63627_
                                              _L63628_
                                              _L63629_
                                              _L63630_)
                                       (let ((__tmp69234
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69076
                                              (let ((__tmp69194
                                                     (let ((__tmp69225
                                                            (let ((__tmp69233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69226
                           (let ((__tmp69227
                                  (let ((__tmp69232
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69228
                                         (let ((__tmp69230
                                                (let ((__tmp69231
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63626_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63628_ __tmp69231)))
                                               (__tmp69229
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63629_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69230 __tmp69229))))
                                    (declare (not safe))
                                    (cons __tmp69232 __tmp69228))))
                             (declare (not safe))
                             (cons __tmp69227 '()))))
                      (declare (not safe))
                      (cons __tmp69233 __tmp69226)))
                   (__tmp69195
                    (let ((__tmp69219
                           (let ((__tmp69224 (gx#datum->syntax '#f 'size))
                                 (__tmp69220
                                  (let ((__tmp69221
                                         (let ((__tmp69223
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69222
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63630_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69223 __tmp69222))))
                                    (declare (not safe))
                                    (cons __tmp69221 '()))))
                             (declare (not safe))
                             (cons __tmp69224 __tmp69220)))
                          (__tmp69196
                           (let ((__tmp69211
                                  (let ((__tmp69218
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69212
                                         (let ((__tmp69213
                                                (let ((__tmp69217
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69214
                                                       (let ((__tmp69216
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69215
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69216 __tmp69215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69217
                                                        __tmp69214))))
                                           (declare (not safe))
                                           (cons __tmp69213 '()))))
                                    (declare (not safe))
                                    (cons __tmp69218 __tmp69212)))
                                 (__tmp69197
                                  (let ((__tmp69198
                                         (let ((__tmp69210
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69199
                                                (let ((__tmp69200
                                                       (let ((__tmp69209
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69201
                                                              (let ((__tmp69203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69208
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69204
                                    (let ((__tmp69207
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69205
                                           (let ((__tmp69206
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69206 '()))))
                                      (declare (not safe))
                                      (cons __tmp69207 __tmp69205))))
                               (declare (not safe))
                               (cons __tmp69208 __tmp69204)))
                            (__tmp69202
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69203 __tmp69202))))
                 (declare (not safe))
                 (cons __tmp69209 __tmp69201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69200 '()))))
                                           (declare (not safe))
                                           (cons __tmp69210 __tmp69199))))
                                    (declare (not safe))
                                    (cons __tmp69198 '()))))
                             (declare (not safe))
                             (cons __tmp69211 __tmp69197))))
                      (declare (not safe))
                      (cons __tmp69219 __tmp69196))))
               (declare (not safe))
               (cons __tmp69225 __tmp69195)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69077
                                                     (let ((__tmp69078
                                                            (let ((__tmp69193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69079
                           (let ((__tmp69192 (gx#datum->syntax '#f 'loop))
                                 (__tmp69080
                                  (let ((__tmp69179
                                         (let ((__tmp69188
                                                (let ((__tmp69191
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69189
                                                       (let ((__tmp69190
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69190
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69191
                                                        __tmp69189)))
                                               (__tmp69180
                                                (let ((__tmp69185
                                                       (let ((__tmp69187
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69186
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69187 __tmp69186)))
              (__tmp69181
               (let ((__tmp69182
                      (let ((__tmp69184 (gx#datum->syntax '#f 'deleted))
                            (__tmp69183
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp69184 __tmp69183))))
                 (declare (not safe))
                 (cons __tmp69182 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69185
                                                        __tmp69181))))
                                           (declare (not safe))
                                           (cons __tmp69188 __tmp69180)))
                                        (__tmp69081
                                         (let ((__tmp69082
                                                (let ((__tmp69178
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69083
                                                       (let ((__tmp69170
                                                              (let ((__tmp69177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69171
                             (let ((__tmp69172
                                    (let ((__tmp69176
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69173
                                           (let ((__tmp69174
                                                  (let ((__tmp69175
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69175 '()))))
                                             (declare (not safe))
                                             (cons _L63630_ __tmp69174))))
                                      (declare (not safe))
                                      (cons __tmp69176 __tmp69173))))
                               (declare (not safe))
                               (cons __tmp69172 '()))))
                        (declare (not safe))
                        (cons __tmp69177 __tmp69171)))
                     (__tmp69084
                      (let ((__tmp69085
                             (let ((__tmp69169 (gx#datum->syntax '#f 'cond))
                                   (__tmp69086
                                    (let ((__tmp69160
                                           (let ((__tmp69162
                                                  (let ((__tmp69168
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69163
                                                         (let ((__tmp69167
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69164
                        (let ((__tmp69165
                               (let ((__tmp69166
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69166 '()))))
                          (declare (not safe))
                          (cons __tmp69165 '()))))
                   (declare (not safe))
                   (cons __tmp69167 __tmp69164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69168
                                                          __tmp69163)))
                                                 (__tmp69161
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63624_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69162 __tmp69161)))
                                          (__tmp69087
                                           (let ((__tmp69127
                                                  (let ((__tmp69153
                                                         (let ((__tmp69159
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69154
                        (let ((__tmp69158 (gx#datum->syntax '#f 'k))
                              (__tmp69155
                               (let ((__tmp69156
                                      (let ((__tmp69157
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69157 '()))))
                                 (declare (not safe))
                                 (cons __tmp69156 '()))))
                          (declare (not safe))
                          (cons __tmp69158 __tmp69155))))
                   (declare (not safe))
                   (cons __tmp69159 __tmp69154)))
                (__tmp69128
                 (let ((__tmp69129
                        (let ((__tmp69152 (gx#datum->syntax '#f 'loop))
                              (__tmp69130
                               (let ((__tmp69144
                                      (let ((__tmp69151
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69145
                                             (let ((__tmp69150
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69146
                                                    (let ((__tmp69149
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69147
                                                           (let ((__tmp69148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69148 '()))))
              (declare (not safe))
              (cons __tmp69149 __tmp69147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69150 __tmp69146))))
                                        (declare (not safe))
                                        (cons __tmp69151 __tmp69145)))
                                     (__tmp69131
                                      (let ((__tmp69139
                                             (let ((__tmp69143
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69140
                                                    (let ((__tmp69142
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69141
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69142
                                                            __tmp69141))))
                                               (declare (not safe))
                                               (cons __tmp69143 __tmp69140)))
                                            (__tmp69132
                                             (let ((__tmp69133
                                                    (let ((__tmp69138
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp69134
                                                           (let ((__tmp69137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp69135
                          (let ((__tmp69136 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69136 '()))))
                     (declare (not safe))
                     (cons __tmp69137 __tmp69135))))
              (declare (not safe))
              (cons __tmp69138 __tmp69134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69133 '()))))
                                        (declare (not safe))
                                        (cons __tmp69139 __tmp69132))))
                                 (declare (not safe))
                                 (cons __tmp69144 __tmp69131))))
                          (declare (not safe))
                          (cons __tmp69152 __tmp69130))))
                   (declare (not safe))
                   (cons __tmp69129 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69153
                                                          __tmp69128)))
                                                 (__tmp69088
                                                  (let ((__tmp69112
                                                         (let ((__tmp69123
                                                                (let ((__tmp69124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69125
                                      (let ((__tmp69126
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69126 '()))))
                                 (declare (not safe))
                                 (cons _L63626_ __tmp69125))))
                          (declare (not safe))
                          (cons _L63627_ __tmp69124)))
                       (__tmp69113
                        (let ((__tmp69114
                               (let ((__tmp69122
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp69115
                                      (let ((__tmp69116
                                             (let ((__tmp69117
                                                    (let ((__tmp69121
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp69118
                                                           (let ((__tmp69120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp69119
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69120 __tmp69119))))
              (declare (not safe))
              (cons __tmp69121 __tmp69118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69117 '()))))
                                        (declare (not safe))
                                        (cons _L63630_ __tmp69116))))
                                 (declare (not safe))
                                 (cons __tmp69122 __tmp69115))))
                          (declare (not safe))
                          (cons __tmp69114 '()))))
                   (declare (not safe))
                   (cons __tmp69123 __tmp69113)))
                (__tmp69089
                 (let ((__tmp69090
                        (let ((__tmp69111 (gx#datum->syntax '#f 'else))
                              (__tmp69091
                               (let ((__tmp69092
                                      (let ((__tmp69110
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69093
                                             (let ((__tmp69102
                                                    (let ((__tmp69109
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69103
                                                           (let ((__tmp69108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69104
                          (let ((__tmp69107 (gx#datum->syntax '#f 'i))
                                (__tmp69105
                                 (let ((__tmp69106
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69106 '()))))
                            (declare (not safe))
                            (cons __tmp69107 __tmp69105))))
                     (declare (not safe))
                     (cons __tmp69108 __tmp69104))))
              (declare (not safe))
              (cons __tmp69109 __tmp69103)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69094
                                                    (let ((__tmp69097
                                                           (let ((__tmp69101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69098
                          (let ((__tmp69100 (gx#datum->syntax '#f 'i))
                                (__tmp69099
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69100 __tmp69099))))
                     (declare (not safe))
                     (cons __tmp69101 __tmp69098)))
                  (__tmp69095
                   (let ((__tmp69096 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp69096 '()))))
              (declare (not safe))
              (cons __tmp69097 __tmp69095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69102 __tmp69094))))
                                        (declare (not safe))
                                        (cons __tmp69110 __tmp69093))))
                                 (declare (not safe))
                                 (cons __tmp69092 '()))))
                          (declare (not safe))
                          (cons __tmp69111 __tmp69091))))
                   (declare (not safe))
                   (cons __tmp69090 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69112
                                                          __tmp69089))))
                                             (declare (not safe))
                                             (cons __tmp69127 __tmp69088))))
                                      (declare (not safe))
                                      (cons __tmp69160 __tmp69087))))
                               (declare (not safe))
                               (cons __tmp69169 __tmp69086))))
                        (declare (not safe))
                        (cons __tmp69085 '()))))
                 (declare (not safe))
                 (cons __tmp69170 __tmp69084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69178
                                                        __tmp69083))))
                                           (declare (not safe))
                                           (cons __tmp69082 '()))))
                                    (declare (not safe))
                                    (cons __tmp69179 __tmp69081))))
                             (declare (not safe))
                             (cons __tmp69192 __tmp69080))))
                      (declare (not safe))
                      (cons __tmp69193 __tmp69079))))
               (declare (not safe))
               (cons __tmp69078 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69194 __tmp69077))))
                                         (declare (not safe))
                                         (cons __tmp69234 __tmp69076)))
                                     _hd6354063618_
                                     _hd6353763608_
                                     _hd6353463598_
                                     _hd6353163588_
                                     _hd6352863578_
                                     _hd6352563568_)
                                    (_g6351363547_ _g6351463551_))))
                            (_g6351363547_ _g6351463551_))))
                    (_g6351363547_ _g6351463551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6351363547_
                                                     _g6351463551_))))
                                            (_g6351363547_ _g6351463551_))))
                                    (_g6351363547_ _g6351463551_))))
                            (_g6351363547_ _g6351463551_))))
                    (_g6351363547_ _g6351463551_)))))
        (_g6351263658_ _$stx63509_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx63662_)
      (let* ((_g6366663708_
              (lambda (_g6366763704_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6366763704_)))
             (_g6366563847_
              (lambda (_g6366763712_)
                (if (gx#stx-pair? _g6366763712_)
                    (let ((_e6367863715_ (gx#syntax-e _g6366763712_)))
                      (let ((_hd6367763719_
                             (let ()
                               (declare (not safe))
                               (##car _e6367863715_)))
                            (_tl6367663722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6367863715_))))
                        (if (gx#stx-pair? _tl6367663722_)
                            (let ((_e6368163725_ (gx#syntax-e _tl6367663722_)))
                              (let ((_hd6368063729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6368163725_)))
                                    (_tl6367963732_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6368163725_))))
                                (if (gx#stx-pair? _tl6367963732_)
                                    (let ((_e6368463735_
                                           (gx#syntax-e _tl6367963732_)))
                                      (let ((_hd6368363739_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6368463735_)))
                                            (_tl6368263742_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6368463735_))))
                                        (if (gx#stx-pair? _tl6368263742_)
                                            (let ((_e6368763745_
                                                   (gx#syntax-e
                                                    _tl6368263742_)))
                                              (let ((_hd6368663749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6368763745_)))
                                                    (_tl6368563752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6368763745_))))
                                                (if (gx#stx-pair?
                                                     _tl6368563752_)
                                                    (let ((_e6369063755_
                                                           (gx#syntax-e
                                                            _tl6368563752_)))
                                                      (let ((_hd6368963759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6369063755_)))
                    (_tl6368863762_
                     (let () (declare (not safe)) (##cdr _e6369063755_))))
                (if (gx#stx-pair? _tl6368863762_)
                    (let ((_e6369363765_ (gx#syntax-e _tl6368863762_)))
                      (let ((_hd6369263769_
                             (let ()
                               (declare (not safe))
                               (##car _e6369363765_)))
                            (_tl6369163772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6369363765_))))
                        (if (gx#stx-pair? _tl6369163772_)
                            (let ((_e6369663775_ (gx#syntax-e _tl6369163772_)))
                              (let ((_hd6369563779_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6369663775_)))
                                    (_tl6369463782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6369663775_))))
                                (if (gx#stx-pair? _tl6369463782_)
                                    (let ((_e6369963785_
                                           (gx#syntax-e _tl6369463782_)))
                                      (let ((_hd6369863789_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6369963785_)))
                                            (_tl6369763792_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6369963785_))))
                                        (if (gx#stx-pair? _tl6369763792_)
                                            (let ((_e6370263795_
                                                   (gx#syntax-e
                                                    _tl6369763792_)))
                                              (let ((_hd6370163799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6370263795_)))
                                                    (_tl6370063802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6370263795_))))
                                                (if (gx#stx-null?
                                                     _tl6370063802_)
                                                    ((lambda (_L63805_
                                                              _L63807_
                                                              _L63808_
                                                              _L63809_
                                                              _L63810_
                                                              _L63811_
                                                              _L63812_
                                                              _L63813_)
                                                       (let ((__tmp69451
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp69235
                                                              (let ((__tmp69411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69442
                                    (let ((__tmp69450
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69443
                                           (let ((__tmp69444
                                                  (let ((__tmp69449
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp69445
                                                         (let ((__tmp69447
                                                                (let ((__tmp69448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L63809_ '()))))
                          (declare (not safe))
                          (cons _L63811_ __tmp69448)))
                       (__tmp69446
                        (let () (declare (not safe)) (cons _L63812_ '()))))
                   (declare (not safe))
                   (cons __tmp69447 __tmp69446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69449
                                                          __tmp69445))))
                                             (declare (not safe))
                                             (cons __tmp69444 '()))))
                                      (declare (not safe))
                                      (cons __tmp69450 __tmp69443)))
                                   (__tmp69412
                                    (let ((__tmp69436
                                           (let ((__tmp69441
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp69437
                                                  (let ((__tmp69438
                                                         (let ((__tmp69440
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp69439
                        (let () (declare (not safe)) (cons _L63813_ '()))))
                   (declare (not safe))
                   (cons __tmp69440 __tmp69439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69438 '()))))
                                             (declare (not safe))
                                             (cons __tmp69441 __tmp69437)))
                                          (__tmp69413
                                           (let ((__tmp69428
                                                  (let ((__tmp69435
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp69429
                                                         (let ((__tmp69430
                                                                (let ((__tmp69434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp69431
                               (let ((__tmp69433 (gx#datum->syntax '#f 'size))
                                     (__tmp69432
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp69433 __tmp69432))))
                          (declare (not safe))
                          (cons __tmp69434 __tmp69431))))
                   (declare (not safe))
                   (cons __tmp69430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69435
                                                          __tmp69429)))
                                                 (__tmp69414
                                                  (let ((__tmp69415
                                                         (let ((__tmp69427
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp69416
                        (let ((__tmp69417
                               (let ((__tmp69426
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp69418
                                      (let ((__tmp69420
                                             (let ((__tmp69425
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp69421
                                                    (let ((__tmp69424
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp69422
                                                           (let ((__tmp69423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp69423 '()))))
              (declare (not safe))
              (cons __tmp69424 __tmp69422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69425 __tmp69421)))
                                            (__tmp69419
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp69420 __tmp69419))))
                                 (declare (not safe))
                                 (cons __tmp69426 __tmp69418))))
                          (declare (not safe))
                          (cons __tmp69417 '()))))
                   (declare (not safe))
                   (cons __tmp69427 __tmp69416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69415 '()))))
                                             (declare (not safe))
                                             (cons __tmp69428 __tmp69414))))
                                      (declare (not safe))
                                      (cons __tmp69436 __tmp69413))))
                               (declare (not safe))
                               (cons __tmp69442 __tmp69412)))
                            (__tmp69236
                             (let ((__tmp69237
                                    (let ((__tmp69410
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp69238
                                           (let ((__tmp69409
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp69239
                                                  (let ((__tmp69396
                                                         (let ((__tmp69405
                                                                (let ((__tmp69408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp69406
                               (let ((__tmp69407
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp69407 '()))))
                          (declare (not safe))
                          (cons __tmp69408 __tmp69406)))
                       (__tmp69397
                        (let ((__tmp69402
                               (let ((__tmp69404 (gx#datum->syntax '#f 'i))
                                     (__tmp69403
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp69404 __tmp69403)))
                              (__tmp69398
                               (let ((__tmp69399
                                      (let ((__tmp69401
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp69400
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp69401 __tmp69400))))
                                 (declare (not safe))
                                 (cons __tmp69399 '()))))
                          (declare (not safe))
                          (cons __tmp69402 __tmp69398))))
                   (declare (not safe))
                   (cons __tmp69405 __tmp69397)))
                (__tmp69240
                 (let ((__tmp69241
                        (let ((__tmp69395 (gx#datum->syntax '#f 'let))
                              (__tmp69242
                               (let ((__tmp69387
                                      (let ((__tmp69394
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp69388
                                             (let ((__tmp69389
                                                    (let ((__tmp69393
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp69390
                                                           (let ((__tmp69391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69392 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69392 '()))))
                     (declare (not safe))
                     (cons _L63813_ __tmp69391))))
              (declare (not safe))
              (cons __tmp69393 __tmp69390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69389 '()))))
                                        (declare (not safe))
                                        (cons __tmp69394 __tmp69388)))
                                     (__tmp69243
                                      (let ((__tmp69244
                                             (let ((__tmp69386
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp69245
                                                    (let ((__tmp69327
                                                           (let ((__tmp69379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69385 (gx#datum->syntax '#f 'eq?))
                                (__tmp69380
                                 (let ((__tmp69384 (gx#datum->syntax '#f 'k))
                                       (__tmp69381
                                        (let ((__tmp69382
                                               (let ((__tmp69383
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp69383 '()))))
                                          (declare (not safe))
                                          (cons __tmp69382 '()))))
                                   (declare (not safe))
                                   (cons __tmp69384 __tmp69381))))
                            (declare (not safe))
                            (cons __tmp69385 __tmp69380)))
                         (__tmp69328
                          (let ((__tmp69329
                                 (let ((__tmp69378 (gx#datum->syntax '#f 'if))
                                       (__tmp69330
                                        (let ((__tmp69377
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp69331
                                               (let ((__tmp69355
                                                      (let ((__tmp69376
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp69356
                                                             (let ((__tmp69370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69375
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp69371
                                   (let ((__tmp69372
                                          (let ((__tmp69374
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp69373
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63809_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69374 __tmp69373))))
                                     (declare (not safe))
                                     (cons _L63813_ __tmp69372))))
                              (declare (not safe))
                              (cons __tmp69375 __tmp69371)))
                           (__tmp69357
                            (let ((__tmp69360
                                   (let ((__tmp69369
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69361
                                          (let ((__tmp69362
                                                 (let ((__tmp69364
                                                        (let ((__tmp69368
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp69365
                                                               (let ((__tmp69367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp69366
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp69367 __tmp69366))))
                  (declare (not safe))
                  (cons __tmp69368 __tmp69365)))
               (__tmp69363 (let () (declare (not safe)) (cons _L63808_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69364
                                                         __tmp69363))))
                                            (declare (not safe))
                                            (cons _L63813_ __tmp69362))))
                                     (declare (not safe))
                                     (cons __tmp69369 __tmp69361)))
                                  (__tmp69358
                                   (let ((__tmp69359
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63805_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69359 '()))))
                              (declare (not safe))
                              (cons __tmp69360 __tmp69358))))
                       (declare (not safe))
                       (cons __tmp69370 __tmp69357))))
                (declare (not safe))
                (cons __tmp69376 __tmp69356)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69332
                                                      (let ((__tmp69333
                                                             (let ((__tmp69354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp69334
                            (let ((__tmp69348
                                   (let ((__tmp69353
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69349
                                          (let ((__tmp69350
                                                 (let ((__tmp69352
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp69351
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63809_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69352
                                                         __tmp69351))))
                                            (declare (not safe))
                                            (cons _L63813_ __tmp69350))))
                                     (declare (not safe))
                                     (cons __tmp69353 __tmp69349)))
                                  (__tmp69335
                                   (let ((__tmp69338
                                          (let ((__tmp69347
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp69339
                                                 (let ((__tmp69340
                                                        (let ((__tmp69342
                                                               (let ((__tmp69346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp69343
                              (let ((__tmp69345 (gx#datum->syntax '#f 'probe))
                                    (__tmp69344
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp69345 __tmp69344))))
                         (declare (not safe))
                         (cons __tmp69346 __tmp69343)))
                      (__tmp69341
                       (let () (declare (not safe)) (cons _L63808_ '()))))
                  (declare (not safe))
                  (cons __tmp69342 __tmp69341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63813_
                                                         __tmp69340))))
                                            (declare (not safe))
                                            (cons __tmp69347 __tmp69339)))
                                         (__tmp69336
                                          (let ((__tmp69337
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63807_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69337 '()))))
                                     (declare (not safe))
                                     (cons __tmp69338 __tmp69336))))
                              (declare (not safe))
                              (cons __tmp69348 __tmp69335))))
                       (declare (not safe))
                       (cons __tmp69354 __tmp69334))))
                (declare (not safe))
                (cons __tmp69333 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69355
                                                       __tmp69332))))
                                          (declare (not safe))
                                          (cons __tmp69377 __tmp69331))))
                                   (declare (not safe))
                                   (cons __tmp69378 __tmp69330))))
                            (declare (not safe))
                            (cons __tmp69329 '()))))
                     (declare (not safe))
                     (cons __tmp69379 __tmp69328)))
                  (__tmp69246
                   (let ((__tmp69294
                          (let ((__tmp69320
                                 (let ((__tmp69326 (gx#datum->syntax '#f 'eq?))
                                       (__tmp69321
                                        (let ((__tmp69325
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp69322
                                               (let ((__tmp69323
                                                      (let ((__tmp69324
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp69324
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69323 '()))))
                                          (declare (not safe))
                                          (cons __tmp69325 __tmp69322))))
                                   (declare (not safe))
                                   (cons __tmp69326 __tmp69321)))
                                (__tmp69295
                                 (let ((__tmp69296
                                        (let ((__tmp69319
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp69297
                                               (let ((__tmp69311
                                                      (let ((__tmp69318
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp69312
                                                             (let ((__tmp69317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp69313
                            (let ((__tmp69316 (gx#datum->syntax '#f 'i))
                                  (__tmp69314
                                   (let ((__tmp69315
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp69315 '()))))
                              (declare (not safe))
                              (cons __tmp69316 __tmp69314))))
                       (declare (not safe))
                       (cons __tmp69317 __tmp69313))))
                (declare (not safe))
                (cons __tmp69318 __tmp69312)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69298
                                                      (let ((__tmp69306
                                                             (let ((__tmp69310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp69307
                            (let ((__tmp69309 (gx#datum->syntax '#f 'i))
                                  (__tmp69308
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp69309 __tmp69308))))
                       (declare (not safe))
                       (cons __tmp69310 __tmp69307)))
                    (__tmp69299
                     (let ((__tmp69300
                            (let ((__tmp69305 (gx#datum->syntax '#f 'or))
                                  (__tmp69301
                                   (let ((__tmp69304
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp69302
                                          (let ((__tmp69303
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69303 '()))))
                                     (declare (not safe))
                                     (cons __tmp69304 __tmp69302))))
                              (declare (not safe))
                              (cons __tmp69305 __tmp69301))))
                       (declare (not safe))
                       (cons __tmp69300 '()))))
                (declare (not safe))
                (cons __tmp69306 __tmp69299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69311
                                                       __tmp69298))))
                                          (declare (not safe))
                                          (cons __tmp69319 __tmp69297))))
                                   (declare (not safe))
                                   (cons __tmp69296 '()))))
                            (declare (not safe))
                            (cons __tmp69320 __tmp69295)))
                         (__tmp69247
                          (let ((__tmp69271
                                 (let ((__tmp69290
                                        (let ((__tmp69291
                                               (let ((__tmp69292
                                                      (let ((__tmp69293
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp69293
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L63809_ __tmp69292))))
                                          (declare (not safe))
                                          (cons _L63810_ __tmp69291)))
                                       (__tmp69272
                                        (let ((__tmp69284
                                               (let ((__tmp69289
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp69285
                                                      (let ((__tmp69286
                                                             (let ((__tmp69288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp69287
                            (let () (declare (not safe)) (cons _L63809_ '()))))
                       (declare (not safe))
                       (cons __tmp69288 __tmp69287))))
                (declare (not safe))
                (cons _L63813_ __tmp69286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69289 __tmp69285)))
                                              (__tmp69273
                                               (let ((__tmp69274
                                                      (let ((__tmp69283
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp69275
                                                             (let ((__tmp69276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69278
                                   (let ((__tmp69282
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69279
                                          (let ((__tmp69281
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp69280
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69281 __tmp69280))))
                                     (declare (not safe))
                                     (cons __tmp69282 __tmp69279)))
                                  (__tmp69277
                                   (let ()
                                     (declare (not safe))
                                     (cons _L63808_ '()))))
                              (declare (not safe))
                              (cons __tmp69278 __tmp69277))))
                       (declare (not safe))
                       (cons _L63813_ __tmp69276))))
                (declare (not safe))
                (cons __tmp69283 __tmp69275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69274 '()))))
                                          (declare (not safe))
                                          (cons __tmp69284 __tmp69273))))
                                   (declare (not safe))
                                   (cons __tmp69290 __tmp69272)))
                                (__tmp69248
                                 (let ((__tmp69249
                                        (let ((__tmp69270
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp69250
                                               (let ((__tmp69251
                                                      (let ((__tmp69269
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp69252
                                                             (let ((__tmp69261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69268
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp69262
                                   (let ((__tmp69267
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp69263
                                          (let ((__tmp69266
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69264
                                                 (let ((__tmp69265
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp69265 '()))))
                                            (declare (not safe))
                                            (cons __tmp69266 __tmp69264))))
                                     (declare (not safe))
                                     (cons __tmp69267 __tmp69263))))
                              (declare (not safe))
                              (cons __tmp69268 __tmp69262)))
                           (__tmp69253
                            (let ((__tmp69256
                                   (let ((__tmp69260
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69257
                                          (let ((__tmp69259
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69258
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69259 __tmp69258))))
                                     (declare (not safe))
                                     (cons __tmp69260 __tmp69257)))
                                  (__tmp69254
                                   (let ((__tmp69255
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp69255 '()))))
                              (declare (not safe))
                              (cons __tmp69256 __tmp69254))))
                       (declare (not safe))
                       (cons __tmp69261 __tmp69253))))
                (declare (not safe))
                (cons __tmp69269 __tmp69252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69251 '()))))
                                          (declare (not safe))
                                          (cons __tmp69270 __tmp69250))))
                                   (declare (not safe))
                                   (cons __tmp69249 '()))))
                            (declare (not safe))
                            (cons __tmp69271 __tmp69248))))
                     (declare (not safe))
                     (cons __tmp69294 __tmp69247))))
              (declare (not safe))
              (cons __tmp69327 __tmp69246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69386 __tmp69245))))
                                        (declare (not safe))
                                        (cons __tmp69244 '()))))
                                 (declare (not safe))
                                 (cons __tmp69387 __tmp69243))))
                          (declare (not safe))
                          (cons __tmp69395 __tmp69242))))
                   (declare (not safe))
                   (cons __tmp69241 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69396
                                                          __tmp69240))))
                                             (declare (not safe))
                                             (cons __tmp69409 __tmp69239))))
                                      (declare (not safe))
                                      (cons __tmp69410 __tmp69238))))
                               (declare (not safe))
                               (cons __tmp69237 '()))))
                        (declare (not safe))
                        (cons __tmp69411 __tmp69236))))
                 (declare (not safe))
                 (cons __tmp69451 __tmp69235)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6370163799_
                                                     _hd6369863789_
                                                     _hd6369563779_
                                                     _hd6369263769_
                                                     _hd6368963759_
                                                     _hd6368663749_
                                                     _hd6368363739_
                                                     _hd6368063729_)
                                                    (_g6366663708_
                                                     _g6366763712_))))
                                            (_g6366663708_ _g6366763712_))))
                                    (_g6366663708_ _g6366763712_))))
                            (_g6366663708_ _g6366763712_))))
                    (_g6366663708_ _g6366763712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6366663708_
                                                     _g6366763712_))))
                                            (_g6366663708_ _g6366763712_))))
                                    (_g6366663708_ _g6366763712_))))
                            (_g6366663708_ _g6366763712_))))
                    (_g6366663708_ _g6366763712_)))))
        (_g6366563847_ _$stx63662_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx63851_)
      (let* ((_g6385563889_
              (lambda (_g6385663885_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6385663885_)))
             (_g6385464000_
              (lambda (_g6385663893_)
                (if (gx#stx-pair? _g6385663893_)
                    (let ((_e6386563896_ (gx#syntax-e _g6385663893_)))
                      (let ((_hd6386463900_
                             (let ()
                               (declare (not safe))
                               (##car _e6386563896_)))
                            (_tl6386363903_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6386563896_))))
                        (if (gx#stx-pair? _tl6386363903_)
                            (let ((_e6386863906_ (gx#syntax-e _tl6386363903_)))
                              (let ((_hd6386763910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6386863906_)))
                                    (_tl6386663913_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6386863906_))))
                                (if (gx#stx-pair? _tl6386663913_)
                                    (let ((_e6387163916_
                                           (gx#syntax-e _tl6386663913_)))
                                      (let ((_hd6387063920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6387163916_)))
                                            (_tl6386963923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6387163916_))))
                                        (if (gx#stx-pair? _tl6386963923_)
                                            (let ((_e6387463926_
                                                   (gx#syntax-e
                                                    _tl6386963923_)))
                                              (let ((_hd6387363930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6387463926_)))
                                                    (_tl6387263933_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6387463926_))))
                                                (if (gx#stx-pair?
                                                     _tl6387263933_)
                                                    (let ((_e6387763936_
                                                           (gx#syntax-e
                                                            _tl6387263933_)))
                                                      (let ((_hd6387663940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6387763936_)))
                    (_tl6387563943_
                     (let () (declare (not safe)) (##cdr _e6387763936_))))
                (if (gx#stx-pair? _tl6387563943_)
                    (let ((_e6388063946_ (gx#syntax-e _tl6387563943_)))
                      (let ((_hd6387963950_
                             (let ()
                               (declare (not safe))
                               (##car _e6388063946_)))
                            (_tl6387863953_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6388063946_))))
                        (if (gx#stx-pair? _tl6387863953_)
                            (let ((_e6388363956_ (gx#syntax-e _tl6387863953_)))
                              (let ((_hd6388263960_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6388363956_)))
                                    (_tl6388163963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6388363956_))))
                                (if (gx#stx-null? _tl6388163963_)
                                    ((lambda (_L63966_
                                              _L63968_
                                              _L63969_
                                              _L63970_
                                              _L63971_
                                              _L63972_)
                                       (let ((__tmp69613
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69452
                                              (let ((__tmp69573
                                                     (let ((__tmp69604
                                                            (let ((__tmp69612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69605
                           (let ((__tmp69606
                                  (let ((__tmp69611
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69607
                                         (let ((__tmp69609
                                                (let ((__tmp69610
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63968_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63970_ __tmp69610)))
                                               (__tmp69608
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63971_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69609 __tmp69608))))
                                    (declare (not safe))
                                    (cons __tmp69611 __tmp69607))))
                             (declare (not safe))
                             (cons __tmp69606 '()))))
                      (declare (not safe))
                      (cons __tmp69612 __tmp69605)))
                   (__tmp69574
                    (let ((__tmp69598
                           (let ((__tmp69603 (gx#datum->syntax '#f 'size))
                                 (__tmp69599
                                  (let ((__tmp69600
                                         (let ((__tmp69602
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69601
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63972_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69602 __tmp69601))))
                                    (declare (not safe))
                                    (cons __tmp69600 '()))))
                             (declare (not safe))
                             (cons __tmp69603 __tmp69599)))
                          (__tmp69575
                           (let ((__tmp69590
                                  (let ((__tmp69597
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69591
                                         (let ((__tmp69592
                                                (let ((__tmp69596
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69593
                                                       (let ((__tmp69595
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69594
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69595 __tmp69594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69596
                                                        __tmp69593))))
                                           (declare (not safe))
                                           (cons __tmp69592 '()))))
                                    (declare (not safe))
                                    (cons __tmp69597 __tmp69591)))
                                 (__tmp69576
                                  (let ((__tmp69577
                                         (let ((__tmp69589
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69578
                                                (let ((__tmp69579
                                                       (let ((__tmp69588
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69580
                                                              (let ((__tmp69582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69587
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69583
                                    (let ((__tmp69586
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69584
                                           (let ((__tmp69585
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69585 '()))))
                                      (declare (not safe))
                                      (cons __tmp69586 __tmp69584))))
                               (declare (not safe))
                               (cons __tmp69587 __tmp69583)))
                            (__tmp69581
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69582 __tmp69581))))
                 (declare (not safe))
                 (cons __tmp69588 __tmp69580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69579 '()))))
                                           (declare (not safe))
                                           (cons __tmp69589 __tmp69578))))
                                    (declare (not safe))
                                    (cons __tmp69577 '()))))
                             (declare (not safe))
                             (cons __tmp69590 __tmp69576))))
                      (declare (not safe))
                      (cons __tmp69598 __tmp69575))))
               (declare (not safe))
               (cons __tmp69604 __tmp69574)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69453
                                                     (let ((__tmp69454
                                                            (let ((__tmp69572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69455
                           (let ((__tmp69571 (gx#datum->syntax '#f 'loop))
                                 (__tmp69456
                                  (let ((__tmp69562
                                         (let ((__tmp69567
                                                (let ((__tmp69570
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69568
                                                       (let ((__tmp69569
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69569
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69570
                                                        __tmp69568)))
                                               (__tmp69563
                                                (let ((__tmp69564
                                                       (let ((__tmp69566
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69565
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69566 __tmp69565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69564 '()))))
                                           (declare (not safe))
                                           (cons __tmp69567 __tmp69563)))
                                        (__tmp69457
                                         (let ((__tmp69458
                                                (let ((__tmp69561
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69459
                                                       (let ((__tmp69553
                                                              (let ((__tmp69560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69554
                             (let ((__tmp69555
                                    (let ((__tmp69559
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69556
                                           (let ((__tmp69557
                                                  (let ((__tmp69558
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69558 '()))))
                                             (declare (not safe))
                                             (cons _L63972_ __tmp69557))))
                                      (declare (not safe))
                                      (cons __tmp69559 __tmp69556))))
                               (declare (not safe))
                               (cons __tmp69555 '()))))
                        (declare (not safe))
                        (cons __tmp69560 __tmp69554)))
                     (__tmp69460
                      (let ((__tmp69461
                             (let ((__tmp69552 (gx#datum->syntax '#f 'cond))
                                   (__tmp69462
                                    (let ((__tmp69541
                                           (let ((__tmp69545
                                                  (let ((__tmp69551
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69546
                                                         (let ((__tmp69550
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69547
                        (let ((__tmp69548
                               (let ((__tmp69549
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69549 '()))))
                          (declare (not safe))
                          (cons __tmp69548 '()))))
                   (declare (not safe))
                   (cons __tmp69550 __tmp69547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69551
                                                          __tmp69546)))
                                                 (__tmp69542
                                                  (let ((__tmp69543
                                                         (let ((__tmp69544
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp69544 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69543 '()))))
                                             (declare (not safe))
                                             (cons __tmp69545 __tmp69542)))
                                          (__tmp69463
                                           (let ((__tmp69515
                                                  (let ((__tmp69534
                                                         (let ((__tmp69540
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69535
                        (let ((__tmp69539 (gx#datum->syntax '#f 'k))
                              (__tmp69536
                               (let ((__tmp69537
                                      (let ((__tmp69538
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69538 '()))))
                                 (declare (not safe))
                                 (cons __tmp69537 '()))))
                          (declare (not safe))
                          (cons __tmp69539 __tmp69536))))
                   (declare (not safe))
                   (cons __tmp69540 __tmp69535)))
                (__tmp69516
                 (let ((__tmp69517
                        (let ((__tmp69533 (gx#datum->syntax '#f 'loop))
                              (__tmp69518
                               (let ((__tmp69525
                                      (let ((__tmp69532
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69526
                                             (let ((__tmp69531
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69527
                                                    (let ((__tmp69530
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69528
                                                           (let ((__tmp69529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69529 '()))))
              (declare (not safe))
              (cons __tmp69530 __tmp69528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69531 __tmp69527))))
                                        (declare (not safe))
                                        (cons __tmp69532 __tmp69526)))
                                     (__tmp69519
                                      (let ((__tmp69520
                                             (let ((__tmp69524
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69521
                                                    (let ((__tmp69523
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69522
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69523
                                                            __tmp69522))))
                                               (declare (not safe))
                                               (cons __tmp69524 __tmp69521))))
                                        (declare (not safe))
                                        (cons __tmp69520 '()))))
                                 (declare (not safe))
                                 (cons __tmp69525 __tmp69519))))
                          (declare (not safe))
                          (cons __tmp69533 __tmp69518))))
                   (declare (not safe))
                   (cons __tmp69517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69534
                                                          __tmp69516)))
                                                 (__tmp69464
                                                  (let ((__tmp69486
                                                         (let ((__tmp69511
                                                                (let ((__tmp69512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69513
                                      (let ((__tmp69514
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69514 '()))))
                                 (declare (not safe))
                                 (cons _L63968_ __tmp69513))))
                          (declare (not safe))
                          (cons _L63969_ __tmp69512)))
                       (__tmp69487
                        (let ((__tmp69503
                               (let ((__tmp69510
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp69504
                                      (let ((__tmp69505
                                             (let ((__tmp69509
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp69506
                                                    (let ((__tmp69507
                                                           (let ((__tmp69508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp69508 '()))))
              (declare (not safe))
              (cons __tmp69507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69509 __tmp69506))))
                                        (declare (not safe))
                                        (cons _L63972_ __tmp69505))))
                                 (declare (not safe))
                                 (cons __tmp69510 __tmp69504)))
                              (__tmp69488
                               (let ((__tmp69491
                                      (let ((__tmp69502
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp69492
                                             (let ((__tmp69493
                                                    (let ((__tmp69497
                                                           (let ((__tmp69501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69498
                          (let ((__tmp69500 (gx#datum->syntax '#f 'probe))
                                (__tmp69499
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69500 __tmp69499))))
                     (declare (not safe))
                     (cons __tmp69501 __tmp69498)))
                  (__tmp69494
                   (let ((__tmp69495
                          (let ((__tmp69496
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp69496 '()))))
                     (declare (not safe))
                     (cons __tmp69495 '()))))
              (declare (not safe))
              (cons __tmp69497 __tmp69494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L63972_ __tmp69493))))
                                        (declare (not safe))
                                        (cons __tmp69502 __tmp69492)))
                                     (__tmp69489
                                      (let ((__tmp69490
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63966_ '()))))
                                        (declare (not safe))
                                        (cons __tmp69490 '()))))
                                 (declare (not safe))
                                 (cons __tmp69491 __tmp69489))))
                          (declare (not safe))
                          (cons __tmp69503 __tmp69488))))
                   (declare (not safe))
                   (cons __tmp69511 __tmp69487)))
                (__tmp69465
                 (let ((__tmp69466
                        (let ((__tmp69485 (gx#datum->syntax '#f 'else))
                              (__tmp69467
                               (let ((__tmp69468
                                      (let ((__tmp69484
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69469
                                             (let ((__tmp69476
                                                    (let ((__tmp69483
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69477
                                                           (let ((__tmp69482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69478
                          (let ((__tmp69481 (gx#datum->syntax '#f 'i))
                                (__tmp69479
                                 (let ((__tmp69480
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69480 '()))))
                            (declare (not safe))
                            (cons __tmp69481 __tmp69479))))
                     (declare (not safe))
                     (cons __tmp69482 __tmp69478))))
              (declare (not safe))
              (cons __tmp69483 __tmp69477)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69470
                                                    (let ((__tmp69471
                                                           (let ((__tmp69475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69472
                          (let ((__tmp69474 (gx#datum->syntax '#f 'i))
                                (__tmp69473
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69474 __tmp69473))))
                     (declare (not safe))
                     (cons __tmp69475 __tmp69472))))
              (declare (not safe))
              (cons __tmp69471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69476 __tmp69470))))
                                        (declare (not safe))
                                        (cons __tmp69484 __tmp69469))))
                                 (declare (not safe))
                                 (cons __tmp69468 '()))))
                          (declare (not safe))
                          (cons __tmp69485 __tmp69467))))
                   (declare (not safe))
                   (cons __tmp69466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69486
                                                          __tmp69465))))
                                             (declare (not safe))
                                             (cons __tmp69515 __tmp69464))))
                                      (declare (not safe))
                                      (cons __tmp69541 __tmp69463))))
                               (declare (not safe))
                               (cons __tmp69552 __tmp69462))))
                        (declare (not safe))
                        (cons __tmp69461 '()))))
                 (declare (not safe))
                 (cons __tmp69553 __tmp69460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69561
                                                        __tmp69459))))
                                           (declare (not safe))
                                           (cons __tmp69458 '()))))
                                    (declare (not safe))
                                    (cons __tmp69562 __tmp69457))))
                             (declare (not safe))
                             (cons __tmp69571 __tmp69456))))
                      (declare (not safe))
                      (cons __tmp69572 __tmp69455))))
               (declare (not safe))
               (cons __tmp69454 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69573 __tmp69453))))
                                         (declare (not safe))
                                         (cons __tmp69613 __tmp69452)))
                                     _hd6388263960_
                                     _hd6387963950_
                                     _hd6387663940_
                                     _hd6387363930_
                                     _hd6387063920_
                                     _hd6386763910_)
                                    (_g6385563889_ _g6385663893_))))
                            (_g6385563889_ _g6385663893_))))
                    (_g6385563889_ _g6385663893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6385563889_
                                                     _g6385663893_))))
                                            (_g6385563889_ _g6385663893_))))
                                    (_g6385563889_ _g6385663893_))))
                            (_g6385563889_ _g6385663893_))))
                    (_g6385563889_ _g6385663893_)))))
        (_g6385464000_ _$stx63851_)))))
