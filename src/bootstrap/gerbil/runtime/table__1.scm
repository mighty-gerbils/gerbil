(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx62521_)
      (let* ((_g6252562539_
              (lambda (_g6252662535_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6252662535_)))
             (_g6252462581_
              (lambda (_g6252662543_)
                (if (gx#stx-pair? _g6252662543_)
                    (let ((_e6253062546_ (gx#syntax-e _g6252662543_)))
                      (let ((_hd6252962550_
                             (let ()
                               (declare (not safe))
                               (##car _e6253062546_)))
                            (_tl6252862553_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6253062546_))))
                        (if (gx#stx-pair? _tl6252862553_)
                            (let ((_e6253362556_ (gx#syntax-e _tl6252862553_)))
                              (let ((_hd6253262560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6253362556_)))
                                    (_tl6253162563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6253362556_))))
                                (if (gx#stx-null? _tl6253162563_)
                                    ((lambda (_L62566_)
                                       (let ((__tmp68710
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp68708
                                              (let ((__tmp68709
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62566_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp68709))))
                                         (declare (not safe))
                                         (cons __tmp68710 __tmp68708)))
                                     _hd6253262560_)
                                    (_g6252562539_ _g6252662543_))))
                            (_g6252562539_ _g6252662543_))))
                    (_g6252562539_ _g6252662543_)))))
        (_g6252462581_ _$stx62521_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx62585_)
      (let* ((_g6258962635_
              (lambda (_g6259062631_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6259062631_)))
             (_g6258862788_
              (lambda (_g6259062639_)
                (if (gx#stx-pair? _g6259062639_)
                    (let ((_e6260262642_ (gx#syntax-e _g6259062639_)))
                      (let ((_hd6260162646_
                             (let ()
                               (declare (not safe))
                               (##car _e6260262642_)))
                            (_tl6260062649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6260262642_))))
                        (if (gx#stx-pair? _tl6260062649_)
                            (let ((_e6260562652_ (gx#syntax-e _tl6260062649_)))
                              (let ((_hd6260462656_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6260562652_)))
                                    (_tl6260362659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6260562652_))))
                                (if (gx#stx-pair? _tl6260362659_)
                                    (let ((_e6260862662_
                                           (gx#syntax-e _tl6260362659_)))
                                      (let ((_hd6260762666_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6260862662_)))
                                            (_tl6260662669_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6260862662_))))
                                        (if (gx#stx-pair? _tl6260662669_)
                                            (let ((_e6261162672_
                                                   (gx#syntax-e
                                                    _tl6260662669_)))
                                              (let ((_hd6261062676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6261162672_)))
                                                    (_tl6260962679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6261162672_))))
                                                (if (gx#stx-pair?
                                                     _tl6260962679_)
                                                    (let ((_e6261462682_
                                                           (gx#syntax-e
                                                            _tl6260962679_)))
                                                      (let ((_hd6261362686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6261462682_)))
                    (_tl6261262689_
                     (let () (declare (not safe)) (##cdr _e6261462682_))))
                (if (gx#stx-pair? _tl6261262689_)
                    (let ((_e6261762692_ (gx#syntax-e _tl6261262689_)))
                      (let ((_hd6261662696_
                             (let ()
                               (declare (not safe))
                               (##car _e6261762692_)))
                            (_tl6261562699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6261762692_))))
                        (if (gx#stx-pair? _tl6261562699_)
                            (let ((_e6262062702_ (gx#syntax-e _tl6261562699_)))
                              (let ((_hd6261962706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6262062702_)))
                                    (_tl6261862709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6262062702_))))
                                (if (gx#stx-pair? _tl6261862709_)
                                    (let ((_e6262362712_
                                           (gx#syntax-e _tl6261862709_)))
                                      (let ((_hd6262262716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6262362712_)))
                                            (_tl6262162719_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6262362712_))))
                                        (if (gx#stx-pair? _tl6262162719_)
                                            (let ((_e6262662722_
                                                   (gx#syntax-e
                                                    _tl6262162719_)))
                                              (let ((_hd6262562726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6262662722_)))
                                                    (_tl6262462729_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6262662722_))))
                                                (if (gx#stx-pair?
                                                     _tl6262462729_)
                                                    (let ((_e6262962732_
                                                           (gx#syntax-e
                                                            _tl6262462729_)))
                                                      (let ((_hd6262862736_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6262962732_)))
                    (_tl6262762739_
                     (let () (declare (not safe)) (##cdr _e6262962732_))))
                (if (gx#stx-null? _tl6262762739_)
                    ((lambda (_L62742_
                              _L62744_
                              _L62745_
                              _L62746_
                              _L62747_
                              _L62748_
                              _L62749_
                              _L62750_
                              _L62751_)
                       (let ((__tmp69142 (gx#datum->syntax '#f 'begin))
                             (__tmp68711
                              (let ((__tmp69121
                                     (let ((__tmp69141
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp69122
                                            (let ((__tmp69132
                                                   (let ((__tmp69133
                                                          (let ((__tmp69138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69140 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69139
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp69140 __tmp69139)))
                        (__tmp69134
                         (let ((__tmp69135
                                (let ((__tmp69137 (gx#datum->syntax '#f 'seed))
                                      (__tmp69136
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp69137 __tmp69136))))
                           (declare (not safe))
                           (cons __tmp69135 '()))))
                    (declare (not safe))
                    (cons __tmp69138 __tmp69134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62751_
                                                           __tmp69133)))
                                                  (__tmp69123
                                                   (let ((__tmp69124
                                                          (let ((__tmp69131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp69125
                         (let ((__tmp69130 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69126
                                (let ((__tmp69127
                                       (let ((__tmp69128
                                              (let ((__tmp69129
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp69129 '()))))
                                         (declare (not safe))
                                         (cons _L62742_ __tmp69128))))
                                  (declare (not safe))
                                  (cons _L62744_ __tmp69127))))
                           (declare (not safe))
                           (cons __tmp69130 __tmp69126))))
                    (declare (not safe))
                    (cons __tmp69131 __tmp69125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69124 '()))))
                                              (declare (not safe))
                                              (cons __tmp69132 __tmp69123))))
                                       (declare (not safe))
                                       (cons __tmp69141 __tmp69122)))
                                    (__tmp68712
                                     (let ((__tmp69078
                                            (let ((__tmp69120
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp69079
                                                   (let ((__tmp69113
                                                          (let ((__tmp69114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69119 (gx#datum->syntax '#f 'tab))
                               (__tmp69115
                                (let ((__tmp69118 (gx#datum->syntax '#f 'key))
                                      (__tmp69116
                                       (let ((__tmp69117
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp69117 '()))))
                                  (declare (not safe))
                                  (cons __tmp69118 __tmp69116))))
                           (declare (not safe))
                           (cons __tmp69119 __tmp69115))))
                    (declare (not safe))
                    (cons _L62750_ __tmp69114)))
                 (__tmp69080
                  (let ((__tmp69081
                         (let ((__tmp69112 (gx#datum->syntax '#f 'let))
                               (__tmp69082
                                (let ((__tmp69096
                                       (let ((__tmp69105
                                              (let ((__tmp69111
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp69106
                                                     (let ((__tmp69107
                                                            (let ((__tmp69110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp69108
                           (let ((__tmp69109 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69109 '()))))
                      (declare (not safe))
                      (cons __tmp69110 __tmp69108))))
               (declare (not safe))
               (cons __tmp69107 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69111 __tmp69106)))
                                             (__tmp69097
                                              (let ((__tmp69098
                                                     (let ((__tmp69104
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp69099
                                                            (let ((__tmp69100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69103
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp69101
                                  (let ((__tmp69102
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp69102 '()))))
                             (declare (not safe))
                             (cons __tmp69103 __tmp69101))))
                      (declare (not safe))
                      (cons __tmp69100 '()))))
               (declare (not safe))
               (cons __tmp69104 __tmp69099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69098 '()))))
                                         (declare (not safe))
                                         (cons __tmp69105 __tmp69097)))
                                      (__tmp69083
                                       (let ((__tmp69084
                                              (let ((__tmp69095
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp69085
                                                     (let ((__tmp69094
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp69086
                                                            (let ((__tmp69093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp69087
                           (let ((__tmp69088
                                  (let ((__tmp69089
                                         (let ((__tmp69092
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp69090
                                                (let ((__tmp69091
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp69091 '()))))
                                           (declare (not safe))
                                           (cons __tmp69092 __tmp69090))))
                                    (declare (not safe))
                                    (cons _L62742_ __tmp69089))))
                             (declare (not safe))
                             (cons _L62744_ __tmp69088))))
                      (declare (not safe))
                      (cons __tmp69093 __tmp69087))))
               (declare (not safe))
               (cons __tmp69094 __tmp69086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69095 __tmp69085))))
                                         (declare (not safe))
                                         (cons __tmp69084 '()))))
                                  (declare (not safe))
                                  (cons __tmp69096 __tmp69083))))
                           (declare (not safe))
                           (cons __tmp69112 __tmp69082))))
                    (declare (not safe))
                    (cons __tmp69081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69113
                                                           __tmp69080))))
                                              (declare (not safe))
                                              (cons __tmp69120 __tmp69079)))
                                           (__tmp68713
                                            (let ((__tmp69032
                                                   (let ((__tmp69077
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp69033
                                                          (let ((__tmp69070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69071
                                (let ((__tmp69076 (gx#datum->syntax '#f 'tab))
                                      (__tmp69072
                                       (let ((__tmp69075
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp69073
                                              (let ((__tmp69074
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp69074 '()))))
                                         (declare (not safe))
                                         (cons __tmp69075 __tmp69073))))
                                  (declare (not safe))
                                  (cons __tmp69076 __tmp69072))))
                           (declare (not safe))
                           (cons _L62749_ __tmp69071)))
                        (__tmp69034
                         (let ((__tmp69043
                                (let ((__tmp69069 (gx#datum->syntax '#f 'when))
                                      (__tmp69044
                                       (let ((__tmp69050
                                              (let ((__tmp69068
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp69051
                                                     (let ((__tmp69064
                                                            (let ((__tmp69067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp69065
                           (let ((__tmp69066 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69066 '()))))
                      (declare (not safe))
                      (cons __tmp69067 __tmp69065)))
                   (__tmp69052
                    (let ((__tmp69053
                           (let ((__tmp69063
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp69054
                                  (let ((__tmp69056
                                         (let ((__tmp69062
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69057
                                                (let ((__tmp69058
                                                       (let ((__tmp69061
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp69059
                                                              (let ((__tmp69060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69060 '()))))
                 (declare (not safe))
                 (cons __tmp69061 __tmp69059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69058 '()))))
                                           (declare (not safe))
                                           (cons __tmp69062 __tmp69057)))
                                        (__tmp69055
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp69056 __tmp69055))))
                             (declare (not safe))
                             (cons __tmp69063 __tmp69054))))
                      (declare (not safe))
                      (cons __tmp69053 '()))))
               (declare (not safe))
               (cons __tmp69064 __tmp69052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69068 __tmp69051)))
                                             (__tmp69045
                                              (let ((__tmp69046
                                                     (let ((__tmp69049
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp69047
                                                            (let ((__tmp69048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp69048 '()))))
               (declare (not safe))
               (cons __tmp69049 __tmp69047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69046 '()))))
                                         (declare (not safe))
                                         (cons __tmp69050 __tmp69045))))
                                  (declare (not safe))
                                  (cons __tmp69069 __tmp69044)))
                               (__tmp69035
                                (let ((__tmp69036
                                       (let ((__tmp69037
                                              (let ((__tmp69042
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp69038
                                                     (let ((__tmp69041
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp69039
                                                            (let ((__tmp69040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp69040 '()))))
               (declare (not safe))
               (cons __tmp69041 __tmp69039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69042 __tmp69038))))
                                         (declare (not safe))
                                         (cons _L62748_ __tmp69037))))
                                  (declare (not safe))
                                  (cons __tmp69036 '()))))
                           (declare (not safe))
                           (cons __tmp69043 __tmp69035))))
                    (declare (not safe))
                    (cons __tmp69070 __tmp69034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69077
                                                           __tmp69033)))
                                                  (__tmp68714
                                                   (let ((__tmp68930
                                                          (let ((__tmp69031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp68931
                         (let ((__tmp69024
                                (let ((__tmp69025
                                       (let ((__tmp69030
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp69026
                                              (let ((__tmp69029
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp69027
                                                     (let ((__tmp69028
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp69028 '()))))
                                                (declare (not safe))
                                                (cons __tmp69029 __tmp69027))))
                                         (declare (not safe))
                                         (cons __tmp69030 __tmp69026))))
                                  (declare (not safe))
                                  (cons _L62748_ __tmp69025)))
                               (__tmp68932
                                (let ((__tmp68933
                                       (let ((__tmp69023
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp68934
                                              (let ((__tmp69007
                                                     (let ((__tmp69016
                                                            (let ((__tmp69022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp69017
                           (let ((__tmp69018
                                  (let ((__tmp69021
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp69019
                                         (let ((__tmp69020
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp69020 '()))))
                                    (declare (not safe))
                                    (cons __tmp69021 __tmp69019))))
                             (declare (not safe))
                             (cons __tmp69018 '()))))
                      (declare (not safe))
                      (cons __tmp69022 __tmp69017)))
                   (__tmp69008
                    (let ((__tmp69009
                           (let ((__tmp69015 (gx#datum->syntax '#f 'seed))
                                 (__tmp69010
                                  (let ((__tmp69011
                                         (let ((__tmp69014
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp69012
                                                (let ((__tmp69013
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp69013 '()))))
                                           (declare (not safe))
                                           (cons __tmp69014 __tmp69012))))
                                    (declare (not safe))
                                    (cons __tmp69011 '()))))
                             (declare (not safe))
                             (cons __tmp69015 __tmp69010))))
                      (declare (not safe))
                      (cons __tmp69009 '()))))
               (declare (not safe))
               (cons __tmp69016 __tmp69008)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp68935
                                                     (let ((__tmp68936
                                                            (let ((__tmp69006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp68937
                           (let ((__tmp69005 (gx#datum->syntax '#f 'table))
                                 (__tmp68938
                                  (let ((__tmp69004
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp68939
                                         (let ((__tmp68940
                                                (let ((__tmp68941
                                                       (let ((__tmp69003
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp68942
                                                              (let ((__tmp69002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp68943
                             (let ((__tmp68965
                                    (let ((__tmp69001
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp68966
                                           (let ((__tmp68967
                                                  (let ((__tmp68985
                                                         (let ((__tmp69000
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp68986
                        (let ((__tmp68996
                               (let ((__tmp68999
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp68997
                                      (let ((__tmp68998
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp68998 '()))))
                                 (declare (not safe))
                                 (cons __tmp68999 __tmp68997)))
                              (__tmp68987
                               (let ((__tmp68988
                                      (let ((__tmp68995
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp68989
                                             (let ((__tmp68991
                                                    (let ((__tmp68994
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp68992
                                                           (let ((__tmp68993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp68993 '()))))
              (declare (not safe))
              (cons __tmp68994 __tmp68992)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp68990
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp68991 __tmp68990))))
                                        (declare (not safe))
                                        (cons __tmp68995 __tmp68989))))
                                 (declare (not safe))
                                 (cons __tmp68988 '()))))
                          (declare (not safe))
                          (cons __tmp68996 __tmp68987))))
                   (declare (not safe))
                   (cons __tmp69000 __tmp68986)))
                (__tmp68968
                 (let ((__tmp68969
                        (let ((__tmp68984 (gx#datum->syntax '#f 'set!))
                              (__tmp68970
                               (let ((__tmp68980
                                      (let ((__tmp68983
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp68981
                                             (let ((__tmp68982
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp68982 '()))))
                                        (declare (not safe))
                                        (cons __tmp68983 __tmp68981)))
                                     (__tmp68971
                                      (let ((__tmp68972
                                             (let ((__tmp68979
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp68973
                                                    (let ((__tmp68975
                                                           (let ((__tmp68978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp68976
                          (let ((__tmp68977 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp68977 '()))))
                     (declare (not safe))
                     (cons __tmp68978 __tmp68976)))
                  (__tmp68974 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp68975 __tmp68974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68979 __tmp68973))))
                                        (declare (not safe))
                                        (cons __tmp68972 '()))))
                                 (declare (not safe))
                                 (cons __tmp68980 __tmp68971))))
                          (declare (not safe))
                          (cons __tmp68984 __tmp68970))))
                   (declare (not safe))
                   (cons __tmp68969 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp68985
                                                          __tmp68968))))
                                             (declare (not safe))
                                             (cons '() __tmp68967))))
                                      (declare (not safe))
                                      (cons __tmp69001 __tmp68966)))
                                   (__tmp68944
                                    (let ((__tmp68945
                                           (let ((__tmp68964
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp68946
                                                  (let ((__tmp68947
                                                         (let ((__tmp68948
                                                                (let ((__tmp68963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp68949
                               (let ((__tmp68959
                                      (let ((__tmp68962
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp68960
                                             (let ((__tmp68961
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp68961 '()))))
                                        (declare (not safe))
                                        (cons __tmp68962 __tmp68960)))
                                     (__tmp68950
                                      (let ((__tmp68951
                                             (let ((__tmp68958
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp68952
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
                  (__tmp68953 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp68954 __tmp68953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68958 __tmp68952))))
                                        (declare (not safe))
                                        (cons __tmp68951 '()))))
                                 (declare (not safe))
                                 (cons __tmp68959 __tmp68950))))
                          (declare (not safe))
                          (cons __tmp68963 __tmp68949))))
                   (declare (not safe))
                   (cons __tmp68948 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp68947))))
                                             (declare (not safe))
                                             (cons __tmp68964 __tmp68946))))
                                      (declare (not safe))
                                      (cons __tmp68945 '()))))
                               (declare (not safe))
                               (cons __tmp68965 __tmp68944))))
                        (declare (not safe))
                        (cons __tmp69002 __tmp68943))))
                 (declare (not safe))
                 (cons __tmp69003 __tmp68942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L62742_ __tmp68941))))
                                           (declare (not safe))
                                           (cons _L62744_ __tmp68940))))
                                    (declare (not safe))
                                    (cons __tmp69004 __tmp68939))))
                             (declare (not safe))
                             (cons __tmp69005 __tmp68938))))
                      (declare (not safe))
                      (cons __tmp69006 __tmp68937))))
               (declare (not safe))
               (cons __tmp68936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69007 __tmp68935))))
                                         (declare (not safe))
                                         (cons __tmp69023 __tmp68934))))
                                  (declare (not safe))
                                  (cons __tmp68933 '()))))
                           (declare (not safe))
                           (cons __tmp69024 __tmp68932))))
                    (declare (not safe))
                    (cons __tmp69031 __tmp68931)))
                 (__tmp68715
                  (let ((__tmp68882
                         (let ((__tmp68929 (gx#datum->syntax '#f 'def))
                               (__tmp68883
                                (let ((__tmp68921
                                       (let ((__tmp68922
                                              (let ((__tmp68928
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp68923
                                                     (let ((__tmp68927
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp68924
                                                            (let ((__tmp68925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp68926 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp68926 '()))))
                      (declare (not safe))
                      (cons _L62747_ __tmp68925))))
               (declare (not safe))
               (cons __tmp68927 __tmp68924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68928 __tmp68923))))
                                         (declare (not safe))
                                         (cons _L62747_ __tmp68922)))
                                      (__tmp68884
                                       (let ((__tmp68894
                                              (let ((__tmp68920
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp68895
                                                     (let ((__tmp68901
                                                            (let ((__tmp68919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp68902
                           (let ((__tmp68915
                                  (let ((__tmp68918
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp68916
                                         (let ((__tmp68917
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp68917 '()))))
                                    (declare (not safe))
                                    (cons __tmp68918 __tmp68916)))
                                 (__tmp68903
                                  (let ((__tmp68904
                                         (let ((__tmp68914
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp68905
                                                (let ((__tmp68907
                                                       (let ((__tmp68913
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp68908
                                                              (let ((__tmp68909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68912
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp68910
                                    (let ((__tmp68911
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp68911 '()))))
                               (declare (not safe))
                               (cons __tmp68912 __tmp68910))))
                        (declare (not safe))
                        (cons __tmp68909 '()))))
                 (declare (not safe))
                 (cons __tmp68913 __tmp68908)))
              (__tmp68906 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68907
                                                        __tmp68906))))
                                           (declare (not safe))
                                           (cons __tmp68914 __tmp68905))))
                                    (declare (not safe))
                                    (cons __tmp68904 '()))))
                             (declare (not safe))
                             (cons __tmp68915 __tmp68903))))
                      (declare (not safe))
                      (cons __tmp68919 __tmp68902)))
                   (__tmp68896
                    (let ((__tmp68897
                           (let ((__tmp68900
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp68898
                                  (let ((__tmp68899
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp68899 '()))))
                             (declare (not safe))
                             (cons __tmp68900 __tmp68898))))
                      (declare (not safe))
                      (cons __tmp68897 '()))))
               (declare (not safe))
               (cons __tmp68901 __tmp68896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68920 __tmp68895)))
                                             (__tmp68885
                                              (let ((__tmp68886
                                                     (let ((__tmp68887
                                                            (let ((__tmp68893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp68888
                           (let ((__tmp68892 (gx#datum->syntax '#f 'key))
                                 (__tmp68889
                                  (let ((__tmp68890
                                         (let ((__tmp68891
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp68891 '()))))
                                    (declare (not safe))
                                    (cons _L62747_ __tmp68890))))
                             (declare (not safe))
                             (cons __tmp68892 __tmp68889))))
                      (declare (not safe))
                      (cons __tmp68893 __tmp68888))))
               (declare (not safe))
               (cons _L62746_ __tmp68887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68886 '()))))
                                         (declare (not safe))
                                         (cons __tmp68894 __tmp68885))))
                                  (declare (not safe))
                                  (cons __tmp68921 __tmp68884))))
                           (declare (not safe))
                           (cons __tmp68929 __tmp68883)))
                        (__tmp68716
                         (let ((__tmp68778
                                (let ((__tmp68881 (gx#datum->syntax '#f 'def))
                                      (__tmp68779
                                       (let ((__tmp68873
                                              (let ((__tmp68874
                                                     (let ((__tmp68880
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp68875
                                                            (let ((__tmp68879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp68876
                           (let ((__tmp68877
                                  (let ((__tmp68878
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp68878 '()))))
                             (declare (not safe))
                             (cons _L62747_ __tmp68877))))
                      (declare (not safe))
                      (cons __tmp68879 __tmp68876))))
               (declare (not safe))
               (cons __tmp68880 __tmp68875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L62746_ __tmp68874)))
                                             (__tmp68780
                                              (let ((__tmp68781
                                                     (let ((__tmp68872
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp68782
                                                            (let ((__tmp68856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp68865
                                  (let ((__tmp68871
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp68866
                                         (let ((__tmp68867
                                                (let ((__tmp68870
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp68868
                                                       (let ((__tmp68869
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp68869
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp68870
                                                        __tmp68868))))
                                           (declare (not safe))
                                           (cons __tmp68867 '()))))
                                    (declare (not safe))
                                    (cons __tmp68871 __tmp68866)))
                                 (__tmp68857
                                  (let ((__tmp68858
                                         (let ((__tmp68864
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp68859
                                                (let ((__tmp68860
                                                       (let ((__tmp68863
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp68861
                                                              (let ((__tmp68862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68862 '()))))
                 (declare (not safe))
                 (cons __tmp68863 __tmp68861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68860 '()))))
                                           (declare (not safe))
                                           (cons __tmp68864 __tmp68859))))
                                    (declare (not safe))
                                    (cons __tmp68858 '()))))
                             (declare (not safe))
                             (cons __tmp68865 __tmp68857)))
                          (__tmp68783
                           (let ((__tmp68784
                                  (let ((__tmp68855
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp68785
                                         (let ((__tmp68854
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp68786
                                                (let ((__tmp68853
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp68787
                                                       (let ((__tmp68788
                                                              (let ((__tmp68789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68852 (gx#datum->syntax '#f 'key))
                                   (__tmp68790
                                    (let ((__tmp68791
                                           (let ((__tmp68851
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp68792
                                                  (let ((__tmp68814
                                                         (let ((__tmp68850
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp68815
                        (let ((__tmp68816
                               (let ((__tmp68834
                                      (let ((__tmp68849
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp68835
                                             (let ((__tmp68845
                                                    (let ((__tmp68848
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp68846
                                                           (let ((__tmp68847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp68847 '()))))
              (declare (not safe))
              (cons __tmp68848 __tmp68846)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp68836
                                                    (let ((__tmp68837
                                                           (let ((__tmp68844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp68838
                          (let ((__tmp68840
                                 (let ((__tmp68843
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp68841
                                        (let ((__tmp68842
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp68842 '()))))
                                   (declare (not safe))
                                   (cons __tmp68843 __tmp68841)))
                                (__tmp68839
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp68840 __tmp68839))))
                     (declare (not safe))
                     (cons __tmp68844 __tmp68838))))
              (declare (not safe))
              (cons __tmp68837 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68845 __tmp68836))))
                                        (declare (not safe))
                                        (cons __tmp68849 __tmp68835)))
                                     (__tmp68817
                                      (let ((__tmp68818
                                             (let ((__tmp68833
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp68819
                                                    (let ((__tmp68829
                                                           (let ((__tmp68832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp68830
                          (let ((__tmp68831 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp68831 '()))))
                     (declare (not safe))
                     (cons __tmp68832 __tmp68830)))
                  (__tmp68820
                   (let ((__tmp68821
                          (let ((__tmp68828 (gx#datum->syntax '#f 'fx+))
                                (__tmp68822
                                 (let ((__tmp68824
                                        (let ((__tmp68827
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp68825
                                               (let ((__tmp68826
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp68826 '()))))
                                          (declare (not safe))
                                          (cons __tmp68827 __tmp68825)))
                                       (__tmp68823
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp68824 __tmp68823))))
                            (declare (not safe))
                            (cons __tmp68828 __tmp68822))))
                     (declare (not safe))
                     (cons __tmp68821 '()))))
              (declare (not safe))
              (cons __tmp68829 __tmp68820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68833 __tmp68819))))
                                        (declare (not safe))
                                        (cons __tmp68818 '()))))
                                 (declare (not safe))
                                 (cons __tmp68834 __tmp68817))))
                          (declare (not safe))
                          (cons '() __tmp68816))))
                   (declare (not safe))
                   (cons __tmp68850 __tmp68815)))
                (__tmp68793
                 (let ((__tmp68794
                        (let ((__tmp68813 (gx#datum->syntax '#f 'lambda))
                              (__tmp68795
                               (let ((__tmp68796
                                      (let ((__tmp68797
                                             (let ((__tmp68812
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp68798
                                                    (let ((__tmp68808
                                                           (let ((__tmp68811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp68809
                          (let ((__tmp68810 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp68810 '()))))
                     (declare (not safe))
                     (cons __tmp68811 __tmp68809)))
                  (__tmp68799
                   (let ((__tmp68800
                          (let ((__tmp68807 (gx#datum->syntax '#f 'fx+))
                                (__tmp68801
                                 (let ((__tmp68803
                                        (let ((__tmp68806
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp68804
                                               (let ((__tmp68805
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp68805 '()))))
                                          (declare (not safe))
                                          (cons __tmp68806 __tmp68804)))
                                       (__tmp68802
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp68803 __tmp68802))))
                            (declare (not safe))
                            (cons __tmp68807 __tmp68801))))
                     (declare (not safe))
                     (cons __tmp68800 '()))))
              (declare (not safe))
              (cons __tmp68808 __tmp68799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68812 __tmp68798))))
                                        (declare (not safe))
                                        (cons __tmp68797 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp68796))))
                          (declare (not safe))
                          (cons __tmp68813 __tmp68795))))
                   (declare (not safe))
                   (cons __tmp68794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp68814
                                                          __tmp68793))))
                                             (declare (not safe))
                                             (cons __tmp68851 __tmp68792))))
                                      (declare (not safe))
                                      (cons _L62747_ __tmp68791))))
                               (declare (not safe))
                               (cons __tmp68852 __tmp68790))))
                        (declare (not safe))
                        (cons _L62742_ __tmp68789))))
                 (declare (not safe))
                 (cons _L62744_ __tmp68788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68853
                                                        __tmp68787))))
                                           (declare (not safe))
                                           (cons __tmp68854 __tmp68786))))
                                    (declare (not safe))
                                    (cons __tmp68855 __tmp68785))))
                             (declare (not safe))
                             (cons __tmp68784 '()))))
                      (declare (not safe))
                      (cons __tmp68856 __tmp68783))))
               (declare (not safe))
               (cons __tmp68872 __tmp68782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68781 '()))))
                                         (declare (not safe))
                                         (cons __tmp68873 __tmp68780))))
                                  (declare (not safe))
                                  (cons __tmp68881 __tmp68779)))
                               (__tmp68717
                                (let ((__tmp68718
                                       (let ((__tmp68777
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp68719
                                              (let ((__tmp68772
                                                     (let ((__tmp68773
                                                            (let ((__tmp68776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp68774
                           (let ((__tmp68775 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp68775 '()))))
                      (declare (not safe))
                      (cons __tmp68776 __tmp68774))))
               (declare (not safe))
               (cons _L62745_ __tmp68773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp68720
                                                     (let ((__tmp68721
                                                            (let ((__tmp68771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp68722
                           (let ((__tmp68755
                                  (let ((__tmp68764
                                         (let ((__tmp68770
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp68765
                                                (let ((__tmp68766
                                                       (let ((__tmp68769
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp68767
                                                              (let ((__tmp68768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68768 '()))))
                 (declare (not safe))
                 (cons __tmp68769 __tmp68767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68766 '()))))
                                           (declare (not safe))
                                           (cons __tmp68770 __tmp68765)))
                                        (__tmp68756
                                         (let ((__tmp68757
                                                (let ((__tmp68763
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp68758
                                                       (let ((__tmp68759
                                                              (let ((__tmp68762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp68760
                             (let ((__tmp68761 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp68761 '()))))
                        (declare (not safe))
                        (cons __tmp68762 __tmp68760))))
                 (declare (not safe))
                 (cons __tmp68759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68763
                                                        __tmp68758))))
                                           (declare (not safe))
                                           (cons __tmp68757 '()))))
                                    (declare (not safe))
                                    (cons __tmp68764 __tmp68756)))
                                 (__tmp68723
                                  (let ((__tmp68724
                                         (let ((__tmp68754
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp68725
                                                (let ((__tmp68753
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp68726
                                                       (let ((__tmp68752
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp68727
                                                              (let ((__tmp68728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68729
                                    (let ((__tmp68751
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp68730
                                           (let ((__tmp68731
                                                  (let ((__tmp68750
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp68732
                                                         (let ((__tmp68733
                                                                (let ((__tmp68734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp68749 (gx#datum->syntax '#f 'set!))
                                     (__tmp68735
                                      (let ((__tmp68745
                                             (let ((__tmp68748
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp68746
                                                    (let ((__tmp68747
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp68747 '()))))
                                               (declare (not safe))
                                               (cons __tmp68748 __tmp68746)))
                                            (__tmp68736
                                             (let ((__tmp68737
                                                    (let ((__tmp68744
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp68738
                                                           (let ((__tmp68740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp68743
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp68741
                                 (let ((__tmp68742
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp68742 '()))))
                            (declare (not safe))
                            (cons __tmp68743 __tmp68741)))
                         (__tmp68739
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp68740 __tmp68739))))
              (declare (not safe))
              (cons __tmp68744 __tmp68738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68737 '()))))
                                        (declare (not safe))
                                        (cons __tmp68745 __tmp68736))))
                                 (declare (not safe))
                                 (cons __tmp68749 __tmp68735))))
                          (declare (not safe))
                          (cons __tmp68734 '()))))
                   (declare (not safe))
                   (cons '() __tmp68733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp68750
                                                          __tmp68732))))
                                             (declare (not safe))
                                             (cons __tmp68731 '()))))
                                      (declare (not safe))
                                      (cons __tmp68751 __tmp68730))))
                               (declare (not safe))
                               (cons _L62742_ __tmp68729))))
                        (declare (not safe))
                        (cons _L62744_ __tmp68728))))
                 (declare (not safe))
                 (cons __tmp68752 __tmp68727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68753
                                                        __tmp68726))))
                                           (declare (not safe))
                                           (cons __tmp68754 __tmp68725))))
                                    (declare (not safe))
                                    (cons __tmp68724 '()))))
                             (declare (not safe))
                             (cons __tmp68755 __tmp68723))))
                      (declare (not safe))
                      (cons __tmp68771 __tmp68722))))
               (declare (not safe))
               (cons __tmp68721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68772 __tmp68720))))
                                         (declare (not safe))
                                         (cons __tmp68777 __tmp68719))))
                                  (declare (not safe))
                                  (cons __tmp68718 '()))))
                           (declare (not safe))
                           (cons __tmp68778 __tmp68717))))
                    (declare (not safe))
                    (cons __tmp68882 __tmp68716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68930
                                                           __tmp68715))))
                                              (declare (not safe))
                                              (cons __tmp69032 __tmp68714))))
                                       (declare (not safe))
                                       (cons __tmp69078 __tmp68713))))
                                (declare (not safe))
                                (cons __tmp69121 __tmp68712))))
                         (declare (not safe))
                         (cons __tmp69142 __tmp68711)))
                     _hd6262862736_
                     _hd6262562726_
                     _hd6262262716_
                     _hd6261962706_
                     _hd6261662696_
                     _hd6261362686_
                     _hd6261062676_
                     _hd6260762666_
                     _hd6260462656_)
                    (_g6258962635_ _g6259062639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6258962635_
                                                     _g6259062639_))))
                                            (_g6258962635_ _g6259062639_))))
                                    (_g6258962635_ _g6259062639_))))
                            (_g6258962635_ _g6259062639_))))
                    (_g6258962635_ _g6259062639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6258962635_
                                                     _g6259062639_))))
                                            (_g6258962635_ _g6259062639_))))
                                    (_g6258962635_ _g6259062639_))))
                            (_g6258962635_ _g6259062639_))))
                    (_g6258962635_ _g6259062639_)))))
        (_g6258862788_ _$stx62585_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx62792_)
      (let* ((_g6279662818_
              (lambda (_g6279762814_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6279762814_)))
             (_g6279562887_
              (lambda (_g6279762822_)
                (if (gx#stx-pair? _g6279762822_)
                    (let ((_e6280362825_ (gx#syntax-e _g6279762822_)))
                      (let ((_hd6280262829_
                             (let ()
                               (declare (not safe))
                               (##car _e6280362825_)))
                            (_tl6280162832_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6280362825_))))
                        (if (gx#stx-pair? _tl6280162832_)
                            (let ((_e6280662835_ (gx#syntax-e _tl6280162832_)))
                              (let ((_hd6280562839_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6280662835_)))
                                    (_tl6280462842_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6280662835_))))
                                (if (gx#stx-pair? _tl6280462842_)
                                    (let ((_e6280962845_
                                           (gx#syntax-e _tl6280462842_)))
                                      (let ((_hd6280862849_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6280962845_)))
                                            (_tl6280762852_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6280962845_))))
                                        (if (gx#stx-pair? _tl6280762852_)
                                            (let ((_e6281262855_
                                                   (gx#syntax-e
                                                    _tl6280762852_)))
                                              (let ((_hd6281162859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6281262855_)))
                                                    (_tl6281062862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6281262855_))))
                                                (if (gx#stx-null?
                                                     _tl6281062862_)
                                                    ((lambda (_L62865_
                                                              _L62867_
                                                              _L62868_)
                                                       (let ((__tmp69162
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp69143
                                                              (let ((__tmp69150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69161
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp69151
                                    (let ((__tmp69152
                                           (let ((__tmp69160
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69153
                                                  (let ((__tmp69154
                                                         (let ((__tmp69155
                                                                (let ((__tmp69156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69159 (gx#datum->syntax '#f 'fx*))
                                     (__tmp69157
                                      (let ((__tmp69158
                                             (let ()
                                               (declare (not safe))
                                               (cons _L62867_ '()))))
                                        (declare (not safe))
                                        (cons _L62867_ __tmp69158))))
                                 (declare (not safe))
                                 (cons __tmp69159 __tmp69157))))
                          (declare (not safe))
                          (cons __tmp69156 '()))))
                   (declare (not safe))
                   (cons _L62867_ __tmp69155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L62868_
                                                          __tmp69154))))
                                             (declare (not safe))
                                             (cons __tmp69160 __tmp69153))))
                                      (declare (not safe))
                                      (cons __tmp69152 '()))))
                               (declare (not safe))
                               (cons __tmp69161 __tmp69151)))
                            (__tmp69144
                             (let ((__tmp69145
                                    (let ((__tmp69149
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp69146
                                           (let ((__tmp69148
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp69147
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L62865_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69148 __tmp69147))))
                                      (declare (not safe))
                                      (cons __tmp69149 __tmp69146))))
                               (declare (not safe))
                               (cons __tmp69145 '()))))
                        (declare (not safe))
                        (cons __tmp69150 __tmp69144))))
                 (declare (not safe))
                 (cons __tmp69162 __tmp69143)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6281162859_
                                                     _hd6280862849_
                                                     _hd6280562839_)
                                                    (_g6279662818_
                                                     _g6279762822_))))
                                            (_g6279662818_ _g6279762822_))))
                                    (_g6279662818_ _g6279762822_))))
                            (_g6279662818_ _g6279762822_))))
                    (_g6279662818_ _g6279762822_)))))
        (_g6279562887_ _$stx62792_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx62891_)
      (let* ((_g6289562929_
              (lambda (_g6289662925_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6289662925_)))
             (_g6289463040_
              (lambda (_g6289662933_)
                (if (gx#stx-pair? _g6289662933_)
                    (let ((_e6290562936_ (gx#syntax-e _g6289662933_)))
                      (let ((_hd6290462940_
                             (let ()
                               (declare (not safe))
                               (##car _e6290562936_)))
                            (_tl6290362943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6290562936_))))
                        (if (gx#stx-pair? _tl6290362943_)
                            (let ((_e6290862946_ (gx#syntax-e _tl6290362943_)))
                              (let ((_hd6290762950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6290862946_)))
                                    (_tl6290662953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6290862946_))))
                                (if (gx#stx-pair? _tl6290662953_)
                                    (let ((_e6291162956_
                                           (gx#syntax-e _tl6290662953_)))
                                      (let ((_hd6291062960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6291162956_)))
                                            (_tl6290962963_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6291162956_))))
                                        (if (gx#stx-pair? _tl6290962963_)
                                            (let ((_e6291462966_
                                                   (gx#syntax-e
                                                    _tl6290962963_)))
                                              (let ((_hd6291362970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6291462966_)))
                                                    (_tl6291262973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6291462966_))))
                                                (if (gx#stx-pair?
                                                     _tl6291262973_)
                                                    (let ((_e6291762976_
                                                           (gx#syntax-e
                                                            _tl6291262973_)))
                                                      (let ((_hd6291662980_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6291762976_)))
                    (_tl6291562983_
                     (let () (declare (not safe)) (##cdr _e6291762976_))))
                (if (gx#stx-pair? _tl6291562983_)
                    (let ((_e6292062986_ (gx#syntax-e _tl6291562983_)))
                      (let ((_hd6291962990_
                             (let ()
                               (declare (not safe))
                               (##car _e6292062986_)))
                            (_tl6291862993_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6292062986_))))
                        (if (gx#stx-pair? _tl6291862993_)
                            (let ((_e6292362996_ (gx#syntax-e _tl6291862993_)))
                              (let ((_hd6292263000_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6292362996_)))
                                    (_tl6292163003_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6292362996_))))
                                (if (gx#stx-null? _tl6292163003_)
                                    ((lambda (_L63006_
                                              _L63008_
                                              _L63009_
                                              _L63010_
                                              _L63011_
                                              _L63012_)
                                       (let ((__tmp69321
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69163
                                              (let ((__tmp69281
                                                     (let ((__tmp69312
                                                            (let ((__tmp69320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69313
                           (let ((__tmp69314
                                  (let ((__tmp69319
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69315
                                         (let ((__tmp69317
                                                (let ((__tmp69318
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63008_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63010_ __tmp69318)))
                                               (__tmp69316
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63011_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69317 __tmp69316))))
                                    (declare (not safe))
                                    (cons __tmp69319 __tmp69315))))
                             (declare (not safe))
                             (cons __tmp69314 '()))))
                      (declare (not safe))
                      (cons __tmp69320 __tmp69313)))
                   (__tmp69282
                    (let ((__tmp69306
                           (let ((__tmp69311 (gx#datum->syntax '#f 'size))
                                 (__tmp69307
                                  (let ((__tmp69308
                                         (let ((__tmp69310
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69309
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63012_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69310 __tmp69309))))
                                    (declare (not safe))
                                    (cons __tmp69308 '()))))
                             (declare (not safe))
                             (cons __tmp69311 __tmp69307)))
                          (__tmp69283
                           (let ((__tmp69298
                                  (let ((__tmp69305
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69299
                                         (let ((__tmp69300
                                                (let ((__tmp69304
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69301
                                                       (let ((__tmp69303
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69302
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69303 __tmp69302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69304
                                                        __tmp69301))))
                                           (declare (not safe))
                                           (cons __tmp69300 '()))))
                                    (declare (not safe))
                                    (cons __tmp69305 __tmp69299)))
                                 (__tmp69284
                                  (let ((__tmp69285
                                         (let ((__tmp69297
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69286
                                                (let ((__tmp69287
                                                       (let ((__tmp69296
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69288
                                                              (let ((__tmp69290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69295
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69291
                                    (let ((__tmp69294
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69292
                                           (let ((__tmp69293
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69293 '()))))
                                      (declare (not safe))
                                      (cons __tmp69294 __tmp69292))))
                               (declare (not safe))
                               (cons __tmp69295 __tmp69291)))
                            (__tmp69289
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69290 __tmp69289))))
                 (declare (not safe))
                 (cons __tmp69296 __tmp69288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69287 '()))))
                                           (declare (not safe))
                                           (cons __tmp69297 __tmp69286))))
                                    (declare (not safe))
                                    (cons __tmp69285 '()))))
                             (declare (not safe))
                             (cons __tmp69298 __tmp69284))))
                      (declare (not safe))
                      (cons __tmp69306 __tmp69283))))
               (declare (not safe))
               (cons __tmp69312 __tmp69282)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69164
                                                     (let ((__tmp69165
                                                            (let ((__tmp69280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69166
                           (let ((__tmp69279 (gx#datum->syntax '#f 'loop))
                                 (__tmp69167
                                  (let ((__tmp69266
                                         (let ((__tmp69275
                                                (let ((__tmp69278
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69276
                                                       (let ((__tmp69277
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69277
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69278
                                                        __tmp69276)))
                                               (__tmp69267
                                                (let ((__tmp69272
                                                       (let ((__tmp69274
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69273
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69274 __tmp69273)))
              (__tmp69268
               (let ((__tmp69269
                      (let ((__tmp69271 (gx#datum->syntax '#f 'deleted))
                            (__tmp69270
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp69271 __tmp69270))))
                 (declare (not safe))
                 (cons __tmp69269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69272
                                                        __tmp69268))))
                                           (declare (not safe))
                                           (cons __tmp69275 __tmp69267)))
                                        (__tmp69168
                                         (let ((__tmp69169
                                                (let ((__tmp69265
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69170
                                                       (let ((__tmp69257
                                                              (let ((__tmp69264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69258
                             (let ((__tmp69259
                                    (let ((__tmp69263
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69260
                                           (let ((__tmp69261
                                                  (let ((__tmp69262
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69262 '()))))
                                             (declare (not safe))
                                             (cons _L63012_ __tmp69261))))
                                      (declare (not safe))
                                      (cons __tmp69263 __tmp69260))))
                               (declare (not safe))
                               (cons __tmp69259 '()))))
                        (declare (not safe))
                        (cons __tmp69264 __tmp69258)))
                     (__tmp69171
                      (let ((__tmp69172
                             (let ((__tmp69256 (gx#datum->syntax '#f 'cond))
                                   (__tmp69173
                                    (let ((__tmp69247
                                           (let ((__tmp69249
                                                  (let ((__tmp69255
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69250
                                                         (let ((__tmp69254
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69251
                        (let ((__tmp69252
                               (let ((__tmp69253
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69253 '()))))
                          (declare (not safe))
                          (cons __tmp69252 '()))))
                   (declare (not safe))
                   (cons __tmp69254 __tmp69251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69255
                                                          __tmp69250)))
                                                 (__tmp69248
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63006_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69249 __tmp69248)))
                                          (__tmp69174
                                           (let ((__tmp69214
                                                  (let ((__tmp69240
                                                         (let ((__tmp69246
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69241
                        (let ((__tmp69245 (gx#datum->syntax '#f 'k))
                              (__tmp69242
                               (let ((__tmp69243
                                      (let ((__tmp69244
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69244 '()))))
                                 (declare (not safe))
                                 (cons __tmp69243 '()))))
                          (declare (not safe))
                          (cons __tmp69245 __tmp69242))))
                   (declare (not safe))
                   (cons __tmp69246 __tmp69241)))
                (__tmp69215
                 (let ((__tmp69216
                        (let ((__tmp69239 (gx#datum->syntax '#f 'loop))
                              (__tmp69217
                               (let ((__tmp69231
                                      (let ((__tmp69238
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69232
                                             (let ((__tmp69237
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69233
                                                    (let ((__tmp69236
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69234
                                                           (let ((__tmp69235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69235 '()))))
              (declare (not safe))
              (cons __tmp69236 __tmp69234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69237 __tmp69233))))
                                        (declare (not safe))
                                        (cons __tmp69238 __tmp69232)))
                                     (__tmp69218
                                      (let ((__tmp69226
                                             (let ((__tmp69230
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69227
                                                    (let ((__tmp69229
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69228
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69229
                                                            __tmp69228))))
                                               (declare (not safe))
                                               (cons __tmp69230 __tmp69227)))
                                            (__tmp69219
                                             (let ((__tmp69220
                                                    (let ((__tmp69225
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp69221
                                                           (let ((__tmp69224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp69222
                          (let ((__tmp69223 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69223 '()))))
                     (declare (not safe))
                     (cons __tmp69224 __tmp69222))))
              (declare (not safe))
              (cons __tmp69225 __tmp69221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69220 '()))))
                                        (declare (not safe))
                                        (cons __tmp69226 __tmp69219))))
                                 (declare (not safe))
                                 (cons __tmp69231 __tmp69218))))
                          (declare (not safe))
                          (cons __tmp69239 __tmp69217))))
                   (declare (not safe))
                   (cons __tmp69216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69240
                                                          __tmp69215)))
                                                 (__tmp69175
                                                  (let ((__tmp69199
                                                         (let ((__tmp69210
                                                                (let ((__tmp69211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69212
                                      (let ((__tmp69213
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69213 '()))))
                                 (declare (not safe))
                                 (cons _L63008_ __tmp69212))))
                          (declare (not safe))
                          (cons _L63009_ __tmp69211)))
                       (__tmp69200
                        (let ((__tmp69201
                               (let ((__tmp69209
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp69202
                                      (let ((__tmp69203
                                             (let ((__tmp69204
                                                    (let ((__tmp69208
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp69205
                                                           (let ((__tmp69207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp69206
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69207 __tmp69206))))
              (declare (not safe))
              (cons __tmp69208 __tmp69205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69204 '()))))
                                        (declare (not safe))
                                        (cons _L63012_ __tmp69203))))
                                 (declare (not safe))
                                 (cons __tmp69209 __tmp69202))))
                          (declare (not safe))
                          (cons __tmp69201 '()))))
                   (declare (not safe))
                   (cons __tmp69210 __tmp69200)))
                (__tmp69176
                 (let ((__tmp69177
                        (let ((__tmp69198 (gx#datum->syntax '#f 'else))
                              (__tmp69178
                               (let ((__tmp69179
                                      (let ((__tmp69197
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69180
                                             (let ((__tmp69189
                                                    (let ((__tmp69196
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69190
                                                           (let ((__tmp69195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69191
                          (let ((__tmp69194 (gx#datum->syntax '#f 'i))
                                (__tmp69192
                                 (let ((__tmp69193
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69193 '()))))
                            (declare (not safe))
                            (cons __tmp69194 __tmp69192))))
                     (declare (not safe))
                     (cons __tmp69195 __tmp69191))))
              (declare (not safe))
              (cons __tmp69196 __tmp69190)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69181
                                                    (let ((__tmp69184
                                                           (let ((__tmp69188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69185
                          (let ((__tmp69187 (gx#datum->syntax '#f 'i))
                                (__tmp69186
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69187 __tmp69186))))
                     (declare (not safe))
                     (cons __tmp69188 __tmp69185)))
                  (__tmp69182
                   (let ((__tmp69183 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp69183 '()))))
              (declare (not safe))
              (cons __tmp69184 __tmp69182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69189 __tmp69181))))
                                        (declare (not safe))
                                        (cons __tmp69197 __tmp69180))))
                                 (declare (not safe))
                                 (cons __tmp69179 '()))))
                          (declare (not safe))
                          (cons __tmp69198 __tmp69178))))
                   (declare (not safe))
                   (cons __tmp69177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69199
                                                          __tmp69176))))
                                             (declare (not safe))
                                             (cons __tmp69214 __tmp69175))))
                                      (declare (not safe))
                                      (cons __tmp69247 __tmp69174))))
                               (declare (not safe))
                               (cons __tmp69256 __tmp69173))))
                        (declare (not safe))
                        (cons __tmp69172 '()))))
                 (declare (not safe))
                 (cons __tmp69257 __tmp69171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69265
                                                        __tmp69170))))
                                           (declare (not safe))
                                           (cons __tmp69169 '()))))
                                    (declare (not safe))
                                    (cons __tmp69266 __tmp69168))))
                             (declare (not safe))
                             (cons __tmp69279 __tmp69167))))
                      (declare (not safe))
                      (cons __tmp69280 __tmp69166))))
               (declare (not safe))
               (cons __tmp69165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69281 __tmp69164))))
                                         (declare (not safe))
                                         (cons __tmp69321 __tmp69163)))
                                     _hd6292263000_
                                     _hd6291962990_
                                     _hd6291662980_
                                     _hd6291362970_
                                     _hd6291062960_
                                     _hd6290762950_)
                                    (_g6289562929_ _g6289662933_))))
                            (_g6289562929_ _g6289662933_))))
                    (_g6289562929_ _g6289662933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6289562929_
                                                     _g6289662933_))))
                                            (_g6289562929_ _g6289662933_))))
                                    (_g6289562929_ _g6289662933_))))
                            (_g6289562929_ _g6289662933_))))
                    (_g6289562929_ _g6289662933_)))))
        (_g6289463040_ _$stx62891_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx63044_)
      (let* ((_g6304863090_
              (lambda (_g6304963086_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6304963086_)))
             (_g6304763229_
              (lambda (_g6304963094_)
                (if (gx#stx-pair? _g6304963094_)
                    (let ((_e6306063097_ (gx#syntax-e _g6304963094_)))
                      (let ((_hd6305963101_
                             (let ()
                               (declare (not safe))
                               (##car _e6306063097_)))
                            (_tl6305863104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6306063097_))))
                        (if (gx#stx-pair? _tl6305863104_)
                            (let ((_e6306363107_ (gx#syntax-e _tl6305863104_)))
                              (let ((_hd6306263111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6306363107_)))
                                    (_tl6306163114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6306363107_))))
                                (if (gx#stx-pair? _tl6306163114_)
                                    (let ((_e6306663117_
                                           (gx#syntax-e _tl6306163114_)))
                                      (let ((_hd6306563121_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6306663117_)))
                                            (_tl6306463124_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6306663117_))))
                                        (if (gx#stx-pair? _tl6306463124_)
                                            (let ((_e6306963127_
                                                   (gx#syntax-e
                                                    _tl6306463124_)))
                                              (let ((_hd6306863131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6306963127_)))
                                                    (_tl6306763134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6306963127_))))
                                                (if (gx#stx-pair?
                                                     _tl6306763134_)
                                                    (let ((_e6307263137_
                                                           (gx#syntax-e
                                                            _tl6306763134_)))
                                                      (let ((_hd6307163141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6307263137_)))
                    (_tl6307063144_
                     (let () (declare (not safe)) (##cdr _e6307263137_))))
                (if (gx#stx-pair? _tl6307063144_)
                    (let ((_e6307563147_ (gx#syntax-e _tl6307063144_)))
                      (let ((_hd6307463151_
                             (let ()
                               (declare (not safe))
                               (##car _e6307563147_)))
                            (_tl6307363154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6307563147_))))
                        (if (gx#stx-pair? _tl6307363154_)
                            (let ((_e6307863157_ (gx#syntax-e _tl6307363154_)))
                              (let ((_hd6307763161_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6307863157_)))
                                    (_tl6307663164_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6307863157_))))
                                (if (gx#stx-pair? _tl6307663164_)
                                    (let ((_e6308163167_
                                           (gx#syntax-e _tl6307663164_)))
                                      (let ((_hd6308063171_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6308163167_)))
                                            (_tl6307963174_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6308163167_))))
                                        (if (gx#stx-pair? _tl6307963174_)
                                            (let ((_e6308463177_
                                                   (gx#syntax-e
                                                    _tl6307963174_)))
                                              (let ((_hd6308363181_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6308463177_)))
                                                    (_tl6308263184_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6308463177_))))
                                                (if (gx#stx-null?
                                                     _tl6308263184_)
                                                    ((lambda (_L63187_
                                                              _L63189_
                                                              _L63190_
                                                              _L63191_
                                                              _L63192_
                                                              _L63193_
                                                              _L63194_
                                                              _L63195_)
                                                       (let ((__tmp69538
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp69322
                                                              (let ((__tmp69498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69529
                                    (let ((__tmp69537
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69530
                                           (let ((__tmp69531
                                                  (let ((__tmp69536
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp69532
                                                         (let ((__tmp69534
                                                                (let ((__tmp69535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L63191_ '()))))
                          (declare (not safe))
                          (cons _L63193_ __tmp69535)))
                       (__tmp69533
                        (let () (declare (not safe)) (cons _L63194_ '()))))
                   (declare (not safe))
                   (cons __tmp69534 __tmp69533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69536
                                                          __tmp69532))))
                                             (declare (not safe))
                                             (cons __tmp69531 '()))))
                                      (declare (not safe))
                                      (cons __tmp69537 __tmp69530)))
                                   (__tmp69499
                                    (let ((__tmp69523
                                           (let ((__tmp69528
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp69524
                                                  (let ((__tmp69525
                                                         (let ((__tmp69527
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp69526
                        (let () (declare (not safe)) (cons _L63195_ '()))))
                   (declare (not safe))
                   (cons __tmp69527 __tmp69526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69525 '()))))
                                             (declare (not safe))
                                             (cons __tmp69528 __tmp69524)))
                                          (__tmp69500
                                           (let ((__tmp69515
                                                  (let ((__tmp69522
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp69516
                                                         (let ((__tmp69517
                                                                (let ((__tmp69521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp69518
                               (let ((__tmp69520 (gx#datum->syntax '#f 'size))
                                     (__tmp69519
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp69520 __tmp69519))))
                          (declare (not safe))
                          (cons __tmp69521 __tmp69518))))
                   (declare (not safe))
                   (cons __tmp69517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69522
                                                          __tmp69516)))
                                                 (__tmp69501
                                                  (let ((__tmp69502
                                                         (let ((__tmp69514
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp69503
                        (let ((__tmp69504
                               (let ((__tmp69513
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp69505
                                      (let ((__tmp69507
                                             (let ((__tmp69512
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp69508
                                                    (let ((__tmp69511
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp69509
                                                           (let ((__tmp69510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp69510 '()))))
              (declare (not safe))
              (cons __tmp69511 __tmp69509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69512 __tmp69508)))
                                            (__tmp69506
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp69507 __tmp69506))))
                                 (declare (not safe))
                                 (cons __tmp69513 __tmp69505))))
                          (declare (not safe))
                          (cons __tmp69504 '()))))
                   (declare (not safe))
                   (cons __tmp69514 __tmp69503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69502 '()))))
                                             (declare (not safe))
                                             (cons __tmp69515 __tmp69501))))
                                      (declare (not safe))
                                      (cons __tmp69523 __tmp69500))))
                               (declare (not safe))
                               (cons __tmp69529 __tmp69499)))
                            (__tmp69323
                             (let ((__tmp69324
                                    (let ((__tmp69497
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp69325
                                           (let ((__tmp69496
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp69326
                                                  (let ((__tmp69483
                                                         (let ((__tmp69492
                                                                (let ((__tmp69495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp69493
                               (let ((__tmp69494
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp69494 '()))))
                          (declare (not safe))
                          (cons __tmp69495 __tmp69493)))
                       (__tmp69484
                        (let ((__tmp69489
                               (let ((__tmp69491 (gx#datum->syntax '#f 'i))
                                     (__tmp69490
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp69491 __tmp69490)))
                              (__tmp69485
                               (let ((__tmp69486
                                      (let ((__tmp69488
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp69487
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp69488 __tmp69487))))
                                 (declare (not safe))
                                 (cons __tmp69486 '()))))
                          (declare (not safe))
                          (cons __tmp69489 __tmp69485))))
                   (declare (not safe))
                   (cons __tmp69492 __tmp69484)))
                (__tmp69327
                 (let ((__tmp69328
                        (let ((__tmp69482 (gx#datum->syntax '#f 'let))
                              (__tmp69329
                               (let ((__tmp69474
                                      (let ((__tmp69481
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp69475
                                             (let ((__tmp69476
                                                    (let ((__tmp69480
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp69477
                                                           (let ((__tmp69478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69479 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69479 '()))))
                     (declare (not safe))
                     (cons _L63195_ __tmp69478))))
              (declare (not safe))
              (cons __tmp69480 __tmp69477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69476 '()))))
                                        (declare (not safe))
                                        (cons __tmp69481 __tmp69475)))
                                     (__tmp69330
                                      (let ((__tmp69331
                                             (let ((__tmp69473
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp69332
                                                    (let ((__tmp69414
                                                           (let ((__tmp69466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69472 (gx#datum->syntax '#f 'eq?))
                                (__tmp69467
                                 (let ((__tmp69471 (gx#datum->syntax '#f 'k))
                                       (__tmp69468
                                        (let ((__tmp69469
                                               (let ((__tmp69470
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp69470 '()))))
                                          (declare (not safe))
                                          (cons __tmp69469 '()))))
                                   (declare (not safe))
                                   (cons __tmp69471 __tmp69468))))
                            (declare (not safe))
                            (cons __tmp69472 __tmp69467)))
                         (__tmp69415
                          (let ((__tmp69416
                                 (let ((__tmp69465 (gx#datum->syntax '#f 'if))
                                       (__tmp69417
                                        (let ((__tmp69464
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp69418
                                               (let ((__tmp69442
                                                      (let ((__tmp69463
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp69443
                                                             (let ((__tmp69457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69462
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp69458
                                   (let ((__tmp69459
                                          (let ((__tmp69461
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp69460
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63191_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69461 __tmp69460))))
                                     (declare (not safe))
                                     (cons _L63195_ __tmp69459))))
                              (declare (not safe))
                              (cons __tmp69462 __tmp69458)))
                           (__tmp69444
                            (let ((__tmp69447
                                   (let ((__tmp69456
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69448
                                          (let ((__tmp69449
                                                 (let ((__tmp69451
                                                        (let ((__tmp69455
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp69452
                                                               (let ((__tmp69454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp69453
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp69454 __tmp69453))))
                  (declare (not safe))
                  (cons __tmp69455 __tmp69452)))
               (__tmp69450 (let () (declare (not safe)) (cons _L63190_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69451
                                                         __tmp69450))))
                                            (declare (not safe))
                                            (cons _L63195_ __tmp69449))))
                                     (declare (not safe))
                                     (cons __tmp69456 __tmp69448)))
                                  (__tmp69445
                                   (let ((__tmp69446
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63187_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69446 '()))))
                              (declare (not safe))
                              (cons __tmp69447 __tmp69445))))
                       (declare (not safe))
                       (cons __tmp69457 __tmp69444))))
                (declare (not safe))
                (cons __tmp69463 __tmp69443)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69419
                                                      (let ((__tmp69420
                                                             (let ((__tmp69441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp69421
                            (let ((__tmp69435
                                   (let ((__tmp69440
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp69436
                                          (let ((__tmp69437
                                                 (let ((__tmp69439
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp69438
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63191_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69439
                                                         __tmp69438))))
                                            (declare (not safe))
                                            (cons _L63195_ __tmp69437))))
                                     (declare (not safe))
                                     (cons __tmp69440 __tmp69436)))
                                  (__tmp69422
                                   (let ((__tmp69425
                                          (let ((__tmp69434
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp69426
                                                 (let ((__tmp69427
                                                        (let ((__tmp69429
                                                               (let ((__tmp69433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp69430
                              (let ((__tmp69432 (gx#datum->syntax '#f 'probe))
                                    (__tmp69431
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp69432 __tmp69431))))
                         (declare (not safe))
                         (cons __tmp69433 __tmp69430)))
                      (__tmp69428
                       (let () (declare (not safe)) (cons _L63190_ '()))))
                  (declare (not safe))
                  (cons __tmp69429 __tmp69428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63195_
                                                         __tmp69427))))
                                            (declare (not safe))
                                            (cons __tmp69434 __tmp69426)))
                                         (__tmp69423
                                          (let ((__tmp69424
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63189_ '()))))
                                            (declare (not safe))
                                            (cons __tmp69424 '()))))
                                     (declare (not safe))
                                     (cons __tmp69425 __tmp69423))))
                              (declare (not safe))
                              (cons __tmp69435 __tmp69422))))
                       (declare (not safe))
                       (cons __tmp69441 __tmp69421))))
                (declare (not safe))
                (cons __tmp69420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69442
                                                       __tmp69419))))
                                          (declare (not safe))
                                          (cons __tmp69464 __tmp69418))))
                                   (declare (not safe))
                                   (cons __tmp69465 __tmp69417))))
                            (declare (not safe))
                            (cons __tmp69416 '()))))
                     (declare (not safe))
                     (cons __tmp69466 __tmp69415)))
                  (__tmp69333
                   (let ((__tmp69381
                          (let ((__tmp69407
                                 (let ((__tmp69413 (gx#datum->syntax '#f 'eq?))
                                       (__tmp69408
                                        (let ((__tmp69412
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp69409
                                               (let ((__tmp69410
                                                      (let ((__tmp69411
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp69411
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69410 '()))))
                                          (declare (not safe))
                                          (cons __tmp69412 __tmp69409))))
                                   (declare (not safe))
                                   (cons __tmp69413 __tmp69408)))
                                (__tmp69382
                                 (let ((__tmp69383
                                        (let ((__tmp69406
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp69384
                                               (let ((__tmp69398
                                                      (let ((__tmp69405
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp69399
                                                             (let ((__tmp69404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp69400
                            (let ((__tmp69403 (gx#datum->syntax '#f 'i))
                                  (__tmp69401
                                   (let ((__tmp69402
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp69402 '()))))
                              (declare (not safe))
                              (cons __tmp69403 __tmp69401))))
                       (declare (not safe))
                       (cons __tmp69404 __tmp69400))))
                (declare (not safe))
                (cons __tmp69405 __tmp69399)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69385
                                                      (let ((__tmp69393
                                                             (let ((__tmp69397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp69394
                            (let ((__tmp69396 (gx#datum->syntax '#f 'i))
                                  (__tmp69395
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp69396 __tmp69395))))
                       (declare (not safe))
                       (cons __tmp69397 __tmp69394)))
                    (__tmp69386
                     (let ((__tmp69387
                            (let ((__tmp69392 (gx#datum->syntax '#f 'or))
                                  (__tmp69388
                                   (let ((__tmp69391
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp69389
                                          (let ((__tmp69390
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69390 '()))))
                                     (declare (not safe))
                                     (cons __tmp69391 __tmp69389))))
                              (declare (not safe))
                              (cons __tmp69392 __tmp69388))))
                       (declare (not safe))
                       (cons __tmp69387 '()))))
                (declare (not safe))
                (cons __tmp69393 __tmp69386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69398
                                                       __tmp69385))))
                                          (declare (not safe))
                                          (cons __tmp69406 __tmp69384))))
                                   (declare (not safe))
                                   (cons __tmp69383 '()))))
                            (declare (not safe))
                            (cons __tmp69407 __tmp69382)))
                         (__tmp69334
                          (let ((__tmp69358
                                 (let ((__tmp69377
                                        (let ((__tmp69378
                                               (let ((__tmp69379
                                                      (let ((__tmp69380
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp69380
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L63191_ __tmp69379))))
                                          (declare (not safe))
                                          (cons _L63192_ __tmp69378)))
                                       (__tmp69359
                                        (let ((__tmp69371
                                               (let ((__tmp69376
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp69372
                                                      (let ((__tmp69373
                                                             (let ((__tmp69375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp69374
                            (let () (declare (not safe)) (cons _L63191_ '()))))
                       (declare (not safe))
                       (cons __tmp69375 __tmp69374))))
                (declare (not safe))
                (cons _L63195_ __tmp69373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69376 __tmp69372)))
                                              (__tmp69360
                                               (let ((__tmp69361
                                                      (let ((__tmp69370
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp69362
                                                             (let ((__tmp69363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69365
                                   (let ((__tmp69369
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69366
                                          (let ((__tmp69368
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp69367
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69368 __tmp69367))))
                                     (declare (not safe))
                                     (cons __tmp69369 __tmp69366)))
                                  (__tmp69364
                                   (let ()
                                     (declare (not safe))
                                     (cons _L63190_ '()))))
                              (declare (not safe))
                              (cons __tmp69365 __tmp69364))))
                       (declare (not safe))
                       (cons _L63195_ __tmp69363))))
                (declare (not safe))
                (cons __tmp69370 __tmp69362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69361 '()))))
                                          (declare (not safe))
                                          (cons __tmp69371 __tmp69360))))
                                   (declare (not safe))
                                   (cons __tmp69377 __tmp69359)))
                                (__tmp69335
                                 (let ((__tmp69336
                                        (let ((__tmp69357
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp69337
                                               (let ((__tmp69338
                                                      (let ((__tmp69356
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp69339
                                                             (let ((__tmp69348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69355
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp69349
                                   (let ((__tmp69354
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp69350
                                          (let ((__tmp69353
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69351
                                                 (let ((__tmp69352
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp69352 '()))))
                                            (declare (not safe))
                                            (cons __tmp69353 __tmp69351))))
                                     (declare (not safe))
                                     (cons __tmp69354 __tmp69350))))
                              (declare (not safe))
                              (cons __tmp69355 __tmp69349)))
                           (__tmp69340
                            (let ((__tmp69343
                                   (let ((__tmp69347
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69344
                                          (let ((__tmp69346
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69345
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69346 __tmp69345))))
                                     (declare (not safe))
                                     (cons __tmp69347 __tmp69344)))
                                  (__tmp69341
                                   (let ((__tmp69342
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp69342 '()))))
                              (declare (not safe))
                              (cons __tmp69343 __tmp69341))))
                       (declare (not safe))
                       (cons __tmp69348 __tmp69340))))
                (declare (not safe))
                (cons __tmp69356 __tmp69339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69338 '()))))
                                          (declare (not safe))
                                          (cons __tmp69357 __tmp69337))))
                                   (declare (not safe))
                                   (cons __tmp69336 '()))))
                            (declare (not safe))
                            (cons __tmp69358 __tmp69335))))
                     (declare (not safe))
                     (cons __tmp69381 __tmp69334))))
              (declare (not safe))
              (cons __tmp69414 __tmp69333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69473 __tmp69332))))
                                        (declare (not safe))
                                        (cons __tmp69331 '()))))
                                 (declare (not safe))
                                 (cons __tmp69474 __tmp69330))))
                          (declare (not safe))
                          (cons __tmp69482 __tmp69329))))
                   (declare (not safe))
                   (cons __tmp69328 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69483
                                                          __tmp69327))))
                                             (declare (not safe))
                                             (cons __tmp69496 __tmp69326))))
                                      (declare (not safe))
                                      (cons __tmp69497 __tmp69325))))
                               (declare (not safe))
                               (cons __tmp69324 '()))))
                        (declare (not safe))
                        (cons __tmp69498 __tmp69323))))
                 (declare (not safe))
                 (cons __tmp69538 __tmp69322)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6308363181_
                                                     _hd6308063171_
                                                     _hd6307763161_
                                                     _hd6307463151_
                                                     _hd6307163141_
                                                     _hd6306863131_
                                                     _hd6306563121_
                                                     _hd6306263111_)
                                                    (_g6304863090_
                                                     _g6304963094_))))
                                            (_g6304863090_ _g6304963094_))))
                                    (_g6304863090_ _g6304963094_))))
                            (_g6304863090_ _g6304963094_))))
                    (_g6304863090_ _g6304963094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6304863090_
                                                     _g6304963094_))))
                                            (_g6304863090_ _g6304963094_))))
                                    (_g6304863090_ _g6304963094_))))
                            (_g6304863090_ _g6304963094_))))
                    (_g6304863090_ _g6304963094_)))))
        (_g6304763229_ _$stx63044_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx63233_)
      (let* ((_g6323763283_
              (lambda (_g6323863279_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6323863279_)))
             (_g6323663436_
              (lambda (_g6323863287_)
                (if (gx#stx-pair? _g6323863287_)
                    (let ((_e6325063290_ (gx#syntax-e _g6323863287_)))
                      (let ((_hd6324963294_
                             (let ()
                               (declare (not safe))
                               (##car _e6325063290_)))
                            (_tl6324863297_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6325063290_))))
                        (if (gx#stx-pair? _tl6324863297_)
                            (let ((_e6325363300_ (gx#syntax-e _tl6324863297_)))
                              (let ((_hd6325263304_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325363300_)))
                                    (_tl6325163307_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325363300_))))
                                (if (gx#stx-pair? _tl6325163307_)
                                    (let ((_e6325663310_
                                           (gx#syntax-e _tl6325163307_)))
                                      (let ((_hd6325563314_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6325663310_)))
                                            (_tl6325463317_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6325663310_))))
                                        (if (gx#stx-pair? _tl6325463317_)
                                            (let ((_e6325963320_
                                                   (gx#syntax-e
                                                    _tl6325463317_)))
                                              (let ((_hd6325863324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6325963320_)))
                                                    (_tl6325763327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6325963320_))))
                                                (if (gx#stx-pair?
                                                     _tl6325763327_)
                                                    (let ((_e6326263330_
                                                           (gx#syntax-e
                                                            _tl6325763327_)))
                                                      (let ((_hd6326163334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6326263330_)))
                    (_tl6326063337_
                     (let () (declare (not safe)) (##cdr _e6326263330_))))
                (if (gx#stx-pair? _tl6326063337_)
                    (let ((_e6326563340_ (gx#syntax-e _tl6326063337_)))
                      (let ((_hd6326463344_
                             (let ()
                               (declare (not safe))
                               (##car _e6326563340_)))
                            (_tl6326363347_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6326563340_))))
                        (if (gx#stx-pair? _tl6326363347_)
                            (let ((_e6326863350_ (gx#syntax-e _tl6326363347_)))
                              (let ((_hd6326763354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6326863350_)))
                                    (_tl6326663357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6326863350_))))
                                (if (gx#stx-pair? _tl6326663357_)
                                    (let ((_e6327163360_
                                           (gx#syntax-e _tl6326663357_)))
                                      (let ((_hd6327063364_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6327163360_)))
                                            (_tl6326963367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6327163360_))))
                                        (if (gx#stx-pair? _tl6326963367_)
                                            (let ((_e6327463370_
                                                   (gx#syntax-e
                                                    _tl6326963367_)))
                                              (let ((_hd6327363374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6327463370_)))
                                                    (_tl6327263377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6327463370_))))
                                                (if (gx#stx-pair?
                                                     _tl6327263377_)
                                                    (let ((_e6327763380_
                                                           (gx#syntax-e
                                                            _tl6327263377_)))
                                                      (let ((_hd6327663384_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6327763380_)))
                    (_tl6327563387_
                     (let () (declare (not safe)) (##cdr _e6327763380_))))
                (if (gx#stx-null? _tl6327563387_)
                    ((lambda (_L63390_
                              _L63392_
                              _L63393_
                              _L63394_
                              _L63395_
                              _L63396_
                              _L63397_
                              _L63398_
                              _L63399_)
                       (let ((__tmp69770 (gx#datum->syntax '#f 'let*))
                             (__tmp69539
                              (let ((__tmp69730
                                     (let ((__tmp69761
                                            (let ((__tmp69769
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp69762
                                                   (let ((__tmp69763
                                                          (let ((__tmp69768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp69764
                         (let ((__tmp69766
                                (let ((__tmp69767
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63395_ '()))))
                                  (declare (not safe))
                                  (cons _L63397_ __tmp69767)))
                               (__tmp69765
                                (let ()
                                  (declare (not safe))
                                  (cons _L63398_ '()))))
                           (declare (not safe))
                           (cons __tmp69766 __tmp69765))))
                    (declare (not safe))
                    (cons __tmp69768 __tmp69764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69763 '()))))
                                              (declare (not safe))
                                              (cons __tmp69769 __tmp69762)))
                                           (__tmp69731
                                            (let ((__tmp69755
                                                   (let ((__tmp69760
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp69756
                                                          (let ((__tmp69757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69759
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp69758
                                (let ()
                                  (declare (not safe))
                                  (cons _L63399_ '()))))
                           (declare (not safe))
                           (cons __tmp69759 __tmp69758))))
                    (declare (not safe))
                    (cons __tmp69757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69760
                                                           __tmp69756)))
                                                  (__tmp69732
                                                   (let ((__tmp69747
                                                          (let ((__tmp69754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp69748
                         (let ((__tmp69749
                                (let ((__tmp69753
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp69750
                                       (let ((__tmp69752
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp69751
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp69752 __tmp69751))))
                                  (declare (not safe))
                                  (cons __tmp69753 __tmp69750))))
                           (declare (not safe))
                           (cons __tmp69749 '()))))
                    (declare (not safe))
                    (cons __tmp69754 __tmp69748)))
                 (__tmp69733
                  (let ((__tmp69734
                         (let ((__tmp69746 (gx#datum->syntax '#f 'start))
                               (__tmp69735
                                (let ((__tmp69736
                                       (let ((__tmp69745
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp69737
                                              (let ((__tmp69739
                                                     (let ((__tmp69744
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp69740
                                                            (let ((__tmp69743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69741
                           (let ((__tmp69742 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp69742 '()))))
                      (declare (not safe))
                      (cons __tmp69743 __tmp69741))))
               (declare (not safe))
               (cons __tmp69744 __tmp69740)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69738
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp69739 __tmp69738))))
                                         (declare (not safe))
                                         (cons __tmp69745 __tmp69737))))
                                  (declare (not safe))
                                  (cons __tmp69736 '()))))
                           (declare (not safe))
                           (cons __tmp69746 __tmp69735))))
                    (declare (not safe))
                    (cons __tmp69734 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69747
                                                           __tmp69733))))
                                              (declare (not safe))
                                              (cons __tmp69755 __tmp69732))))
                                       (declare (not safe))
                                       (cons __tmp69761 __tmp69731)))
                                    (__tmp69540
                                     (let ((__tmp69541
                                            (let ((__tmp69729
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp69542
                                                   (let ((__tmp69728
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp69543
                                                          (let ((__tmp69715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69724
                                (let ((__tmp69727
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp69725
                                       (let ((__tmp69726
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp69726 '()))))
                                  (declare (not safe))
                                  (cons __tmp69727 __tmp69725)))
                               (__tmp69716
                                (let ((__tmp69721
                                       (let ((__tmp69723
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp69722
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp69723 __tmp69722)))
                                      (__tmp69717
                                       (let ((__tmp69718
                                              (let ((__tmp69720
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp69719
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp69720 __tmp69719))))
                                         (declare (not safe))
                                         (cons __tmp69718 '()))))
                                  (declare (not safe))
                                  (cons __tmp69721 __tmp69717))))
                           (declare (not safe))
                           (cons __tmp69724 __tmp69716)))
                        (__tmp69544
                         (let ((__tmp69545
                                (let ((__tmp69714 (gx#datum->syntax '#f 'let))
                                      (__tmp69546
                                       (let ((__tmp69706
                                              (let ((__tmp69713
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp69707
                                                     (let ((__tmp69708
                                                            (let ((__tmp69712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp69709
                           (let ((__tmp69710
                                  (let ((__tmp69711
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp69711 '()))))
                             (declare (not safe))
                             (cons _L63399_ __tmp69710))))
                      (declare (not safe))
                      (cons __tmp69712 __tmp69709))))
               (declare (not safe))
               (cons __tmp69708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69713 __tmp69707)))
                                             (__tmp69547
                                              (let ((__tmp69548
                                                     (let ((__tmp69705
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp69549
                                                            (let ((__tmp69642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69698
                                  (let ((__tmp69704
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp69699
                                         (let ((__tmp69703
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp69700
                                                (let ((__tmp69701
                                                       (let ((__tmp69702
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp69702
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69701 '()))))
                                           (declare (not safe))
                                           (cons __tmp69703 __tmp69700))))
                                    (declare (not safe))
                                    (cons __tmp69704 __tmp69699)))
                                 (__tmp69643
                                  (let ((__tmp69644
                                         (let ((__tmp69697
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp69645
                                                (let ((__tmp69696
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp69646
                                                       (let ((__tmp69672
                                                              (let ((__tmp69695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp69673
                             (let ((__tmp69689
                                    (let ((__tmp69694
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp69690
                                           (let ((__tmp69691
                                                  (let ((__tmp69693
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp69692
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69693
                                                          __tmp69692))))
                                             (declare (not safe))
                                             (cons _L63399_ __tmp69691))))
                                      (declare (not safe))
                                      (cons __tmp69694 __tmp69690)))
                                   (__tmp69674
                                    (let ((__tmp69677
                                           (let ((__tmp69688
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp69678
                                                  (let ((__tmp69679
                                                         (let ((__tmp69683
                                                                (let ((__tmp69687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp69684
                               (let ((__tmp69686
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp69685
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp69686 __tmp69685))))
                          (declare (not safe))
                          (cons __tmp69687 __tmp69684)))
                       (__tmp69680
                        (let ((__tmp69681
                               (let ((__tmp69682
                                      (let ()
                                        (declare (not safe))
                                        (cons _L63393_ '()))))
                                 (declare (not safe))
                                 (cons _L63394_ __tmp69682))))
                          (declare (not safe))
                          (cons __tmp69681 '()))))
                   (declare (not safe))
                   (cons __tmp69683 __tmp69680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63399_
                                                          __tmp69679))))
                                             (declare (not safe))
                                             (cons __tmp69688 __tmp69678)))
                                          (__tmp69675
                                           (let ((__tmp69676
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63390_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69676 '()))))
                                      (declare (not safe))
                                      (cons __tmp69677 __tmp69675))))
                               (declare (not safe))
                               (cons __tmp69689 __tmp69674))))
                        (declare (not safe))
                        (cons __tmp69695 __tmp69673)))
                     (__tmp69647
                      (let ((__tmp69648
                             (let ((__tmp69671 (gx#datum->syntax '#f 'begin))
                                   (__tmp69649
                                    (let ((__tmp69665
                                           (let ((__tmp69670
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp69666
                                                  (let ((__tmp69667
                                                         (let ((__tmp69669
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp69668
                        (let () (declare (not safe)) (cons _L63395_ '()))))
                   (declare (not safe))
                   (cons __tmp69669 __tmp69668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63399_
                                                          __tmp69667))))
                                             (declare (not safe))
                                             (cons __tmp69670 __tmp69666)))
                                          (__tmp69650
                                           (let ((__tmp69653
                                                  (let ((__tmp69664
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp69654
                                                         (let ((__tmp69655
                                                                (let ((__tmp69659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69663 (gx#datum->syntax '#f 'fx+))
                                     (__tmp69660
                                      (let ((__tmp69662
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp69661
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp69662 __tmp69661))))
                                 (declare (not safe))
                                 (cons __tmp69663 __tmp69660)))
                              (__tmp69656
                               (let ((__tmp69657
                                      (let ((__tmp69658
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63393_ '()))))
                                        (declare (not safe))
                                        (cons _L63394_ __tmp69658))))
                                 (declare (not safe))
                                 (cons __tmp69657 '()))))
                          (declare (not safe))
                          (cons __tmp69659 __tmp69656))))
                   (declare (not safe))
                   (cons _L63399_ __tmp69655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69664
                                                          __tmp69654)))
                                                 (__tmp69651
                                                  (let ((__tmp69652
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69652 '()))))
                                             (declare (not safe))
                                             (cons __tmp69653 __tmp69651))))
                                      (declare (not safe))
                                      (cons __tmp69665 __tmp69650))))
                               (declare (not safe))
                               (cons __tmp69671 __tmp69649))))
                        (declare (not safe))
                        (cons __tmp69648 '()))))
                 (declare (not safe))
                 (cons __tmp69672 __tmp69647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69696
                                                        __tmp69646))))
                                           (declare (not safe))
                                           (cons __tmp69697 __tmp69645))))
                                    (declare (not safe))
                                    (cons __tmp69644 '()))))
                             (declare (not safe))
                             (cons __tmp69698 __tmp69643)))
                          (__tmp69550
                           (let ((__tmp69609
                                  (let ((__tmp69635
                                         (let ((__tmp69641
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp69636
                                                (let ((__tmp69640
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp69637
                                                       (let ((__tmp69638
                                                              (let ((__tmp69639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp69639 '()))))
                 (declare (not safe))
                 (cons __tmp69638 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69640
                                                        __tmp69637))))
                                           (declare (not safe))
                                           (cons __tmp69641 __tmp69636)))
                                        (__tmp69610
                                         (let ((__tmp69611
                                                (let ((__tmp69634
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp69612
                                                       (let ((__tmp69626
                                                              (let ((__tmp69633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp69627
                             (let ((__tmp69632 (gx#datum->syntax '#f 'start))
                                   (__tmp69628
                                    (let ((__tmp69631
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp69629
                                           (let ((__tmp69630
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp69630 '()))))
                                      (declare (not safe))
                                      (cons __tmp69631 __tmp69629))))
                               (declare (not safe))
                               (cons __tmp69632 __tmp69628))))
                        (declare (not safe))
                        (cons __tmp69633 __tmp69627)))
                     (__tmp69613
                      (let ((__tmp69621
                             (let ((__tmp69625 (gx#datum->syntax '#f 'fx+))
                                   (__tmp69622
                                    (let ((__tmp69624
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp69623
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp69624 __tmp69623))))
                               (declare (not safe))
                               (cons __tmp69625 __tmp69622)))
                            (__tmp69614
                             (let ((__tmp69615
                                    (let ((__tmp69620
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp69616
                                           (let ((__tmp69619
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp69617
                                                  (let ((__tmp69618
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69618 '()))))
                                             (declare (not safe))
                                             (cons __tmp69619 __tmp69617))))
                                      (declare (not safe))
                                      (cons __tmp69620 __tmp69616))))
                               (declare (not safe))
                               (cons __tmp69615 '()))))
                        (declare (not safe))
                        (cons __tmp69621 __tmp69614))))
                 (declare (not safe))
                 (cons __tmp69626 __tmp69613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69634
                                                        __tmp69612))))
                                           (declare (not safe))
                                           (cons __tmp69611 '()))))
                                    (declare (not safe))
                                    (cons __tmp69635 __tmp69610)))
                                 (__tmp69551
                                  (let ((__tmp69575
                                         (let ((__tmp69605
                                                (let ((__tmp69606
                                                       (let ((__tmp69607
                                                              (let ((__tmp69608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp69608 '()))))
                 (declare (not safe))
                 (cons _L63395_ __tmp69607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63396_ __tmp69606)))
                                               (__tmp69576
                                                (let ((__tmp69599
                                                       (let ((__tmp69604
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp69600
                                                              (let ((__tmp69601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69603 (gx#datum->syntax '#f 'probe))
                                   (__tmp69602
                                    (let ()
                                      (declare (not safe))
                                      (cons _L63395_ '()))))
                               (declare (not safe))
                               (cons __tmp69603 __tmp69602))))
                        (declare (not safe))
                        (cons _L63399_ __tmp69601))))
                 (declare (not safe))
                 (cons __tmp69604 __tmp69600)))
              (__tmp69577
               (let ((__tmp69578
                      (let ((__tmp69598 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp69579
                             (let ((__tmp69580
                                    (let ((__tmp69593
                                           (let ((__tmp69597
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69594
                                                  (let ((__tmp69596
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp69595
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp69596
                                                          __tmp69595))))
                                             (declare (not safe))
                                             (cons __tmp69597 __tmp69594)))
                                          (__tmp69581
                                           (let ((__tmp69582
                                                  (let ((__tmp69583
                                                         (let ((__tmp69584
                                                                (let ((__tmp69592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp69585
                               (let ((__tmp69586
                                      (let ((__tmp69587
                                             (let ((__tmp69591
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69588
                                                    (let ((__tmp69590
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp69589
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69590
                                                            __tmp69589))))
                                               (declare (not safe))
                                               (cons __tmp69591 __tmp69588))))
                                        (declare (not safe))
                                        (cons __tmp69587 '()))))
                                 (declare (not safe))
                                 (cons _L63399_ __tmp69586))))
                          (declare (not safe))
                          (cons __tmp69592 __tmp69585))))
                   (declare (not safe))
                   (cons __tmp69584 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63394_
                                                          __tmp69583))))
                                             (declare (not safe))
                                             (cons __tmp69582 '()))))
                                      (declare (not safe))
                                      (cons __tmp69593 __tmp69581))))
                               (declare (not safe))
                               (cons _L63399_ __tmp69580))))
                        (declare (not safe))
                        (cons __tmp69598 __tmp69579))))
                 (declare (not safe))
                 (cons __tmp69578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69599
                                                        __tmp69577))))
                                           (declare (not safe))
                                           (cons __tmp69605 __tmp69576)))
                                        (__tmp69552
                                         (let ((__tmp69553
                                                (let ((__tmp69574
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp69554
                                                       (let ((__tmp69555
                                                              (let ((__tmp69573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp69556
                             (let ((__tmp69565
                                    (let ((__tmp69572
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp69566
                                           (let ((__tmp69571
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp69567
                                                  (let ((__tmp69570
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp69568
                                                         (let ((__tmp69569
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp69569 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69570
                                                          __tmp69568))))
                                             (declare (not safe))
                                             (cons __tmp69571 __tmp69567))))
                                      (declare (not safe))
                                      (cons __tmp69572 __tmp69566)))
                                   (__tmp69557
                                    (let ((__tmp69560
                                           (let ((__tmp69564
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69561
                                                  (let ((__tmp69563
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp69562
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp69563
                                                          __tmp69562))))
                                             (declare (not safe))
                                             (cons __tmp69564 __tmp69561)))
                                          (__tmp69558
                                           (let ((__tmp69559
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp69559 '()))))
                                      (declare (not safe))
                                      (cons __tmp69560 __tmp69558))))
                               (declare (not safe))
                               (cons __tmp69565 __tmp69557))))
                        (declare (not safe))
                        (cons __tmp69573 __tmp69556))))
                 (declare (not safe))
                 (cons __tmp69555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69574
                                                        __tmp69554))))
                                           (declare (not safe))
                                           (cons __tmp69553 '()))))
                                    (declare (not safe))
                                    (cons __tmp69575 __tmp69552))))
                             (declare (not safe))
                             (cons __tmp69609 __tmp69551))))
                      (declare (not safe))
                      (cons __tmp69642 __tmp69550))))
               (declare (not safe))
               (cons __tmp69705 __tmp69549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69548 '()))))
                                         (declare (not safe))
                                         (cons __tmp69706 __tmp69547))))
                                  (declare (not safe))
                                  (cons __tmp69714 __tmp69546))))
                           (declare (not safe))
                           (cons __tmp69545 '()))))
                    (declare (not safe))
                    (cons __tmp69715 __tmp69544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69728
                                                           __tmp69543))))
                                              (declare (not safe))
                                              (cons __tmp69729 __tmp69542))))
                                       (declare (not safe))
                                       (cons __tmp69541 '()))))
                                (declare (not safe))
                                (cons __tmp69730 __tmp69540))))
                         (declare (not safe))
                         (cons __tmp69770 __tmp69539)))
                     _hd6327663384_
                     _hd6327363374_
                     _hd6327063364_
                     _hd6326763354_
                     _hd6326463344_
                     _hd6326163334_
                     _hd6325863324_
                     _hd6325563314_
                     _hd6325263304_)
                    (_g6323763283_ _g6323863287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6323763283_
                                                     _g6323863287_))))
                                            (_g6323763283_ _g6323863287_))))
                                    (_g6323763283_ _g6323863287_))))
                            (_g6323763283_ _g6323863287_))))
                    (_g6323763283_ _g6323863287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6323763283_
                                                     _g6323863287_))))
                                            (_g6323763283_ _g6323863287_))))
                                    (_g6323763283_ _g6323863287_))))
                            (_g6323763283_ _g6323863287_))))
                    (_g6323763283_ _g6323863287_)))))
        (_g6323663436_ _$stx63233_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx63440_)
      (let* ((_g6344463478_
              (lambda (_g6344563474_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6344563474_)))
             (_g6344363589_
              (lambda (_g6344563482_)
                (if (gx#stx-pair? _g6344563482_)
                    (let ((_e6345463485_ (gx#syntax-e _g6344563482_)))
                      (let ((_hd6345363489_
                             (let ()
                               (declare (not safe))
                               (##car _e6345463485_)))
                            (_tl6345263492_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6345463485_))))
                        (if (gx#stx-pair? _tl6345263492_)
                            (let ((_e6345763495_ (gx#syntax-e _tl6345263492_)))
                              (let ((_hd6345663499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6345763495_)))
                                    (_tl6345563502_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6345763495_))))
                                (if (gx#stx-pair? _tl6345563502_)
                                    (let ((_e6346063505_
                                           (gx#syntax-e _tl6345563502_)))
                                      (let ((_hd6345963509_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6346063505_)))
                                            (_tl6345863512_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6346063505_))))
                                        (if (gx#stx-pair? _tl6345863512_)
                                            (let ((_e6346363515_
                                                   (gx#syntax-e
                                                    _tl6345863512_)))
                                              (let ((_hd6346263519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6346363515_)))
                                                    (_tl6346163522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6346363515_))))
                                                (if (gx#stx-pair?
                                                     _tl6346163522_)
                                                    (let ((_e6346663525_
                                                           (gx#syntax-e
                                                            _tl6346163522_)))
                                                      (let ((_hd6346563529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6346663525_)))
                    (_tl6346463532_
                     (let () (declare (not safe)) (##cdr _e6346663525_))))
                (if (gx#stx-pair? _tl6346463532_)
                    (let ((_e6346963535_ (gx#syntax-e _tl6346463532_)))
                      (let ((_hd6346863539_
                             (let ()
                               (declare (not safe))
                               (##car _e6346963535_)))
                            (_tl6346763542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6346963535_))))
                        (if (gx#stx-pair? _tl6346763542_)
                            (let ((_e6347263545_ (gx#syntax-e _tl6346763542_)))
                              (let ((_hd6347163549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6347263545_)))
                                    (_tl6347063552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6347263545_))))
                                (if (gx#stx-null? _tl6347063552_)
                                    ((lambda (_L63555_
                                              _L63557_
                                              _L63558_
                                              _L63559_
                                              _L63560_
                                              _L63561_)
                                       (let ((__tmp69932
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69771
                                              (let ((__tmp69892
                                                     (let ((__tmp69923
                                                            (let ((__tmp69931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69924
                           (let ((__tmp69925
                                  (let ((__tmp69930
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69926
                                         (let ((__tmp69928
                                                (let ((__tmp69929
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63557_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63559_ __tmp69929)))
                                               (__tmp69927
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63560_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69928 __tmp69927))))
                                    (declare (not safe))
                                    (cons __tmp69930 __tmp69926))))
                             (declare (not safe))
                             (cons __tmp69925 '()))))
                      (declare (not safe))
                      (cons __tmp69931 __tmp69924)))
                   (__tmp69893
                    (let ((__tmp69917
                           (let ((__tmp69922 (gx#datum->syntax '#f 'size))
                                 (__tmp69918
                                  (let ((__tmp69919
                                         (let ((__tmp69921
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69920
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63561_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69921 __tmp69920))))
                                    (declare (not safe))
                                    (cons __tmp69919 '()))))
                             (declare (not safe))
                             (cons __tmp69922 __tmp69918)))
                          (__tmp69894
                           (let ((__tmp69909
                                  (let ((__tmp69916
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69910
                                         (let ((__tmp69911
                                                (let ((__tmp69915
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69912
                                                       (let ((__tmp69914
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69913
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69914 __tmp69913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69915
                                                        __tmp69912))))
                                           (declare (not safe))
                                           (cons __tmp69911 '()))))
                                    (declare (not safe))
                                    (cons __tmp69916 __tmp69910)))
                                 (__tmp69895
                                  (let ((__tmp69896
                                         (let ((__tmp69908
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69897
                                                (let ((__tmp69898
                                                       (let ((__tmp69907
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69899
                                                              (let ((__tmp69901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69906
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69902
                                    (let ((__tmp69905
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69903
                                           (let ((__tmp69904
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69904 '()))))
                                      (declare (not safe))
                                      (cons __tmp69905 __tmp69903))))
                               (declare (not safe))
                               (cons __tmp69906 __tmp69902)))
                            (__tmp69900
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69901 __tmp69900))))
                 (declare (not safe))
                 (cons __tmp69907 __tmp69899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69898 '()))))
                                           (declare (not safe))
                                           (cons __tmp69908 __tmp69897))))
                                    (declare (not safe))
                                    (cons __tmp69896 '()))))
                             (declare (not safe))
                             (cons __tmp69909 __tmp69895))))
                      (declare (not safe))
                      (cons __tmp69917 __tmp69894))))
               (declare (not safe))
               (cons __tmp69923 __tmp69893)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69772
                                                     (let ((__tmp69773
                                                            (let ((__tmp69891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69774
                           (let ((__tmp69890 (gx#datum->syntax '#f 'loop))
                                 (__tmp69775
                                  (let ((__tmp69881
                                         (let ((__tmp69886
                                                (let ((__tmp69889
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69887
                                                       (let ((__tmp69888
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69888
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69889
                                                        __tmp69887)))
                                               (__tmp69882
                                                (let ((__tmp69883
                                                       (let ((__tmp69885
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69884
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69885 __tmp69884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69883 '()))))
                                           (declare (not safe))
                                           (cons __tmp69886 __tmp69882)))
                                        (__tmp69776
                                         (let ((__tmp69777
                                                (let ((__tmp69880
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69778
                                                       (let ((__tmp69872
                                                              (let ((__tmp69879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69873
                             (let ((__tmp69874
                                    (let ((__tmp69878
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69875
                                           (let ((__tmp69876
                                                  (let ((__tmp69877
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69877 '()))))
                                             (declare (not safe))
                                             (cons _L63561_ __tmp69876))))
                                      (declare (not safe))
                                      (cons __tmp69878 __tmp69875))))
                               (declare (not safe))
                               (cons __tmp69874 '()))))
                        (declare (not safe))
                        (cons __tmp69879 __tmp69873)))
                     (__tmp69779
                      (let ((__tmp69780
                             (let ((__tmp69871 (gx#datum->syntax '#f 'cond))
                                   (__tmp69781
                                    (let ((__tmp69860
                                           (let ((__tmp69864
                                                  (let ((__tmp69870
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69865
                                                         (let ((__tmp69869
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69866
                        (let ((__tmp69867
                               (let ((__tmp69868
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69868 '()))))
                          (declare (not safe))
                          (cons __tmp69867 '()))))
                   (declare (not safe))
                   (cons __tmp69869 __tmp69866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69870
                                                          __tmp69865)))
                                                 (__tmp69861
                                                  (let ((__tmp69862
                                                         (let ((__tmp69863
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp69863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69862 '()))))
                                             (declare (not safe))
                                             (cons __tmp69864 __tmp69861)))
                                          (__tmp69782
                                           (let ((__tmp69834
                                                  (let ((__tmp69853
                                                         (let ((__tmp69859
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69854
                        (let ((__tmp69858 (gx#datum->syntax '#f 'k))
                              (__tmp69855
                               (let ((__tmp69856
                                      (let ((__tmp69857
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69857 '()))))
                                 (declare (not safe))
                                 (cons __tmp69856 '()))))
                          (declare (not safe))
                          (cons __tmp69858 __tmp69855))))
                   (declare (not safe))
                   (cons __tmp69859 __tmp69854)))
                (__tmp69835
                 (let ((__tmp69836
                        (let ((__tmp69852 (gx#datum->syntax '#f 'loop))
                              (__tmp69837
                               (let ((__tmp69844
                                      (let ((__tmp69851
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69845
                                             (let ((__tmp69850
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69846
                                                    (let ((__tmp69849
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69847
                                                           (let ((__tmp69848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69848 '()))))
              (declare (not safe))
              (cons __tmp69849 __tmp69847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69850 __tmp69846))))
                                        (declare (not safe))
                                        (cons __tmp69851 __tmp69845)))
                                     (__tmp69838
                                      (let ((__tmp69839
                                             (let ((__tmp69843
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69840
                                                    (let ((__tmp69842
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69841
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69842
                                                            __tmp69841))))
                                               (declare (not safe))
                                               (cons __tmp69843 __tmp69840))))
                                        (declare (not safe))
                                        (cons __tmp69839 '()))))
                                 (declare (not safe))
                                 (cons __tmp69844 __tmp69838))))
                          (declare (not safe))
                          (cons __tmp69852 __tmp69837))))
                   (declare (not safe))
                   (cons __tmp69836 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69853
                                                          __tmp69835)))
                                                 (__tmp69783
                                                  (let ((__tmp69805
                                                         (let ((__tmp69830
                                                                (let ((__tmp69831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69832
                                      (let ((__tmp69833
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69833 '()))))
                                 (declare (not safe))
                                 (cons _L63557_ __tmp69832))))
                          (declare (not safe))
                          (cons _L63558_ __tmp69831)))
                       (__tmp69806
                        (let ((__tmp69822
                               (let ((__tmp69829
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp69823
                                      (let ((__tmp69824
                                             (let ((__tmp69828
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp69825
                                                    (let ((__tmp69826
                                                           (let ((__tmp69827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp69827 '()))))
              (declare (not safe))
              (cons __tmp69826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69828 __tmp69825))))
                                        (declare (not safe))
                                        (cons _L63561_ __tmp69824))))
                                 (declare (not safe))
                                 (cons __tmp69829 __tmp69823)))
                              (__tmp69807
                               (let ((__tmp69810
                                      (let ((__tmp69821
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp69811
                                             (let ((__tmp69812
                                                    (let ((__tmp69816
                                                           (let ((__tmp69820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69817
                          (let ((__tmp69819 (gx#datum->syntax '#f 'probe))
                                (__tmp69818
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69819 __tmp69818))))
                     (declare (not safe))
                     (cons __tmp69820 __tmp69817)))
                  (__tmp69813
                   (let ((__tmp69814
                          (let ((__tmp69815
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp69815 '()))))
                     (declare (not safe))
                     (cons __tmp69814 '()))))
              (declare (not safe))
              (cons __tmp69816 __tmp69813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L63561_ __tmp69812))))
                                        (declare (not safe))
                                        (cons __tmp69821 __tmp69811)))
                                     (__tmp69808
                                      (let ((__tmp69809
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63555_ '()))))
                                        (declare (not safe))
                                        (cons __tmp69809 '()))))
                                 (declare (not safe))
                                 (cons __tmp69810 __tmp69808))))
                          (declare (not safe))
                          (cons __tmp69822 __tmp69807))))
                   (declare (not safe))
                   (cons __tmp69830 __tmp69806)))
                (__tmp69784
                 (let ((__tmp69785
                        (let ((__tmp69804 (gx#datum->syntax '#f 'else))
                              (__tmp69786
                               (let ((__tmp69787
                                      (let ((__tmp69803
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69788
                                             (let ((__tmp69795
                                                    (let ((__tmp69802
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69796
                                                           (let ((__tmp69801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69797
                          (let ((__tmp69800 (gx#datum->syntax '#f 'i))
                                (__tmp69798
                                 (let ((__tmp69799
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69799 '()))))
                            (declare (not safe))
                            (cons __tmp69800 __tmp69798))))
                     (declare (not safe))
                     (cons __tmp69801 __tmp69797))))
              (declare (not safe))
              (cons __tmp69802 __tmp69796)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69789
                                                    (let ((__tmp69790
                                                           (let ((__tmp69794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69791
                          (let ((__tmp69793 (gx#datum->syntax '#f 'i))
                                (__tmp69792
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69793 __tmp69792))))
                     (declare (not safe))
                     (cons __tmp69794 __tmp69791))))
              (declare (not safe))
              (cons __tmp69790 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69795 __tmp69789))))
                                        (declare (not safe))
                                        (cons __tmp69803 __tmp69788))))
                                 (declare (not safe))
                                 (cons __tmp69787 '()))))
                          (declare (not safe))
                          (cons __tmp69804 __tmp69786))))
                   (declare (not safe))
                   (cons __tmp69785 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69805
                                                          __tmp69784))))
                                             (declare (not safe))
                                             (cons __tmp69834 __tmp69783))))
                                      (declare (not safe))
                                      (cons __tmp69860 __tmp69782))))
                               (declare (not safe))
                               (cons __tmp69871 __tmp69781))))
                        (declare (not safe))
                        (cons __tmp69780 '()))))
                 (declare (not safe))
                 (cons __tmp69872 __tmp69779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69880
                                                        __tmp69778))))
                                           (declare (not safe))
                                           (cons __tmp69777 '()))))
                                    (declare (not safe))
                                    (cons __tmp69881 __tmp69776))))
                             (declare (not safe))
                             (cons __tmp69890 __tmp69775))))
                      (declare (not safe))
                      (cons __tmp69891 __tmp69774))))
               (declare (not safe))
               (cons __tmp69773 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69892 __tmp69772))))
                                         (declare (not safe))
                                         (cons __tmp69932 __tmp69771)))
                                     _hd6347163549_
                                     _hd6346863539_
                                     _hd6346563529_
                                     _hd6346263519_
                                     _hd6345963509_
                                     _hd6345663499_)
                                    (_g6344463478_ _g6344563482_))))
                            (_g6344463478_ _g6344563482_))))
                    (_g6344463478_ _g6344563482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6344463478_
                                                     _g6344563482_))))
                                            (_g6344463478_ _g6344563482_))))
                                    (_g6344463478_ _g6344563482_))))
                            (_g6344463478_ _g6344563482_))))
                    (_g6344463478_ _g6344563482_)))))
        (_g6344363589_ _$stx63440_)))))
