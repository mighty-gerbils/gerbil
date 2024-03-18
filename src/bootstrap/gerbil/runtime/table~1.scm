(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx58163_)
      (let* ((_g5816758181_
              (lambda (_g5816858177_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5816858177_)))
             (_g5816658223_
              (lambda (_g5816858185_)
                (if (gx#stx-pair? _g5816858185_)
                    (let ((_e5817258188_ (gx#syntax-e _g5816858185_)))
                      (let ((_hd5817158192_
                             (let ()
                               (declare (not safe))
                               (##car _e5817258188_)))
                            (_tl5817058195_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5817258188_))))
                        (if (gx#stx-pair? _tl5817058195_)
                            (let ((_e5817558198_ (gx#syntax-e _tl5817058195_)))
                              (let ((_hd5817458202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5817558198_)))
                                    (_tl5817358205_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5817558198_))))
                                (if (gx#stx-null? _tl5817358205_)
                                    ((lambda (_L58208_)
                                       (let ((__tmp60745
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60743
                                              (let ((__tmp60744
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L58208_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60744))))
                                         (declare (not safe))
                                         (cons __tmp60745 __tmp60743)))
                                     _hd5817458202_)
                                    (_g5816758181_ _g5816858185_))))
                            (_g5816758181_ _g5816858185_))))
                    (_g5816758181_ _g5816858185_)))))
        (_g5816658223_ _$stx58163_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx58227_)
      (let* ((_g5823158277_
              (lambda (_g5823258273_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5823258273_)))
             (_g5823058430_
              (lambda (_g5823258281_)
                (if (gx#stx-pair? _g5823258281_)
                    (let ((_e5824458284_ (gx#syntax-e _g5823258281_)))
                      (let ((_hd5824358288_
                             (let ()
                               (declare (not safe))
                               (##car _e5824458284_)))
                            (_tl5824258291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5824458284_))))
                        (if (gx#stx-pair? _tl5824258291_)
                            (let ((_e5824758294_ (gx#syntax-e _tl5824258291_)))
                              (let ((_hd5824658298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5824758294_)))
                                    (_tl5824558301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5824758294_))))
                                (if (gx#stx-pair? _tl5824558301_)
                                    (let ((_e5825058304_
                                           (gx#syntax-e _tl5824558301_)))
                                      (let ((_hd5824958308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5825058304_)))
                                            (_tl5824858311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5825058304_))))
                                        (if (gx#stx-pair? _tl5824858311_)
                                            (let ((_e5825358314_
                                                   (gx#syntax-e
                                                    _tl5824858311_)))
                                              (let ((_hd5825258318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5825358314_)))
                                                    (_tl5825158321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5825358314_))))
                                                (if (gx#stx-pair?
                                                     _tl5825158321_)
                                                    (let ((_e5825658324_
                                                           (gx#syntax-e
                                                            _tl5825158321_)))
                                                      (let ((_hd5825558328_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5825658324_)))
                    (_tl5825458331_
                     (let () (declare (not safe)) (##cdr _e5825658324_))))
                (if (gx#stx-pair? _tl5825458331_)
                    (let ((_e5825958334_ (gx#syntax-e _tl5825458331_)))
                      (let ((_hd5825858338_
                             (let ()
                               (declare (not safe))
                               (##car _e5825958334_)))
                            (_tl5825758341_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5825958334_))))
                        (if (gx#stx-pair? _tl5825758341_)
                            (let ((_e5826258344_ (gx#syntax-e _tl5825758341_)))
                              (let ((_hd5826158348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5826258344_)))
                                    (_tl5826058351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5826258344_))))
                                (if (gx#stx-pair? _tl5826058351_)
                                    (let ((_e5826558354_
                                           (gx#syntax-e _tl5826058351_)))
                                      (let ((_hd5826458358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5826558354_)))
                                            (_tl5826358361_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5826558354_))))
                                        (if (gx#stx-pair? _tl5826358361_)
                                            (let ((_e5826858364_
                                                   (gx#syntax-e
                                                    _tl5826358361_)))
                                              (let ((_hd5826758368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5826858364_)))
                                                    (_tl5826658371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5826858364_))))
                                                (if (gx#stx-pair?
                                                     _tl5826658371_)
                                                    (let ((_e5827158374_
                                                           (gx#syntax-e
                                                            _tl5826658371_)))
                                                      (let ((_hd5827058378_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5827158374_)))
                    (_tl5826958381_
                     (let () (declare (not safe)) (##cdr _e5827158374_))))
                (if (gx#stx-null? _tl5826958381_)
                    ((lambda (_L58384_
                              _L58386_
                              _L58387_
                              _L58388_
                              _L58389_
                              _L58390_
                              _L58391_
                              _L58392_
                              _L58393_)
                       (let ((__tmp61177 (gx#datum->syntax '#f 'begin))
                             (__tmp60746
                              (let ((__tmp61156
                                     (let ((__tmp61176
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp61157
                                            (let ((__tmp61167
                                                   (let ((__tmp61168
                                                          (let ((__tmp61173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61175 (gx#datum->syntax '#f 'size-hint))
                               (__tmp61174
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp61175 __tmp61174)))
                        (__tmp61169
                         (let ((__tmp61170
                                (let ((__tmp61172 (gx#datum->syntax '#f 'seed))
                                      (__tmp61171
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp61172 __tmp61171))))
                           (declare (not safe))
                           (cons __tmp61170 '()))))
                    (declare (not safe))
                    (cons __tmp61173 __tmp61169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L58393_
                                                           __tmp61168)))
                                                  (__tmp61158
                                                   (let ((__tmp61159
                                                          (let ((__tmp61166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp61160
                         (let ((__tmp61165 (gx#datum->syntax '#f 'size-hint))
                               (__tmp61161
                                (let ((__tmp61162
                                       (let ((__tmp61163
                                              (let ((__tmp61164
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp61164 '()))))
                                         (declare (not safe))
                                         (cons _L58384_ __tmp61163))))
                                  (declare (not safe))
                                  (cons _L58386_ __tmp61162))))
                           (declare (not safe))
                           (cons __tmp61165 __tmp61161))))
                    (declare (not safe))
                    (cons __tmp61166 __tmp61160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61159 '()))))
                                              (declare (not safe))
                                              (cons __tmp61167 __tmp61158))))
                                       (declare (not safe))
                                       (cons __tmp61176 __tmp61157)))
                                    (__tmp60747
                                     (let ((__tmp61113
                                            (let ((__tmp61155
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp61114
                                                   (let ((__tmp61148
                                                          (let ((__tmp61149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61154 (gx#datum->syntax '#f 'tab))
                               (__tmp61150
                                (let ((__tmp61153 (gx#datum->syntax '#f 'key))
                                      (__tmp61151
                                       (let ((__tmp61152
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp61152 '()))))
                                  (declare (not safe))
                                  (cons __tmp61153 __tmp61151))))
                           (declare (not safe))
                           (cons __tmp61154 __tmp61150))))
                    (declare (not safe))
                    (cons _L58392_ __tmp61149)))
                 (__tmp61115
                  (let ((__tmp61116
                         (let ((__tmp61147 (gx#datum->syntax '#f 'let))
                               (__tmp61117
                                (let ((__tmp61131
                                       (let ((__tmp61140
                                              (let ((__tmp61146
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp61141
                                                     (let ((__tmp61142
                                                            (let ((__tmp61145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp61143
                           (let ((__tmp61144 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp61144 '()))))
                      (declare (not safe))
                      (cons __tmp61145 __tmp61143))))
               (declare (not safe))
               (cons __tmp61142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61146 __tmp61141)))
                                             (__tmp61132
                                              (let ((__tmp61133
                                                     (let ((__tmp61139
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp61134
                                                            (let ((__tmp61135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61138
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp61136
                                  (let ((__tmp61137
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp61137 '()))))
                             (declare (not safe))
                             (cons __tmp61138 __tmp61136))))
                      (declare (not safe))
                      (cons __tmp61135 '()))))
               (declare (not safe))
               (cons __tmp61139 __tmp61134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61133 '()))))
                                         (declare (not safe))
                                         (cons __tmp61140 __tmp61132)))
                                      (__tmp61118
                                       (let ((__tmp61119
                                              (let ((__tmp61130
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp61120
                                                     (let ((__tmp61129
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp61121
                                                            (let ((__tmp61128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp61122
                           (let ((__tmp61123
                                  (let ((__tmp61124
                                         (let ((__tmp61127
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp61125
                                                (let ((__tmp61126
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp61126 '()))))
                                           (declare (not safe))
                                           (cons __tmp61127 __tmp61125))))
                                    (declare (not safe))
                                    (cons _L58384_ __tmp61124))))
                             (declare (not safe))
                             (cons _L58386_ __tmp61123))))
                      (declare (not safe))
                      (cons __tmp61128 __tmp61122))))
               (declare (not safe))
               (cons __tmp61129 __tmp61121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61130 __tmp61120))))
                                         (declare (not safe))
                                         (cons __tmp61119 '()))))
                                  (declare (not safe))
                                  (cons __tmp61131 __tmp61118))))
                           (declare (not safe))
                           (cons __tmp61147 __tmp61117))))
                    (declare (not safe))
                    (cons __tmp61116 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61148
                                                           __tmp61115))))
                                              (declare (not safe))
                                              (cons __tmp61155 __tmp61114)))
                                           (__tmp60748
                                            (let ((__tmp61067
                                                   (let ((__tmp61112
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp61068
                                                          (let ((__tmp61105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61106
                                (let ((__tmp61111 (gx#datum->syntax '#f 'tab))
                                      (__tmp61107
                                       (let ((__tmp61110
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp61108
                                              (let ((__tmp61109
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp61109 '()))))
                                         (declare (not safe))
                                         (cons __tmp61110 __tmp61108))))
                                  (declare (not safe))
                                  (cons __tmp61111 __tmp61107))))
                           (declare (not safe))
                           (cons _L58391_ __tmp61106)))
                        (__tmp61069
                         (let ((__tmp61078
                                (let ((__tmp61104 (gx#datum->syntax '#f 'when))
                                      (__tmp61079
                                       (let ((__tmp61085
                                              (let ((__tmp61103
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp61086
                                                     (let ((__tmp61099
                                                            (let ((__tmp61102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp61100
                           (let ((__tmp61101 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp61101 '()))))
                      (declare (not safe))
                      (cons __tmp61102 __tmp61100)))
                   (__tmp61087
                    (let ((__tmp61088
                           (let ((__tmp61098
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp61089
                                  (let ((__tmp61091
                                         (let ((__tmp61097
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61092
                                                (let ((__tmp61093
                                                       (let ((__tmp61096
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp61094
                                                              (let ((__tmp61095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp61095 '()))))
                 (declare (not safe))
                 (cons __tmp61096 __tmp61094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61093 '()))))
                                           (declare (not safe))
                                           (cons __tmp61097 __tmp61092)))
                                        (__tmp61090
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp61091 __tmp61090))))
                             (declare (not safe))
                             (cons __tmp61098 __tmp61089))))
                      (declare (not safe))
                      (cons __tmp61088 '()))))
               (declare (not safe))
               (cons __tmp61099 __tmp61087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61103 __tmp61086)))
                                             (__tmp61080
                                              (let ((__tmp61081
                                                     (let ((__tmp61084
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp61082
                                                            (let ((__tmp61083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp61083 '()))))
               (declare (not safe))
               (cons __tmp61084 __tmp61082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61081 '()))))
                                         (declare (not safe))
                                         (cons __tmp61085 __tmp61080))))
                                  (declare (not safe))
                                  (cons __tmp61104 __tmp61079)))
                               (__tmp61070
                                (let ((__tmp61071
                                       (let ((__tmp61072
                                              (let ((__tmp61077
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp61073
                                                     (let ((__tmp61076
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp61074
                                                            (let ((__tmp61075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp61075 '()))))
               (declare (not safe))
               (cons __tmp61076 __tmp61074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61077 __tmp61073))))
                                         (declare (not safe))
                                         (cons _L58390_ __tmp61072))))
                                  (declare (not safe))
                                  (cons __tmp61071 '()))))
                           (declare (not safe))
                           (cons __tmp61078 __tmp61070))))
                    (declare (not safe))
                    (cons __tmp61105 __tmp61069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61112
                                                           __tmp61068)))
                                                  (__tmp60749
                                                   (let ((__tmp60965
                                                          (let ((__tmp61066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60966
                         (let ((__tmp61059
                                (let ((__tmp61060
                                       (let ((__tmp61065
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp61061
                                              (let ((__tmp61064
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp61062
                                                     (let ((__tmp61063
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp61063 '()))))
                                                (declare (not safe))
                                                (cons __tmp61064 __tmp61062))))
                                         (declare (not safe))
                                         (cons __tmp61065 __tmp61061))))
                                  (declare (not safe))
                                  (cons _L58390_ __tmp61060)))
                               (__tmp60967
                                (let ((__tmp60968
                                       (let ((__tmp61058
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60969
                                              (let ((__tmp61042
                                                     (let ((__tmp61051
                                                            (let ((__tmp61057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp61052
                           (let ((__tmp61053
                                  (let ((__tmp61056
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp61054
                                         (let ((__tmp61055
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp61055 '()))))
                                    (declare (not safe))
                                    (cons __tmp61056 __tmp61054))))
                             (declare (not safe))
                             (cons __tmp61053 '()))))
                      (declare (not safe))
                      (cons __tmp61057 __tmp61052)))
                   (__tmp61043
                    (let ((__tmp61044
                           (let ((__tmp61050 (gx#datum->syntax '#f 'seed))
                                 (__tmp61045
                                  (let ((__tmp61046
                                         (let ((__tmp61049
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp61047
                                                (let ((__tmp61048
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp61048 '()))))
                                           (declare (not safe))
                                           (cons __tmp61049 __tmp61047))))
                                    (declare (not safe))
                                    (cons __tmp61046 '()))))
                             (declare (not safe))
                             (cons __tmp61050 __tmp61045))))
                      (declare (not safe))
                      (cons __tmp61044 '()))))
               (declare (not safe))
               (cons __tmp61051 __tmp61043)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60970
                                                     (let ((__tmp60971
                                                            (let ((__tmp61041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60972
                           (let ((__tmp61040 (gx#datum->syntax '#f 'table))
                                 (__tmp60973
                                  (let ((__tmp61039
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60974
                                         (let ((__tmp60975
                                                (let ((__tmp60976
                                                       (let ((__tmp61038
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60977
                                                              (let ((__tmp61037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60978
                             (let ((__tmp61000
                                    (let ((__tmp61036
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp61001
                                           (let ((__tmp61002
                                                  (let ((__tmp61020
                                                         (let ((__tmp61035
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp61021
                        (let ((__tmp61031
                               (let ((__tmp61034
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp61032
                                      (let ((__tmp61033
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp61033 '()))))
                                 (declare (not safe))
                                 (cons __tmp61034 __tmp61032)))
                              (__tmp61022
                               (let ((__tmp61023
                                      (let ((__tmp61030
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp61024
                                             (let ((__tmp61026
                                                    (let ((__tmp61029
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp61027
                                                           (let ((__tmp61028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp61028 '()))))
              (declare (not safe))
              (cons __tmp61029 __tmp61027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61025
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp61026 __tmp61025))))
                                        (declare (not safe))
                                        (cons __tmp61030 __tmp61024))))
                                 (declare (not safe))
                                 (cons __tmp61023 '()))))
                          (declare (not safe))
                          (cons __tmp61031 __tmp61022))))
                   (declare (not safe))
                   (cons __tmp61035 __tmp61021)))
                (__tmp61003
                 (let ((__tmp61004
                        (let ((__tmp61019 (gx#datum->syntax '#f 'set!))
                              (__tmp61005
                               (let ((__tmp61015
                                      (let ((__tmp61018
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp61016
                                             (let ((__tmp61017
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp61017 '()))))
                                        (declare (not safe))
                                        (cons __tmp61018 __tmp61016)))
                                     (__tmp61006
                                      (let ((__tmp61007
                                             (let ((__tmp61014
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61008
                                                    (let ((__tmp61010
                                                           (let ((__tmp61013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp61011
                          (let ((__tmp61012 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp61012 '()))))
                     (declare (not safe))
                     (cons __tmp61013 __tmp61011)))
                  (__tmp61009 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp61010 __tmp61009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61014 __tmp61008))))
                                        (declare (not safe))
                                        (cons __tmp61007 '()))))
                                 (declare (not safe))
                                 (cons __tmp61015 __tmp61006))))
                          (declare (not safe))
                          (cons __tmp61019 __tmp61005))))
                   (declare (not safe))
                   (cons __tmp61004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61020
                                                          __tmp61003))))
                                             (declare (not safe))
                                             (cons '() __tmp61002))))
                                      (declare (not safe))
                                      (cons __tmp61036 __tmp61001)))
                                   (__tmp60979
                                    (let ((__tmp60980
                                           (let ((__tmp60999
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60981
                                                  (let ((__tmp60982
                                                         (let ((__tmp60983
                                                                (let ((__tmp60998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60984
                               (let ((__tmp60994
                                      (let ((__tmp60997
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60995
                                             (let ((__tmp60996
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60996 '()))))
                                        (declare (not safe))
                                        (cons __tmp60997 __tmp60995)))
                                     (__tmp60985
                                      (let ((__tmp60986
                                             (let ((__tmp60993
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60987
                                                    (let ((__tmp60989
                                                           (let ((__tmp60992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60990
                          (let ((__tmp60991 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60991 '()))))
                     (declare (not safe))
                     (cons __tmp60992 __tmp60990)))
                  (__tmp60988 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60989 __tmp60988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60993 __tmp60987))))
                                        (declare (not safe))
                                        (cons __tmp60986 '()))))
                                 (declare (not safe))
                                 (cons __tmp60994 __tmp60985))))
                          (declare (not safe))
                          (cons __tmp60998 __tmp60984))))
                   (declare (not safe))
                   (cons __tmp60983 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60982))))
                                             (declare (not safe))
                                             (cons __tmp60999 __tmp60981))))
                                      (declare (not safe))
                                      (cons __tmp60980 '()))))
                               (declare (not safe))
                               (cons __tmp61000 __tmp60979))))
                        (declare (not safe))
                        (cons __tmp61037 __tmp60978))))
                 (declare (not safe))
                 (cons __tmp61038 __tmp60977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58384_ __tmp60976))))
                                           (declare (not safe))
                                           (cons _L58386_ __tmp60975))))
                                    (declare (not safe))
                                    (cons __tmp61039 __tmp60974))))
                             (declare (not safe))
                             (cons __tmp61040 __tmp60973))))
                      (declare (not safe))
                      (cons __tmp61041 __tmp60972))))
               (declare (not safe))
               (cons __tmp60971 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61042 __tmp60970))))
                                         (declare (not safe))
                                         (cons __tmp61058 __tmp60969))))
                                  (declare (not safe))
                                  (cons __tmp60968 '()))))
                           (declare (not safe))
                           (cons __tmp61059 __tmp60967))))
                    (declare (not safe))
                    (cons __tmp61066 __tmp60966)))
                 (__tmp60750
                  (let ((__tmp60917
                         (let ((__tmp60964 (gx#datum->syntax '#f 'def))
                               (__tmp60918
                                (let ((__tmp60956
                                       (let ((__tmp60957
                                              (let ((__tmp60963
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60958
                                                     (let ((__tmp60962
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60959
                                                            (let ((__tmp60960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60961 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60961 '()))))
                      (declare (not safe))
                      (cons _L58389_ __tmp60960))))
               (declare (not safe))
               (cons __tmp60962 __tmp60959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60963 __tmp60958))))
                                         (declare (not safe))
                                         (cons _L58389_ __tmp60957)))
                                      (__tmp60919
                                       (let ((__tmp60929
                                              (let ((__tmp60955
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60930
                                                     (let ((__tmp60936
                                                            (let ((__tmp60954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60937
                           (let ((__tmp60950
                                  (let ((__tmp60953
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60951
                                         (let ((__tmp60952
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60952 '()))))
                                    (declare (not safe))
                                    (cons __tmp60953 __tmp60951)))
                                 (__tmp60938
                                  (let ((__tmp60939
                                         (let ((__tmp60949
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60940
                                                (let ((__tmp60942
                                                       (let ((__tmp60948
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60943
                                                              (let ((__tmp60944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60947
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60945
                                    (let ((__tmp60946
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60946 '()))))
                               (declare (not safe))
                               (cons __tmp60947 __tmp60945))))
                        (declare (not safe))
                        (cons __tmp60944 '()))))
                 (declare (not safe))
                 (cons __tmp60948 __tmp60943)))
              (__tmp60941 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60942
                                                        __tmp60941))))
                                           (declare (not safe))
                                           (cons __tmp60949 __tmp60940))))
                                    (declare (not safe))
                                    (cons __tmp60939 '()))))
                             (declare (not safe))
                             (cons __tmp60950 __tmp60938))))
                      (declare (not safe))
                      (cons __tmp60954 __tmp60937)))
                   (__tmp60931
                    (let ((__tmp60932
                           (let ((__tmp60935
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60933
                                  (let ((__tmp60934
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60934 '()))))
                             (declare (not safe))
                             (cons __tmp60935 __tmp60933))))
                      (declare (not safe))
                      (cons __tmp60932 '()))))
               (declare (not safe))
               (cons __tmp60936 __tmp60931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60955 __tmp60930)))
                                             (__tmp60920
                                              (let ((__tmp60921
                                                     (let ((__tmp60922
                                                            (let ((__tmp60928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60923
                           (let ((__tmp60927 (gx#datum->syntax '#f 'key))
                                 (__tmp60924
                                  (let ((__tmp60925
                                         (let ((__tmp60926
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60926 '()))))
                                    (declare (not safe))
                                    (cons _L58389_ __tmp60925))))
                             (declare (not safe))
                             (cons __tmp60927 __tmp60924))))
                      (declare (not safe))
                      (cons __tmp60928 __tmp60923))))
               (declare (not safe))
               (cons _L58388_ __tmp60922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60921 '()))))
                                         (declare (not safe))
                                         (cons __tmp60929 __tmp60920))))
                                  (declare (not safe))
                                  (cons __tmp60956 __tmp60919))))
                           (declare (not safe))
                           (cons __tmp60964 __tmp60918)))
                        (__tmp60751
                         (let ((__tmp60813
                                (let ((__tmp60916 (gx#datum->syntax '#f 'def))
                                      (__tmp60814
                                       (let ((__tmp60908
                                              (let ((__tmp60909
                                                     (let ((__tmp60915
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60910
                                                            (let ((__tmp60914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60911
                           (let ((__tmp60912
                                  (let ((__tmp60913
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60913 '()))))
                             (declare (not safe))
                             (cons _L58389_ __tmp60912))))
                      (declare (not safe))
                      (cons __tmp60914 __tmp60911))))
               (declare (not safe))
               (cons __tmp60915 __tmp60910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L58388_ __tmp60909)))
                                             (__tmp60815
                                              (let ((__tmp60816
                                                     (let ((__tmp60907
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60817
                                                            (let ((__tmp60891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60900
                                  (let ((__tmp60906
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60901
                                         (let ((__tmp60902
                                                (let ((__tmp60905
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60903
                                                       (let ((__tmp60904
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60904
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60905
                                                        __tmp60903))))
                                           (declare (not safe))
                                           (cons __tmp60902 '()))))
                                    (declare (not safe))
                                    (cons __tmp60906 __tmp60901)))
                                 (__tmp60892
                                  (let ((__tmp60893
                                         (let ((__tmp60899
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60894
                                                (let ((__tmp60895
                                                       (let ((__tmp60898
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60896
                                                              (let ((__tmp60897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60897 '()))))
                 (declare (not safe))
                 (cons __tmp60898 __tmp60896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60895 '()))))
                                           (declare (not safe))
                                           (cons __tmp60899 __tmp60894))))
                                    (declare (not safe))
                                    (cons __tmp60893 '()))))
                             (declare (not safe))
                             (cons __tmp60900 __tmp60892)))
                          (__tmp60818
                           (let ((__tmp60819
                                  (let ((__tmp60890
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60820
                                         (let ((__tmp60889
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60821
                                                (let ((__tmp60888
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60822
                                                       (let ((__tmp60823
                                                              (let ((__tmp60824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60887 (gx#datum->syntax '#f 'key))
                                   (__tmp60825
                                    (let ((__tmp60826
                                           (let ((__tmp60886
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60827
                                                  (let ((__tmp60849
                                                         (let ((__tmp60885
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60850
                        (let ((__tmp60851
                               (let ((__tmp60869
                                      (let ((__tmp60884
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60870
                                             (let ((__tmp60880
                                                    (let ((__tmp60883
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60881
                                                           (let ((__tmp60882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60882 '()))))
              (declare (not safe))
              (cons __tmp60883 __tmp60881)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60871
                                                    (let ((__tmp60872
                                                           (let ((__tmp60879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60873
                          (let ((__tmp60875
                                 (let ((__tmp60878
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60876
                                        (let ((__tmp60877
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60877 '()))))
                                   (declare (not safe))
                                   (cons __tmp60878 __tmp60876)))
                                (__tmp60874
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60875 __tmp60874))))
                     (declare (not safe))
                     (cons __tmp60879 __tmp60873))))
              (declare (not safe))
              (cons __tmp60872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60880 __tmp60871))))
                                        (declare (not safe))
                                        (cons __tmp60884 __tmp60870)))
                                     (__tmp60852
                                      (let ((__tmp60853
                                             (let ((__tmp60868
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60854
                                                    (let ((__tmp60864
                                                           (let ((__tmp60867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60865
                          (let ((__tmp60866 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60866 '()))))
                     (declare (not safe))
                     (cons __tmp60867 __tmp60865)))
                  (__tmp60855
                   (let ((__tmp60856
                          (let ((__tmp60863 (gx#datum->syntax '#f 'fx+))
                                (__tmp60857
                                 (let ((__tmp60859
                                        (let ((__tmp60862
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60860
                                               (let ((__tmp60861
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60861 '()))))
                                          (declare (not safe))
                                          (cons __tmp60862 __tmp60860)))
                                       (__tmp60858
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60859 __tmp60858))))
                            (declare (not safe))
                            (cons __tmp60863 __tmp60857))))
                     (declare (not safe))
                     (cons __tmp60856 '()))))
              (declare (not safe))
              (cons __tmp60864 __tmp60855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60868 __tmp60854))))
                                        (declare (not safe))
                                        (cons __tmp60853 '()))))
                                 (declare (not safe))
                                 (cons __tmp60869 __tmp60852))))
                          (declare (not safe))
                          (cons '() __tmp60851))))
                   (declare (not safe))
                   (cons __tmp60885 __tmp60850)))
                (__tmp60828
                 (let ((__tmp60829
                        (let ((__tmp60848 (gx#datum->syntax '#f 'lambda))
                              (__tmp60830
                               (let ((__tmp60831
                                      (let ((__tmp60832
                                             (let ((__tmp60847
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60833
                                                    (let ((__tmp60843
                                                           (let ((__tmp60846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60844
                          (let ((__tmp60845 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60845 '()))))
                     (declare (not safe))
                     (cons __tmp60846 __tmp60844)))
                  (__tmp60834
                   (let ((__tmp60835
                          (let ((__tmp60842 (gx#datum->syntax '#f 'fx+))
                                (__tmp60836
                                 (let ((__tmp60838
                                        (let ((__tmp60841
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60839
                                               (let ((__tmp60840
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60840 '()))))
                                          (declare (not safe))
                                          (cons __tmp60841 __tmp60839)))
                                       (__tmp60837
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60838 __tmp60837))))
                            (declare (not safe))
                            (cons __tmp60842 __tmp60836))))
                     (declare (not safe))
                     (cons __tmp60835 '()))))
              (declare (not safe))
              (cons __tmp60843 __tmp60834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60847 __tmp60833))))
                                        (declare (not safe))
                                        (cons __tmp60832 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60831))))
                          (declare (not safe))
                          (cons __tmp60848 __tmp60830))))
                   (declare (not safe))
                   (cons __tmp60829 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60849
                                                          __tmp60828))))
                                             (declare (not safe))
                                             (cons __tmp60886 __tmp60827))))
                                      (declare (not safe))
                                      (cons _L58389_ __tmp60826))))
                               (declare (not safe))
                               (cons __tmp60887 __tmp60825))))
                        (declare (not safe))
                        (cons _L58384_ __tmp60824))))
                 (declare (not safe))
                 (cons _L58386_ __tmp60823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60888
                                                        __tmp60822))))
                                           (declare (not safe))
                                           (cons __tmp60889 __tmp60821))))
                                    (declare (not safe))
                                    (cons __tmp60890 __tmp60820))))
                             (declare (not safe))
                             (cons __tmp60819 '()))))
                      (declare (not safe))
                      (cons __tmp60891 __tmp60818))))
               (declare (not safe))
               (cons __tmp60907 __tmp60817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60816 '()))))
                                         (declare (not safe))
                                         (cons __tmp60908 __tmp60815))))
                                  (declare (not safe))
                                  (cons __tmp60916 __tmp60814)))
                               (__tmp60752
                                (let ((__tmp60753
                                       (let ((__tmp60812
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60754
                                              (let ((__tmp60807
                                                     (let ((__tmp60808
                                                            (let ((__tmp60811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60809
                           (let ((__tmp60810 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60810 '()))))
                      (declare (not safe))
                      (cons __tmp60811 __tmp60809))))
               (declare (not safe))
               (cons _L58387_ __tmp60808)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60755
                                                     (let ((__tmp60756
                                                            (let ((__tmp60806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60757
                           (let ((__tmp60790
                                  (let ((__tmp60799
                                         (let ((__tmp60805
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60800
                                                (let ((__tmp60801
                                                       (let ((__tmp60804
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60802
                                                              (let ((__tmp60803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60803 '()))))
                 (declare (not safe))
                 (cons __tmp60804 __tmp60802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60801 '()))))
                                           (declare (not safe))
                                           (cons __tmp60805 __tmp60800)))
                                        (__tmp60791
                                         (let ((__tmp60792
                                                (let ((__tmp60798
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60793
                                                       (let ((__tmp60794
                                                              (let ((__tmp60797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60795
                             (let ((__tmp60796 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60796 '()))))
                        (declare (not safe))
                        (cons __tmp60797 __tmp60795))))
                 (declare (not safe))
                 (cons __tmp60794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60798
                                                        __tmp60793))))
                                           (declare (not safe))
                                           (cons __tmp60792 '()))))
                                    (declare (not safe))
                                    (cons __tmp60799 __tmp60791)))
                                 (__tmp60758
                                  (let ((__tmp60759
                                         (let ((__tmp60789
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60760
                                                (let ((__tmp60788
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60761
                                                       (let ((__tmp60787
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60762
                                                              (let ((__tmp60763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60764
                                    (let ((__tmp60786
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60765
                                           (let ((__tmp60766
                                                  (let ((__tmp60785
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60767
                                                         (let ((__tmp60768
                                                                (let ((__tmp60769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60784 (gx#datum->syntax '#f 'set!))
                                     (__tmp60770
                                      (let ((__tmp60780
                                             (let ((__tmp60783
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60781
                                                    (let ((__tmp60782
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60782 '()))))
                                               (declare (not safe))
                                               (cons __tmp60783 __tmp60781)))
                                            (__tmp60771
                                             (let ((__tmp60772
                                                    (let ((__tmp60779
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60773
                                                           (let ((__tmp60775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60778
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60776
                                 (let ((__tmp60777
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60777 '()))))
                            (declare (not safe))
                            (cons __tmp60778 __tmp60776)))
                         (__tmp60774
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60775 __tmp60774))))
              (declare (not safe))
              (cons __tmp60779 __tmp60773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60772 '()))))
                                        (declare (not safe))
                                        (cons __tmp60780 __tmp60771))))
                                 (declare (not safe))
                                 (cons __tmp60784 __tmp60770))))
                          (declare (not safe))
                          (cons __tmp60769 '()))))
                   (declare (not safe))
                   (cons '() __tmp60768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60785
                                                          __tmp60767))))
                                             (declare (not safe))
                                             (cons __tmp60766 '()))))
                                      (declare (not safe))
                                      (cons __tmp60786 __tmp60765))))
                               (declare (not safe))
                               (cons _L58384_ __tmp60764))))
                        (declare (not safe))
                        (cons _L58386_ __tmp60763))))
                 (declare (not safe))
                 (cons __tmp60787 __tmp60762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60788
                                                        __tmp60761))))
                                           (declare (not safe))
                                           (cons __tmp60789 __tmp60760))))
                                    (declare (not safe))
                                    (cons __tmp60759 '()))))
                             (declare (not safe))
                             (cons __tmp60790 __tmp60758))))
                      (declare (not safe))
                      (cons __tmp60806 __tmp60757))))
               (declare (not safe))
               (cons __tmp60756 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60807 __tmp60755))))
                                         (declare (not safe))
                                         (cons __tmp60812 __tmp60754))))
                                  (declare (not safe))
                                  (cons __tmp60753 '()))))
                           (declare (not safe))
                           (cons __tmp60813 __tmp60752))))
                    (declare (not safe))
                    (cons __tmp60917 __tmp60751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60965
                                                           __tmp60750))))
                                              (declare (not safe))
                                              (cons __tmp61067 __tmp60749))))
                                       (declare (not safe))
                                       (cons __tmp61113 __tmp60748))))
                                (declare (not safe))
                                (cons __tmp61156 __tmp60747))))
                         (declare (not safe))
                         (cons __tmp61177 __tmp60746)))
                     _hd5827058378_
                     _hd5826758368_
                     _hd5826458358_
                     _hd5826158348_
                     _hd5825858338_
                     _hd5825558328_
                     _hd5825258318_
                     _hd5824958308_
                     _hd5824658298_)
                    (_g5823158277_ _g5823258281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5823158277_
                                                     _g5823258281_))))
                                            (_g5823158277_ _g5823258281_))))
                                    (_g5823158277_ _g5823258281_))))
                            (_g5823158277_ _g5823258281_))))
                    (_g5823158277_ _g5823258281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5823158277_
                                                     _g5823258281_))))
                                            (_g5823158277_ _g5823258281_))))
                                    (_g5823158277_ _g5823258281_))))
                            (_g5823158277_ _g5823258281_))))
                    (_g5823158277_ _g5823258281_)))))
        (_g5823058430_ _$stx58227_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx58434_)
      (let* ((_g5843858460_
              (lambda (_g5843958456_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5843958456_)))
             (_g5843758529_
              (lambda (_g5843958464_)
                (if (gx#stx-pair? _g5843958464_)
                    (let ((_e5844558467_ (gx#syntax-e _g5843958464_)))
                      (let ((_hd5844458471_
                             (let ()
                               (declare (not safe))
                               (##car _e5844558467_)))
                            (_tl5844358474_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5844558467_))))
                        (if (gx#stx-pair? _tl5844358474_)
                            (let ((_e5844858477_ (gx#syntax-e _tl5844358474_)))
                              (let ((_hd5844758481_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5844858477_)))
                                    (_tl5844658484_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5844858477_))))
                                (if (gx#stx-pair? _tl5844658484_)
                                    (let ((_e5845158487_
                                           (gx#syntax-e _tl5844658484_)))
                                      (let ((_hd5845058491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5845158487_)))
                                            (_tl5844958494_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5845158487_))))
                                        (if (gx#stx-pair? _tl5844958494_)
                                            (let ((_e5845458497_
                                                   (gx#syntax-e
                                                    _tl5844958494_)))
                                              (let ((_hd5845358501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5845458497_)))
                                                    (_tl5845258504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5845458497_))))
                                                (if (gx#stx-null?
                                                     _tl5845258504_)
                                                    ((lambda (_L58507_
                                                              _L58509_
                                                              _L58510_)
                                                       (let ((__tmp61197
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp61178
                                                              (let ((__tmp61185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61196
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp61186
                                    (let ((__tmp61187
                                           (let ((__tmp61195
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61188
                                                  (let ((__tmp61189
                                                         (let ((__tmp61190
                                                                (let ((__tmp61191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61194 (gx#datum->syntax '#f 'fx*))
                                     (__tmp61192
                                      (let ((__tmp61193
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58509_ '()))))
                                        (declare (not safe))
                                        (cons _L58509_ __tmp61193))))
                                 (declare (not safe))
                                 (cons __tmp61194 __tmp61192))))
                          (declare (not safe))
                          (cons __tmp61191 '()))))
                   (declare (not safe))
                   (cons _L58509_ __tmp61190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58510_
                                                          __tmp61189))))
                                             (declare (not safe))
                                             (cons __tmp61195 __tmp61188))))
                                      (declare (not safe))
                                      (cons __tmp61187 '()))))
                               (declare (not safe))
                               (cons __tmp61196 __tmp61186)))
                            (__tmp61179
                             (let ((__tmp61180
                                    (let ((__tmp61184
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp61181
                                           (let ((__tmp61183
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp61182
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58507_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61183 __tmp61182))))
                                      (declare (not safe))
                                      (cons __tmp61184 __tmp61181))))
                               (declare (not safe))
                               (cons __tmp61180 '()))))
                        (declare (not safe))
                        (cons __tmp61185 __tmp61179))))
                 (declare (not safe))
                 (cons __tmp61197 __tmp61178)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5845358501_
                                                     _hd5845058491_
                                                     _hd5844758481_)
                                                    (_g5843858460_
                                                     _g5843958464_))))
                                            (_g5843858460_ _g5843958464_))))
                                    (_g5843858460_ _g5843958464_))))
                            (_g5843858460_ _g5843958464_))))
                    (_g5843858460_ _g5843958464_)))))
        (_g5843758529_ _$stx58434_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx58533_)
      (let* ((_g5853758571_
              (lambda (_g5853858567_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5853858567_)))
             (_g5853658682_
              (lambda (_g5853858575_)
                (if (gx#stx-pair? _g5853858575_)
                    (let ((_e5854758578_ (gx#syntax-e _g5853858575_)))
                      (let ((_hd5854658582_
                             (let ()
                               (declare (not safe))
                               (##car _e5854758578_)))
                            (_tl5854558585_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5854758578_))))
                        (if (gx#stx-pair? _tl5854558585_)
                            (let ((_e5855058588_ (gx#syntax-e _tl5854558585_)))
                              (let ((_hd5854958592_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5855058588_)))
                                    (_tl5854858595_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5855058588_))))
                                (if (gx#stx-pair? _tl5854858595_)
                                    (let ((_e5855358598_
                                           (gx#syntax-e _tl5854858595_)))
                                      (let ((_hd5855258602_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5855358598_)))
                                            (_tl5855158605_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5855358598_))))
                                        (if (gx#stx-pair? _tl5855158605_)
                                            (let ((_e5855658608_
                                                   (gx#syntax-e
                                                    _tl5855158605_)))
                                              (let ((_hd5855558612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5855658608_)))
                                                    (_tl5855458615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5855658608_))))
                                                (if (gx#stx-pair?
                                                     _tl5855458615_)
                                                    (let ((_e5855958618_
                                                           (gx#syntax-e
                                                            _tl5855458615_)))
                                                      (let ((_hd5855858622_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5855958618_)))
                    (_tl5855758625_
                     (let () (declare (not safe)) (##cdr _e5855958618_))))
                (if (gx#stx-pair? _tl5855758625_)
                    (let ((_e5856258628_ (gx#syntax-e _tl5855758625_)))
                      (let ((_hd5856158632_
                             (let ()
                               (declare (not safe))
                               (##car _e5856258628_)))
                            (_tl5856058635_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5856258628_))))
                        (if (gx#stx-pair? _tl5856058635_)
                            (let ((_e5856558638_ (gx#syntax-e _tl5856058635_)))
                              (let ((_hd5856458642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5856558638_)))
                                    (_tl5856358645_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5856558638_))))
                                (if (gx#stx-null? _tl5856358645_)
                                    ((lambda (_L58648_
                                              _L58650_
                                              _L58651_
                                              _L58652_
                                              _L58653_
                                              _L58654_)
                                       (let ((__tmp61356
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61198
                                              (let ((__tmp61316
                                                     (let ((__tmp61347
                                                            (let ((__tmp61355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61348
                           (let ((__tmp61349
                                  (let ((__tmp61354
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61350
                                         (let ((__tmp61352
                                                (let ((__tmp61353
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58650_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58652_ __tmp61353)))
                                               (__tmp61351
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58653_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61352 __tmp61351))))
                                    (declare (not safe))
                                    (cons __tmp61354 __tmp61350))))
                             (declare (not safe))
                             (cons __tmp61349 '()))))
                      (declare (not safe))
                      (cons __tmp61355 __tmp61348)))
                   (__tmp61317
                    (let ((__tmp61341
                           (let ((__tmp61346 (gx#datum->syntax '#f 'size))
                                 (__tmp61342
                                  (let ((__tmp61343
                                         (let ((__tmp61345
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61344
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58654_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61345 __tmp61344))))
                                    (declare (not safe))
                                    (cons __tmp61343 '()))))
                             (declare (not safe))
                             (cons __tmp61346 __tmp61342)))
                          (__tmp61318
                           (let ((__tmp61333
                                  (let ((__tmp61340
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61334
                                         (let ((__tmp61335
                                                (let ((__tmp61339
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61336
                                                       (let ((__tmp61338
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61337
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61338 __tmp61337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61339
                                                        __tmp61336))))
                                           (declare (not safe))
                                           (cons __tmp61335 '()))))
                                    (declare (not safe))
                                    (cons __tmp61340 __tmp61334)))
                                 (__tmp61319
                                  (let ((__tmp61320
                                         (let ((__tmp61332
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61321
                                                (let ((__tmp61322
                                                       (let ((__tmp61331
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61323
                                                              (let ((__tmp61325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61330
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61326
                                    (let ((__tmp61329
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61327
                                           (let ((__tmp61328
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61328 '()))))
                                      (declare (not safe))
                                      (cons __tmp61329 __tmp61327))))
                               (declare (not safe))
                               (cons __tmp61330 __tmp61326)))
                            (__tmp61324
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61325 __tmp61324))))
                 (declare (not safe))
                 (cons __tmp61331 __tmp61323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61322 '()))))
                                           (declare (not safe))
                                           (cons __tmp61332 __tmp61321))))
                                    (declare (not safe))
                                    (cons __tmp61320 '()))))
                             (declare (not safe))
                             (cons __tmp61333 __tmp61319))))
                      (declare (not safe))
                      (cons __tmp61341 __tmp61318))))
               (declare (not safe))
               (cons __tmp61347 __tmp61317)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61199
                                                     (let ((__tmp61200
                                                            (let ((__tmp61315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61201
                           (let ((__tmp61314 (gx#datum->syntax '#f 'loop))
                                 (__tmp61202
                                  (let ((__tmp61301
                                         (let ((__tmp61310
                                                (let ((__tmp61313
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61311
                                                       (let ((__tmp61312
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61312
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61313
                                                        __tmp61311)))
                                               (__tmp61302
                                                (let ((__tmp61307
                                                       (let ((__tmp61309
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61308
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61309 __tmp61308)))
              (__tmp61303
               (let ((__tmp61304
                      (let ((__tmp61306 (gx#datum->syntax '#f 'deleted))
                            (__tmp61305
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp61306 __tmp61305))))
                 (declare (not safe))
                 (cons __tmp61304 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61307
                                                        __tmp61303))))
                                           (declare (not safe))
                                           (cons __tmp61310 __tmp61302)))
                                        (__tmp61203
                                         (let ((__tmp61204
                                                (let ((__tmp61300
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61205
                                                       (let ((__tmp61292
                                                              (let ((__tmp61299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61293
                             (let ((__tmp61294
                                    (let ((__tmp61298
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61295
                                           (let ((__tmp61296
                                                  (let ((__tmp61297
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61297 '()))))
                                             (declare (not safe))
                                             (cons _L58654_ __tmp61296))))
                                      (declare (not safe))
                                      (cons __tmp61298 __tmp61295))))
                               (declare (not safe))
                               (cons __tmp61294 '()))))
                        (declare (not safe))
                        (cons __tmp61299 __tmp61293)))
                     (__tmp61206
                      (let ((__tmp61207
                             (let ((__tmp61291 (gx#datum->syntax '#f 'cond))
                                   (__tmp61208
                                    (let ((__tmp61282
                                           (let ((__tmp61284
                                                  (let ((__tmp61290
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61285
                                                         (let ((__tmp61289
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61286
                        (let ((__tmp61287
                               (let ((__tmp61288
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61288 '()))))
                          (declare (not safe))
                          (cons __tmp61287 '()))))
                   (declare (not safe))
                   (cons __tmp61289 __tmp61286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61290
                                                          __tmp61285)))
                                                 (__tmp61283
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58648_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61284 __tmp61283)))
                                          (__tmp61209
                                           (let ((__tmp61249
                                                  (let ((__tmp61275
                                                         (let ((__tmp61281
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61276
                        (let ((__tmp61280 (gx#datum->syntax '#f 'k))
                              (__tmp61277
                               (let ((__tmp61278
                                      (let ((__tmp61279
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61279 '()))))
                                 (declare (not safe))
                                 (cons __tmp61278 '()))))
                          (declare (not safe))
                          (cons __tmp61280 __tmp61277))))
                   (declare (not safe))
                   (cons __tmp61281 __tmp61276)))
                (__tmp61250
                 (let ((__tmp61251
                        (let ((__tmp61274 (gx#datum->syntax '#f 'loop))
                              (__tmp61252
                               (let ((__tmp61266
                                      (let ((__tmp61273
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61267
                                             (let ((__tmp61272
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61268
                                                    (let ((__tmp61271
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61269
                                                           (let ((__tmp61270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61270 '()))))
              (declare (not safe))
              (cons __tmp61271 __tmp61269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61272 __tmp61268))))
                                        (declare (not safe))
                                        (cons __tmp61273 __tmp61267)))
                                     (__tmp61253
                                      (let ((__tmp61261
                                             (let ((__tmp61265
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61262
                                                    (let ((__tmp61264
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61263
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61264
                                                            __tmp61263))))
                                               (declare (not safe))
                                               (cons __tmp61265 __tmp61262)))
                                            (__tmp61254
                                             (let ((__tmp61255
                                                    (let ((__tmp61260
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp61256
                                                           (let ((__tmp61259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp61257
                          (let ((__tmp61258 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp61258 '()))))
                     (declare (not safe))
                     (cons __tmp61259 __tmp61257))))
              (declare (not safe))
              (cons __tmp61260 __tmp61256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61255 '()))))
                                        (declare (not safe))
                                        (cons __tmp61261 __tmp61254))))
                                 (declare (not safe))
                                 (cons __tmp61266 __tmp61253))))
                          (declare (not safe))
                          (cons __tmp61274 __tmp61252))))
                   (declare (not safe))
                   (cons __tmp61251 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61275
                                                          __tmp61250)))
                                                 (__tmp61210
                                                  (let ((__tmp61234
                                                         (let ((__tmp61245
                                                                (let ((__tmp61246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61247
                                      (let ((__tmp61248
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61248 '()))))
                                 (declare (not safe))
                                 (cons _L58650_ __tmp61247))))
                          (declare (not safe))
                          (cons _L58651_ __tmp61246)))
                       (__tmp61235
                        (let ((__tmp61236
                               (let ((__tmp61244
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp61237
                                      (let ((__tmp61238
                                             (let ((__tmp61239
                                                    (let ((__tmp61243
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp61240
                                                           (let ((__tmp61242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp61241
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp61242 __tmp61241))))
              (declare (not safe))
              (cons __tmp61243 __tmp61240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61239 '()))))
                                        (declare (not safe))
                                        (cons _L58654_ __tmp61238))))
                                 (declare (not safe))
                                 (cons __tmp61244 __tmp61237))))
                          (declare (not safe))
                          (cons __tmp61236 '()))))
                   (declare (not safe))
                   (cons __tmp61245 __tmp61235)))
                (__tmp61211
                 (let ((__tmp61212
                        (let ((__tmp61233 (gx#datum->syntax '#f 'else))
                              (__tmp61213
                               (let ((__tmp61214
                                      (let ((__tmp61232
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61215
                                             (let ((__tmp61224
                                                    (let ((__tmp61231
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61225
                                                           (let ((__tmp61230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61226
                          (let ((__tmp61229 (gx#datum->syntax '#f 'i))
                                (__tmp61227
                                 (let ((__tmp61228
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61228 '()))))
                            (declare (not safe))
                            (cons __tmp61229 __tmp61227))))
                     (declare (not safe))
                     (cons __tmp61230 __tmp61226))))
              (declare (not safe))
              (cons __tmp61231 __tmp61225)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61216
                                                    (let ((__tmp61219
                                                           (let ((__tmp61223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61220
                          (let ((__tmp61222 (gx#datum->syntax '#f 'i))
                                (__tmp61221
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61222 __tmp61221))))
                     (declare (not safe))
                     (cons __tmp61223 __tmp61220)))
                  (__tmp61217
                   (let ((__tmp61218 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp61218 '()))))
              (declare (not safe))
              (cons __tmp61219 __tmp61217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61224 __tmp61216))))
                                        (declare (not safe))
                                        (cons __tmp61232 __tmp61215))))
                                 (declare (not safe))
                                 (cons __tmp61214 '()))))
                          (declare (not safe))
                          (cons __tmp61233 __tmp61213))))
                   (declare (not safe))
                   (cons __tmp61212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61234
                                                          __tmp61211))))
                                             (declare (not safe))
                                             (cons __tmp61249 __tmp61210))))
                                      (declare (not safe))
                                      (cons __tmp61282 __tmp61209))))
                               (declare (not safe))
                               (cons __tmp61291 __tmp61208))))
                        (declare (not safe))
                        (cons __tmp61207 '()))))
                 (declare (not safe))
                 (cons __tmp61292 __tmp61206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61300
                                                        __tmp61205))))
                                           (declare (not safe))
                                           (cons __tmp61204 '()))))
                                    (declare (not safe))
                                    (cons __tmp61301 __tmp61203))))
                             (declare (not safe))
                             (cons __tmp61314 __tmp61202))))
                      (declare (not safe))
                      (cons __tmp61315 __tmp61201))))
               (declare (not safe))
               (cons __tmp61200 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61316 __tmp61199))))
                                         (declare (not safe))
                                         (cons __tmp61356 __tmp61198)))
                                     _hd5856458642_
                                     _hd5856158632_
                                     _hd5855858622_
                                     _hd5855558612_
                                     _hd5855258602_
                                     _hd5854958592_)
                                    (_g5853758571_ _g5853858575_))))
                            (_g5853758571_ _g5853858575_))))
                    (_g5853758571_ _g5853858575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5853758571_
                                                     _g5853858575_))))
                                            (_g5853758571_ _g5853858575_))))
                                    (_g5853758571_ _g5853858575_))))
                            (_g5853758571_ _g5853858575_))))
                    (_g5853758571_ _g5853858575_)))))
        (_g5853658682_ _$stx58533_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx58686_)
      (let* ((_g5869058732_
              (lambda (_g5869158728_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5869158728_)))
             (_g5868958871_
              (lambda (_g5869158736_)
                (if (gx#stx-pair? _g5869158736_)
                    (let ((_e5870258739_ (gx#syntax-e _g5869158736_)))
                      (let ((_hd5870158743_
                             (let ()
                               (declare (not safe))
                               (##car _e5870258739_)))
                            (_tl5870058746_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5870258739_))))
                        (if (gx#stx-pair? _tl5870058746_)
                            (let ((_e5870558749_ (gx#syntax-e _tl5870058746_)))
                              (let ((_hd5870458753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5870558749_)))
                                    (_tl5870358756_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5870558749_))))
                                (if (gx#stx-pair? _tl5870358756_)
                                    (let ((_e5870858759_
                                           (gx#syntax-e _tl5870358756_)))
                                      (let ((_hd5870758763_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5870858759_)))
                                            (_tl5870658766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5870858759_))))
                                        (if (gx#stx-pair? _tl5870658766_)
                                            (let ((_e5871158769_
                                                   (gx#syntax-e
                                                    _tl5870658766_)))
                                              (let ((_hd5871058773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5871158769_)))
                                                    (_tl5870958776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5871158769_))))
                                                (if (gx#stx-pair?
                                                     _tl5870958776_)
                                                    (let ((_e5871458779_
                                                           (gx#syntax-e
                                                            _tl5870958776_)))
                                                      (let ((_hd5871358783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5871458779_)))
                    (_tl5871258786_
                     (let () (declare (not safe)) (##cdr _e5871458779_))))
                (if (gx#stx-pair? _tl5871258786_)
                    (let ((_e5871758789_ (gx#syntax-e _tl5871258786_)))
                      (let ((_hd5871658793_
                             (let ()
                               (declare (not safe))
                               (##car _e5871758789_)))
                            (_tl5871558796_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5871758789_))))
                        (if (gx#stx-pair? _tl5871558796_)
                            (let ((_e5872058799_ (gx#syntax-e _tl5871558796_)))
                              (let ((_hd5871958803_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5872058799_)))
                                    (_tl5871858806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5872058799_))))
                                (if (gx#stx-pair? _tl5871858806_)
                                    (let ((_e5872358809_
                                           (gx#syntax-e _tl5871858806_)))
                                      (let ((_hd5872258813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5872358809_)))
                                            (_tl5872158816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5872358809_))))
                                        (if (gx#stx-pair? _tl5872158816_)
                                            (let ((_e5872658819_
                                                   (gx#syntax-e
                                                    _tl5872158816_)))
                                              (let ((_hd5872558823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5872658819_)))
                                                    (_tl5872458826_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5872658819_))))
                                                (if (gx#stx-null?
                                                     _tl5872458826_)
                                                    ((lambda (_L58829_
                                                              _L58831_
                                                              _L58832_
                                                              _L58833_
                                                              _L58834_
                                                              _L58835_
                                                              _L58836_
                                                              _L58837_)
                                                       (let ((__tmp61573
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp61357
                                                              (let ((__tmp61533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61564
                                    (let ((__tmp61572
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61565
                                           (let ((__tmp61566
                                                  (let ((__tmp61571
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp61567
                                                         (let ((__tmp61569
                                                                (let ((__tmp61570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58833_ '()))))
                          (declare (not safe))
                          (cons _L58835_ __tmp61570)))
                       (__tmp61568
                        (let () (declare (not safe)) (cons _L58836_ '()))))
                   (declare (not safe))
                   (cons __tmp61569 __tmp61568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61571
                                                          __tmp61567))))
                                             (declare (not safe))
                                             (cons __tmp61566 '()))))
                                      (declare (not safe))
                                      (cons __tmp61572 __tmp61565)))
                                   (__tmp61534
                                    (let ((__tmp61558
                                           (let ((__tmp61563
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp61559
                                                  (let ((__tmp61560
                                                         (let ((__tmp61562
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp61561
                        (let () (declare (not safe)) (cons _L58837_ '()))))
                   (declare (not safe))
                   (cons __tmp61562 __tmp61561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61560 '()))))
                                             (declare (not safe))
                                             (cons __tmp61563 __tmp61559)))
                                          (__tmp61535
                                           (let ((__tmp61550
                                                  (let ((__tmp61557
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp61551
                                                         (let ((__tmp61552
                                                                (let ((__tmp61556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp61553
                               (let ((__tmp61555 (gx#datum->syntax '#f 'size))
                                     (__tmp61554
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp61555 __tmp61554))))
                          (declare (not safe))
                          (cons __tmp61556 __tmp61553))))
                   (declare (not safe))
                   (cons __tmp61552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61557
                                                          __tmp61551)))
                                                 (__tmp61536
                                                  (let ((__tmp61537
                                                         (let ((__tmp61549
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp61538
                        (let ((__tmp61539
                               (let ((__tmp61548
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp61540
                                      (let ((__tmp61542
                                             (let ((__tmp61547
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp61543
                                                    (let ((__tmp61546
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp61544
                                                           (let ((__tmp61545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp61545 '()))))
              (declare (not safe))
              (cons __tmp61546 __tmp61544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61547 __tmp61543)))
                                            (__tmp61541
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61542 __tmp61541))))
                                 (declare (not safe))
                                 (cons __tmp61548 __tmp61540))))
                          (declare (not safe))
                          (cons __tmp61539 '()))))
                   (declare (not safe))
                   (cons __tmp61549 __tmp61538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61537 '()))))
                                             (declare (not safe))
                                             (cons __tmp61550 __tmp61536))))
                                      (declare (not safe))
                                      (cons __tmp61558 __tmp61535))))
                               (declare (not safe))
                               (cons __tmp61564 __tmp61534)))
                            (__tmp61358
                             (let ((__tmp61359
                                    (let ((__tmp61532
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp61360
                                           (let ((__tmp61531
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp61361
                                                  (let ((__tmp61518
                                                         (let ((__tmp61527
                                                                (let ((__tmp61530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp61528
                               (let ((__tmp61529
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp61529 '()))))
                          (declare (not safe))
                          (cons __tmp61530 __tmp61528)))
                       (__tmp61519
                        (let ((__tmp61524
                               (let ((__tmp61526 (gx#datum->syntax '#f 'i))
                                     (__tmp61525
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61526 __tmp61525)))
                              (__tmp61520
                               (let ((__tmp61521
                                      (let ((__tmp61523
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp61522
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp61523 __tmp61522))))
                                 (declare (not safe))
                                 (cons __tmp61521 '()))))
                          (declare (not safe))
                          (cons __tmp61524 __tmp61520))))
                   (declare (not safe))
                   (cons __tmp61527 __tmp61519)))
                (__tmp61362
                 (let ((__tmp61363
                        (let ((__tmp61517 (gx#datum->syntax '#f 'let))
                              (__tmp61364
                               (let ((__tmp61509
                                      (let ((__tmp61516
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp61510
                                             (let ((__tmp61511
                                                    (let ((__tmp61515
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp61512
                                                           (let ((__tmp61513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61514 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp61514 '()))))
                     (declare (not safe))
                     (cons _L58837_ __tmp61513))))
              (declare (not safe))
              (cons __tmp61515 __tmp61512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61511 '()))))
                                        (declare (not safe))
                                        (cons __tmp61516 __tmp61510)))
                                     (__tmp61365
                                      (let ((__tmp61366
                                             (let ((__tmp61508
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp61367
                                                    (let ((__tmp61449
                                                           (let ((__tmp61501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61507 (gx#datum->syntax '#f 'eq?))
                                (__tmp61502
                                 (let ((__tmp61506 (gx#datum->syntax '#f 'k))
                                       (__tmp61503
                                        (let ((__tmp61504
                                               (let ((__tmp61505
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp61505 '()))))
                                          (declare (not safe))
                                          (cons __tmp61504 '()))))
                                   (declare (not safe))
                                   (cons __tmp61506 __tmp61503))))
                            (declare (not safe))
                            (cons __tmp61507 __tmp61502)))
                         (__tmp61450
                          (let ((__tmp61451
                                 (let ((__tmp61500 (gx#datum->syntax '#f 'if))
                                       (__tmp61452
                                        (let ((__tmp61499
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp61453
                                               (let ((__tmp61477
                                                      (let ((__tmp61498
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp61478
                                                             (let ((__tmp61492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61497
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp61493
                                   (let ((__tmp61494
                                          (let ((__tmp61496
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp61495
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58833_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61496 __tmp61495))))
                                     (declare (not safe))
                                     (cons _L58837_ __tmp61494))))
                              (declare (not safe))
                              (cons __tmp61497 __tmp61493)))
                           (__tmp61479
                            (let ((__tmp61482
                                   (let ((__tmp61491
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61483
                                          (let ((__tmp61484
                                                 (let ((__tmp61486
                                                        (let ((__tmp61490
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp61487
                                                               (let ((__tmp61489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp61488
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp61489 __tmp61488))))
                  (declare (not safe))
                  (cons __tmp61490 __tmp61487)))
               (__tmp61485 (let () (declare (not safe)) (cons _L58832_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp61486
                                                         __tmp61485))))
                                            (declare (not safe))
                                            (cons _L58837_ __tmp61484))))
                                     (declare (not safe))
                                     (cons __tmp61491 __tmp61483)))
                                  (__tmp61480
                                   (let ((__tmp61481
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58829_ '()))))
                                     (declare (not safe))
                                     (cons __tmp61481 '()))))
                              (declare (not safe))
                              (cons __tmp61482 __tmp61480))))
                       (declare (not safe))
                       (cons __tmp61492 __tmp61479))))
                (declare (not safe))
                (cons __tmp61498 __tmp61478)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61454
                                                      (let ((__tmp61455
                                                             (let ((__tmp61476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp61456
                            (let ((__tmp61470
                                   (let ((__tmp61475
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61471
                                          (let ((__tmp61472
                                                 (let ((__tmp61474
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp61473
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58833_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp61474
                                                         __tmp61473))))
                                            (declare (not safe))
                                            (cons _L58837_ __tmp61472))))
                                     (declare (not safe))
                                     (cons __tmp61475 __tmp61471)))
                                  (__tmp61457
                                   (let ((__tmp61460
                                          (let ((__tmp61469
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp61461
                                                 (let ((__tmp61462
                                                        (let ((__tmp61464
                                                               (let ((__tmp61468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp61465
                              (let ((__tmp61467 (gx#datum->syntax '#f 'probe))
                                    (__tmp61466
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp61467 __tmp61466))))
                         (declare (not safe))
                         (cons __tmp61468 __tmp61465)))
                      (__tmp61463
                       (let () (declare (not safe)) (cons _L58832_ '()))))
                  (declare (not safe))
                  (cons __tmp61464 __tmp61463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58837_
                                                         __tmp61462))))
                                            (declare (not safe))
                                            (cons __tmp61469 __tmp61461)))
                                         (__tmp61458
                                          (let ((__tmp61459
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58831_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61459 '()))))
                                     (declare (not safe))
                                     (cons __tmp61460 __tmp61458))))
                              (declare (not safe))
                              (cons __tmp61470 __tmp61457))))
                       (declare (not safe))
                       (cons __tmp61476 __tmp61456))))
                (declare (not safe))
                (cons __tmp61455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61477
                                                       __tmp61454))))
                                          (declare (not safe))
                                          (cons __tmp61499 __tmp61453))))
                                   (declare (not safe))
                                   (cons __tmp61500 __tmp61452))))
                            (declare (not safe))
                            (cons __tmp61451 '()))))
                     (declare (not safe))
                     (cons __tmp61501 __tmp61450)))
                  (__tmp61368
                   (let ((__tmp61416
                          (let ((__tmp61442
                                 (let ((__tmp61448 (gx#datum->syntax '#f 'eq?))
                                       (__tmp61443
                                        (let ((__tmp61447
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp61444
                                               (let ((__tmp61445
                                                      (let ((__tmp61446
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp61446
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp61445 '()))))
                                          (declare (not safe))
                                          (cons __tmp61447 __tmp61444))))
                                   (declare (not safe))
                                   (cons __tmp61448 __tmp61443)))
                                (__tmp61417
                                 (let ((__tmp61418
                                        (let ((__tmp61441
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp61419
                                               (let ((__tmp61433
                                                      (let ((__tmp61440
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp61434
                                                             (let ((__tmp61439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp61435
                            (let ((__tmp61438 (gx#datum->syntax '#f 'i))
                                  (__tmp61436
                                   (let ((__tmp61437
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp61437 '()))))
                              (declare (not safe))
                              (cons __tmp61438 __tmp61436))))
                       (declare (not safe))
                       (cons __tmp61439 __tmp61435))))
                (declare (not safe))
                (cons __tmp61440 __tmp61434)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61420
                                                      (let ((__tmp61428
                                                             (let ((__tmp61432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp61429
                            (let ((__tmp61431 (gx#datum->syntax '#f 'i))
                                  (__tmp61430
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp61431 __tmp61430))))
                       (declare (not safe))
                       (cons __tmp61432 __tmp61429)))
                    (__tmp61421
                     (let ((__tmp61422
                            (let ((__tmp61427 (gx#datum->syntax '#f 'or))
                                  (__tmp61423
                                   (let ((__tmp61426
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp61424
                                          (let ((__tmp61425
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp61425 '()))))
                                     (declare (not safe))
                                     (cons __tmp61426 __tmp61424))))
                              (declare (not safe))
                              (cons __tmp61427 __tmp61423))))
                       (declare (not safe))
                       (cons __tmp61422 '()))))
                (declare (not safe))
                (cons __tmp61428 __tmp61421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61433
                                                       __tmp61420))))
                                          (declare (not safe))
                                          (cons __tmp61441 __tmp61419))))
                                   (declare (not safe))
                                   (cons __tmp61418 '()))))
                            (declare (not safe))
                            (cons __tmp61442 __tmp61417)))
                         (__tmp61369
                          (let ((__tmp61393
                                 (let ((__tmp61412
                                        (let ((__tmp61413
                                               (let ((__tmp61414
                                                      (let ((__tmp61415
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp61415
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58833_ __tmp61414))))
                                          (declare (not safe))
                                          (cons _L58834_ __tmp61413)))
                                       (__tmp61394
                                        (let ((__tmp61406
                                               (let ((__tmp61411
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp61407
                                                      (let ((__tmp61408
                                                             (let ((__tmp61410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp61409
                            (let () (declare (not safe)) (cons _L58833_ '()))))
                       (declare (not safe))
                       (cons __tmp61410 __tmp61409))))
                (declare (not safe))
                (cons _L58837_ __tmp61408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61411 __tmp61407)))
                                              (__tmp61395
                                               (let ((__tmp61396
                                                      (let ((__tmp61405
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp61397
                                                             (let ((__tmp61398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61400
                                   (let ((__tmp61404
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61401
                                          (let ((__tmp61403
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp61402
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61403 __tmp61402))))
                                     (declare (not safe))
                                     (cons __tmp61404 __tmp61401)))
                                  (__tmp61399
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58832_ '()))))
                              (declare (not safe))
                              (cons __tmp61400 __tmp61399))))
                       (declare (not safe))
                       (cons _L58837_ __tmp61398))))
                (declare (not safe))
                (cons __tmp61405 __tmp61397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61396 '()))))
                                          (declare (not safe))
                                          (cons __tmp61406 __tmp61395))))
                                   (declare (not safe))
                                   (cons __tmp61412 __tmp61394)))
                                (__tmp61370
                                 (let ((__tmp61371
                                        (let ((__tmp61392
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp61372
                                               (let ((__tmp61373
                                                      (let ((__tmp61391
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp61374
                                                             (let ((__tmp61383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61390
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp61384
                                   (let ((__tmp61389
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp61385
                                          (let ((__tmp61388
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61386
                                                 (let ((__tmp61387
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp61387 '()))))
                                            (declare (not safe))
                                            (cons __tmp61388 __tmp61386))))
                                     (declare (not safe))
                                     (cons __tmp61389 __tmp61385))))
                              (declare (not safe))
                              (cons __tmp61390 __tmp61384)))
                           (__tmp61375
                            (let ((__tmp61378
                                   (let ((__tmp61382
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61379
                                          (let ((__tmp61381
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61380
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61381 __tmp61380))))
                                     (declare (not safe))
                                     (cons __tmp61382 __tmp61379)))
                                  (__tmp61376
                                   (let ((__tmp61377
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp61377 '()))))
                              (declare (not safe))
                              (cons __tmp61378 __tmp61376))))
                       (declare (not safe))
                       (cons __tmp61383 __tmp61375))))
                (declare (not safe))
                (cons __tmp61391 __tmp61374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61373 '()))))
                                          (declare (not safe))
                                          (cons __tmp61392 __tmp61372))))
                                   (declare (not safe))
                                   (cons __tmp61371 '()))))
                            (declare (not safe))
                            (cons __tmp61393 __tmp61370))))
                     (declare (not safe))
                     (cons __tmp61416 __tmp61369))))
              (declare (not safe))
              (cons __tmp61449 __tmp61368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61508 __tmp61367))))
                                        (declare (not safe))
                                        (cons __tmp61366 '()))))
                                 (declare (not safe))
                                 (cons __tmp61509 __tmp61365))))
                          (declare (not safe))
                          (cons __tmp61517 __tmp61364))))
                   (declare (not safe))
                   (cons __tmp61363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61518
                                                          __tmp61362))))
                                             (declare (not safe))
                                             (cons __tmp61531 __tmp61361))))
                                      (declare (not safe))
                                      (cons __tmp61532 __tmp61360))))
                               (declare (not safe))
                               (cons __tmp61359 '()))))
                        (declare (not safe))
                        (cons __tmp61533 __tmp61358))))
                 (declare (not safe))
                 (cons __tmp61573 __tmp61357)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5872558823_
                                                     _hd5872258813_
                                                     _hd5871958803_
                                                     _hd5871658793_
                                                     _hd5871358783_
                                                     _hd5871058773_
                                                     _hd5870758763_
                                                     _hd5870458753_)
                                                    (_g5869058732_
                                                     _g5869158736_))))
                                            (_g5869058732_ _g5869158736_))))
                                    (_g5869058732_ _g5869158736_))))
                            (_g5869058732_ _g5869158736_))))
                    (_g5869058732_ _g5869158736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5869058732_
                                                     _g5869158736_))))
                                            (_g5869058732_ _g5869158736_))))
                                    (_g5869058732_ _g5869158736_))))
                            (_g5869058732_ _g5869158736_))))
                    (_g5869058732_ _g5869158736_)))))
        (_g5868958871_ _$stx58686_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58875_)
      (let* ((_g5887958925_
              (lambda (_g5888058921_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5888058921_)))
             (_g5887859078_
              (lambda (_g5888058929_)
                (if (gx#stx-pair? _g5888058929_)
                    (let ((_e5889258932_ (gx#syntax-e _g5888058929_)))
                      (let ((_hd5889158936_
                             (let ()
                               (declare (not safe))
                               (##car _e5889258932_)))
                            (_tl5889058939_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5889258932_))))
                        (if (gx#stx-pair? _tl5889058939_)
                            (let ((_e5889558942_ (gx#syntax-e _tl5889058939_)))
                              (let ((_hd5889458946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5889558942_)))
                                    (_tl5889358949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5889558942_))))
                                (if (gx#stx-pair? _tl5889358949_)
                                    (let ((_e5889858952_
                                           (gx#syntax-e _tl5889358949_)))
                                      (let ((_hd5889758956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5889858952_)))
                                            (_tl5889658959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5889858952_))))
                                        (if (gx#stx-pair? _tl5889658959_)
                                            (let ((_e5890158962_
                                                   (gx#syntax-e
                                                    _tl5889658959_)))
                                              (let ((_hd5890058966_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5890158962_)))
                                                    (_tl5889958969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5890158962_))))
                                                (if (gx#stx-pair?
                                                     _tl5889958969_)
                                                    (let ((_e5890458972_
                                                           (gx#syntax-e
                                                            _tl5889958969_)))
                                                      (let ((_hd5890358976_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5890458972_)))
                    (_tl5890258979_
                     (let () (declare (not safe)) (##cdr _e5890458972_))))
                (if (gx#stx-pair? _tl5890258979_)
                    (let ((_e5890758982_ (gx#syntax-e _tl5890258979_)))
                      (let ((_hd5890658986_
                             (let ()
                               (declare (not safe))
                               (##car _e5890758982_)))
                            (_tl5890558989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5890758982_))))
                        (if (gx#stx-pair? _tl5890558989_)
                            (let ((_e5891058992_ (gx#syntax-e _tl5890558989_)))
                              (let ((_hd5890958996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5891058992_)))
                                    (_tl5890858999_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5891058992_))))
                                (if (gx#stx-pair? _tl5890858999_)
                                    (let ((_e5891359002_
                                           (gx#syntax-e _tl5890858999_)))
                                      (let ((_hd5891259006_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5891359002_)))
                                            (_tl5891159009_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5891359002_))))
                                        (if (gx#stx-pair? _tl5891159009_)
                                            (let ((_e5891659012_
                                                   (gx#syntax-e
                                                    _tl5891159009_)))
                                              (let ((_hd5891559016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5891659012_)))
                                                    (_tl5891459019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5891659012_))))
                                                (if (gx#stx-pair?
                                                     _tl5891459019_)
                                                    (let ((_e5891959022_
                                                           (gx#syntax-e
                                                            _tl5891459019_)))
                                                      (let ((_hd5891859026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5891959022_)))
                    (_tl5891759029_
                     (let () (declare (not safe)) (##cdr _e5891959022_))))
                (if (gx#stx-null? _tl5891759029_)
                    ((lambda (_L59032_
                              _L59034_
                              _L59035_
                              _L59036_
                              _L59037_
                              _L59038_
                              _L59039_
                              _L59040_
                              _L59041_)
                       (let ((__tmp61805 (gx#datum->syntax '#f 'let*))
                             (__tmp61574
                              (let ((__tmp61765
                                     (let ((__tmp61796
                                            (let ((__tmp61804
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61797
                                                   (let ((__tmp61798
                                                          (let ((__tmp61803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61799
                         (let ((__tmp61801
                                (let ((__tmp61802
                                       (let ()
                                         (declare (not safe))
                                         (cons _L59037_ '()))))
                                  (declare (not safe))
                                  (cons _L59039_ __tmp61802)))
                               (__tmp61800
                                (let ()
                                  (declare (not safe))
                                  (cons _L59040_ '()))))
                           (declare (not safe))
                           (cons __tmp61801 __tmp61800))))
                    (declare (not safe))
                    (cons __tmp61803 __tmp61799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61798 '()))))
                                              (declare (not safe))
                                              (cons __tmp61804 __tmp61797)))
                                           (__tmp61766
                                            (let ((__tmp61790
                                                   (let ((__tmp61795
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61791
                                                          (let ((__tmp61792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61794
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61793
                                (let ()
                                  (declare (not safe))
                                  (cons _L59041_ '()))))
                           (declare (not safe))
                           (cons __tmp61794 __tmp61793))))
                    (declare (not safe))
                    (cons __tmp61792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61795
                                                           __tmp61791)))
                                                  (__tmp61767
                                                   (let ((__tmp61782
                                                          (let ((__tmp61789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61783
                         (let ((__tmp61784
                                (let ((__tmp61788
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61785
                                       (let ((__tmp61787
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61786
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61787 __tmp61786))))
                                  (declare (not safe))
                                  (cons __tmp61788 __tmp61785))))
                           (declare (not safe))
                           (cons __tmp61784 '()))))
                    (declare (not safe))
                    (cons __tmp61789 __tmp61783)))
                 (__tmp61768
                  (let ((__tmp61769
                         (let ((__tmp61781 (gx#datum->syntax '#f 'start))
                               (__tmp61770
                                (let ((__tmp61771
                                       (let ((__tmp61780
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61772
                                              (let ((__tmp61774
                                                     (let ((__tmp61779
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61775
                                                            (let ((__tmp61778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61776
                           (let ((__tmp61777 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61777 '()))))
                      (declare (not safe))
                      (cons __tmp61778 __tmp61776))))
               (declare (not safe))
               (cons __tmp61779 __tmp61775)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61773
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61774 __tmp61773))))
                                         (declare (not safe))
                                         (cons __tmp61780 __tmp61772))))
                                  (declare (not safe))
                                  (cons __tmp61771 '()))))
                           (declare (not safe))
                           (cons __tmp61781 __tmp61770))))
                    (declare (not safe))
                    (cons __tmp61769 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61782
                                                           __tmp61768))))
                                              (declare (not safe))
                                              (cons __tmp61790 __tmp61767))))
                                       (declare (not safe))
                                       (cons __tmp61796 __tmp61766)))
                                    (__tmp61575
                                     (let ((__tmp61576
                                            (let ((__tmp61764
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61577
                                                   (let ((__tmp61763
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp61578
                                                          (let ((__tmp61750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61759
                                (let ((__tmp61762
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61760
                                       (let ((__tmp61761
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61761 '()))))
                                  (declare (not safe))
                                  (cons __tmp61762 __tmp61760)))
                               (__tmp61751
                                (let ((__tmp61756
                                       (let ((__tmp61758
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61757
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61758 __tmp61757)))
                                      (__tmp61752
                                       (let ((__tmp61753
                                              (let ((__tmp61755
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61754
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61755 __tmp61754))))
                                         (declare (not safe))
                                         (cons __tmp61753 '()))))
                                  (declare (not safe))
                                  (cons __tmp61756 __tmp61752))))
                           (declare (not safe))
                           (cons __tmp61759 __tmp61751)))
                        (__tmp61579
                         (let ((__tmp61580
                                (let ((__tmp61749 (gx#datum->syntax '#f 'let))
                                      (__tmp61581
                                       (let ((__tmp61741
                                              (let ((__tmp61748
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61742
                                                     (let ((__tmp61743
                                                            (let ((__tmp61747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61744
                           (let ((__tmp61745
                                  (let ((__tmp61746
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61746 '()))))
                             (declare (not safe))
                             (cons _L59041_ __tmp61745))))
                      (declare (not safe))
                      (cons __tmp61747 __tmp61744))))
               (declare (not safe))
               (cons __tmp61743 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61748 __tmp61742)))
                                             (__tmp61582
                                              (let ((__tmp61583
                                                     (let ((__tmp61740
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp61584
                                                            (let ((__tmp61677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61733
                                  (let ((__tmp61739
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61734
                                         (let ((__tmp61738
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61735
                                                (let ((__tmp61736
                                                       (let ((__tmp61737
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61737
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61736 '()))))
                                           (declare (not safe))
                                           (cons __tmp61738 __tmp61735))))
                                    (declare (not safe))
                                    (cons __tmp61739 __tmp61734)))
                                 (__tmp61678
                                  (let ((__tmp61679
                                         (let ((__tmp61732
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp61680
                                                (let ((__tmp61731
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp61681
                                                       (let ((__tmp61707
                                                              (let ((__tmp61730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61708
                             (let ((__tmp61724
                                    (let ((__tmp61729
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61725
                                           (let ((__tmp61726
                                                  (let ((__tmp61728
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61727
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L59037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61728
                                                          __tmp61727))))
                                             (declare (not safe))
                                             (cons _L59041_ __tmp61726))))
                                      (declare (not safe))
                                      (cons __tmp61729 __tmp61725)))
                                   (__tmp61709
                                    (let ((__tmp61712
                                           (let ((__tmp61723
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61713
                                                  (let ((__tmp61714
                                                         (let ((__tmp61718
                                                                (let ((__tmp61722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61719
                               (let ((__tmp61721
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61720
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61721 __tmp61720))))
                          (declare (not safe))
                          (cons __tmp61722 __tmp61719)))
                       (__tmp61715
                        (let ((__tmp61716
                               (let ((__tmp61717
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59035_ '()))))
                                 (declare (not safe))
                                 (cons _L59036_ __tmp61717))))
                          (declare (not safe))
                          (cons __tmp61716 '()))))
                   (declare (not safe))
                   (cons __tmp61718 __tmp61715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L59041_
                                                          __tmp61714))))
                                             (declare (not safe))
                                             (cons __tmp61723 __tmp61713)))
                                          (__tmp61710
                                           (let ((__tmp61711
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L59032_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61711 '()))))
                                      (declare (not safe))
                                      (cons __tmp61712 __tmp61710))))
                               (declare (not safe))
                               (cons __tmp61724 __tmp61709))))
                        (declare (not safe))
                        (cons __tmp61730 __tmp61708)))
                     (__tmp61682
                      (let ((__tmp61683
                             (let ((__tmp61706 (gx#datum->syntax '#f 'begin))
                                   (__tmp61684
                                    (let ((__tmp61700
                                           (let ((__tmp61705
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61701
                                                  (let ((__tmp61702
                                                         (let ((__tmp61704
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61703
                        (let () (declare (not safe)) (cons _L59037_ '()))))
                   (declare (not safe))
                   (cons __tmp61704 __tmp61703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L59041_
                                                          __tmp61702))))
                                             (declare (not safe))
                                             (cons __tmp61705 __tmp61701)))
                                          (__tmp61685
                                           (let ((__tmp61688
                                                  (let ((__tmp61699
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp61689
                                                         (let ((__tmp61690
                                                                (let ((__tmp61694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61698 (gx#datum->syntax '#f 'fx+))
                                     (__tmp61695
                                      (let ((__tmp61697
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp61696
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61697 __tmp61696))))
                                 (declare (not safe))
                                 (cons __tmp61698 __tmp61695)))
                              (__tmp61691
                               (let ((__tmp61692
                                      (let ((__tmp61693
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59035_ '()))))
                                        (declare (not safe))
                                        (cons _L59036_ __tmp61693))))
                                 (declare (not safe))
                                 (cons __tmp61692 '()))))
                          (declare (not safe))
                          (cons __tmp61694 __tmp61691))))
                   (declare (not safe))
                   (cons _L59041_ __tmp61690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61699
                                                          __tmp61689)))
                                                 (__tmp61686
                                                  (let ((__tmp61687
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L59034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61687 '()))))
                                             (declare (not safe))
                                             (cons __tmp61688 __tmp61686))))
                                      (declare (not safe))
                                      (cons __tmp61700 __tmp61685))))
                               (declare (not safe))
                               (cons __tmp61706 __tmp61684))))
                        (declare (not safe))
                        (cons __tmp61683 '()))))
                 (declare (not safe))
                 (cons __tmp61707 __tmp61682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61731
                                                        __tmp61681))))
                                           (declare (not safe))
                                           (cons __tmp61732 __tmp61680))))
                                    (declare (not safe))
                                    (cons __tmp61679 '()))))
                             (declare (not safe))
                             (cons __tmp61733 __tmp61678)))
                          (__tmp61585
                           (let ((__tmp61644
                                  (let ((__tmp61670
                                         (let ((__tmp61676
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp61671
                                                (let ((__tmp61675
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp61672
                                                       (let ((__tmp61673
                                                              (let ((__tmp61674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp61674 '()))))
                 (declare (not safe))
                 (cons __tmp61673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61675
                                                        __tmp61672))))
                                           (declare (not safe))
                                           (cons __tmp61676 __tmp61671)))
                                        (__tmp61645
                                         (let ((__tmp61646
                                                (let ((__tmp61669
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp61647
                                                       (let ((__tmp61661
                                                              (let ((__tmp61668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp61662
                             (let ((__tmp61667 (gx#datum->syntax '#f 'start))
                                   (__tmp61663
                                    (let ((__tmp61666
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61664
                                           (let ((__tmp61665
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp61665 '()))))
                                      (declare (not safe))
                                      (cons __tmp61666 __tmp61664))))
                               (declare (not safe))
                               (cons __tmp61667 __tmp61663))))
                        (declare (not safe))
                        (cons __tmp61668 __tmp61662)))
                     (__tmp61648
                      (let ((__tmp61656
                             (let ((__tmp61660 (gx#datum->syntax '#f 'fx+))
                                   (__tmp61657
                                    (let ((__tmp61659
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61658
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp61659 __tmp61658))))
                               (declare (not safe))
                               (cons __tmp61660 __tmp61657)))
                            (__tmp61649
                             (let ((__tmp61650
                                    (let ((__tmp61655
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp61651
                                           (let ((__tmp61654
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp61652
                                                  (let ((__tmp61653
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61653 '()))))
                                             (declare (not safe))
                                             (cons __tmp61654 __tmp61652))))
                                      (declare (not safe))
                                      (cons __tmp61655 __tmp61651))))
                               (declare (not safe))
                               (cons __tmp61650 '()))))
                        (declare (not safe))
                        (cons __tmp61656 __tmp61649))))
                 (declare (not safe))
                 (cons __tmp61661 __tmp61648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61669
                                                        __tmp61647))))
                                           (declare (not safe))
                                           (cons __tmp61646 '()))))
                                    (declare (not safe))
                                    (cons __tmp61670 __tmp61645)))
                                 (__tmp61586
                                  (let ((__tmp61610
                                         (let ((__tmp61640
                                                (let ((__tmp61641
                                                       (let ((__tmp61642
                                                              (let ((__tmp61643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp61643 '()))))
                 (declare (not safe))
                 (cons _L59037_ __tmp61642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L59038_ __tmp61641)))
                                               (__tmp61611
                                                (let ((__tmp61634
                                                       (let ((__tmp61639
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp61635
                                                              (let ((__tmp61636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61638 (gx#datum->syntax '#f 'probe))
                                   (__tmp61637
                                    (let ()
                                      (declare (not safe))
                                      (cons _L59037_ '()))))
                               (declare (not safe))
                               (cons __tmp61638 __tmp61637))))
                        (declare (not safe))
                        (cons _L59041_ __tmp61636))))
                 (declare (not safe))
                 (cons __tmp61639 __tmp61635)))
              (__tmp61612
               (let ((__tmp61613
                      (let ((__tmp61633 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp61614
                             (let ((__tmp61615
                                    (let ((__tmp61628
                                           (let ((__tmp61632
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61629
                                                  (let ((__tmp61631
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp61630
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61631
                                                          __tmp61630))))
                                             (declare (not safe))
                                             (cons __tmp61632 __tmp61629)))
                                          (__tmp61616
                                           (let ((__tmp61617
                                                  (let ((__tmp61618
                                                         (let ((__tmp61619
                                                                (let ((__tmp61627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp61620
                               (let ((__tmp61621
                                      (let ((__tmp61622
                                             (let ((__tmp61626
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61623
                                                    (let ((__tmp61625
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp61624
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61625
                                                            __tmp61624))))
                                               (declare (not safe))
                                               (cons __tmp61626 __tmp61623))))
                                        (declare (not safe))
                                        (cons __tmp61622 '()))))
                                 (declare (not safe))
                                 (cons _L59041_ __tmp61621))))
                          (declare (not safe))
                          (cons __tmp61627 __tmp61620))))
                   (declare (not safe))
                   (cons __tmp61619 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L59036_
                                                          __tmp61618))))
                                             (declare (not safe))
                                             (cons __tmp61617 '()))))
                                      (declare (not safe))
                                      (cons __tmp61628 __tmp61616))))
                               (declare (not safe))
                               (cons _L59041_ __tmp61615))))
                        (declare (not safe))
                        (cons __tmp61633 __tmp61614))))
                 (declare (not safe))
                 (cons __tmp61613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61634
                                                        __tmp61612))))
                                           (declare (not safe))
                                           (cons __tmp61640 __tmp61611)))
                                        (__tmp61587
                                         (let ((__tmp61588
                                                (let ((__tmp61609
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp61589
                                                       (let ((__tmp61590
                                                              (let ((__tmp61608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp61591
                             (let ((__tmp61600
                                    (let ((__tmp61607
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp61601
                                           (let ((__tmp61606
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp61602
                                                  (let ((__tmp61605
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61603
                                                         (let ((__tmp61604
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp61604 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61605
                                                          __tmp61603))))
                                             (declare (not safe))
                                             (cons __tmp61606 __tmp61602))))
                                      (declare (not safe))
                                      (cons __tmp61607 __tmp61601)))
                                   (__tmp61592
                                    (let ((__tmp61595
                                           (let ((__tmp61599
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61596
                                                  (let ((__tmp61598
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61597
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61598
                                                          __tmp61597))))
                                             (declare (not safe))
                                             (cons __tmp61599 __tmp61596)))
                                          (__tmp61593
                                           (let ((__tmp61594
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp61594 '()))))
                                      (declare (not safe))
                                      (cons __tmp61595 __tmp61593))))
                               (declare (not safe))
                               (cons __tmp61600 __tmp61592))))
                        (declare (not safe))
                        (cons __tmp61608 __tmp61591))))
                 (declare (not safe))
                 (cons __tmp61590 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61609
                                                        __tmp61589))))
                                           (declare (not safe))
                                           (cons __tmp61588 '()))))
                                    (declare (not safe))
                                    (cons __tmp61610 __tmp61587))))
                             (declare (not safe))
                             (cons __tmp61644 __tmp61586))))
                      (declare (not safe))
                      (cons __tmp61677 __tmp61585))))
               (declare (not safe))
               (cons __tmp61740 __tmp61584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61583 '()))))
                                         (declare (not safe))
                                         (cons __tmp61741 __tmp61582))))
                                  (declare (not safe))
                                  (cons __tmp61749 __tmp61581))))
                           (declare (not safe))
                           (cons __tmp61580 '()))))
                    (declare (not safe))
                    (cons __tmp61750 __tmp61579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61763
                                                           __tmp61578))))
                                              (declare (not safe))
                                              (cons __tmp61764 __tmp61577))))
                                       (declare (not safe))
                                       (cons __tmp61576 '()))))
                                (declare (not safe))
                                (cons __tmp61765 __tmp61575))))
                         (declare (not safe))
                         (cons __tmp61805 __tmp61574)))
                     _hd5891859026_
                     _hd5891559016_
                     _hd5891259006_
                     _hd5890958996_
                     _hd5890658986_
                     _hd5890358976_
                     _hd5890058966_
                     _hd5889758956_
                     _hd5889458946_)
                    (_g5887958925_ _g5888058929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5887958925_
                                                     _g5888058929_))))
                                            (_g5887958925_ _g5888058929_))))
                                    (_g5887958925_ _g5888058929_))))
                            (_g5887958925_ _g5888058929_))))
                    (_g5887958925_ _g5888058929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5887958925_
                                                     _g5888058929_))))
                                            (_g5887958925_ _g5888058929_))))
                                    (_g5887958925_ _g5888058929_))))
                            (_g5887958925_ _g5888058929_))))
                    (_g5887958925_ _g5888058929_)))))
        (_g5887859078_ _$stx58875_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx59082_)
      (let* ((_g5908659120_
              (lambda (_g5908759116_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5908759116_)))
             (_g5908559231_
              (lambda (_g5908759124_)
                (if (gx#stx-pair? _g5908759124_)
                    (let ((_e5909659127_ (gx#syntax-e _g5908759124_)))
                      (let ((_hd5909559131_
                             (let ()
                               (declare (not safe))
                               (##car _e5909659127_)))
                            (_tl5909459134_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5909659127_))))
                        (if (gx#stx-pair? _tl5909459134_)
                            (let ((_e5909959137_ (gx#syntax-e _tl5909459134_)))
                              (let ((_hd5909859141_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5909959137_)))
                                    (_tl5909759144_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5909959137_))))
                                (if (gx#stx-pair? _tl5909759144_)
                                    (let ((_e5910259147_
                                           (gx#syntax-e _tl5909759144_)))
                                      (let ((_hd5910159151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5910259147_)))
                                            (_tl5910059154_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5910259147_))))
                                        (if (gx#stx-pair? _tl5910059154_)
                                            (let ((_e5910559157_
                                                   (gx#syntax-e
                                                    _tl5910059154_)))
                                              (let ((_hd5910459161_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5910559157_)))
                                                    (_tl5910359164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5910559157_))))
                                                (if (gx#stx-pair?
                                                     _tl5910359164_)
                                                    (let ((_e5910859167_
                                                           (gx#syntax-e
                                                            _tl5910359164_)))
                                                      (let ((_hd5910759171_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5910859167_)))
                    (_tl5910659174_
                     (let () (declare (not safe)) (##cdr _e5910859167_))))
                (if (gx#stx-pair? _tl5910659174_)
                    (let ((_e5911159177_ (gx#syntax-e _tl5910659174_)))
                      (let ((_hd5911059181_
                             (let ()
                               (declare (not safe))
                               (##car _e5911159177_)))
                            (_tl5910959184_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5911159177_))))
                        (if (gx#stx-pair? _tl5910959184_)
                            (let ((_e5911459187_ (gx#syntax-e _tl5910959184_)))
                              (let ((_hd5911359191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5911459187_)))
                                    (_tl5911259194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5911459187_))))
                                (if (gx#stx-null? _tl5911259194_)
                                    ((lambda (_L59197_
                                              _L59199_
                                              _L59200_
                                              _L59201_
                                              _L59202_
                                              _L59203_)
                                       (let ((__tmp61967
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61806
                                              (let ((__tmp61927
                                                     (let ((__tmp61958
                                                            (let ((__tmp61966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61959
                           (let ((__tmp61960
                                  (let ((__tmp61965
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61961
                                         (let ((__tmp61963
                                                (let ((__tmp61964
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L59199_ '()))))
                                                  (declare (not safe))
                                                  (cons _L59201_ __tmp61964)))
                                               (__tmp61962
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L59202_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61963 __tmp61962))))
                                    (declare (not safe))
                                    (cons __tmp61965 __tmp61961))))
                             (declare (not safe))
                             (cons __tmp61960 '()))))
                      (declare (not safe))
                      (cons __tmp61966 __tmp61959)))
                   (__tmp61928
                    (let ((__tmp61952
                           (let ((__tmp61957 (gx#datum->syntax '#f 'size))
                                 (__tmp61953
                                  (let ((__tmp61954
                                         (let ((__tmp61956
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61955
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L59203_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61956 __tmp61955))))
                                    (declare (not safe))
                                    (cons __tmp61954 '()))))
                             (declare (not safe))
                             (cons __tmp61957 __tmp61953)))
                          (__tmp61929
                           (let ((__tmp61944
                                  (let ((__tmp61951
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61945
                                         (let ((__tmp61946
                                                (let ((__tmp61950
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61947
                                                       (let ((__tmp61949
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61948
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61949 __tmp61948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61950
                                                        __tmp61947))))
                                           (declare (not safe))
                                           (cons __tmp61946 '()))))
                                    (declare (not safe))
                                    (cons __tmp61951 __tmp61945)))
                                 (__tmp61930
                                  (let ((__tmp61931
                                         (let ((__tmp61943
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61932
                                                (let ((__tmp61933
                                                       (let ((__tmp61942
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61934
                                                              (let ((__tmp61936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61941
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61937
                                    (let ((__tmp61940
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61938
                                           (let ((__tmp61939
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61939 '()))))
                                      (declare (not safe))
                                      (cons __tmp61940 __tmp61938))))
                               (declare (not safe))
                               (cons __tmp61941 __tmp61937)))
                            (__tmp61935
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61936 __tmp61935))))
                 (declare (not safe))
                 (cons __tmp61942 __tmp61934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61933 '()))))
                                           (declare (not safe))
                                           (cons __tmp61943 __tmp61932))))
                                    (declare (not safe))
                                    (cons __tmp61931 '()))))
                             (declare (not safe))
                             (cons __tmp61944 __tmp61930))))
                      (declare (not safe))
                      (cons __tmp61952 __tmp61929))))
               (declare (not safe))
               (cons __tmp61958 __tmp61928)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61807
                                                     (let ((__tmp61808
                                                            (let ((__tmp61926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61809
                           (let ((__tmp61925 (gx#datum->syntax '#f 'loop))
                                 (__tmp61810
                                  (let ((__tmp61916
                                         (let ((__tmp61921
                                                (let ((__tmp61924
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61922
                                                       (let ((__tmp61923
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61923
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61924
                                                        __tmp61922)))
                                               (__tmp61917
                                                (let ((__tmp61918
                                                       (let ((__tmp61920
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61919
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61920 __tmp61919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61918 '()))))
                                           (declare (not safe))
                                           (cons __tmp61921 __tmp61917)))
                                        (__tmp61811
                                         (let ((__tmp61812
                                                (let ((__tmp61915
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61813
                                                       (let ((__tmp61907
                                                              (let ((__tmp61914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61908
                             (let ((__tmp61909
                                    (let ((__tmp61913
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61910
                                           (let ((__tmp61911
                                                  (let ((__tmp61912
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61912 '()))))
                                             (declare (not safe))
                                             (cons _L59203_ __tmp61911))))
                                      (declare (not safe))
                                      (cons __tmp61913 __tmp61910))))
                               (declare (not safe))
                               (cons __tmp61909 '()))))
                        (declare (not safe))
                        (cons __tmp61914 __tmp61908)))
                     (__tmp61814
                      (let ((__tmp61815
                             (let ((__tmp61906 (gx#datum->syntax '#f 'cond))
                                   (__tmp61816
                                    (let ((__tmp61895
                                           (let ((__tmp61899
                                                  (let ((__tmp61905
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61900
                                                         (let ((__tmp61904
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61901
                        (let ((__tmp61902
                               (let ((__tmp61903
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61903 '()))))
                          (declare (not safe))
                          (cons __tmp61902 '()))))
                   (declare (not safe))
                   (cons __tmp61904 __tmp61901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61905
                                                          __tmp61900)))
                                                 (__tmp61896
                                                  (let ((__tmp61897
                                                         (let ((__tmp61898
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61897 '()))))
                                             (declare (not safe))
                                             (cons __tmp61899 __tmp61896)))
                                          (__tmp61817
                                           (let ((__tmp61869
                                                  (let ((__tmp61888
                                                         (let ((__tmp61894
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61889
                        (let ((__tmp61893 (gx#datum->syntax '#f 'k))
                              (__tmp61890
                               (let ((__tmp61891
                                      (let ((__tmp61892
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61892 '()))))
                                 (declare (not safe))
                                 (cons __tmp61891 '()))))
                          (declare (not safe))
                          (cons __tmp61893 __tmp61890))))
                   (declare (not safe))
                   (cons __tmp61894 __tmp61889)))
                (__tmp61870
                 (let ((__tmp61871
                        (let ((__tmp61887 (gx#datum->syntax '#f 'loop))
                              (__tmp61872
                               (let ((__tmp61879
                                      (let ((__tmp61886
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61880
                                             (let ((__tmp61885
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61881
                                                    (let ((__tmp61884
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61882
                                                           (let ((__tmp61883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61883 '()))))
              (declare (not safe))
              (cons __tmp61884 __tmp61882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61885 __tmp61881))))
                                        (declare (not safe))
                                        (cons __tmp61886 __tmp61880)))
                                     (__tmp61873
                                      (let ((__tmp61874
                                             (let ((__tmp61878
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61875
                                                    (let ((__tmp61877
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61876
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61877
                                                            __tmp61876))))
                                               (declare (not safe))
                                               (cons __tmp61878 __tmp61875))))
                                        (declare (not safe))
                                        (cons __tmp61874 '()))))
                                 (declare (not safe))
                                 (cons __tmp61879 __tmp61873))))
                          (declare (not safe))
                          (cons __tmp61887 __tmp61872))))
                   (declare (not safe))
                   (cons __tmp61871 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61888
                                                          __tmp61870)))
                                                 (__tmp61818
                                                  (let ((__tmp61840
                                                         (let ((__tmp61865
                                                                (let ((__tmp61866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61867
                                      (let ((__tmp61868
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61868 '()))))
                                 (declare (not safe))
                                 (cons _L59199_ __tmp61867))))
                          (declare (not safe))
                          (cons _L59200_ __tmp61866)))
                       (__tmp61841
                        (let ((__tmp61857
                               (let ((__tmp61864
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61858
                                      (let ((__tmp61859
                                             (let ((__tmp61863
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61860
                                                    (let ((__tmp61861
                                                           (let ((__tmp61862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61862 '()))))
              (declare (not safe))
              (cons __tmp61861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61863 __tmp61860))))
                                        (declare (not safe))
                                        (cons _L59203_ __tmp61859))))
                                 (declare (not safe))
                                 (cons __tmp61864 __tmp61858)))
                              (__tmp61842
                               (let ((__tmp61845
                                      (let ((__tmp61856
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61846
                                             (let ((__tmp61847
                                                    (let ((__tmp61851
                                                           (let ((__tmp61855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61852
                          (let ((__tmp61854 (gx#datum->syntax '#f 'probe))
                                (__tmp61853
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61854 __tmp61853))))
                     (declare (not safe))
                     (cons __tmp61855 __tmp61852)))
                  (__tmp61848
                   (let ((__tmp61849
                          (let ((__tmp61850
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61850 '()))))
                     (declare (not safe))
                     (cons __tmp61849 '()))))
              (declare (not safe))
              (cons __tmp61851 __tmp61848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L59203_ __tmp61847))))
                                        (declare (not safe))
                                        (cons __tmp61856 __tmp61846)))
                                     (__tmp61843
                                      (let ((__tmp61844
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59197_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61844 '()))))
                                 (declare (not safe))
                                 (cons __tmp61845 __tmp61843))))
                          (declare (not safe))
                          (cons __tmp61857 __tmp61842))))
                   (declare (not safe))
                   (cons __tmp61865 __tmp61841)))
                (__tmp61819
                 (let ((__tmp61820
                        (let ((__tmp61839 (gx#datum->syntax '#f 'else))
                              (__tmp61821
                               (let ((__tmp61822
                                      (let ((__tmp61838
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61823
                                             (let ((__tmp61830
                                                    (let ((__tmp61837
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61831
                                                           (let ((__tmp61836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61832
                          (let ((__tmp61835 (gx#datum->syntax '#f 'i))
                                (__tmp61833
                                 (let ((__tmp61834
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61834 '()))))
                            (declare (not safe))
                            (cons __tmp61835 __tmp61833))))
                     (declare (not safe))
                     (cons __tmp61836 __tmp61832))))
              (declare (not safe))
              (cons __tmp61837 __tmp61831)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61824
                                                    (let ((__tmp61825
                                                           (let ((__tmp61829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61826
                          (let ((__tmp61828 (gx#datum->syntax '#f 'i))
                                (__tmp61827
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61828 __tmp61827))))
                     (declare (not safe))
                     (cons __tmp61829 __tmp61826))))
              (declare (not safe))
              (cons __tmp61825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61830 __tmp61824))))
                                        (declare (not safe))
                                        (cons __tmp61838 __tmp61823))))
                                 (declare (not safe))
                                 (cons __tmp61822 '()))))
                          (declare (not safe))
                          (cons __tmp61839 __tmp61821))))
                   (declare (not safe))
                   (cons __tmp61820 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61840
                                                          __tmp61819))))
                                             (declare (not safe))
                                             (cons __tmp61869 __tmp61818))))
                                      (declare (not safe))
                                      (cons __tmp61895 __tmp61817))))
                               (declare (not safe))
                               (cons __tmp61906 __tmp61816))))
                        (declare (not safe))
                        (cons __tmp61815 '()))))
                 (declare (not safe))
                 (cons __tmp61907 __tmp61814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61915
                                                        __tmp61813))))
                                           (declare (not safe))
                                           (cons __tmp61812 '()))))
                                    (declare (not safe))
                                    (cons __tmp61916 __tmp61811))))
                             (declare (not safe))
                             (cons __tmp61925 __tmp61810))))
                      (declare (not safe))
                      (cons __tmp61926 __tmp61809))))
               (declare (not safe))
               (cons __tmp61808 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61927 __tmp61807))))
                                         (declare (not safe))
                                         (cons __tmp61967 __tmp61806)))
                                     _hd5911359191_
                                     _hd5911059181_
                                     _hd5910759171_
                                     _hd5910459161_
                                     _hd5910159151_
                                     _hd5909859141_)
                                    (_g5908659120_ _g5908759124_))))
                            (_g5908659120_ _g5908759124_))))
                    (_g5908659120_ _g5908759124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5908659120_
                                                     _g5908759124_))))
                                            (_g5908659120_ _g5908759124_))))
                                    (_g5908659120_ _g5908759124_))))
                            (_g5908659120_ _g5908759124_))))
                    (_g5908659120_ _g5908759124_)))))
        (_g5908559231_ _$stx59082_)))))
