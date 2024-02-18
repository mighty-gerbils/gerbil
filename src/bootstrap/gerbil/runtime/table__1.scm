(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx63238_)
      (let* ((_g6324263256_
              (lambda (_g6324363252_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6324363252_)))
             (_g6324163298_
              (lambda (_g6324363260_)
                (if (gx#stx-pair? _g6324363260_)
                    (let ((_e6324763263_ (gx#syntax-e _g6324363260_)))
                      (let ((_hd6324663267_
                             (let ()
                               (declare (not safe))
                               (##car _e6324763263_)))
                            (_tl6324563270_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6324763263_))))
                        (if (gx#stx-pair? _tl6324563270_)
                            (let ((_e6325063273_ (gx#syntax-e _tl6324563270_)))
                              (let ((_hd6324963277_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325063273_)))
                                    (_tl6324863280_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325063273_))))
                                (if (gx#stx-null? _tl6324863280_)
                                    ((lambda (_L63283_)
                                       (let ((__tmp68838
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp68836
                                              (let ((__tmp68837
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63283_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp68837))))
                                         (declare (not safe))
                                         (cons __tmp68838 __tmp68836)))
                                     _hd6324963277_)
                                    (_g6324263256_ _g6324363260_))))
                            (_g6324263256_ _g6324363260_))))
                    (_g6324263256_ _g6324363260_)))))
        (_g6324163298_ _$stx63238_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx63302_)
      (let* ((_g6330663344_
              (lambda (_g6330763340_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6330763340_)))
             (_g6330563469_
              (lambda (_g6330763348_)
                (if (gx#stx-pair? _g6330763348_)
                    (let ((_e6331763351_ (gx#syntax-e _g6330763348_)))
                      (let ((_hd6331663355_
                             (let ()
                               (declare (not safe))
                               (##car _e6331763351_)))
                            (_tl6331563358_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6331763351_))))
                        (if (gx#stx-pair? _tl6331563358_)
                            (let ((_e6332063361_ (gx#syntax-e _tl6331563358_)))
                              (let ((_hd6331963365_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6332063361_)))
                                    (_tl6331863368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6332063361_))))
                                (if (gx#stx-pair? _tl6331863368_)
                                    (let ((_e6332363371_
                                           (gx#syntax-e _tl6331863368_)))
                                      (let ((_hd6332263375_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6332363371_)))
                                            (_tl6332163378_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6332363371_))))
                                        (if (gx#stx-pair? _tl6332163378_)
                                            (let ((_e6332663381_
                                                   (gx#syntax-e
                                                    _tl6332163378_)))
                                              (let ((_hd6332563385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6332663381_)))
                                                    (_tl6332463388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6332663381_))))
                                                (if (gx#stx-pair?
                                                     _tl6332463388_)
                                                    (let ((_e6332963391_
                                                           (gx#syntax-e
                                                            _tl6332463388_)))
                                                      (let ((_hd6332863395_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6332963391_)))
                    (_tl6332763398_
                     (let () (declare (not safe)) (##cdr _e6332963391_))))
                (if (gx#stx-pair? _tl6332763398_)
                    (let ((_e6333263401_ (gx#syntax-e _tl6332763398_)))
                      (let ((_hd6333163405_
                             (let ()
                               (declare (not safe))
                               (##car _e6333263401_)))
                            (_tl6333063408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6333263401_))))
                        (if (gx#stx-pair? _tl6333063408_)
                            (let ((_e6333563411_ (gx#syntax-e _tl6333063408_)))
                              (let ((_hd6333463415_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6333563411_)))
                                    (_tl6333363418_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6333563411_))))
                                (if (gx#stx-pair? _tl6333363418_)
                                    (let ((_e6333863421_
                                           (gx#syntax-e _tl6333363418_)))
                                      (let ((_hd6333763425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6333863421_)))
                                            (_tl6333663428_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6333863421_))))
                                        (if (gx#stx-null? _tl6333663428_)
                                            ((lambda (_L63431_
                                                      _L63433_
                                                      _L63434_
                                                      _L63435_
                                                      _L63436_
                                                      _L63437_
                                                      _L63438_)
                                               (let ((__tmp69121
                                                      (gx#datum->syntax
                                                       '#f
                                                       'begin))
                                                     (__tmp68839
                                                      (let ((__tmp69095
                                                             (let ((__tmp69120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'def))
                           (__tmp69096
                            (let ((__tmp69106
                                   (let ((__tmp69107
                                          (let ((__tmp69117
                                                 (let ((__tmp69119
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp69118
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69119
                                                         __tmp69118)))
                                                (__tmp69108
                                                 (let ((__tmp69109
                                                        (let ((__tmp69116
                                                               (gx#datum->syntax
                                                                '#f
                                                                'seed))
                                                              (__tmp69110
                                                               (let ((__tmp69111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69115
                                     (gx#datum->syntax '#f 'random-integer))
                                    (__tmp69112
                                     (let ((__tmp69113
                                            (let ((__tmp69114
                                                   (gx#datum->syntax
                                                    '#f
                                                    'macro-max-fixnum32)))
                                              (declare (not safe))
                                              (cons __tmp69114 '()))))
                                       (declare (not safe))
                                       (cons __tmp69113 '()))))
                                (declare (not safe))
                                (cons __tmp69115 __tmp69112))))
                         (declare (not safe))
                         (cons __tmp69111 '()))))
                  (declare (not safe))
                  (cons __tmp69116 __tmp69110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69109 '()))))
                                            (declare (not safe))
                                            (cons __tmp69117 __tmp69108))))
                                     (declare (not safe))
                                     (cons _L63438_ __tmp69107)))
                                  (__tmp69097
                                   (let ((__tmp69098
                                          (let ((__tmp69105
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-raw-table))
                                                (__tmp69099
                                                 (let ((__tmp69104
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp69100
                                                        (let ((__tmp69101
                                                               (let ((__tmp69102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69103 (gx#datum->syntax '#f 'seed)))
                                (declare (not safe))
                                (cons __tmp69103 '()))))
                         (declare (not safe))
                         (cons _L63431_ __tmp69102))))
                  (declare (not safe))
                  (cons _L63433_ __tmp69101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69104
                                                         __tmp69100))))
                                            (declare (not safe))
                                            (cons __tmp69105 __tmp69099))))
                                     (declare (not safe))
                                     (cons __tmp69098 '()))))
                              (declare (not safe))
                              (cons __tmp69106 __tmp69097))))
                       (declare (not safe))
                       (cons __tmp69120 __tmp69096)))
                    (__tmp68840
                     (let ((__tmp69052
                            (let ((__tmp69094 (gx#datum->syntax '#f 'def))
                                  (__tmp69053
                                   (let ((__tmp69087
                                          (let ((__tmp69088
                                                 (let ((__tmp69093
                                                        (gx#datum->syntax
                                                         '#f
                                                         'tab))
                                                       (__tmp69089
                                                        (let ((__tmp69092
                                                               (gx#datum->syntax
                                                                '#f
                                                                'key))
                                                              (__tmp69090
                                                               (let ((__tmp69091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp69091 '()))))
                  (declare (not safe))
                  (cons __tmp69092 __tmp69090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69093
                                                         __tmp69089))))
                                            (declare (not safe))
                                            (cons _L63437_ __tmp69088)))
                                         (__tmp69054
                                          (let ((__tmp69055
                                                 (let ((__tmp69086
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp69056
                                                        (let ((__tmp69070
                                                               (let ((__tmp69079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69085 (gx#datum->syntax '#f 'table))
                                    (__tmp69080
                                     (let ((__tmp69081
                                            (let ((__tmp69084
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-table))
                                                  (__tmp69082
                                                   (let ((__tmp69083
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp69083 '()))))
                                              (declare (not safe))
                                              (cons __tmp69084 __tmp69082))))
                                       (declare (not safe))
                                       (cons __tmp69081 '()))))
                                (declare (not safe))
                                (cons __tmp69085 __tmp69080)))
                             (__tmp69071
                              (let ((__tmp69072
                                     (let ((__tmp69078
                                            (gx#datum->syntax '#f 'seed))
                                           (__tmp69073
                                            (let ((__tmp69074
                                                   (let ((__tmp69077
                                                          (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-seed))
                                                         (__tmp69075
                                                          (let ((__tmp69076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'tab)))
                    (declare (not safe))
                    (cons __tmp69076 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69077
                                                           __tmp69075))))
                                              (declare (not safe))
                                              (cons __tmp69074 '()))))
                                       (declare (not safe))
                                       (cons __tmp69078 __tmp69073))))
                                (declare (not safe))
                                (cons __tmp69072 '()))))
                         (declare (not safe))
                         (cons __tmp69079 __tmp69071)))
                      (__tmp69057
                       (let ((__tmp69058
                              (let ((__tmp69069
                                     (gx#datum->syntax '#f '__table-ref))
                                    (__tmp69059
                                     (let ((__tmp69068
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp69060
                                            (let ((__tmp69067
                                                   (gx#datum->syntax
                                                    '#f
                                                    'seed))
                                                  (__tmp69061
                                                   (let ((__tmp69062
                                                          (let ((__tmp69063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69066 (gx#datum->syntax '#f 'key))
                               (__tmp69064
                                (let ((__tmp69065
                                       (gx#datum->syntax '#f 'default)))
                                  (declare (not safe))
                                  (cons __tmp69065 '()))))
                           (declare (not safe))
                           (cons __tmp69066 __tmp69064))))
                    (declare (not safe))
                    (cons _L63431_ __tmp69063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63433_
                                                           __tmp69062))))
                                              (declare (not safe))
                                              (cons __tmp69067 __tmp69061))))
                                       (declare (not safe))
                                       (cons __tmp69068 __tmp69060))))
                                (declare (not safe))
                                (cons __tmp69069 __tmp69059))))
                         (declare (not safe))
                         (cons __tmp69058 '()))))
                  (declare (not safe))
                  (cons __tmp69070 __tmp69057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69086
                                                         __tmp69056))))
                                            (declare (not safe))
                                            (cons __tmp69055 '()))))
                                     (declare (not safe))
                                     (cons __tmp69087 __tmp69054))))
                              (declare (not safe))
                              (cons __tmp69094 __tmp69053)))
                           (__tmp68841
                            (let ((__tmp69006
                                   (let ((__tmp69051
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp69007
                                          (let ((__tmp69044
                                                 (let ((__tmp69045
                                                        (let ((__tmp69050
                                                               (gx#datum->syntax
                                                                '#f
                                                                'tab))
                                                              (__tmp69046
                                                               (let ((__tmp69049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'key))
                             (__tmp69047
                              (let ((__tmp69048 (gx#datum->syntax '#f 'value)))
                                (declare (not safe))
                                (cons __tmp69048 '()))))
                         (declare (not safe))
                         (cons __tmp69049 __tmp69047))))
                  (declare (not safe))
                  (cons __tmp69050 __tmp69046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63436_ __tmp69045)))
                                                (__tmp69008
                                                 (let ((__tmp69017
                                                        (let ((__tmp69043
                                                               (gx#datum->syntax
                                                                '#f
                                                                'when))
                                                              (__tmp69018
                                                               (let ((__tmp69024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69042 (gx#datum->syntax '#f 'fx<))
                                    (__tmp69025
                                     (let ((__tmp69038
                                            (let ((__tmp69041
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-free))
                                                  (__tmp69039
                                                   (let ((__tmp69040
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp69040 '()))))
                                              (declare (not safe))
                                              (cons __tmp69041 __tmp69039)))
                                           (__tmp69026
                                            (let ((__tmp69027
                                                   (let ((__tmp69037
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fxquotient))
                                                         (__tmp69028
                                                          (let ((__tmp69030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69036
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp69031
                                (let ((__tmp69032
                                       (let ((__tmp69035
                                              (gx#datum->syntax
                                               '#f
                                               '&raw-table-table))
                                             (__tmp69033
                                              (let ((__tmp69034
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab)))
                                                (declare (not safe))
                                                (cons __tmp69034 '()))))
                                         (declare (not safe))
                                         (cons __tmp69035 __tmp69033))))
                                  (declare (not safe))
                                  (cons __tmp69032 '()))))
                           (declare (not safe))
                           (cons __tmp69036 __tmp69031)))
                        (__tmp69029
                         (let () (declare (not safe)) (cons '4 '()))))
                    (declare (not safe))
                    (cons __tmp69030 __tmp69029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69037
                                                           __tmp69028))))
                                              (declare (not safe))
                                              (cons __tmp69027 '()))))
                                       (declare (not safe))
                                       (cons __tmp69038 __tmp69026))))
                                (declare (not safe))
                                (cons __tmp69042 __tmp69025)))
                             (__tmp69019
                              (let ((__tmp69020
                                     (let ((__tmp69023
                                            (gx#datum->syntax
                                             '#f
                                             '__raw-table-rehash!))
                                           (__tmp69021
                                            (let ((__tmp69022
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp69022 '()))))
                                       (declare (not safe))
                                       (cons __tmp69023 __tmp69021))))
                                (declare (not safe))
                                (cons __tmp69020 '()))))
                         (declare (not safe))
                         (cons __tmp69024 __tmp69019))))
                  (declare (not safe))
                  (cons __tmp69043 __tmp69018)))
               (__tmp69009
                (let ((__tmp69010
                       (let ((__tmp69011
                              (let ((__tmp69016 (gx#datum->syntax '#f 'tab))
                                    (__tmp69012
                                     (let ((__tmp69015
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp69013
                                            (let ((__tmp69014
                                                   (gx#datum->syntax
                                                    '#f
                                                    'value)))
                                              (declare (not safe))
                                              (cons __tmp69014 '()))))
                                       (declare (not safe))
                                       (cons __tmp69015 __tmp69013))))
                                (declare (not safe))
                                (cons __tmp69016 __tmp69012))))
                         (declare (not safe))
                         (cons _L63435_ __tmp69011))))
                  (declare (not safe))
                  (cons __tmp69010 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69017
                                                         __tmp69009))))
                                            (declare (not safe))
                                            (cons __tmp69044 __tmp69008))))
                                     (declare (not safe))
                                     (cons __tmp69051 __tmp69007)))
                                  (__tmp68842
                                   (let ((__tmp68904
                                          (let ((__tmp69005
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp68905
                                                 (let ((__tmp68998
                                                        (let ((__tmp68999
                                                               (let ((__tmp69004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'tab))
                             (__tmp69000
                              (let ((__tmp69003 (gx#datum->syntax '#f 'key))
                                    (__tmp69001
                                     (let ((__tmp69002
                                            (gx#datum->syntax '#f 'value)))
                                       (declare (not safe))
                                       (cons __tmp69002 '()))))
                                (declare (not safe))
                                (cons __tmp69003 __tmp69001))))
                         (declare (not safe))
                         (cons __tmp69004 __tmp69000))))
                  (declare (not safe))
                  (cons _L63435_ __tmp68999)))
               (__tmp68906
                (let ((__tmp68907
                       (let ((__tmp68997 (gx#datum->syntax '#f 'let))
                             (__tmp68908
                              (let ((__tmp68981
                                     (let ((__tmp68990
                                            (let ((__tmp68996
                                                   (gx#datum->syntax
                                                    '#f
                                                    'table))
                                                  (__tmp68991
                                                   (let ((__tmp68992
                                                          (let ((__tmp68995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '&raw-table-table))
                        (__tmp68993
                         (let ((__tmp68994 (gx#datum->syntax '#f 'tab)))
                           (declare (not safe))
                           (cons __tmp68994 '()))))
                    (declare (not safe))
                    (cons __tmp68995 __tmp68993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68992 '()))))
                                              (declare (not safe))
                                              (cons __tmp68996 __tmp68991)))
                                           (__tmp68982
                                            (let ((__tmp68983
                                                   (let ((__tmp68989
                                                          (gx#datum->syntax
                                                           '#f
                                                           'seed))
                                                         (__tmp68984
                                                          (let ((__tmp68985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68988
                                (gx#datum->syntax '#f '&raw-table-seed))
                               (__tmp68986
                                (let ((__tmp68987 (gx#datum->syntax '#f 'tab)))
                                  (declare (not safe))
                                  (cons __tmp68987 '()))))
                           (declare (not safe))
                           (cons __tmp68988 __tmp68986))))
                    (declare (not safe))
                    (cons __tmp68985 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68989
                                                           __tmp68984))))
                                              (declare (not safe))
                                              (cons __tmp68983 '()))))
                                       (declare (not safe))
                                       (cons __tmp68990 __tmp68982)))
                                    (__tmp68909
                                     (let ((__tmp68910
                                            (let ((__tmp68980
                                                   (gx#datum->syntax
                                                    '#f
                                                    '__table-set!))
                                                  (__tmp68911
                                                   (let ((__tmp68979
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp68912
                                                          (let ((__tmp68978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'seed))
                        (__tmp68913
                         (let ((__tmp68914
                                (let ((__tmp68915
                                       (let ((__tmp68977
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp68916
                                              (let ((__tmp68976
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value))
                                                    (__tmp68917
                                                     (let ((__tmp68939
                                                            (let ((__tmp68975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp68940
                           (let ((__tmp68941
                                  (let ((__tmp68959
                                         (let ((__tmp68974
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68960
                                                (let ((__tmp68970
                                                       (let ((__tmp68973
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free))
                                                             (__tmp68971
                                                              (let ((__tmp68972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68972 '()))))
                 (declare (not safe))
                 (cons __tmp68973 __tmp68971)))
              (__tmp68961
               (let ((__tmp68962
                      (let ((__tmp68969 (gx#datum->syntax '#f 'fx-))
                            (__tmp68963
                             (let ((__tmp68965
                                    (let ((__tmp68968
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-free))
                                          (__tmp68966
                                           (let ((__tmp68967
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68967 '()))))
                                      (declare (not safe))
                                      (cons __tmp68968 __tmp68966)))
                                   (__tmp68964
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68965 __tmp68964))))
                        (declare (not safe))
                        (cons __tmp68969 __tmp68963))))
                 (declare (not safe))
                 (cons __tmp68962 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68970
                                                        __tmp68961))))
                                           (declare (not safe))
                                           (cons __tmp68974 __tmp68960)))
                                        (__tmp68942
                                         (let ((__tmp68943
                                                (let ((__tmp68958
                                                       (gx#datum->syntax
                                                        '#f
                                                        'set!))
                                                      (__tmp68944
                                                       (let ((__tmp68954
                                                              (let ((__tmp68957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-count))
                            (__tmp68955
                             (let ((__tmp68956 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp68956 '()))))
                        (declare (not safe))
                        (cons __tmp68957 __tmp68955)))
                     (__tmp68945
                      (let ((__tmp68946
                             (let ((__tmp68953 (gx#datum->syntax '#f 'fx+))
                                   (__tmp68947
                                    (let ((__tmp68949
                                           (let ((__tmp68952
                                                  (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count))
                                                 (__tmp68950
                                                  (let ((__tmp68951
                                                         (gx#datum->syntax
                                                          '#f
                                                          'tab)))
                                                    (declare (not safe))
                                                    (cons __tmp68951 '()))))
                                             (declare (not safe))
                                             (cons __tmp68952 __tmp68950)))
                                          (__tmp68948
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp68949 __tmp68948))))
                               (declare (not safe))
                               (cons __tmp68953 __tmp68947))))
                        (declare (not safe))
                        (cons __tmp68946 '()))))
                 (declare (not safe))
                 (cons __tmp68954 __tmp68945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68958
                                                        __tmp68944))))
                                           (declare (not safe))
                                           (cons __tmp68943 '()))))
                                    (declare (not safe))
                                    (cons __tmp68959 __tmp68942))))
                             (declare (not safe))
                             (cons '() __tmp68941))))
                      (declare (not safe))
                      (cons __tmp68975 __tmp68940)))
                   (__tmp68918
                    (let ((__tmp68919
                           (let ((__tmp68938 (gx#datum->syntax '#f 'lambda))
                                 (__tmp68920
                                  (let ((__tmp68921
                                         (let ((__tmp68922
                                                (let ((__tmp68937
                                                       (gx#datum->syntax
                                                        '#f
                                                        'set!))
                                                      (__tmp68923
                                                       (let ((__tmp68933
                                                              (let ((__tmp68936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-count))
                            (__tmp68934
                             (let ((__tmp68935 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp68935 '()))))
                        (declare (not safe))
                        (cons __tmp68936 __tmp68934)))
                     (__tmp68924
                      (let ((__tmp68925
                             (let ((__tmp68932 (gx#datum->syntax '#f 'fx+))
                                   (__tmp68926
                                    (let ((__tmp68928
                                           (let ((__tmp68931
                                                  (gx#datum->syntax
                                                   '#f
                                                   '&raw-table-count))
                                                 (__tmp68929
                                                  (let ((__tmp68930
                                                         (gx#datum->syntax
                                                          '#f
                                                          'tab)))
                                                    (declare (not safe))
                                                    (cons __tmp68930 '()))))
                                             (declare (not safe))
                                             (cons __tmp68931 __tmp68929)))
                                          (__tmp68927
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp68928 __tmp68927))))
                               (declare (not safe))
                               (cons __tmp68932 __tmp68926))))
                        (declare (not safe))
                        (cons __tmp68925 '()))))
                 (declare (not safe))
                 (cons __tmp68933 __tmp68924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68937
                                                        __tmp68923))))
                                           (declare (not safe))
                                           (cons __tmp68922 '()))))
                                    (declare (not safe))
                                    (cons '() __tmp68921))))
                             (declare (not safe))
                             (cons __tmp68938 __tmp68920))))
                      (declare (not safe))
                      (cons __tmp68919 '()))))
               (declare (not safe))
               (cons __tmp68939 __tmp68918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68976 __tmp68917))))
                                         (declare (not safe))
                                         (cons __tmp68977 __tmp68916))))
                                  (declare (not safe))
                                  (cons _L63431_ __tmp68915))))
                           (declare (not safe))
                           (cons _L63433_ __tmp68914))))
                    (declare (not safe))
                    (cons __tmp68978 __tmp68913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68979
                                                           __tmp68912))))
                                              (declare (not safe))
                                              (cons __tmp68980 __tmp68911))))
                                       (declare (not safe))
                                       (cons __tmp68910 '()))))
                                (declare (not safe))
                                (cons __tmp68981 __tmp68909))))
                         (declare (not safe))
                         (cons __tmp68997 __tmp68908))))
                  (declare (not safe))
                  (cons __tmp68907 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68998
                                                         __tmp68906))))
                                            (declare (not safe))
                                            (cons __tmp69005 __tmp68905)))
                                         (__tmp68843
                                          (let ((__tmp68844
                                                 (let ((__tmp68903
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp68845
                                                        (let ((__tmp68898
                                                               (let ((__tmp68899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68902 (gx#datum->syntax '#f 'tab))
                                    (__tmp68900
                                     (let ((__tmp68901
                                            (gx#datum->syntax '#f 'key)))
                                       (declare (not safe))
                                       (cons __tmp68901 '()))))
                                (declare (not safe))
                                (cons __tmp68902 __tmp68900))))
                         (declare (not safe))
                         (cons _L63434_ __tmp68899)))
                      (__tmp68846
                       (let ((__tmp68847
                              (let ((__tmp68897 (gx#datum->syntax '#f 'let))
                                    (__tmp68848
                                     (let ((__tmp68881
                                            (let ((__tmp68890
                                                   (let ((__tmp68896
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp68891
                                                          (let ((__tmp68892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68895
                                (gx#datum->syntax '#f '&raw-table-table))
                               (__tmp68893
                                (let ((__tmp68894 (gx#datum->syntax '#f 'tab)))
                                  (declare (not safe))
                                  (cons __tmp68894 '()))))
                           (declare (not safe))
                           (cons __tmp68895 __tmp68893))))
                    (declare (not safe))
                    (cons __tmp68892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68896
                                                           __tmp68891)))
                                                  (__tmp68882
                                                   (let ((__tmp68883
                                                          (let ((__tmp68889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'seed))
                        (__tmp68884
                         (let ((__tmp68885
                                (let ((__tmp68888
                                       (gx#datum->syntax '#f '&raw-table-seed))
                                      (__tmp68886
                                       (let ((__tmp68887
                                              (gx#datum->syntax '#f 'tab)))
                                         (declare (not safe))
                                         (cons __tmp68887 '()))))
                                  (declare (not safe))
                                  (cons __tmp68888 __tmp68886))))
                           (declare (not safe))
                           (cons __tmp68885 '()))))
                    (declare (not safe))
                    (cons __tmp68889 __tmp68884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68883 '()))))
                                              (declare (not safe))
                                              (cons __tmp68890 __tmp68882)))
                                           (__tmp68849
                                            (let ((__tmp68850
                                                   (let ((__tmp68880
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__table-del!))
                                                         (__tmp68851
                                                          (let ((__tmp68879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'table))
                        (__tmp68852
                         (let ((__tmp68878 (gx#datum->syntax '#f 'seed))
                               (__tmp68853
                                (let ((__tmp68854
                                       (let ((__tmp68855
                                              (let ((__tmp68877
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp68856
                                                     (let ((__tmp68857
                                                            (let ((__tmp68876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp68858
                           (let ((__tmp68859
                                  (let ((__tmp68860
                                         (let ((__tmp68875
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68861
                                                (let ((__tmp68871
                                                       (let ((__tmp68874
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp68872
                                                              (let ((__tmp68873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68873 '()))))
                 (declare (not safe))
                 (cons __tmp68874 __tmp68872)))
              (__tmp68862
               (let ((__tmp68863
                      (let ((__tmp68870 (gx#datum->syntax '#f 'fx-))
                            (__tmp68864
                             (let ((__tmp68866
                                    (let ((__tmp68869
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp68867
                                           (let ((__tmp68868
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68868 '()))))
                                      (declare (not safe))
                                      (cons __tmp68869 __tmp68867)))
                                   (__tmp68865
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68866 __tmp68865))))
                        (declare (not safe))
                        (cons __tmp68870 __tmp68864))))
                 (declare (not safe))
                 (cons __tmp68863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68871
                                                        __tmp68862))))
                                           (declare (not safe))
                                           (cons __tmp68875 __tmp68861))))
                                    (declare (not safe))
                                    (cons __tmp68860 '()))))
                             (declare (not safe))
                             (cons '() __tmp68859))))
                      (declare (not safe))
                      (cons __tmp68876 __tmp68858))))
               (declare (not safe))
               (cons __tmp68857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68877 __tmp68856))))
                                         (declare (not safe))
                                         (cons _L63431_ __tmp68855))))
                                  (declare (not safe))
                                  (cons _L63433_ __tmp68854))))
                           (declare (not safe))
                           (cons __tmp68878 __tmp68853))))
                    (declare (not safe))
                    (cons __tmp68879 __tmp68852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68880
                                                           __tmp68851))))
                                              (declare (not safe))
                                              (cons __tmp68850 '()))))
                                       (declare (not safe))
                                       (cons __tmp68881 __tmp68849))))
                                (declare (not safe))
                                (cons __tmp68897 __tmp68848))))
                         (declare (not safe))
                         (cons __tmp68847 '()))))
                  (declare (not safe))
                  (cons __tmp68898 __tmp68846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68903
                                                         __tmp68845))))
                                            (declare (not safe))
                                            (cons __tmp68844 '()))))
                                     (declare (not safe))
                                     (cons __tmp68904 __tmp68843))))
                              (declare (not safe))
                              (cons __tmp69006 __tmp68842))))
                       (declare (not safe))
                       (cons __tmp69052 __tmp68841))))
                (declare (not safe))
                (cons __tmp69095 __tmp68840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69121 __tmp68839)))
                                             _hd6333763425_
                                             _hd6333463415_
                                             _hd6333163405_
                                             _hd6332863395_
                                             _hd6332563385_
                                             _hd6332263375_
                                             _hd6331963365_)
                                            (_g6330663344_ _g6330763348_))))
                                    (_g6330663344_ _g6330763348_))))
                            (_g6330663344_ _g6330763348_))))
                    (_g6330663344_ _g6330763348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6330663344_
                                                     _g6330763348_))))
                                            (_g6330663344_ _g6330763348_))))
                                    (_g6330663344_ _g6330763348_))))
                            (_g6330663344_ _g6330763348_))))
                    (_g6330663344_ _g6330763348_)))))
        (_g6330563469_ _$stx63302_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx63473_)
      (let* ((_g6347763499_
              (lambda (_g6347863495_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6347863495_)))
             (_g6347663568_
              (lambda (_g6347863503_)
                (if (gx#stx-pair? _g6347863503_)
                    (let ((_e6348463506_ (gx#syntax-e _g6347863503_)))
                      (let ((_hd6348363510_
                             (let ()
                               (declare (not safe))
                               (##car _e6348463506_)))
                            (_tl6348263513_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6348463506_))))
                        (if (gx#stx-pair? _tl6348263513_)
                            (let ((_e6348763516_ (gx#syntax-e _tl6348263513_)))
                              (let ((_hd6348663520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6348763516_)))
                                    (_tl6348563523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6348763516_))))
                                (if (gx#stx-pair? _tl6348563523_)
                                    (let ((_e6349063526_
                                           (gx#syntax-e _tl6348563523_)))
                                      (let ((_hd6348963530_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6349063526_)))
                                            (_tl6348863533_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6349063526_))))
                                        (if (gx#stx-pair? _tl6348863533_)
                                            (let ((_e6349363536_
                                                   (gx#syntax-e
                                                    _tl6348863533_)))
                                              (let ((_hd6349263540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6349363536_)))
                                                    (_tl6349163543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6349363536_))))
                                                (if (gx#stx-null?
                                                     _tl6349163543_)
                                                    ((lambda (_L63546_
                                                              _L63548_
                                                              _L63549_)
                                                       (let ((__tmp69141
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp69122
                                                              (let ((__tmp69129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69140
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp69130
                                    (let ((__tmp69131
                                           (let ((__tmp69139
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69132
                                                  (let ((__tmp69133
                                                         (let ((__tmp69134
                                                                (let ((__tmp69135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69138 (gx#datum->syntax '#f 'fx*))
                                     (__tmp69136
                                      (let ((__tmp69137
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63548_ '()))))
                                        (declare (not safe))
                                        (cons _L63548_ __tmp69137))))
                                 (declare (not safe))
                                 (cons __tmp69138 __tmp69136))))
                          (declare (not safe))
                          (cons __tmp69135 '()))))
                   (declare (not safe))
                   (cons _L63548_ __tmp69134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63549_
                                                          __tmp69133))))
                                             (declare (not safe))
                                             (cons __tmp69139 __tmp69132))))
                                      (declare (not safe))
                                      (cons __tmp69131 '()))))
                               (declare (not safe))
                               (cons __tmp69140 __tmp69130)))
                            (__tmp69123
                             (let ((__tmp69124
                                    (let ((__tmp69128
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp69125
                                           (let ((__tmp69127
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp69126
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63546_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69127 __tmp69126))))
                                      (declare (not safe))
                                      (cons __tmp69128 __tmp69125))))
                               (declare (not safe))
                               (cons __tmp69124 '()))))
                        (declare (not safe))
                        (cons __tmp69129 __tmp69123))))
                 (declare (not safe))
                 (cons __tmp69141 __tmp69122)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6349263540_
                                                     _hd6348963530_
                                                     _hd6348663520_)
                                                    (_g6347763499_
                                                     _g6347863503_))))
                                            (_g6347763499_ _g6347863503_))))
                                    (_g6347763499_ _g6347863503_))))
                            (_g6347763499_ _g6347863503_))))
                    (_g6347763499_ _g6347863503_)))))
        (_g6347663568_ _$stx63473_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx63572_)
      (let* ((_g6357663610_
              (lambda (_g6357763606_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6357763606_)))
             (_g6357563721_
              (lambda (_g6357763614_)
                (if (gx#stx-pair? _g6357763614_)
                    (let ((_e6358663617_ (gx#syntax-e _g6357763614_)))
                      (let ((_hd6358563621_
                             (let ()
                               (declare (not safe))
                               (##car _e6358663617_)))
                            (_tl6358463624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6358663617_))))
                        (if (gx#stx-pair? _tl6358463624_)
                            (let ((_e6358963627_ (gx#syntax-e _tl6358463624_)))
                              (let ((_hd6358863631_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6358963627_)))
                                    (_tl6358763634_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6358963627_))))
                                (if (gx#stx-pair? _tl6358763634_)
                                    (let ((_e6359263637_
                                           (gx#syntax-e _tl6358763634_)))
                                      (let ((_hd6359163641_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6359263637_)))
                                            (_tl6359063644_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6359263637_))))
                                        (if (gx#stx-pair? _tl6359063644_)
                                            (let ((_e6359563647_
                                                   (gx#syntax-e
                                                    _tl6359063644_)))
                                              (let ((_hd6359463651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6359563647_)))
                                                    (_tl6359363654_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6359563647_))))
                                                (if (gx#stx-pair?
                                                     _tl6359363654_)
                                                    (let ((_e6359863657_
                                                           (gx#syntax-e
                                                            _tl6359363654_)))
                                                      (let ((_hd6359763661_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6359863657_)))
                    (_tl6359663664_
                     (let () (declare (not safe)) (##cdr _e6359863657_))))
                (if (gx#stx-pair? _tl6359663664_)
                    (let ((_e6360163667_ (gx#syntax-e _tl6359663664_)))
                      (let ((_hd6360063671_
                             (let ()
                               (declare (not safe))
                               (##car _e6360163667_)))
                            (_tl6359963674_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6360163667_))))
                        (if (gx#stx-pair? _tl6359963674_)
                            (let ((_e6360463677_ (gx#syntax-e _tl6359963674_)))
                              (let ((_hd6360363681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6360463677_)))
                                    (_tl6360263684_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6360463677_))))
                                (if (gx#stx-null? _tl6360263684_)
                                    ((lambda (_L63687_
                                              _L63689_
                                              _L63690_
                                              _L63691_
                                              _L63692_
                                              _L63693_)
                                       (let ((__tmp69300
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69142
                                              (let ((__tmp69260
                                                     (let ((__tmp69291
                                                            (let ((__tmp69299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69292
                           (let ((__tmp69293
                                  (let ((__tmp69298
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69294
                                         (let ((__tmp69296
                                                (let ((__tmp69297
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63689_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63691_ __tmp69297)))
                                               (__tmp69295
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63692_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69296 __tmp69295))))
                                    (declare (not safe))
                                    (cons __tmp69298 __tmp69294))))
                             (declare (not safe))
                             (cons __tmp69293 '()))))
                      (declare (not safe))
                      (cons __tmp69299 __tmp69292)))
                   (__tmp69261
                    (let ((__tmp69285
                           (let ((__tmp69290 (gx#datum->syntax '#f 'size))
                                 (__tmp69286
                                  (let ((__tmp69287
                                         (let ((__tmp69289
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69288
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63693_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69289 __tmp69288))))
                                    (declare (not safe))
                                    (cons __tmp69287 '()))))
                             (declare (not safe))
                             (cons __tmp69290 __tmp69286)))
                          (__tmp69262
                           (let ((__tmp69277
                                  (let ((__tmp69284
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69278
                                         (let ((__tmp69279
                                                (let ((__tmp69283
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69280
                                                       (let ((__tmp69282
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69281
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69282 __tmp69281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69283
                                                        __tmp69280))))
                                           (declare (not safe))
                                           (cons __tmp69279 '()))))
                                    (declare (not safe))
                                    (cons __tmp69284 __tmp69278)))
                                 (__tmp69263
                                  (let ((__tmp69264
                                         (let ((__tmp69276
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69265
                                                (let ((__tmp69266
                                                       (let ((__tmp69275
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69267
                                                              (let ((__tmp69269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69274
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69270
                                    (let ((__tmp69273
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69271
                                           (let ((__tmp69272
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69272 '()))))
                                      (declare (not safe))
                                      (cons __tmp69273 __tmp69271))))
                               (declare (not safe))
                               (cons __tmp69274 __tmp69270)))
                            (__tmp69268
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69269 __tmp69268))))
                 (declare (not safe))
                 (cons __tmp69275 __tmp69267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69266 '()))))
                                           (declare (not safe))
                                           (cons __tmp69276 __tmp69265))))
                                    (declare (not safe))
                                    (cons __tmp69264 '()))))
                             (declare (not safe))
                             (cons __tmp69277 __tmp69263))))
                      (declare (not safe))
                      (cons __tmp69285 __tmp69262))))
               (declare (not safe))
               (cons __tmp69291 __tmp69261)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69143
                                                     (let ((__tmp69144
                                                            (let ((__tmp69259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69145
                           (let ((__tmp69258 (gx#datum->syntax '#f 'loop))
                                 (__tmp69146
                                  (let ((__tmp69245
                                         (let ((__tmp69254
                                                (let ((__tmp69257
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69255
                                                       (let ((__tmp69256
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69256
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69257
                                                        __tmp69255)))
                                               (__tmp69246
                                                (let ((__tmp69251
                                                       (let ((__tmp69253
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69252
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69253 __tmp69252)))
              (__tmp69247
               (let ((__tmp69248
                      (let ((__tmp69250 (gx#datum->syntax '#f 'deleted))
                            (__tmp69249
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp69250 __tmp69249))))
                 (declare (not safe))
                 (cons __tmp69248 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69251
                                                        __tmp69247))))
                                           (declare (not safe))
                                           (cons __tmp69254 __tmp69246)))
                                        (__tmp69147
                                         (let ((__tmp69148
                                                (let ((__tmp69244
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69149
                                                       (let ((__tmp69236
                                                              (let ((__tmp69243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69237
                             (let ((__tmp69238
                                    (let ((__tmp69242
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69239
                                           (let ((__tmp69240
                                                  (let ((__tmp69241
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69241 '()))))
                                             (declare (not safe))
                                             (cons _L63693_ __tmp69240))))
                                      (declare (not safe))
                                      (cons __tmp69242 __tmp69239))))
                               (declare (not safe))
                               (cons __tmp69238 '()))))
                        (declare (not safe))
                        (cons __tmp69243 __tmp69237)))
                     (__tmp69150
                      (let ((__tmp69151
                             (let ((__tmp69235 (gx#datum->syntax '#f 'cond))
                                   (__tmp69152
                                    (let ((__tmp69226
                                           (let ((__tmp69228
                                                  (let ((__tmp69234
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69229
                                                         (let ((__tmp69233
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69230
                        (let ((__tmp69231
                               (let ((__tmp69232
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69232 '()))))
                          (declare (not safe))
                          (cons __tmp69231 '()))))
                   (declare (not safe))
                   (cons __tmp69233 __tmp69230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69234
                                                          __tmp69229)))
                                                 (__tmp69227
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63687_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69228 __tmp69227)))
                                          (__tmp69153
                                           (let ((__tmp69193
                                                  (let ((__tmp69219
                                                         (let ((__tmp69225
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69220
                        (let ((__tmp69224 (gx#datum->syntax '#f 'k))
                              (__tmp69221
                               (let ((__tmp69222
                                      (let ((__tmp69223
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69223 '()))))
                                 (declare (not safe))
                                 (cons __tmp69222 '()))))
                          (declare (not safe))
                          (cons __tmp69224 __tmp69221))))
                   (declare (not safe))
                   (cons __tmp69225 __tmp69220)))
                (__tmp69194
                 (let ((__tmp69195
                        (let ((__tmp69218 (gx#datum->syntax '#f 'loop))
                              (__tmp69196
                               (let ((__tmp69210
                                      (let ((__tmp69217
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69211
                                             (let ((__tmp69216
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69212
                                                    (let ((__tmp69215
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69213
                                                           (let ((__tmp69214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69214 '()))))
              (declare (not safe))
              (cons __tmp69215 __tmp69213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69216 __tmp69212))))
                                        (declare (not safe))
                                        (cons __tmp69217 __tmp69211)))
                                     (__tmp69197
                                      (let ((__tmp69205
                                             (let ((__tmp69209
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69206
                                                    (let ((__tmp69208
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69207
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69208
                                                            __tmp69207))))
                                               (declare (not safe))
                                               (cons __tmp69209 __tmp69206)))
                                            (__tmp69198
                                             (let ((__tmp69199
                                                    (let ((__tmp69204
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp69200
                                                           (let ((__tmp69203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp69201
                          (let ((__tmp69202 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69202 '()))))
                     (declare (not safe))
                     (cons __tmp69203 __tmp69201))))
              (declare (not safe))
              (cons __tmp69204 __tmp69200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69199 '()))))
                                        (declare (not safe))
                                        (cons __tmp69205 __tmp69198))))
                                 (declare (not safe))
                                 (cons __tmp69210 __tmp69197))))
                          (declare (not safe))
                          (cons __tmp69218 __tmp69196))))
                   (declare (not safe))
                   (cons __tmp69195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69219
                                                          __tmp69194)))
                                                 (__tmp69154
                                                  (let ((__tmp69178
                                                         (let ((__tmp69189
                                                                (let ((__tmp69190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69191
                                      (let ((__tmp69192
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69192 '()))))
                                 (declare (not safe))
                                 (cons _L63689_ __tmp69191))))
                          (declare (not safe))
                          (cons _L63690_ __tmp69190)))
                       (__tmp69179
                        (let ((__tmp69180
                               (let ((__tmp69188
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp69181
                                      (let ((__tmp69182
                                             (let ((__tmp69183
                                                    (let ((__tmp69187
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp69184
                                                           (let ((__tmp69186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp69185
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69186 __tmp69185))))
              (declare (not safe))
              (cons __tmp69187 __tmp69184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69183 '()))))
                                        (declare (not safe))
                                        (cons _L63693_ __tmp69182))))
                                 (declare (not safe))
                                 (cons __tmp69188 __tmp69181))))
                          (declare (not safe))
                          (cons __tmp69180 '()))))
                   (declare (not safe))
                   (cons __tmp69189 __tmp69179)))
                (__tmp69155
                 (let ((__tmp69156
                        (let ((__tmp69177 (gx#datum->syntax '#f 'else))
                              (__tmp69157
                               (let ((__tmp69158
                                      (let ((__tmp69176
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69159
                                             (let ((__tmp69168
                                                    (let ((__tmp69175
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69169
                                                           (let ((__tmp69174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69170
                          (let ((__tmp69173 (gx#datum->syntax '#f 'i))
                                (__tmp69171
                                 (let ((__tmp69172
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69172 '()))))
                            (declare (not safe))
                            (cons __tmp69173 __tmp69171))))
                     (declare (not safe))
                     (cons __tmp69174 __tmp69170))))
              (declare (not safe))
              (cons __tmp69175 __tmp69169)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69160
                                                    (let ((__tmp69163
                                                           (let ((__tmp69167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69164
                          (let ((__tmp69166 (gx#datum->syntax '#f 'i))
                                (__tmp69165
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69166 __tmp69165))))
                     (declare (not safe))
                     (cons __tmp69167 __tmp69164)))
                  (__tmp69161
                   (let ((__tmp69162 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp69162 '()))))
              (declare (not safe))
              (cons __tmp69163 __tmp69161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69168 __tmp69160))))
                                        (declare (not safe))
                                        (cons __tmp69176 __tmp69159))))
                                 (declare (not safe))
                                 (cons __tmp69158 '()))))
                          (declare (not safe))
                          (cons __tmp69177 __tmp69157))))
                   (declare (not safe))
                   (cons __tmp69156 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69178
                                                          __tmp69155))))
                                             (declare (not safe))
                                             (cons __tmp69193 __tmp69154))))
                                      (declare (not safe))
                                      (cons __tmp69226 __tmp69153))))
                               (declare (not safe))
                               (cons __tmp69235 __tmp69152))))
                        (declare (not safe))
                        (cons __tmp69151 '()))))
                 (declare (not safe))
                 (cons __tmp69236 __tmp69150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69244
                                                        __tmp69149))))
                                           (declare (not safe))
                                           (cons __tmp69148 '()))))
                                    (declare (not safe))
                                    (cons __tmp69245 __tmp69147))))
                             (declare (not safe))
                             (cons __tmp69258 __tmp69146))))
                      (declare (not safe))
                      (cons __tmp69259 __tmp69145))))
               (declare (not safe))
               (cons __tmp69144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69260 __tmp69143))))
                                         (declare (not safe))
                                         (cons __tmp69300 __tmp69142)))
                                     _hd6360363681_
                                     _hd6360063671_
                                     _hd6359763661_
                                     _hd6359463651_
                                     _hd6359163641_
                                     _hd6358863631_)
                                    (_g6357663610_ _g6357763614_))))
                            (_g6357663610_ _g6357763614_))))
                    (_g6357663610_ _g6357763614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6357663610_
                                                     _g6357763614_))))
                                            (_g6357663610_ _g6357763614_))))
                                    (_g6357663610_ _g6357763614_))))
                            (_g6357663610_ _g6357763614_))))
                    (_g6357663610_ _g6357763614_)))))
        (_g6357563721_ _$stx63572_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx63725_)
      (let* ((_g6372963771_
              (lambda (_g6373063767_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6373063767_)))
             (_g6372863910_
              (lambda (_g6373063775_)
                (if (gx#stx-pair? _g6373063775_)
                    (let ((_e6374163778_ (gx#syntax-e _g6373063775_)))
                      (let ((_hd6374063782_
                             (let ()
                               (declare (not safe))
                               (##car _e6374163778_)))
                            (_tl6373963785_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6374163778_))))
                        (if (gx#stx-pair? _tl6373963785_)
                            (let ((_e6374463788_ (gx#syntax-e _tl6373963785_)))
                              (let ((_hd6374363792_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6374463788_)))
                                    (_tl6374263795_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6374463788_))))
                                (if (gx#stx-pair? _tl6374263795_)
                                    (let ((_e6374763798_
                                           (gx#syntax-e _tl6374263795_)))
                                      (let ((_hd6374663802_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6374763798_)))
                                            (_tl6374563805_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6374763798_))))
                                        (if (gx#stx-pair? _tl6374563805_)
                                            (let ((_e6375063808_
                                                   (gx#syntax-e
                                                    _tl6374563805_)))
                                              (let ((_hd6374963812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6375063808_)))
                                                    (_tl6374863815_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6375063808_))))
                                                (if (gx#stx-pair?
                                                     _tl6374863815_)
                                                    (let ((_e6375363818_
                                                           (gx#syntax-e
                                                            _tl6374863815_)))
                                                      (let ((_hd6375263822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6375363818_)))
                    (_tl6375163825_
                     (let () (declare (not safe)) (##cdr _e6375363818_))))
                (if (gx#stx-pair? _tl6375163825_)
                    (let ((_e6375663828_ (gx#syntax-e _tl6375163825_)))
                      (let ((_hd6375563832_
                             (let ()
                               (declare (not safe))
                               (##car _e6375663828_)))
                            (_tl6375463835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6375663828_))))
                        (if (gx#stx-pair? _tl6375463835_)
                            (let ((_e6375963838_ (gx#syntax-e _tl6375463835_)))
                              (let ((_hd6375863842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6375963838_)))
                                    (_tl6375763845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6375963838_))))
                                (if (gx#stx-pair? _tl6375763845_)
                                    (let ((_e6376263848_
                                           (gx#syntax-e _tl6375763845_)))
                                      (let ((_hd6376163852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6376263848_)))
                                            (_tl6376063855_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6376263848_))))
                                        (if (gx#stx-pair? _tl6376063855_)
                                            (let ((_e6376563858_
                                                   (gx#syntax-e
                                                    _tl6376063855_)))
                                              (let ((_hd6376463862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6376563858_)))
                                                    (_tl6376363865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6376563858_))))
                                                (if (gx#stx-null?
                                                     _tl6376363865_)
                                                    ((lambda (_L63868_
                                                              _L63870_
                                                              _L63871_
                                                              _L63872_
                                                              _L63873_
                                                              _L63874_
                                                              _L63875_
                                                              _L63876_)
                                                       (let ((__tmp69517
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp69301
                                                              (let ((__tmp69477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69508
                                    (let ((__tmp69516
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69509
                                           (let ((__tmp69510
                                                  (let ((__tmp69515
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp69511
                                                         (let ((__tmp69513
                                                                (let ((__tmp69514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L63872_ '()))))
                          (declare (not safe))
                          (cons _L63874_ __tmp69514)))
                       (__tmp69512
                        (let () (declare (not safe)) (cons _L63875_ '()))))
                   (declare (not safe))
                   (cons __tmp69513 __tmp69512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69515
                                                          __tmp69511))))
                                             (declare (not safe))
                                             (cons __tmp69510 '()))))
                                      (declare (not safe))
                                      (cons __tmp69516 __tmp69509)))
                                   (__tmp69478
                                    (let ((__tmp69502
                                           (let ((__tmp69507
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp69503
                                                  (let ((__tmp69504
                                                         (let ((__tmp69506
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp69505
                        (let () (declare (not safe)) (cons _L63876_ '()))))
                   (declare (not safe))
                   (cons __tmp69506 __tmp69505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69504 '()))))
                                             (declare (not safe))
                                             (cons __tmp69507 __tmp69503)))
                                          (__tmp69479
                                           (let ((__tmp69494
                                                  (let ((__tmp69501
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp69495
                                                         (let ((__tmp69496
                                                                (let ((__tmp69500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp69497
                               (let ((__tmp69499 (gx#datum->syntax '#f 'size))
                                     (__tmp69498
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp69499 __tmp69498))))
                          (declare (not safe))
                          (cons __tmp69500 __tmp69497))))
                   (declare (not safe))
                   (cons __tmp69496 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69501
                                                          __tmp69495)))
                                                 (__tmp69480
                                                  (let ((__tmp69481
                                                         (let ((__tmp69493
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp69482
                        (let ((__tmp69483
                               (let ((__tmp69492
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp69484
                                      (let ((__tmp69486
                                             (let ((__tmp69491
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp69487
                                                    (let ((__tmp69490
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp69488
                                                           (let ((__tmp69489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp69489 '()))))
              (declare (not safe))
              (cons __tmp69490 __tmp69488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69491 __tmp69487)))
                                            (__tmp69485
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp69486 __tmp69485))))
                                 (declare (not safe))
                                 (cons __tmp69492 __tmp69484))))
                          (declare (not safe))
                          (cons __tmp69483 '()))))
                   (declare (not safe))
                   (cons __tmp69493 __tmp69482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69481 '()))))
                                             (declare (not safe))
                                             (cons __tmp69494 __tmp69480))))
                                      (declare (not safe))
                                      (cons __tmp69502 __tmp69479))))
                               (declare (not safe))
                               (cons __tmp69508 __tmp69478)))
                            (__tmp69302
                             (let ((__tmp69303
                                    (let ((__tmp69476
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp69304
                                           (let ((__tmp69475
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp69305
                                                  (let ((__tmp69462
                                                         (let ((__tmp69471
                                                                (let ((__tmp69474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp69472
                               (let ((__tmp69473
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp69473 '()))))
                          (declare (not safe))
                          (cons __tmp69474 __tmp69472)))
                       (__tmp69463
                        (let ((__tmp69468
                               (let ((__tmp69470 (gx#datum->syntax '#f 'i))
                                     (__tmp69469
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp69470 __tmp69469)))
                              (__tmp69464
                               (let ((__tmp69465
                                      (let ((__tmp69467
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp69466
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp69467 __tmp69466))))
                                 (declare (not safe))
                                 (cons __tmp69465 '()))))
                          (declare (not safe))
                          (cons __tmp69468 __tmp69464))))
                   (declare (not safe))
                   (cons __tmp69471 __tmp69463)))
                (__tmp69306
                 (let ((__tmp69307
                        (let ((__tmp69461 (gx#datum->syntax '#f 'let))
                              (__tmp69308
                               (let ((__tmp69453
                                      (let ((__tmp69460
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp69454
                                             (let ((__tmp69455
                                                    (let ((__tmp69459
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp69456
                                                           (let ((__tmp69457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69458 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69458 '()))))
                     (declare (not safe))
                     (cons _L63876_ __tmp69457))))
              (declare (not safe))
              (cons __tmp69459 __tmp69456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69455 '()))))
                                        (declare (not safe))
                                        (cons __tmp69460 __tmp69454)))
                                     (__tmp69309
                                      (let ((__tmp69310
                                             (let ((__tmp69452
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp69311
                                                    (let ((__tmp69393
                                                           (let ((__tmp69445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69451 (gx#datum->syntax '#f 'eq?))
                                (__tmp69446
                                 (let ((__tmp69450 (gx#datum->syntax '#f 'k))
                                       (__tmp69447
                                        (let ((__tmp69448
                                               (let ((__tmp69449
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp69449 '()))))
                                          (declare (not safe))
                                          (cons __tmp69448 '()))))
                                   (declare (not safe))
                                   (cons __tmp69450 __tmp69447))))
                            (declare (not safe))
                            (cons __tmp69451 __tmp69446)))
                         (__tmp69394
                          (let ((__tmp69395
                                 (let ((__tmp69444 (gx#datum->syntax '#f 'if))
                                       (__tmp69396
                                        (let ((__tmp69443
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp69397
                                               (let ((__tmp69421
                                                      (let ((__tmp69442
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp69422
                                                             (let ((__tmp69436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69441
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp69437
                                   (let ((__tmp69438
                                          (let ((__tmp69440
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp69439
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63872_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69440 __tmp69439))))
                                     (declare (not safe))
                                     (cons _L63876_ __tmp69438))))
                              (declare (not safe))
                              (cons __tmp69441 __tmp69437)))
                           (__tmp69423
                            (let ((__tmp69426
                                   (let ((__tmp69435
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69427
                                          (let ((__tmp69428
                                                 (let ((__tmp69430
                                                        (let ((__tmp69434
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp69431
                                                               (let ((__tmp69433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp69432
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp69433 __tmp69432))))
                  (declare (not safe))
                  (cons __tmp69434 __tmp69431)))
               (__tmp69429 (let () (declare (not safe)) (cons _L63871_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69430
                                                         __tmp69429))))
                                            (declare (not safe))
                                            (cons _L63876_ __tmp69428))))
                                     (declare (not safe))
                                     (cons __tmp69435 __tmp69427)))
                                  (__tmp69424
                                   (let ((__tmp69425
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63868_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69425 '()))))
                              (declare (not safe))
                              (cons __tmp69426 __tmp69424))))
                       (declare (not safe))
                       (cons __tmp69436 __tmp69423))))
                (declare (not safe))
                (cons __tmp69442 __tmp69422)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69398
                                                      (let ((__tmp69399
                                                             (let ((__tmp69420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp69400
                            (let ((__tmp69414
                                   (let ((__tmp69419
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69415
                                          (let ((__tmp69416
                                                 (let ((__tmp69418
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp69417
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63872_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69418
                                                         __tmp69417))))
                                            (declare (not safe))
                                            (cons _L63876_ __tmp69416))))
                                     (declare (not safe))
                                     (cons __tmp69419 __tmp69415)))
                                  (__tmp69401
                                   (let ((__tmp69404
                                          (let ((__tmp69413
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp69405
                                                 (let ((__tmp69406
                                                        (let ((__tmp69408
                                                               (let ((__tmp69412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp69409
                              (let ((__tmp69411 (gx#datum->syntax '#f 'probe))
                                    (__tmp69410
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp69411 __tmp69410))))
                         (declare (not safe))
                         (cons __tmp69412 __tmp69409)))
                      (__tmp69407
                       (let () (declare (not safe)) (cons _L63871_ '()))))
                  (declare (not safe))
                  (cons __tmp69408 __tmp69407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63876_
                                                         __tmp69406))))
                                            (declare (not safe))
                                            (cons __tmp69413 __tmp69405)))
                                         (__tmp69402
                                          (let ((__tmp69403
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63870_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69403 '()))))
                                     (declare (not safe))
                                     (cons __tmp69404 __tmp69402))))
                              (declare (not safe))
                              (cons __tmp69414 __tmp69401))))
                       (declare (not safe))
                       (cons __tmp69420 __tmp69400))))
                (declare (not safe))
                (cons __tmp69399 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69421
                                                       __tmp69398))))
                                          (declare (not safe))
                                          (cons __tmp69443 __tmp69397))))
                                   (declare (not safe))
                                   (cons __tmp69444 __tmp69396))))
                            (declare (not safe))
                            (cons __tmp69395 '()))))
                     (declare (not safe))
                     (cons __tmp69445 __tmp69394)))
                  (__tmp69312
                   (let ((__tmp69360
                          (let ((__tmp69386
                                 (let ((__tmp69392 (gx#datum->syntax '#f 'eq?))
                                       (__tmp69387
                                        (let ((__tmp69391
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp69388
                                               (let ((__tmp69389
                                                      (let ((__tmp69390
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp69390
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69389 '()))))
                                          (declare (not safe))
                                          (cons __tmp69391 __tmp69388))))
                                   (declare (not safe))
                                   (cons __tmp69392 __tmp69387)))
                                (__tmp69361
                                 (let ((__tmp69362
                                        (let ((__tmp69385
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp69363
                                               (let ((__tmp69377
                                                      (let ((__tmp69384
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp69378
                                                             (let ((__tmp69383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp69379
                            (let ((__tmp69382 (gx#datum->syntax '#f 'i))
                                  (__tmp69380
                                   (let ((__tmp69381
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp69381 '()))))
                              (declare (not safe))
                              (cons __tmp69382 __tmp69380))))
                       (declare (not safe))
                       (cons __tmp69383 __tmp69379))))
                (declare (not safe))
                (cons __tmp69384 __tmp69378)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69364
                                                      (let ((__tmp69372
                                                             (let ((__tmp69376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp69373
                            (let ((__tmp69375 (gx#datum->syntax '#f 'i))
                                  (__tmp69374
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp69375 __tmp69374))))
                       (declare (not safe))
                       (cons __tmp69376 __tmp69373)))
                    (__tmp69365
                     (let ((__tmp69366
                            (let ((__tmp69371 (gx#datum->syntax '#f 'or))
                                  (__tmp69367
                                   (let ((__tmp69370
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp69368
                                          (let ((__tmp69369
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69369 '()))))
                                     (declare (not safe))
                                     (cons __tmp69370 __tmp69368))))
                              (declare (not safe))
                              (cons __tmp69371 __tmp69367))))
                       (declare (not safe))
                       (cons __tmp69366 '()))))
                (declare (not safe))
                (cons __tmp69372 __tmp69365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69377
                                                       __tmp69364))))
                                          (declare (not safe))
                                          (cons __tmp69385 __tmp69363))))
                                   (declare (not safe))
                                   (cons __tmp69362 '()))))
                            (declare (not safe))
                            (cons __tmp69386 __tmp69361)))
                         (__tmp69313
                          (let ((__tmp69337
                                 (let ((__tmp69356
                                        (let ((__tmp69357
                                               (let ((__tmp69358
                                                      (let ((__tmp69359
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp69359
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L63872_ __tmp69358))))
                                          (declare (not safe))
                                          (cons _L63873_ __tmp69357)))
                                       (__tmp69338
                                        (let ((__tmp69350
                                               (let ((__tmp69355
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp69351
                                                      (let ((__tmp69352
                                                             (let ((__tmp69354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp69353
                            (let () (declare (not safe)) (cons _L63872_ '()))))
                       (declare (not safe))
                       (cons __tmp69354 __tmp69353))))
                (declare (not safe))
                (cons _L63876_ __tmp69352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69355 __tmp69351)))
                                              (__tmp69339
                                               (let ((__tmp69340
                                                      (let ((__tmp69349
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp69341
                                                             (let ((__tmp69342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69344
                                   (let ((__tmp69348
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69345
                                          (let ((__tmp69347
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp69346
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69347 __tmp69346))))
                                     (declare (not safe))
                                     (cons __tmp69348 __tmp69345)))
                                  (__tmp69343
                                   (let ()
                                     (declare (not safe))
                                     (cons _L63871_ '()))))
                              (declare (not safe))
                              (cons __tmp69344 __tmp69343))))
                       (declare (not safe))
                       (cons _L63876_ __tmp69342))))
                (declare (not safe))
                (cons __tmp69349 __tmp69341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69340 '()))))
                                          (declare (not safe))
                                          (cons __tmp69350 __tmp69339))))
                                   (declare (not safe))
                                   (cons __tmp69356 __tmp69338)))
                                (__tmp69314
                                 (let ((__tmp69315
                                        (let ((__tmp69336
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp69316
                                               (let ((__tmp69317
                                                      (let ((__tmp69335
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp69318
                                                             (let ((__tmp69327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69334
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp69328
                                   (let ((__tmp69333
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp69329
                                          (let ((__tmp69332
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69330
                                                 (let ((__tmp69331
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp69331 '()))))
                                            (declare (not safe))
                                            (cons __tmp69332 __tmp69330))))
                                     (declare (not safe))
                                     (cons __tmp69333 __tmp69329))))
                              (declare (not safe))
                              (cons __tmp69334 __tmp69328)))
                           (__tmp69319
                            (let ((__tmp69322
                                   (let ((__tmp69326
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69323
                                          (let ((__tmp69325
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69324
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69325 __tmp69324))))
                                     (declare (not safe))
                                     (cons __tmp69326 __tmp69323)))
                                  (__tmp69320
                                   (let ((__tmp69321
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp69321 '()))))
                              (declare (not safe))
                              (cons __tmp69322 __tmp69320))))
                       (declare (not safe))
                       (cons __tmp69327 __tmp69319))))
                (declare (not safe))
                (cons __tmp69335 __tmp69318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69317 '()))))
                                          (declare (not safe))
                                          (cons __tmp69336 __tmp69316))))
                                   (declare (not safe))
                                   (cons __tmp69315 '()))))
                            (declare (not safe))
                            (cons __tmp69337 __tmp69314))))
                     (declare (not safe))
                     (cons __tmp69360 __tmp69313))))
              (declare (not safe))
              (cons __tmp69393 __tmp69312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69452 __tmp69311))))
                                        (declare (not safe))
                                        (cons __tmp69310 '()))))
                                 (declare (not safe))
                                 (cons __tmp69453 __tmp69309))))
                          (declare (not safe))
                          (cons __tmp69461 __tmp69308))))
                   (declare (not safe))
                   (cons __tmp69307 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69462
                                                          __tmp69306))))
                                             (declare (not safe))
                                             (cons __tmp69475 __tmp69305))))
                                      (declare (not safe))
                                      (cons __tmp69476 __tmp69304))))
                               (declare (not safe))
                               (cons __tmp69303 '()))))
                        (declare (not safe))
                        (cons __tmp69477 __tmp69302))))
                 (declare (not safe))
                 (cons __tmp69517 __tmp69301)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6376463862_
                                                     _hd6376163852_
                                                     _hd6375863842_
                                                     _hd6375563832_
                                                     _hd6375263822_
                                                     _hd6374963812_
                                                     _hd6374663802_
                                                     _hd6374363792_)
                                                    (_g6372963771_
                                                     _g6373063775_))))
                                            (_g6372963771_ _g6373063775_))))
                                    (_g6372963771_ _g6373063775_))))
                            (_g6372963771_ _g6373063775_))))
                    (_g6372963771_ _g6373063775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6372963771_
                                                     _g6373063775_))))
                                            (_g6372963771_ _g6373063775_))))
                                    (_g6372963771_ _g6373063775_))))
                            (_g6372963771_ _g6373063775_))))
                    (_g6372963771_ _g6373063775_)))))
        (_g6372863910_ _$stx63725_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx63914_)
      (let* ((_g6391863952_
              (lambda (_g6391963948_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6391963948_)))
             (_g6391764063_
              (lambda (_g6391963956_)
                (if (gx#stx-pair? _g6391963956_)
                    (let ((_e6392863959_ (gx#syntax-e _g6391963956_)))
                      (let ((_hd6392763963_
                             (let ()
                               (declare (not safe))
                               (##car _e6392863959_)))
                            (_tl6392663966_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6392863959_))))
                        (if (gx#stx-pair? _tl6392663966_)
                            (let ((_e6393163969_ (gx#syntax-e _tl6392663966_)))
                              (let ((_hd6393063973_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6393163969_)))
                                    (_tl6392963976_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6393163969_))))
                                (if (gx#stx-pair? _tl6392963976_)
                                    (let ((_e6393463979_
                                           (gx#syntax-e _tl6392963976_)))
                                      (let ((_hd6393363983_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6393463979_)))
                                            (_tl6393263986_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6393463979_))))
                                        (if (gx#stx-pair? _tl6393263986_)
                                            (let ((_e6393763989_
                                                   (gx#syntax-e
                                                    _tl6393263986_)))
                                              (let ((_hd6393663993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6393763989_)))
                                                    (_tl6393563996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6393763989_))))
                                                (if (gx#stx-pair?
                                                     _tl6393563996_)
                                                    (let ((_e6394063999_
                                                           (gx#syntax-e
                                                            _tl6393563996_)))
                                                      (let ((_hd6393964003_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6394063999_)))
                    (_tl6393864006_
                     (let () (declare (not safe)) (##cdr _e6394063999_))))
                (if (gx#stx-pair? _tl6393864006_)
                    (let ((_e6394364009_ (gx#syntax-e _tl6393864006_)))
                      (let ((_hd6394264013_
                             (let ()
                               (declare (not safe))
                               (##car _e6394364009_)))
                            (_tl6394164016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6394364009_))))
                        (if (gx#stx-pair? _tl6394164016_)
                            (let ((_e6394664019_ (gx#syntax-e _tl6394164016_)))
                              (let ((_hd6394564023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6394664019_)))
                                    (_tl6394464026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6394664019_))))
                                (if (gx#stx-null? _tl6394464026_)
                                    ((lambda (_L64029_
                                              _L64031_
                                              _L64032_
                                              _L64033_
                                              _L64034_
                                              _L64035_)
                                       (let ((__tmp69679
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69518
                                              (let ((__tmp69639
                                                     (let ((__tmp69670
                                                            (let ((__tmp69678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69671
                           (let ((__tmp69672
                                  (let ((__tmp69677
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69673
                                         (let ((__tmp69675
                                                (let ((__tmp69676
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L64031_ '()))))
                                                  (declare (not safe))
                                                  (cons _L64033_ __tmp69676)))
                                               (__tmp69674
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64034_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69675 __tmp69674))))
                                    (declare (not safe))
                                    (cons __tmp69677 __tmp69673))))
                             (declare (not safe))
                             (cons __tmp69672 '()))))
                      (declare (not safe))
                      (cons __tmp69678 __tmp69671)))
                   (__tmp69640
                    (let ((__tmp69664
                           (let ((__tmp69669 (gx#datum->syntax '#f 'size))
                                 (__tmp69665
                                  (let ((__tmp69666
                                         (let ((__tmp69668
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69667
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64035_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69668 __tmp69667))))
                                    (declare (not safe))
                                    (cons __tmp69666 '()))))
                             (declare (not safe))
                             (cons __tmp69669 __tmp69665)))
                          (__tmp69641
                           (let ((__tmp69656
                                  (let ((__tmp69663
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69657
                                         (let ((__tmp69658
                                                (let ((__tmp69662
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69659
                                                       (let ((__tmp69661
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69660
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69661 __tmp69660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69662
                                                        __tmp69659))))
                                           (declare (not safe))
                                           (cons __tmp69658 '()))))
                                    (declare (not safe))
                                    (cons __tmp69663 __tmp69657)))
                                 (__tmp69642
                                  (let ((__tmp69643
                                         (let ((__tmp69655
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69644
                                                (let ((__tmp69645
                                                       (let ((__tmp69654
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69646
                                                              (let ((__tmp69648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69653
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69649
                                    (let ((__tmp69652
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69650
                                           (let ((__tmp69651
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69651 '()))))
                                      (declare (not safe))
                                      (cons __tmp69652 __tmp69650))))
                               (declare (not safe))
                               (cons __tmp69653 __tmp69649)))
                            (__tmp69647
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69648 __tmp69647))))
                 (declare (not safe))
                 (cons __tmp69654 __tmp69646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69645 '()))))
                                           (declare (not safe))
                                           (cons __tmp69655 __tmp69644))))
                                    (declare (not safe))
                                    (cons __tmp69643 '()))))
                             (declare (not safe))
                             (cons __tmp69656 __tmp69642))))
                      (declare (not safe))
                      (cons __tmp69664 __tmp69641))))
               (declare (not safe))
               (cons __tmp69670 __tmp69640)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69519
                                                     (let ((__tmp69520
                                                            (let ((__tmp69638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69521
                           (let ((__tmp69637 (gx#datum->syntax '#f 'loop))
                                 (__tmp69522
                                  (let ((__tmp69628
                                         (let ((__tmp69633
                                                (let ((__tmp69636
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69634
                                                       (let ((__tmp69635
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69635
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69636
                                                        __tmp69634)))
                                               (__tmp69629
                                                (let ((__tmp69630
                                                       (let ((__tmp69632
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69631
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69632 __tmp69631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69630 '()))))
                                           (declare (not safe))
                                           (cons __tmp69633 __tmp69629)))
                                        (__tmp69523
                                         (let ((__tmp69524
                                                (let ((__tmp69627
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69525
                                                       (let ((__tmp69619
                                                              (let ((__tmp69626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69620
                             (let ((__tmp69621
                                    (let ((__tmp69625
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69622
                                           (let ((__tmp69623
                                                  (let ((__tmp69624
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69624 '()))))
                                             (declare (not safe))
                                             (cons _L64035_ __tmp69623))))
                                      (declare (not safe))
                                      (cons __tmp69625 __tmp69622))))
                               (declare (not safe))
                               (cons __tmp69621 '()))))
                        (declare (not safe))
                        (cons __tmp69626 __tmp69620)))
                     (__tmp69526
                      (let ((__tmp69527
                             (let ((__tmp69618 (gx#datum->syntax '#f 'cond))
                                   (__tmp69528
                                    (let ((__tmp69607
                                           (let ((__tmp69611
                                                  (let ((__tmp69617
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69612
                                                         (let ((__tmp69616
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69613
                        (let ((__tmp69614
                               (let ((__tmp69615
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69615 '()))))
                          (declare (not safe))
                          (cons __tmp69614 '()))))
                   (declare (not safe))
                   (cons __tmp69616 __tmp69613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69617
                                                          __tmp69612)))
                                                 (__tmp69608
                                                  (let ((__tmp69609
                                                         (let ((__tmp69610
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp69610 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69609 '()))))
                                             (declare (not safe))
                                             (cons __tmp69611 __tmp69608)))
                                          (__tmp69529
                                           (let ((__tmp69581
                                                  (let ((__tmp69600
                                                         (let ((__tmp69606
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69601
                        (let ((__tmp69605 (gx#datum->syntax '#f 'k))
                              (__tmp69602
                               (let ((__tmp69603
                                      (let ((__tmp69604
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69604 '()))))
                                 (declare (not safe))
                                 (cons __tmp69603 '()))))
                          (declare (not safe))
                          (cons __tmp69605 __tmp69602))))
                   (declare (not safe))
                   (cons __tmp69606 __tmp69601)))
                (__tmp69582
                 (let ((__tmp69583
                        (let ((__tmp69599 (gx#datum->syntax '#f 'loop))
                              (__tmp69584
                               (let ((__tmp69591
                                      (let ((__tmp69598
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69592
                                             (let ((__tmp69597
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69593
                                                    (let ((__tmp69596
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69594
                                                           (let ((__tmp69595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69595 '()))))
              (declare (not safe))
              (cons __tmp69596 __tmp69594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69597 __tmp69593))))
                                        (declare (not safe))
                                        (cons __tmp69598 __tmp69592)))
                                     (__tmp69585
                                      (let ((__tmp69586
                                             (let ((__tmp69590
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69587
                                                    (let ((__tmp69589
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69589
                                                            __tmp69588))))
                                               (declare (not safe))
                                               (cons __tmp69590 __tmp69587))))
                                        (declare (not safe))
                                        (cons __tmp69586 '()))))
                                 (declare (not safe))
                                 (cons __tmp69591 __tmp69585))))
                          (declare (not safe))
                          (cons __tmp69599 __tmp69584))))
                   (declare (not safe))
                   (cons __tmp69583 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69600
                                                          __tmp69582)))
                                                 (__tmp69530
                                                  (let ((__tmp69552
                                                         (let ((__tmp69577
                                                                (let ((__tmp69578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69579
                                      (let ((__tmp69580
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69580 '()))))
                                 (declare (not safe))
                                 (cons _L64031_ __tmp69579))))
                          (declare (not safe))
                          (cons _L64032_ __tmp69578)))
                       (__tmp69553
                        (let ((__tmp69569
                               (let ((__tmp69576
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp69570
                                      (let ((__tmp69571
                                             (let ((__tmp69575
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp69572
                                                    (let ((__tmp69573
                                                           (let ((__tmp69574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp69574 '()))))
              (declare (not safe))
              (cons __tmp69573 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69575 __tmp69572))))
                                        (declare (not safe))
                                        (cons _L64035_ __tmp69571))))
                                 (declare (not safe))
                                 (cons __tmp69576 __tmp69570)))
                              (__tmp69554
                               (let ((__tmp69557
                                      (let ((__tmp69568
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp69558
                                             (let ((__tmp69559
                                                    (let ((__tmp69563
                                                           (let ((__tmp69567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69564
                          (let ((__tmp69566 (gx#datum->syntax '#f 'probe))
                                (__tmp69565
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69566 __tmp69565))))
                     (declare (not safe))
                     (cons __tmp69567 __tmp69564)))
                  (__tmp69560
                   (let ((__tmp69561
                          (let ((__tmp69562
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp69562 '()))))
                     (declare (not safe))
                     (cons __tmp69561 '()))))
              (declare (not safe))
              (cons __tmp69563 __tmp69560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L64035_ __tmp69559))))
                                        (declare (not safe))
                                        (cons __tmp69568 __tmp69558)))
                                     (__tmp69555
                                      (let ((__tmp69556
                                             (let ()
                                               (declare (not safe))
                                               (cons _L64029_ '()))))
                                        (declare (not safe))
                                        (cons __tmp69556 '()))))
                                 (declare (not safe))
                                 (cons __tmp69557 __tmp69555))))
                          (declare (not safe))
                          (cons __tmp69569 __tmp69554))))
                   (declare (not safe))
                   (cons __tmp69577 __tmp69553)))
                (__tmp69531
                 (let ((__tmp69532
                        (let ((__tmp69551 (gx#datum->syntax '#f 'else))
                              (__tmp69533
                               (let ((__tmp69534
                                      (let ((__tmp69550
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69535
                                             (let ((__tmp69542
                                                    (let ((__tmp69549
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69543
                                                           (let ((__tmp69548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69544
                          (let ((__tmp69547 (gx#datum->syntax '#f 'i))
                                (__tmp69545
                                 (let ((__tmp69546
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69546 '()))))
                            (declare (not safe))
                            (cons __tmp69547 __tmp69545))))
                     (declare (not safe))
                     (cons __tmp69548 __tmp69544))))
              (declare (not safe))
              (cons __tmp69549 __tmp69543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69536
                                                    (let ((__tmp69537
                                                           (let ((__tmp69541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69538
                          (let ((__tmp69540 (gx#datum->syntax '#f 'i))
                                (__tmp69539
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69540 __tmp69539))))
                     (declare (not safe))
                     (cons __tmp69541 __tmp69538))))
              (declare (not safe))
              (cons __tmp69537 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69542 __tmp69536))))
                                        (declare (not safe))
                                        (cons __tmp69550 __tmp69535))))
                                 (declare (not safe))
                                 (cons __tmp69534 '()))))
                          (declare (not safe))
                          (cons __tmp69551 __tmp69533))))
                   (declare (not safe))
                   (cons __tmp69532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69552
                                                          __tmp69531))))
                                             (declare (not safe))
                                             (cons __tmp69581 __tmp69530))))
                                      (declare (not safe))
                                      (cons __tmp69607 __tmp69529))))
                               (declare (not safe))
                               (cons __tmp69618 __tmp69528))))
                        (declare (not safe))
                        (cons __tmp69527 '()))))
                 (declare (not safe))
                 (cons __tmp69619 __tmp69526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69627
                                                        __tmp69525))))
                                           (declare (not safe))
                                           (cons __tmp69524 '()))))
                                    (declare (not safe))
                                    (cons __tmp69628 __tmp69523))))
                             (declare (not safe))
                             (cons __tmp69637 __tmp69522))))
                      (declare (not safe))
                      (cons __tmp69638 __tmp69521))))
               (declare (not safe))
               (cons __tmp69520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69639 __tmp69519))))
                                         (declare (not safe))
                                         (cons __tmp69679 __tmp69518)))
                                     _hd6394564023_
                                     _hd6394264013_
                                     _hd6393964003_
                                     _hd6393663993_
                                     _hd6393363983_
                                     _hd6393063973_)
                                    (_g6391863952_ _g6391963956_))))
                            (_g6391863952_ _g6391963956_))))
                    (_g6391863952_ _g6391963956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6391863952_
                                                     _g6391963956_))))
                                            (_g6391863952_ _g6391963956_))))
                                    (_g6391863952_ _g6391963956_))))
                            (_g6391863952_ _g6391963956_))))
                    (_g6391863952_ _g6391963956_)))))
        (_g6391764063_ _$stx63914_)))))
