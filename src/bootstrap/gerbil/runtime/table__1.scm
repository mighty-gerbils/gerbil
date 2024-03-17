(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx55204_)
      (let* ((_g5520855222_
              (lambda (_g5520955218_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5520955218_)))
             (_g5520755264_
              (lambda (_g5520955226_)
                (if (gx#stx-pair? _g5520955226_)
                    (let ((_e5521155229_ (gx#syntax-e _g5520955226_)))
                      (let ((_hd5521255233_
                             (let ()
                               (declare (not safe))
                               (##car _e5521155229_)))
                            (_tl5521355236_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5521155229_))))
                        (if (gx#stx-pair? _tl5521355236_)
                            (let ((_e5521455239_ (gx#syntax-e _tl5521355236_)))
                              (let ((_hd5521555243_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5521455239_)))
                                    (_tl5521655246_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5521455239_))))
                                (if (gx#stx-null? _tl5521655246_)
                                    ((lambda (_L55249_)
                                       (let ((__tmp57786
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp57784
                                              (let ((__tmp57785
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L55249_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp57785))))
                                         (declare (not safe))
                                         (cons __tmp57786 __tmp57784)))
                                     _hd5521555243_)
                                    (_g5520855222_ _g5520955226_))))
                            (_g5520855222_ _g5520955226_))))
                    (_g5520855222_ _g5520955226_)))))
        (_g5520755264_ _$stx55204_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx55268_)
      (let* ((_g5527255318_
              (lambda (_g5527355314_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5527355314_)))
             (_g5527155471_
              (lambda (_g5527355322_)
                (if (gx#stx-pair? _g5527355322_)
                    (let ((_e5528355325_ (gx#syntax-e _g5527355322_)))
                      (let ((_hd5528455329_
                             (let ()
                               (declare (not safe))
                               (##car _e5528355325_)))
                            (_tl5528555332_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5528355325_))))
                        (if (gx#stx-pair? _tl5528555332_)
                            (let ((_e5528655335_ (gx#syntax-e _tl5528555332_)))
                              (let ((_hd5528755339_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5528655335_)))
                                    (_tl5528855342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5528655335_))))
                                (if (gx#stx-pair? _tl5528855342_)
                                    (let ((_e5528955345_
                                           (gx#syntax-e _tl5528855342_)))
                                      (let ((_hd5529055349_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5528955345_)))
                                            (_tl5529155352_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5528955345_))))
                                        (if (gx#stx-pair? _tl5529155352_)
                                            (let ((_e5529255355_
                                                   (gx#syntax-e
                                                    _tl5529155352_)))
                                              (let ((_hd5529355359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5529255355_)))
                                                    (_tl5529455362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5529255355_))))
                                                (if (gx#stx-pair?
                                                     _tl5529455362_)
                                                    (let ((_e5529555365_
                                                           (gx#syntax-e
                                                            _tl5529455362_)))
                                                      (let ((_hd5529655369_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5529555365_)))
                    (_tl5529755372_
                     (let () (declare (not safe)) (##cdr _e5529555365_))))
                (if (gx#stx-pair? _tl5529755372_)
                    (let ((_e5529855375_ (gx#syntax-e _tl5529755372_)))
                      (let ((_hd5529955379_
                             (let ()
                               (declare (not safe))
                               (##car _e5529855375_)))
                            (_tl5530055382_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5529855375_))))
                        (if (gx#stx-pair? _tl5530055382_)
                            (let ((_e5530155385_ (gx#syntax-e _tl5530055382_)))
                              (let ((_hd5530255389_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5530155385_)))
                                    (_tl5530355392_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5530155385_))))
                                (if (gx#stx-pair? _tl5530355392_)
                                    (let ((_e5530455395_
                                           (gx#syntax-e _tl5530355392_)))
                                      (let ((_hd5530555399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5530455395_)))
                                            (_tl5530655402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5530455395_))))
                                        (if (gx#stx-pair? _tl5530655402_)
                                            (let ((_e5530755405_
                                                   (gx#syntax-e
                                                    _tl5530655402_)))
                                              (let ((_hd5530855409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5530755405_)))
                                                    (_tl5530955412_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5530755405_))))
                                                (if (gx#stx-pair?
                                                     _tl5530955412_)
                                                    (let ((_e5531055415_
                                                           (gx#syntax-e
                                                            _tl5530955412_)))
                                                      (let ((_hd5531155419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5531055415_)))
                    (_tl5531255422_
                     (let () (declare (not safe)) (##cdr _e5531055415_))))
                (if (gx#stx-null? _tl5531255422_)
                    ((lambda (_L55425_
                              _L55427_
                              _L55428_
                              _L55429_
                              _L55430_
                              _L55431_
                              _L55432_
                              _L55433_
                              _L55434_)
                       (let ((__tmp58218 (gx#datum->syntax '#f 'begin))
                             (__tmp57787
                              (let ((__tmp58197
                                     (let ((__tmp58217
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp58198
                                            (let ((__tmp58208
                                                   (let ((__tmp58209
                                                          (let ((__tmp58214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58216 (gx#datum->syntax '#f 'size-hint))
                               (__tmp58215
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp58216 __tmp58215)))
                        (__tmp58210
                         (let ((__tmp58211
                                (let ((__tmp58213 (gx#datum->syntax '#f 'seed))
                                      (__tmp58212
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp58213 __tmp58212))))
                           (declare (not safe))
                           (cons __tmp58211 '()))))
                    (declare (not safe))
                    (cons __tmp58214 __tmp58210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L55434_
                                                           __tmp58209)))
                                                  (__tmp58199
                                                   (let ((__tmp58200
                                                          (let ((__tmp58207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp58201
                         (let ((__tmp58206 (gx#datum->syntax '#f 'size-hint))
                               (__tmp58202
                                (let ((__tmp58203
                                       (let ((__tmp58204
                                              (let ((__tmp58205
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp58205 '()))))
                                         (declare (not safe))
                                         (cons _L55425_ __tmp58204))))
                                  (declare (not safe))
                                  (cons _L55427_ __tmp58203))))
                           (declare (not safe))
                           (cons __tmp58206 __tmp58202))))
                    (declare (not safe))
                    (cons __tmp58207 __tmp58201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58200 '()))))
                                              (declare (not safe))
                                              (cons __tmp58208 __tmp58199))))
                                       (declare (not safe))
                                       (cons __tmp58217 __tmp58198)))
                                    (__tmp57788
                                     (let ((__tmp58154
                                            (let ((__tmp58196
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp58155
                                                   (let ((__tmp58189
                                                          (let ((__tmp58190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58195 (gx#datum->syntax '#f 'tab))
                               (__tmp58191
                                (let ((__tmp58194 (gx#datum->syntax '#f 'key))
                                      (__tmp58192
                                       (let ((__tmp58193
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp58193 '()))))
                                  (declare (not safe))
                                  (cons __tmp58194 __tmp58192))))
                           (declare (not safe))
                           (cons __tmp58195 __tmp58191))))
                    (declare (not safe))
                    (cons _L55433_ __tmp58190)))
                 (__tmp58156
                  (let ((__tmp58157
                         (let ((__tmp58188 (gx#datum->syntax '#f 'let))
                               (__tmp58158
                                (let ((__tmp58172
                                       (let ((__tmp58181
                                              (let ((__tmp58187
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp58182
                                                     (let ((__tmp58183
                                                            (let ((__tmp58186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp58184
                           (let ((__tmp58185 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp58185 '()))))
                      (declare (not safe))
                      (cons __tmp58186 __tmp58184))))
               (declare (not safe))
               (cons __tmp58183 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58187 __tmp58182)))
                                             (__tmp58173
                                              (let ((__tmp58174
                                                     (let ((__tmp58180
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp58175
                                                            (let ((__tmp58176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58179
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp58177
                                  (let ((__tmp58178
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp58178 '()))))
                             (declare (not safe))
                             (cons __tmp58179 __tmp58177))))
                      (declare (not safe))
                      (cons __tmp58176 '()))))
               (declare (not safe))
               (cons __tmp58180 __tmp58175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58174 '()))))
                                         (declare (not safe))
                                         (cons __tmp58181 __tmp58173)))
                                      (__tmp58159
                                       (let ((__tmp58160
                                              (let ((__tmp58171
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp58161
                                                     (let ((__tmp58170
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp58162
                                                            (let ((__tmp58169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp58163
                           (let ((__tmp58164
                                  (let ((__tmp58165
                                         (let ((__tmp58168
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp58166
                                                (let ((__tmp58167
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp58167 '()))))
                                           (declare (not safe))
                                           (cons __tmp58168 __tmp58166))))
                                    (declare (not safe))
                                    (cons _L55425_ __tmp58165))))
                             (declare (not safe))
                             (cons _L55427_ __tmp58164))))
                      (declare (not safe))
                      (cons __tmp58169 __tmp58163))))
               (declare (not safe))
               (cons __tmp58170 __tmp58162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58171 __tmp58161))))
                                         (declare (not safe))
                                         (cons __tmp58160 '()))))
                                  (declare (not safe))
                                  (cons __tmp58172 __tmp58159))))
                           (declare (not safe))
                           (cons __tmp58188 __tmp58158))))
                    (declare (not safe))
                    (cons __tmp58157 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58189
                                                           __tmp58156))))
                                              (declare (not safe))
                                              (cons __tmp58196 __tmp58155)))
                                           (__tmp57789
                                            (let ((__tmp58108
                                                   (let ((__tmp58153
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp58109
                                                          (let ((__tmp58146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58147
                                (let ((__tmp58152 (gx#datum->syntax '#f 'tab))
                                      (__tmp58148
                                       (let ((__tmp58151
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp58149
                                              (let ((__tmp58150
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp58150 '()))))
                                         (declare (not safe))
                                         (cons __tmp58151 __tmp58149))))
                                  (declare (not safe))
                                  (cons __tmp58152 __tmp58148))))
                           (declare (not safe))
                           (cons _L55432_ __tmp58147)))
                        (__tmp58110
                         (let ((__tmp58119
                                (let ((__tmp58145 (gx#datum->syntax '#f 'when))
                                      (__tmp58120
                                       (let ((__tmp58126
                                              (let ((__tmp58144
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp58127
                                                     (let ((__tmp58140
                                                            (let ((__tmp58143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp58141
                           (let ((__tmp58142 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp58142 '()))))
                      (declare (not safe))
                      (cons __tmp58143 __tmp58141)))
                   (__tmp58128
                    (let ((__tmp58129
                           (let ((__tmp58139
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp58130
                                  (let ((__tmp58132
                                         (let ((__tmp58138
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58133
                                                (let ((__tmp58134
                                                       (let ((__tmp58137
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp58135
                                                              (let ((__tmp58136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp58136 '()))))
                 (declare (not safe))
                 (cons __tmp58137 __tmp58135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58134 '()))))
                                           (declare (not safe))
                                           (cons __tmp58138 __tmp58133)))
                                        (__tmp58131
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp58132 __tmp58131))))
                             (declare (not safe))
                             (cons __tmp58139 __tmp58130))))
                      (declare (not safe))
                      (cons __tmp58129 '()))))
               (declare (not safe))
               (cons __tmp58140 __tmp58128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58144 __tmp58127)))
                                             (__tmp58121
                                              (let ((__tmp58122
                                                     (let ((__tmp58125
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp58123
                                                            (let ((__tmp58124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp58124 '()))))
               (declare (not safe))
               (cons __tmp58125 __tmp58123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58122 '()))))
                                         (declare (not safe))
                                         (cons __tmp58126 __tmp58121))))
                                  (declare (not safe))
                                  (cons __tmp58145 __tmp58120)))
                               (__tmp58111
                                (let ((__tmp58112
                                       (let ((__tmp58113
                                              (let ((__tmp58118
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp58114
                                                     (let ((__tmp58117
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp58115
                                                            (let ((__tmp58116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp58116 '()))))
               (declare (not safe))
               (cons __tmp58117 __tmp58115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58118 __tmp58114))))
                                         (declare (not safe))
                                         (cons _L55431_ __tmp58113))))
                                  (declare (not safe))
                                  (cons __tmp58112 '()))))
                           (declare (not safe))
                           (cons __tmp58119 __tmp58111))))
                    (declare (not safe))
                    (cons __tmp58146 __tmp58110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58153
                                                           __tmp58109)))
                                                  (__tmp57790
                                                   (let ((__tmp58006
                                                          (let ((__tmp58107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp58007
                         (let ((__tmp58100
                                (let ((__tmp58101
                                       (let ((__tmp58106
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp58102
                                              (let ((__tmp58105
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp58103
                                                     (let ((__tmp58104
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp58104 '()))))
                                                (declare (not safe))
                                                (cons __tmp58105 __tmp58103))))
                                         (declare (not safe))
                                         (cons __tmp58106 __tmp58102))))
                                  (declare (not safe))
                                  (cons _L55431_ __tmp58101)))
                               (__tmp58008
                                (let ((__tmp58009
                                       (let ((__tmp58099
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp58010
                                              (let ((__tmp58083
                                                     (let ((__tmp58092
                                                            (let ((__tmp58098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp58093
                           (let ((__tmp58094
                                  (let ((__tmp58097
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp58095
                                         (let ((__tmp58096
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp58096 '()))))
                                    (declare (not safe))
                                    (cons __tmp58097 __tmp58095))))
                             (declare (not safe))
                             (cons __tmp58094 '()))))
                      (declare (not safe))
                      (cons __tmp58098 __tmp58093)))
                   (__tmp58084
                    (let ((__tmp58085
                           (let ((__tmp58091 (gx#datum->syntax '#f 'seed))
                                 (__tmp58086
                                  (let ((__tmp58087
                                         (let ((__tmp58090
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp58088
                                                (let ((__tmp58089
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp58089 '()))))
                                           (declare (not safe))
                                           (cons __tmp58090 __tmp58088))))
                                    (declare (not safe))
                                    (cons __tmp58087 '()))))
                             (declare (not safe))
                             (cons __tmp58091 __tmp58086))))
                      (declare (not safe))
                      (cons __tmp58085 '()))))
               (declare (not safe))
               (cons __tmp58092 __tmp58084)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58011
                                                     (let ((__tmp58012
                                                            (let ((__tmp58082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp58013
                           (let ((__tmp58081 (gx#datum->syntax '#f 'table))
                                 (__tmp58014
                                  (let ((__tmp58080
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp58015
                                         (let ((__tmp58016
                                                (let ((__tmp58017
                                                       (let ((__tmp58079
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp58018
                                                              (let ((__tmp58078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp58019
                             (let ((__tmp58041
                                    (let ((__tmp58077
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp58042
                                           (let ((__tmp58043
                                                  (let ((__tmp58061
                                                         (let ((__tmp58076
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp58062
                        (let ((__tmp58072
                               (let ((__tmp58075
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp58073
                                      (let ((__tmp58074
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp58074 '()))))
                                 (declare (not safe))
                                 (cons __tmp58075 __tmp58073)))
                              (__tmp58063
                               (let ((__tmp58064
                                      (let ((__tmp58071
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp58065
                                             (let ((__tmp58067
                                                    (let ((__tmp58070
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp58068
                                                           (let ((__tmp58069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp58069 '()))))
              (declare (not safe))
              (cons __tmp58070 __tmp58068)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58066
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp58067 __tmp58066))))
                                        (declare (not safe))
                                        (cons __tmp58071 __tmp58065))))
                                 (declare (not safe))
                                 (cons __tmp58064 '()))))
                          (declare (not safe))
                          (cons __tmp58072 __tmp58063))))
                   (declare (not safe))
                   (cons __tmp58076 __tmp58062)))
                (__tmp58044
                 (let ((__tmp58045
                        (let ((__tmp58060 (gx#datum->syntax '#f 'set!))
                              (__tmp58046
                               (let ((__tmp58056
                                      (let ((__tmp58059
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp58057
                                             (let ((__tmp58058
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp58058 '()))))
                                        (declare (not safe))
                                        (cons __tmp58059 __tmp58057)))
                                     (__tmp58047
                                      (let ((__tmp58048
                                             (let ((__tmp58055
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58049
                                                    (let ((__tmp58051
                                                           (let ((__tmp58054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp58052
                          (let ((__tmp58053 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp58053 '()))))
                     (declare (not safe))
                     (cons __tmp58054 __tmp58052)))
                  (__tmp58050 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp58051 __tmp58050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58055 __tmp58049))))
                                        (declare (not safe))
                                        (cons __tmp58048 '()))))
                                 (declare (not safe))
                                 (cons __tmp58056 __tmp58047))))
                          (declare (not safe))
                          (cons __tmp58060 __tmp58046))))
                   (declare (not safe))
                   (cons __tmp58045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58061
                                                          __tmp58044))))
                                             (declare (not safe))
                                             (cons '() __tmp58043))))
                                      (declare (not safe))
                                      (cons __tmp58077 __tmp58042)))
                                   (__tmp58020
                                    (let ((__tmp58021
                                           (let ((__tmp58040
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp58022
                                                  (let ((__tmp58023
                                                         (let ((__tmp58024
                                                                (let ((__tmp58039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp58025
                               (let ((__tmp58035
                                      (let ((__tmp58038
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp58036
                                             (let ((__tmp58037
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp58037 '()))))
                                        (declare (not safe))
                                        (cons __tmp58038 __tmp58036)))
                                     (__tmp58026
                                      (let ((__tmp58027
                                             (let ((__tmp58034
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58028
                                                    (let ((__tmp58030
                                                           (let ((__tmp58033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp58031
                          (let ((__tmp58032 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp58032 '()))))
                     (declare (not safe))
                     (cons __tmp58033 __tmp58031)))
                  (__tmp58029 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp58030 __tmp58029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58034 __tmp58028))))
                                        (declare (not safe))
                                        (cons __tmp58027 '()))))
                                 (declare (not safe))
                                 (cons __tmp58035 __tmp58026))))
                          (declare (not safe))
                          (cons __tmp58039 __tmp58025))))
                   (declare (not safe))
                   (cons __tmp58024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp58023))))
                                             (declare (not safe))
                                             (cons __tmp58040 __tmp58022))))
                                      (declare (not safe))
                                      (cons __tmp58021 '()))))
                               (declare (not safe))
                               (cons __tmp58041 __tmp58020))))
                        (declare (not safe))
                        (cons __tmp58078 __tmp58019))))
                 (declare (not safe))
                 (cons __tmp58079 __tmp58018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L55425_ __tmp58017))))
                                           (declare (not safe))
                                           (cons _L55427_ __tmp58016))))
                                    (declare (not safe))
                                    (cons __tmp58080 __tmp58015))))
                             (declare (not safe))
                             (cons __tmp58081 __tmp58014))))
                      (declare (not safe))
                      (cons __tmp58082 __tmp58013))))
               (declare (not safe))
               (cons __tmp58012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58083 __tmp58011))))
                                         (declare (not safe))
                                         (cons __tmp58099 __tmp58010))))
                                  (declare (not safe))
                                  (cons __tmp58009 '()))))
                           (declare (not safe))
                           (cons __tmp58100 __tmp58008))))
                    (declare (not safe))
                    (cons __tmp58107 __tmp58007)))
                 (__tmp57791
                  (let ((__tmp57958
                         (let ((__tmp58005 (gx#datum->syntax '#f 'def))
                               (__tmp57959
                                (let ((__tmp57997
                                       (let ((__tmp57998
                                              (let ((__tmp58004
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57999
                                                     (let ((__tmp58003
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp58000
                                                            (let ((__tmp58001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58002 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp58002 '()))))
                      (declare (not safe))
                      (cons _L55430_ __tmp58001))))
               (declare (not safe))
               (cons __tmp58003 __tmp58000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58004 __tmp57999))))
                                         (declare (not safe))
                                         (cons _L55430_ __tmp57998)))
                                      (__tmp57960
                                       (let ((__tmp57970
                                              (let ((__tmp57996
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp57971
                                                     (let ((__tmp57977
                                                            (let ((__tmp57995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp57978
                           (let ((__tmp57991
                                  (let ((__tmp57994
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp57992
                                         (let ((__tmp57993
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57993 '()))))
                                    (declare (not safe))
                                    (cons __tmp57994 __tmp57992)))
                                 (__tmp57979
                                  (let ((__tmp57980
                                         (let ((__tmp57990
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp57981
                                                (let ((__tmp57983
                                                       (let ((__tmp57989
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp57984
                                                              (let ((__tmp57985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57988
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp57986
                                    (let ((__tmp57987
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp57987 '()))))
                               (declare (not safe))
                               (cons __tmp57988 __tmp57986))))
                        (declare (not safe))
                        (cons __tmp57985 '()))))
                 (declare (not safe))
                 (cons __tmp57989 __tmp57984)))
              (__tmp57982 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57983
                                                        __tmp57982))))
                                           (declare (not safe))
                                           (cons __tmp57990 __tmp57981))))
                                    (declare (not safe))
                                    (cons __tmp57980 '()))))
                             (declare (not safe))
                             (cons __tmp57991 __tmp57979))))
                      (declare (not safe))
                      (cons __tmp57995 __tmp57978)))
                   (__tmp57972
                    (let ((__tmp57973
                           (let ((__tmp57976
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp57974
                                  (let ((__tmp57975
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57975 '()))))
                             (declare (not safe))
                             (cons __tmp57976 __tmp57974))))
                      (declare (not safe))
                      (cons __tmp57973 '()))))
               (declare (not safe))
               (cons __tmp57977 __tmp57972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57996 __tmp57971)))
                                             (__tmp57961
                                              (let ((__tmp57962
                                                     (let ((__tmp57963
                                                            (let ((__tmp57969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57964
                           (let ((__tmp57968 (gx#datum->syntax '#f 'key))
                                 (__tmp57965
                                  (let ((__tmp57966
                                         (let ((__tmp57967
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57967 '()))))
                                    (declare (not safe))
                                    (cons _L55430_ __tmp57966))))
                             (declare (not safe))
                             (cons __tmp57968 __tmp57965))))
                      (declare (not safe))
                      (cons __tmp57969 __tmp57964))))
               (declare (not safe))
               (cons _L55429_ __tmp57963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57962 '()))))
                                         (declare (not safe))
                                         (cons __tmp57970 __tmp57961))))
                                  (declare (not safe))
                                  (cons __tmp57997 __tmp57960))))
                           (declare (not safe))
                           (cons __tmp58005 __tmp57959)))
                        (__tmp57792
                         (let ((__tmp57854
                                (let ((__tmp57957 (gx#datum->syntax '#f 'def))
                                      (__tmp57855
                                       (let ((__tmp57949
                                              (let ((__tmp57950
                                                     (let ((__tmp57956
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp57951
                                                            (let ((__tmp57955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp57952
                           (let ((__tmp57953
                                  (let ((__tmp57954
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp57954 '()))))
                             (declare (not safe))
                             (cons _L55430_ __tmp57953))))
                      (declare (not safe))
                      (cons __tmp57955 __tmp57952))))
               (declare (not safe))
               (cons __tmp57956 __tmp57951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L55429_ __tmp57950)))
                                             (__tmp57856
                                              (let ((__tmp57857
                                                     (let ((__tmp57948
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp57858
                                                            (let ((__tmp57932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57941
                                  (let ((__tmp57947
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp57942
                                         (let ((__tmp57943
                                                (let ((__tmp57946
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp57944
                                                       (let ((__tmp57945
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp57945
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57946
                                                        __tmp57944))))
                                           (declare (not safe))
                                           (cons __tmp57943 '()))))
                                    (declare (not safe))
                                    (cons __tmp57947 __tmp57942)))
                                 (__tmp57933
                                  (let ((__tmp57934
                                         (let ((__tmp57940
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp57935
                                                (let ((__tmp57936
                                                       (let ((__tmp57939
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp57937
                                                              (let ((__tmp57938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57938 '()))))
                 (declare (not safe))
                 (cons __tmp57939 __tmp57937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57936 '()))))
                                           (declare (not safe))
                                           (cons __tmp57940 __tmp57935))))
                                    (declare (not safe))
                                    (cons __tmp57934 '()))))
                             (declare (not safe))
                             (cons __tmp57941 __tmp57933)))
                          (__tmp57859
                           (let ((__tmp57860
                                  (let ((__tmp57931
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp57861
                                         (let ((__tmp57930
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57862
                                                (let ((__tmp57929
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57863
                                                       (let ((__tmp57864
                                                              (let ((__tmp57865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57928 (gx#datum->syntax '#f 'key))
                                   (__tmp57866
                                    (let ((__tmp57867
                                           (let ((__tmp57927
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp57868
                                                  (let ((__tmp57890
                                                         (let ((__tmp57926
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp57891
                        (let ((__tmp57892
                               (let ((__tmp57910
                                      (let ((__tmp57925
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp57911
                                             (let ((__tmp57921
                                                    (let ((__tmp57924
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57922
                                                           (let ((__tmp57923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57923 '()))))
              (declare (not safe))
              (cons __tmp57924 __tmp57922)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57912
                                                    (let ((__tmp57913
                                                           (let ((__tmp57920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp57914
                          (let ((__tmp57916
                                 (let ((__tmp57919
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp57917
                                        (let ((__tmp57918
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp57918 '()))))
                                   (declare (not safe))
                                   (cons __tmp57919 __tmp57917)))
                                (__tmp57915
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57916 __tmp57915))))
                     (declare (not safe))
                     (cons __tmp57920 __tmp57914))))
              (declare (not safe))
              (cons __tmp57913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57921 __tmp57912))))
                                        (declare (not safe))
                                        (cons __tmp57925 __tmp57911)))
                                     (__tmp57893
                                      (let ((__tmp57894
                                             (let ((__tmp57909
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57895
                                                    (let ((__tmp57905
                                                           (let ((__tmp57908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57906
                          (let ((__tmp57907 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57907 '()))))
                     (declare (not safe))
                     (cons __tmp57908 __tmp57906)))
                  (__tmp57896
                   (let ((__tmp57897
                          (let ((__tmp57904 (gx#datum->syntax '#f 'fx+))
                                (__tmp57898
                                 (let ((__tmp57900
                                        (let ((__tmp57903
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57901
                                               (let ((__tmp57902
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57902 '()))))
                                          (declare (not safe))
                                          (cons __tmp57903 __tmp57901)))
                                       (__tmp57899
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57900 __tmp57899))))
                            (declare (not safe))
                            (cons __tmp57904 __tmp57898))))
                     (declare (not safe))
                     (cons __tmp57897 '()))))
              (declare (not safe))
              (cons __tmp57905 __tmp57896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57909 __tmp57895))))
                                        (declare (not safe))
                                        (cons __tmp57894 '()))))
                                 (declare (not safe))
                                 (cons __tmp57910 __tmp57893))))
                          (declare (not safe))
                          (cons '() __tmp57892))))
                   (declare (not safe))
                   (cons __tmp57926 __tmp57891)))
                (__tmp57869
                 (let ((__tmp57870
                        (let ((__tmp57889 (gx#datum->syntax '#f 'lambda))
                              (__tmp57871
                               (let ((__tmp57872
                                      (let ((__tmp57873
                                             (let ((__tmp57888
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57874
                                                    (let ((__tmp57884
                                                           (let ((__tmp57887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57885
                          (let ((__tmp57886 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57886 '()))))
                     (declare (not safe))
                     (cons __tmp57887 __tmp57885)))
                  (__tmp57875
                   (let ((__tmp57876
                          (let ((__tmp57883 (gx#datum->syntax '#f 'fx+))
                                (__tmp57877
                                 (let ((__tmp57879
                                        (let ((__tmp57882
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57880
                                               (let ((__tmp57881
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57881 '()))))
                                          (declare (not safe))
                                          (cons __tmp57882 __tmp57880)))
                                       (__tmp57878
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57879 __tmp57878))))
                            (declare (not safe))
                            (cons __tmp57883 __tmp57877))))
                     (declare (not safe))
                     (cons __tmp57876 '()))))
              (declare (not safe))
              (cons __tmp57884 __tmp57875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57888 __tmp57874))))
                                        (declare (not safe))
                                        (cons __tmp57873 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp57872))))
                          (declare (not safe))
                          (cons __tmp57889 __tmp57871))))
                   (declare (not safe))
                   (cons __tmp57870 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57890
                                                          __tmp57869))))
                                             (declare (not safe))
                                             (cons __tmp57927 __tmp57868))))
                                      (declare (not safe))
                                      (cons _L55430_ __tmp57867))))
                               (declare (not safe))
                               (cons __tmp57928 __tmp57866))))
                        (declare (not safe))
                        (cons _L55425_ __tmp57865))))
                 (declare (not safe))
                 (cons _L55427_ __tmp57864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57929
                                                        __tmp57863))))
                                           (declare (not safe))
                                           (cons __tmp57930 __tmp57862))))
                                    (declare (not safe))
                                    (cons __tmp57931 __tmp57861))))
                             (declare (not safe))
                             (cons __tmp57860 '()))))
                      (declare (not safe))
                      (cons __tmp57932 __tmp57859))))
               (declare (not safe))
               (cons __tmp57948 __tmp57858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57857 '()))))
                                         (declare (not safe))
                                         (cons __tmp57949 __tmp57856))))
                                  (declare (not safe))
                                  (cons __tmp57957 __tmp57855)))
                               (__tmp57793
                                (let ((__tmp57794
                                       (let ((__tmp57853
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp57795
                                              (let ((__tmp57848
                                                     (let ((__tmp57849
                                                            (let ((__tmp57852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57850
                           (let ((__tmp57851 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp57851 '()))))
                      (declare (not safe))
                      (cons __tmp57852 __tmp57850))))
               (declare (not safe))
               (cons _L55428_ __tmp57849)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57796
                                                     (let ((__tmp57797
                                                            (let ((__tmp57847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57798
                           (let ((__tmp57831
                                  (let ((__tmp57840
                                         (let ((__tmp57846
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57841
                                                (let ((__tmp57842
                                                       (let ((__tmp57845
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp57843
                                                              (let ((__tmp57844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57844 '()))))
                 (declare (not safe))
                 (cons __tmp57845 __tmp57843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57842 '()))))
                                           (declare (not safe))
                                           (cons __tmp57846 __tmp57841)))
                                        (__tmp57832
                                         (let ((__tmp57833
                                                (let ((__tmp57839
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57834
                                                       (let ((__tmp57835
                                                              (let ((__tmp57838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp57836
                             (let ((__tmp57837 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp57837 '()))))
                        (declare (not safe))
                        (cons __tmp57838 __tmp57836))))
                 (declare (not safe))
                 (cons __tmp57835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57839
                                                        __tmp57834))))
                                           (declare (not safe))
                                           (cons __tmp57833 '()))))
                                    (declare (not safe))
                                    (cons __tmp57840 __tmp57832)))
                                 (__tmp57799
                                  (let ((__tmp57800
                                         (let ((__tmp57830
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp57801
                                                (let ((__tmp57829
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp57802
                                                       (let ((__tmp57828
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp57803
                                                              (let ((__tmp57804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57805
                                    (let ((__tmp57827
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp57806
                                           (let ((__tmp57807
                                                  (let ((__tmp57826
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp57808
                                                         (let ((__tmp57809
                                                                (let ((__tmp57810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57825 (gx#datum->syntax '#f 'set!))
                                     (__tmp57811
                                      (let ((__tmp57821
                                             (let ((__tmp57824
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp57822
                                                    (let ((__tmp57823
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp57823 '()))))
                                               (declare (not safe))
                                               (cons __tmp57824 __tmp57822)))
                                            (__tmp57812
                                             (let ((__tmp57813
                                                    (let ((__tmp57820
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp57814
                                                           (let ((__tmp57816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57819
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp57817
                                 (let ((__tmp57818
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp57818 '()))))
                            (declare (not safe))
                            (cons __tmp57819 __tmp57817)))
                         (__tmp57815
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp57816 __tmp57815))))
              (declare (not safe))
              (cons __tmp57820 __tmp57814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57813 '()))))
                                        (declare (not safe))
                                        (cons __tmp57821 __tmp57812))))
                                 (declare (not safe))
                                 (cons __tmp57825 __tmp57811))))
                          (declare (not safe))
                          (cons __tmp57810 '()))))
                   (declare (not safe))
                   (cons '() __tmp57809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57826
                                                          __tmp57808))))
                                             (declare (not safe))
                                             (cons __tmp57807 '()))))
                                      (declare (not safe))
                                      (cons __tmp57827 __tmp57806))))
                               (declare (not safe))
                               (cons _L55425_ __tmp57805))))
                        (declare (not safe))
                        (cons _L55427_ __tmp57804))))
                 (declare (not safe))
                 (cons __tmp57828 __tmp57803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57829
                                                        __tmp57802))))
                                           (declare (not safe))
                                           (cons __tmp57830 __tmp57801))))
                                    (declare (not safe))
                                    (cons __tmp57800 '()))))
                             (declare (not safe))
                             (cons __tmp57831 __tmp57799))))
                      (declare (not safe))
                      (cons __tmp57847 __tmp57798))))
               (declare (not safe))
               (cons __tmp57797 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57848 __tmp57796))))
                                         (declare (not safe))
                                         (cons __tmp57853 __tmp57795))))
                                  (declare (not safe))
                                  (cons __tmp57794 '()))))
                           (declare (not safe))
                           (cons __tmp57854 __tmp57793))))
                    (declare (not safe))
                    (cons __tmp57958 __tmp57792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58006
                                                           __tmp57791))))
                                              (declare (not safe))
                                              (cons __tmp58108 __tmp57790))))
                                       (declare (not safe))
                                       (cons __tmp58154 __tmp57789))))
                                (declare (not safe))
                                (cons __tmp58197 __tmp57788))))
                         (declare (not safe))
                         (cons __tmp58218 __tmp57787)))
                     _hd5531155419_
                     _hd5530855409_
                     _hd5530555399_
                     _hd5530255389_
                     _hd5529955379_
                     _hd5529655369_
                     _hd5529355359_
                     _hd5529055349_
                     _hd5528755339_)
                    (_g5527255318_ _g5527355322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5527255318_
                                                     _g5527355322_))))
                                            (_g5527255318_ _g5527355322_))))
                                    (_g5527255318_ _g5527355322_))))
                            (_g5527255318_ _g5527355322_))))
                    (_g5527255318_ _g5527355322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5527255318_
                                                     _g5527355322_))))
                                            (_g5527255318_ _g5527355322_))))
                                    (_g5527255318_ _g5527355322_))))
                            (_g5527255318_ _g5527355322_))))
                    (_g5527255318_ _g5527355322_)))))
        (_g5527155471_ _$stx55268_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx55475_)
      (let* ((_g5547955501_
              (lambda (_g5548055497_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5548055497_)))
             (_g5547855570_
              (lambda (_g5548055505_)
                (if (gx#stx-pair? _g5548055505_)
                    (let ((_e5548455508_ (gx#syntax-e _g5548055505_)))
                      (let ((_hd5548555512_
                             (let ()
                               (declare (not safe))
                               (##car _e5548455508_)))
                            (_tl5548655515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5548455508_))))
                        (if (gx#stx-pair? _tl5548655515_)
                            (let ((_e5548755518_ (gx#syntax-e _tl5548655515_)))
                              (let ((_hd5548855522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5548755518_)))
                                    (_tl5548955525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5548755518_))))
                                (if (gx#stx-pair? _tl5548955525_)
                                    (let ((_e5549055528_
                                           (gx#syntax-e _tl5548955525_)))
                                      (let ((_hd5549155532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5549055528_)))
                                            (_tl5549255535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5549055528_))))
                                        (if (gx#stx-pair? _tl5549255535_)
                                            (let ((_e5549355538_
                                                   (gx#syntax-e
                                                    _tl5549255535_)))
                                              (let ((_hd5549455542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5549355538_)))
                                                    (_tl5549555545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5549355538_))))
                                                (if (gx#stx-null?
                                                     _tl5549555545_)
                                                    ((lambda (_L55548_
                                                              _L55550_
                                                              _L55551_)
                                                       (let ((__tmp58238
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp58219
                                                              (let ((__tmp58226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58237
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp58227
                                    (let ((__tmp58228
                                           (let ((__tmp58236
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58229
                                                  (let ((__tmp58230
                                                         (let ((__tmp58231
                                                                (let ((__tmp58232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58235 (gx#datum->syntax '#f 'fx*))
                                     (__tmp58233
                                      (let ((__tmp58234
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55550_ '()))))
                                        (declare (not safe))
                                        (cons _L55550_ __tmp58234))))
                                 (declare (not safe))
                                 (cons __tmp58235 __tmp58233))))
                          (declare (not safe))
                          (cons __tmp58232 '()))))
                   (declare (not safe))
                   (cons _L55550_ __tmp58231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55551_
                                                          __tmp58230))))
                                             (declare (not safe))
                                             (cons __tmp58236 __tmp58229))))
                                      (declare (not safe))
                                      (cons __tmp58228 '()))))
                               (declare (not safe))
                               (cons __tmp58237 __tmp58227)))
                            (__tmp58220
                             (let ((__tmp58221
                                    (let ((__tmp58225
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp58222
                                           (let ((__tmp58224
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp58223
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55548_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58224 __tmp58223))))
                                      (declare (not safe))
                                      (cons __tmp58225 __tmp58222))))
                               (declare (not safe))
                               (cons __tmp58221 '()))))
                        (declare (not safe))
                        (cons __tmp58226 __tmp58220))))
                 (declare (not safe))
                 (cons __tmp58238 __tmp58219)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5549455542_
                                                     _hd5549155532_
                                                     _hd5548855522_)
                                                    (_g5547955501_
                                                     _g5548055505_))))
                                            (_g5547955501_ _g5548055505_))))
                                    (_g5547955501_ _g5548055505_))))
                            (_g5547955501_ _g5548055505_))))
                    (_g5547955501_ _g5548055505_)))))
        (_g5547855570_ _$stx55475_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx55574_)
      (let* ((_g5557855612_
              (lambda (_g5557955608_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5557955608_)))
             (_g5557755723_
              (lambda (_g5557955616_)
                (if (gx#stx-pair? _g5557955616_)
                    (let ((_e5558655619_ (gx#syntax-e _g5557955616_)))
                      (let ((_hd5558755623_
                             (let ()
                               (declare (not safe))
                               (##car _e5558655619_)))
                            (_tl5558855626_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5558655619_))))
                        (if (gx#stx-pair? _tl5558855626_)
                            (let ((_e5558955629_ (gx#syntax-e _tl5558855626_)))
                              (let ((_hd5559055633_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5558955629_)))
                                    (_tl5559155636_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5558955629_))))
                                (if (gx#stx-pair? _tl5559155636_)
                                    (let ((_e5559255639_
                                           (gx#syntax-e _tl5559155636_)))
                                      (let ((_hd5559355643_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5559255639_)))
                                            (_tl5559455646_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5559255639_))))
                                        (if (gx#stx-pair? _tl5559455646_)
                                            (let ((_e5559555649_
                                                   (gx#syntax-e
                                                    _tl5559455646_)))
                                              (let ((_hd5559655653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5559555649_)))
                                                    (_tl5559755656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5559555649_))))
                                                (if (gx#stx-pair?
                                                     _tl5559755656_)
                                                    (let ((_e5559855659_
                                                           (gx#syntax-e
                                                            _tl5559755656_)))
                                                      (let ((_hd5559955663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5559855659_)))
                    (_tl5560055666_
                     (let () (declare (not safe)) (##cdr _e5559855659_))))
                (if (gx#stx-pair? _tl5560055666_)
                    (let ((_e5560155669_ (gx#syntax-e _tl5560055666_)))
                      (let ((_hd5560255673_
                             (let ()
                               (declare (not safe))
                               (##car _e5560155669_)))
                            (_tl5560355676_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5560155669_))))
                        (if (gx#stx-pair? _tl5560355676_)
                            (let ((_e5560455679_ (gx#syntax-e _tl5560355676_)))
                              (let ((_hd5560555683_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5560455679_)))
                                    (_tl5560655686_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5560455679_))))
                                (if (gx#stx-null? _tl5560655686_)
                                    ((lambda (_L55689_
                                              _L55691_
                                              _L55692_
                                              _L55693_
                                              _L55694_
                                              _L55695_)
                                       (let ((__tmp58397
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp58239
                                              (let ((__tmp58357
                                                     (let ((__tmp58388
                                                            (let ((__tmp58396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58389
                           (let ((__tmp58390
                                  (let ((__tmp58395
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp58391
                                         (let ((__tmp58393
                                                (let ((__tmp58394
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L55691_ '()))))
                                                  (declare (not safe))
                                                  (cons _L55693_ __tmp58394)))
                                               (__tmp58392
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55694_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58393 __tmp58392))))
                                    (declare (not safe))
                                    (cons __tmp58395 __tmp58391))))
                             (declare (not safe))
                             (cons __tmp58390 '()))))
                      (declare (not safe))
                      (cons __tmp58396 __tmp58389)))
                   (__tmp58358
                    (let ((__tmp58382
                           (let ((__tmp58387 (gx#datum->syntax '#f 'size))
                                 (__tmp58383
                                  (let ((__tmp58384
                                         (let ((__tmp58386
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58385
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55695_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58386 __tmp58385))))
                                    (declare (not safe))
                                    (cons __tmp58384 '()))))
                             (declare (not safe))
                             (cons __tmp58387 __tmp58383)))
                          (__tmp58359
                           (let ((__tmp58374
                                  (let ((__tmp58381
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58375
                                         (let ((__tmp58376
                                                (let ((__tmp58380
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58377
                                                       (let ((__tmp58379
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58378
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58379 __tmp58378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58380
                                                        __tmp58377))))
                                           (declare (not safe))
                                           (cons __tmp58376 '()))))
                                    (declare (not safe))
                                    (cons __tmp58381 __tmp58375)))
                                 (__tmp58360
                                  (let ((__tmp58361
                                         (let ((__tmp58373
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58362
                                                (let ((__tmp58363
                                                       (let ((__tmp58372
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58364
                                                              (let ((__tmp58366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58371
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58367
                                    (let ((__tmp58370
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58368
                                           (let ((__tmp58369
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58369 '()))))
                                      (declare (not safe))
                                      (cons __tmp58370 __tmp58368))))
                               (declare (not safe))
                               (cons __tmp58371 __tmp58367)))
                            (__tmp58365
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58366 __tmp58365))))
                 (declare (not safe))
                 (cons __tmp58372 __tmp58364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58363 '()))))
                                           (declare (not safe))
                                           (cons __tmp58373 __tmp58362))))
                                    (declare (not safe))
                                    (cons __tmp58361 '()))))
                             (declare (not safe))
                             (cons __tmp58374 __tmp58360))))
                      (declare (not safe))
                      (cons __tmp58382 __tmp58359))))
               (declare (not safe))
               (cons __tmp58388 __tmp58358)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58240
                                                     (let ((__tmp58241
                                                            (let ((__tmp58356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp58242
                           (let ((__tmp58355 (gx#datum->syntax '#f 'loop))
                                 (__tmp58243
                                  (let ((__tmp58342
                                         (let ((__tmp58351
                                                (let ((__tmp58354
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58352
                                                       (let ((__tmp58353
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58353
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58354
                                                        __tmp58352)))
                                               (__tmp58343
                                                (let ((__tmp58348
                                                       (let ((__tmp58350
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58349
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58350 __tmp58349)))
              (__tmp58344
               (let ((__tmp58345
                      (let ((__tmp58347 (gx#datum->syntax '#f 'deleted))
                            (__tmp58346
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp58347 __tmp58346))))
                 (declare (not safe))
                 (cons __tmp58345 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58348
                                                        __tmp58344))))
                                           (declare (not safe))
                                           (cons __tmp58351 __tmp58343)))
                                        (__tmp58244
                                         (let ((__tmp58245
                                                (let ((__tmp58341
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58246
                                                       (let ((__tmp58333
                                                              (let ((__tmp58340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58334
                             (let ((__tmp58335
                                    (let ((__tmp58339
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58336
                                           (let ((__tmp58337
                                                  (let ((__tmp58338
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58338 '()))))
                                             (declare (not safe))
                                             (cons _L55695_ __tmp58337))))
                                      (declare (not safe))
                                      (cons __tmp58339 __tmp58336))))
                               (declare (not safe))
                               (cons __tmp58335 '()))))
                        (declare (not safe))
                        (cons __tmp58340 __tmp58334)))
                     (__tmp58247
                      (let ((__tmp58248
                             (let ((__tmp58332 (gx#datum->syntax '#f 'cond))
                                   (__tmp58249
                                    (let ((__tmp58323
                                           (let ((__tmp58325
                                                  (let ((__tmp58331
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58326
                                                         (let ((__tmp58330
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58327
                        (let ((__tmp58328
                               (let ((__tmp58329
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58329 '()))))
                          (declare (not safe))
                          (cons __tmp58328 '()))))
                   (declare (not safe))
                   (cons __tmp58330 __tmp58327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58331
                                                          __tmp58326)))
                                                 (__tmp58324
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55689_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58325 __tmp58324)))
                                          (__tmp58250
                                           (let ((__tmp58290
                                                  (let ((__tmp58316
                                                         (let ((__tmp58322
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58317
                        (let ((__tmp58321 (gx#datum->syntax '#f 'k))
                              (__tmp58318
                               (let ((__tmp58319
                                      (let ((__tmp58320
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58320 '()))))
                                 (declare (not safe))
                                 (cons __tmp58319 '()))))
                          (declare (not safe))
                          (cons __tmp58321 __tmp58318))))
                   (declare (not safe))
                   (cons __tmp58322 __tmp58317)))
                (__tmp58291
                 (let ((__tmp58292
                        (let ((__tmp58315 (gx#datum->syntax '#f 'loop))
                              (__tmp58293
                               (let ((__tmp58307
                                      (let ((__tmp58314
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58308
                                             (let ((__tmp58313
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58309
                                                    (let ((__tmp58312
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58310
                                                           (let ((__tmp58311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58311 '()))))
              (declare (not safe))
              (cons __tmp58312 __tmp58310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58313 __tmp58309))))
                                        (declare (not safe))
                                        (cons __tmp58314 __tmp58308)))
                                     (__tmp58294
                                      (let ((__tmp58302
                                             (let ((__tmp58306
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58303
                                                    (let ((__tmp58305
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58305
                                                            __tmp58304))))
                                               (declare (not safe))
                                               (cons __tmp58306 __tmp58303)))
                                            (__tmp58295
                                             (let ((__tmp58296
                                                    (let ((__tmp58301
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp58297
                                                           (let ((__tmp58300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp58298
                          (let ((__tmp58299 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp58299 '()))))
                     (declare (not safe))
                     (cons __tmp58300 __tmp58298))))
              (declare (not safe))
              (cons __tmp58301 __tmp58297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58296 '()))))
                                        (declare (not safe))
                                        (cons __tmp58302 __tmp58295))))
                                 (declare (not safe))
                                 (cons __tmp58307 __tmp58294))))
                          (declare (not safe))
                          (cons __tmp58315 __tmp58293))))
                   (declare (not safe))
                   (cons __tmp58292 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58316
                                                          __tmp58291)))
                                                 (__tmp58251
                                                  (let ((__tmp58275
                                                         (let ((__tmp58286
                                                                (let ((__tmp58287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58288
                                      (let ((__tmp58289
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58289 '()))))
                                 (declare (not safe))
                                 (cons _L55691_ __tmp58288))))
                          (declare (not safe))
                          (cons _L55692_ __tmp58287)))
                       (__tmp58276
                        (let ((__tmp58277
                               (let ((__tmp58285
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp58278
                                      (let ((__tmp58279
                                             (let ((__tmp58280
                                                    (let ((__tmp58284
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp58281
                                                           (let ((__tmp58283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp58282
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp58283 __tmp58282))))
              (declare (not safe))
              (cons __tmp58284 __tmp58281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58280 '()))))
                                        (declare (not safe))
                                        (cons _L55695_ __tmp58279))))
                                 (declare (not safe))
                                 (cons __tmp58285 __tmp58278))))
                          (declare (not safe))
                          (cons __tmp58277 '()))))
                   (declare (not safe))
                   (cons __tmp58286 __tmp58276)))
                (__tmp58252
                 (let ((__tmp58253
                        (let ((__tmp58274 (gx#datum->syntax '#f 'else))
                              (__tmp58254
                               (let ((__tmp58255
                                      (let ((__tmp58273
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58256
                                             (let ((__tmp58265
                                                    (let ((__tmp58272
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58266
                                                           (let ((__tmp58271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58267
                          (let ((__tmp58270 (gx#datum->syntax '#f 'i))
                                (__tmp58268
                                 (let ((__tmp58269
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58269 '()))))
                            (declare (not safe))
                            (cons __tmp58270 __tmp58268))))
                     (declare (not safe))
                     (cons __tmp58271 __tmp58267))))
              (declare (not safe))
              (cons __tmp58272 __tmp58266)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58257
                                                    (let ((__tmp58260
                                                           (let ((__tmp58264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58261
                          (let ((__tmp58263 (gx#datum->syntax '#f 'i))
                                (__tmp58262
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58263 __tmp58262))))
                     (declare (not safe))
                     (cons __tmp58264 __tmp58261)))
                  (__tmp58258
                   (let ((__tmp58259 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp58259 '()))))
              (declare (not safe))
              (cons __tmp58260 __tmp58258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58265 __tmp58257))))
                                        (declare (not safe))
                                        (cons __tmp58273 __tmp58256))))
                                 (declare (not safe))
                                 (cons __tmp58255 '()))))
                          (declare (not safe))
                          (cons __tmp58274 __tmp58254))))
                   (declare (not safe))
                   (cons __tmp58253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58275
                                                          __tmp58252))))
                                             (declare (not safe))
                                             (cons __tmp58290 __tmp58251))))
                                      (declare (not safe))
                                      (cons __tmp58323 __tmp58250))))
                               (declare (not safe))
                               (cons __tmp58332 __tmp58249))))
                        (declare (not safe))
                        (cons __tmp58248 '()))))
                 (declare (not safe))
                 (cons __tmp58333 __tmp58247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58341
                                                        __tmp58246))))
                                           (declare (not safe))
                                           (cons __tmp58245 '()))))
                                    (declare (not safe))
                                    (cons __tmp58342 __tmp58244))))
                             (declare (not safe))
                             (cons __tmp58355 __tmp58243))))
                      (declare (not safe))
                      (cons __tmp58356 __tmp58242))))
               (declare (not safe))
               (cons __tmp58241 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58357 __tmp58240))))
                                         (declare (not safe))
                                         (cons __tmp58397 __tmp58239)))
                                     _hd5560555683_
                                     _hd5560255673_
                                     _hd5559955663_
                                     _hd5559655653_
                                     _hd5559355643_
                                     _hd5559055633_)
                                    (_g5557855612_ _g5557955616_))))
                            (_g5557855612_ _g5557955616_))))
                    (_g5557855612_ _g5557955616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5557855612_
                                                     _g5557955616_))))
                                            (_g5557855612_ _g5557955616_))))
                                    (_g5557855612_ _g5557955616_))))
                            (_g5557855612_ _g5557955616_))))
                    (_g5557855612_ _g5557955616_)))))
        (_g5557755723_ _$stx55574_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx55727_)
      (let* ((_g5573155773_
              (lambda (_g5573255769_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5573255769_)))
             (_g5573055912_
              (lambda (_g5573255777_)
                (if (gx#stx-pair? _g5573255777_)
                    (let ((_e5574155780_ (gx#syntax-e _g5573255777_)))
                      (let ((_hd5574255784_
                             (let ()
                               (declare (not safe))
                               (##car _e5574155780_)))
                            (_tl5574355787_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5574155780_))))
                        (if (gx#stx-pair? _tl5574355787_)
                            (let ((_e5574455790_ (gx#syntax-e _tl5574355787_)))
                              (let ((_hd5574555794_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5574455790_)))
                                    (_tl5574655797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5574455790_))))
                                (if (gx#stx-pair? _tl5574655797_)
                                    (let ((_e5574755800_
                                           (gx#syntax-e _tl5574655797_)))
                                      (let ((_hd5574855804_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5574755800_)))
                                            (_tl5574955807_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5574755800_))))
                                        (if (gx#stx-pair? _tl5574955807_)
                                            (let ((_e5575055810_
                                                   (gx#syntax-e
                                                    _tl5574955807_)))
                                              (let ((_hd5575155814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5575055810_)))
                                                    (_tl5575255817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5575055810_))))
                                                (if (gx#stx-pair?
                                                     _tl5575255817_)
                                                    (let ((_e5575355820_
                                                           (gx#syntax-e
                                                            _tl5575255817_)))
                                                      (let ((_hd5575455824_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5575355820_)))
                    (_tl5575555827_
                     (let () (declare (not safe)) (##cdr _e5575355820_))))
                (if (gx#stx-pair? _tl5575555827_)
                    (let ((_e5575655830_ (gx#syntax-e _tl5575555827_)))
                      (let ((_hd5575755834_
                             (let ()
                               (declare (not safe))
                               (##car _e5575655830_)))
                            (_tl5575855837_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5575655830_))))
                        (if (gx#stx-pair? _tl5575855837_)
                            (let ((_e5575955840_ (gx#syntax-e _tl5575855837_)))
                              (let ((_hd5576055844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5575955840_)))
                                    (_tl5576155847_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5575955840_))))
                                (if (gx#stx-pair? _tl5576155847_)
                                    (let ((_e5576255850_
                                           (gx#syntax-e _tl5576155847_)))
                                      (let ((_hd5576355854_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5576255850_)))
                                            (_tl5576455857_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5576255850_))))
                                        (if (gx#stx-pair? _tl5576455857_)
                                            (let ((_e5576555860_
                                                   (gx#syntax-e
                                                    _tl5576455857_)))
                                              (let ((_hd5576655864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5576555860_)))
                                                    (_tl5576755867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5576555860_))))
                                                (if (gx#stx-null?
                                                     _tl5576755867_)
                                                    ((lambda (_L55870_
                                                              _L55872_
                                                              _L55873_
                                                              _L55874_
                                                              _L55875_
                                                              _L55876_
                                                              _L55877_
                                                              _L55878_)
                                                       (let ((__tmp58614
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp58398
                                                              (let ((__tmp58574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58605
                                    (let ((__tmp58613
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58606
                                           (let ((__tmp58607
                                                  (let ((__tmp58612
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp58608
                                                         (let ((__tmp58610
                                                                (let ((__tmp58611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L55874_ '()))))
                          (declare (not safe))
                          (cons _L55876_ __tmp58611)))
                       (__tmp58609
                        (let () (declare (not safe)) (cons _L55877_ '()))))
                   (declare (not safe))
                   (cons __tmp58610 __tmp58609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58612
                                                          __tmp58608))))
                                             (declare (not safe))
                                             (cons __tmp58607 '()))))
                                      (declare (not safe))
                                      (cons __tmp58613 __tmp58606)))
                                   (__tmp58575
                                    (let ((__tmp58599
                                           (let ((__tmp58604
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp58600
                                                  (let ((__tmp58601
                                                         (let ((__tmp58603
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp58602
                        (let () (declare (not safe)) (cons _L55878_ '()))))
                   (declare (not safe))
                   (cons __tmp58603 __tmp58602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58601 '()))))
                                             (declare (not safe))
                                             (cons __tmp58604 __tmp58600)))
                                          (__tmp58576
                                           (let ((__tmp58591
                                                  (let ((__tmp58598
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp58592
                                                         (let ((__tmp58593
                                                                (let ((__tmp58597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp58594
                               (let ((__tmp58596 (gx#datum->syntax '#f 'size))
                                     (__tmp58595
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp58596 __tmp58595))))
                          (declare (not safe))
                          (cons __tmp58597 __tmp58594))))
                   (declare (not safe))
                   (cons __tmp58593 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58598
                                                          __tmp58592)))
                                                 (__tmp58577
                                                  (let ((__tmp58578
                                                         (let ((__tmp58590
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp58579
                        (let ((__tmp58580
                               (let ((__tmp58589
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp58581
                                      (let ((__tmp58583
                                             (let ((__tmp58588
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp58584
                                                    (let ((__tmp58587
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp58585
                                                           (let ((__tmp58586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp58586 '()))))
              (declare (not safe))
              (cons __tmp58587 __tmp58585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58588 __tmp58584)))
                                            (__tmp58582
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp58583 __tmp58582))))
                                 (declare (not safe))
                                 (cons __tmp58589 __tmp58581))))
                          (declare (not safe))
                          (cons __tmp58580 '()))))
                   (declare (not safe))
                   (cons __tmp58590 __tmp58579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58578 '()))))
                                             (declare (not safe))
                                             (cons __tmp58591 __tmp58577))))
                                      (declare (not safe))
                                      (cons __tmp58599 __tmp58576))))
                               (declare (not safe))
                               (cons __tmp58605 __tmp58575)))
                            (__tmp58399
                             (let ((__tmp58400
                                    (let ((__tmp58573
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp58401
                                           (let ((__tmp58572
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp58402
                                                  (let ((__tmp58559
                                                         (let ((__tmp58568
                                                                (let ((__tmp58571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp58569
                               (let ((__tmp58570
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp58570 '()))))
                          (declare (not safe))
                          (cons __tmp58571 __tmp58569)))
                       (__tmp58560
                        (let ((__tmp58565
                               (let ((__tmp58567 (gx#datum->syntax '#f 'i))
                                     (__tmp58566
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp58567 __tmp58566)))
                              (__tmp58561
                               (let ((__tmp58562
                                      (let ((__tmp58564
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp58563
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp58564 __tmp58563))))
                                 (declare (not safe))
                                 (cons __tmp58562 '()))))
                          (declare (not safe))
                          (cons __tmp58565 __tmp58561))))
                   (declare (not safe))
                   (cons __tmp58568 __tmp58560)))
                (__tmp58403
                 (let ((__tmp58404
                        (let ((__tmp58558 (gx#datum->syntax '#f 'let))
                              (__tmp58405
                               (let ((__tmp58550
                                      (let ((__tmp58557
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp58551
                                             (let ((__tmp58552
                                                    (let ((__tmp58556
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp58553
                                                           (let ((__tmp58554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp58555 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp58555 '()))))
                     (declare (not safe))
                     (cons _L55878_ __tmp58554))))
              (declare (not safe))
              (cons __tmp58556 __tmp58553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58552 '()))))
                                        (declare (not safe))
                                        (cons __tmp58557 __tmp58551)))
                                     (__tmp58406
                                      (let ((__tmp58407
                                             (let ((__tmp58549
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp58408
                                                    (let ((__tmp58490
                                                           (let ((__tmp58542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp58548 (gx#datum->syntax '#f 'eq?))
                                (__tmp58543
                                 (let ((__tmp58547 (gx#datum->syntax '#f 'k))
                                       (__tmp58544
                                        (let ((__tmp58545
                                               (let ((__tmp58546
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp58546 '()))))
                                          (declare (not safe))
                                          (cons __tmp58545 '()))))
                                   (declare (not safe))
                                   (cons __tmp58547 __tmp58544))))
                            (declare (not safe))
                            (cons __tmp58548 __tmp58543)))
                         (__tmp58491
                          (let ((__tmp58492
                                 (let ((__tmp58541 (gx#datum->syntax '#f 'if))
                                       (__tmp58493
                                        (let ((__tmp58540
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp58494
                                               (let ((__tmp58518
                                                      (let ((__tmp58539
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp58519
                                                             (let ((__tmp58533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58538
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp58534
                                   (let ((__tmp58535
                                          (let ((__tmp58537
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp58536
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55874_ '()))))
                                            (declare (not safe))
                                            (cons __tmp58537 __tmp58536))))
                                     (declare (not safe))
                                     (cons _L55878_ __tmp58535))))
                              (declare (not safe))
                              (cons __tmp58538 __tmp58534)))
                           (__tmp58520
                            (let ((__tmp58523
                                   (let ((__tmp58532
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp58524
                                          (let ((__tmp58525
                                                 (let ((__tmp58527
                                                        (let ((__tmp58531
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp58528
                                                               (let ((__tmp58530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp58529
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp58530 __tmp58529))))
                  (declare (not safe))
                  (cons __tmp58531 __tmp58528)))
               (__tmp58526 (let () (declare (not safe)) (cons _L55873_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58527
                                                         __tmp58526))))
                                            (declare (not safe))
                                            (cons _L55878_ __tmp58525))))
                                     (declare (not safe))
                                     (cons __tmp58532 __tmp58524)))
                                  (__tmp58521
                                   (let ((__tmp58522
                                          (let ()
                                            (declare (not safe))
                                            (cons _L55870_ '()))))
                                     (declare (not safe))
                                     (cons __tmp58522 '()))))
                              (declare (not safe))
                              (cons __tmp58523 __tmp58521))))
                       (declare (not safe))
                       (cons __tmp58533 __tmp58520))))
                (declare (not safe))
                (cons __tmp58539 __tmp58519)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp58495
                                                      (let ((__tmp58496
                                                             (let ((__tmp58517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp58497
                            (let ((__tmp58511
                                   (let ((__tmp58516
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp58512
                                          (let ((__tmp58513
                                                 (let ((__tmp58515
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp58514
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L55874_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp58515
                                                         __tmp58514))))
                                            (declare (not safe))
                                            (cons _L55878_ __tmp58513))))
                                     (declare (not safe))
                                     (cons __tmp58516 __tmp58512)))
                                  (__tmp58498
                                   (let ((__tmp58501
                                          (let ((__tmp58510
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp58502
                                                 (let ((__tmp58503
                                                        (let ((__tmp58505
                                                               (let ((__tmp58509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp58506
                              (let ((__tmp58508 (gx#datum->syntax '#f 'probe))
                                    (__tmp58507
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp58508 __tmp58507))))
                         (declare (not safe))
                         (cons __tmp58509 __tmp58506)))
                      (__tmp58504
                       (let () (declare (not safe)) (cons _L55873_ '()))))
                  (declare (not safe))
                  (cons __tmp58505 __tmp58504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L55878_
                                                         __tmp58503))))
                                            (declare (not safe))
                                            (cons __tmp58510 __tmp58502)))
                                         (__tmp58499
                                          (let ((__tmp58500
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55872_ '()))))
                                            (declare (not safe))
                                            (cons __tmp58500 '()))))
                                     (declare (not safe))
                                     (cons __tmp58501 __tmp58499))))
                              (declare (not safe))
                              (cons __tmp58511 __tmp58498))))
                       (declare (not safe))
                       (cons __tmp58517 __tmp58497))))
                (declare (not safe))
                (cons __tmp58496 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58518
                                                       __tmp58495))))
                                          (declare (not safe))
                                          (cons __tmp58540 __tmp58494))))
                                   (declare (not safe))
                                   (cons __tmp58541 __tmp58493))))
                            (declare (not safe))
                            (cons __tmp58492 '()))))
                     (declare (not safe))
                     (cons __tmp58542 __tmp58491)))
                  (__tmp58409
                   (let ((__tmp58457
                          (let ((__tmp58483
                                 (let ((__tmp58489 (gx#datum->syntax '#f 'eq?))
                                       (__tmp58484
                                        (let ((__tmp58488
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp58485
                                               (let ((__tmp58486
                                                      (let ((__tmp58487
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp58487
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp58486 '()))))
                                          (declare (not safe))
                                          (cons __tmp58488 __tmp58485))))
                                   (declare (not safe))
                                   (cons __tmp58489 __tmp58484)))
                                (__tmp58458
                                 (let ((__tmp58459
                                        (let ((__tmp58482
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp58460
                                               (let ((__tmp58474
                                                      (let ((__tmp58481
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp58475
                                                             (let ((__tmp58480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp58476
                            (let ((__tmp58479 (gx#datum->syntax '#f 'i))
                                  (__tmp58477
                                   (let ((__tmp58478
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp58478 '()))))
                              (declare (not safe))
                              (cons __tmp58479 __tmp58477))))
                       (declare (not safe))
                       (cons __tmp58480 __tmp58476))))
                (declare (not safe))
                (cons __tmp58481 __tmp58475)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp58461
                                                      (let ((__tmp58469
                                                             (let ((__tmp58473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp58470
                            (let ((__tmp58472 (gx#datum->syntax '#f 'i))
                                  (__tmp58471
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp58472 __tmp58471))))
                       (declare (not safe))
                       (cons __tmp58473 __tmp58470)))
                    (__tmp58462
                     (let ((__tmp58463
                            (let ((__tmp58468 (gx#datum->syntax '#f 'or))
                                  (__tmp58464
                                   (let ((__tmp58467
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp58465
                                          (let ((__tmp58466
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp58466 '()))))
                                     (declare (not safe))
                                     (cons __tmp58467 __tmp58465))))
                              (declare (not safe))
                              (cons __tmp58468 __tmp58464))))
                       (declare (not safe))
                       (cons __tmp58463 '()))))
                (declare (not safe))
                (cons __tmp58469 __tmp58462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58474
                                                       __tmp58461))))
                                          (declare (not safe))
                                          (cons __tmp58482 __tmp58460))))
                                   (declare (not safe))
                                   (cons __tmp58459 '()))))
                            (declare (not safe))
                            (cons __tmp58483 __tmp58458)))
                         (__tmp58410
                          (let ((__tmp58434
                                 (let ((__tmp58453
                                        (let ((__tmp58454
                                               (let ((__tmp58455
                                                      (let ((__tmp58456
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp58456
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L55874_ __tmp58455))))
                                          (declare (not safe))
                                          (cons _L55875_ __tmp58454)))
                                       (__tmp58435
                                        (let ((__tmp58447
                                               (let ((__tmp58452
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp58448
                                                      (let ((__tmp58449
                                                             (let ((__tmp58451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp58450
                            (let () (declare (not safe)) (cons _L55874_ '()))))
                       (declare (not safe))
                       (cons __tmp58451 __tmp58450))))
                (declare (not safe))
                (cons _L55878_ __tmp58449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58452 __tmp58448)))
                                              (__tmp58436
                                               (let ((__tmp58437
                                                      (let ((__tmp58446
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp58438
                                                             (let ((__tmp58439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58441
                                   (let ((__tmp58445
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp58442
                                          (let ((__tmp58444
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp58443
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp58444 __tmp58443))))
                                     (declare (not safe))
                                     (cons __tmp58445 __tmp58442)))
                                  (__tmp58440
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55873_ '()))))
                              (declare (not safe))
                              (cons __tmp58441 __tmp58440))))
                       (declare (not safe))
                       (cons _L55878_ __tmp58439))))
                (declare (not safe))
                (cons __tmp58446 __tmp58438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58437 '()))))
                                          (declare (not safe))
                                          (cons __tmp58447 __tmp58436))))
                                   (declare (not safe))
                                   (cons __tmp58453 __tmp58435)))
                                (__tmp58411
                                 (let ((__tmp58412
                                        (let ((__tmp58433
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp58413
                                               (let ((__tmp58414
                                                      (let ((__tmp58432
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp58415
                                                             (let ((__tmp58424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp58431
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp58425
                                   (let ((__tmp58430
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp58426
                                          (let ((__tmp58429
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp58427
                                                 (let ((__tmp58428
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp58428 '()))))
                                            (declare (not safe))
                                            (cons __tmp58429 __tmp58427))))
                                     (declare (not safe))
                                     (cons __tmp58430 __tmp58426))))
                              (declare (not safe))
                              (cons __tmp58431 __tmp58425)))
                           (__tmp58416
                            (let ((__tmp58419
                                   (let ((__tmp58423
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp58420
                                          (let ((__tmp58422
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp58421
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp58422 __tmp58421))))
                                     (declare (not safe))
                                     (cons __tmp58423 __tmp58420)))
                                  (__tmp58417
                                   (let ((__tmp58418
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp58418 '()))))
                              (declare (not safe))
                              (cons __tmp58419 __tmp58417))))
                       (declare (not safe))
                       (cons __tmp58424 __tmp58416))))
                (declare (not safe))
                (cons __tmp58432 __tmp58415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58414 '()))))
                                          (declare (not safe))
                                          (cons __tmp58433 __tmp58413))))
                                   (declare (not safe))
                                   (cons __tmp58412 '()))))
                            (declare (not safe))
                            (cons __tmp58434 __tmp58411))))
                     (declare (not safe))
                     (cons __tmp58457 __tmp58410))))
              (declare (not safe))
              (cons __tmp58490 __tmp58409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58549 __tmp58408))))
                                        (declare (not safe))
                                        (cons __tmp58407 '()))))
                                 (declare (not safe))
                                 (cons __tmp58550 __tmp58406))))
                          (declare (not safe))
                          (cons __tmp58558 __tmp58405))))
                   (declare (not safe))
                   (cons __tmp58404 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58559
                                                          __tmp58403))))
                                             (declare (not safe))
                                             (cons __tmp58572 __tmp58402))))
                                      (declare (not safe))
                                      (cons __tmp58573 __tmp58401))))
                               (declare (not safe))
                               (cons __tmp58400 '()))))
                        (declare (not safe))
                        (cons __tmp58574 __tmp58399))))
                 (declare (not safe))
                 (cons __tmp58614 __tmp58398)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5576655864_
                                                     _hd5576355854_
                                                     _hd5576055844_
                                                     _hd5575755834_
                                                     _hd5575455824_
                                                     _hd5575155814_
                                                     _hd5574855804_
                                                     _hd5574555794_)
                                                    (_g5573155773_
                                                     _g5573255777_))))
                                            (_g5573155773_ _g5573255777_))))
                                    (_g5573155773_ _g5573255777_))))
                            (_g5573155773_ _g5573255777_))))
                    (_g5573155773_ _g5573255777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5573155773_
                                                     _g5573255777_))))
                                            (_g5573155773_ _g5573255777_))))
                                    (_g5573155773_ _g5573255777_))))
                            (_g5573155773_ _g5573255777_))))
                    (_g5573155773_ _g5573255777_)))))
        (_g5573055912_ _$stx55727_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx55916_)
      (let* ((_g5592055966_
              (lambda (_g5592155962_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5592155962_)))
             (_g5591956119_
              (lambda (_g5592155970_)
                (if (gx#stx-pair? _g5592155970_)
                    (let ((_e5593155973_ (gx#syntax-e _g5592155970_)))
                      (let ((_hd5593255977_
                             (let ()
                               (declare (not safe))
                               (##car _e5593155973_)))
                            (_tl5593355980_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5593155973_))))
                        (if (gx#stx-pair? _tl5593355980_)
                            (let ((_e5593455983_ (gx#syntax-e _tl5593355980_)))
                              (let ((_hd5593555987_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5593455983_)))
                                    (_tl5593655990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5593455983_))))
                                (if (gx#stx-pair? _tl5593655990_)
                                    (let ((_e5593755993_
                                           (gx#syntax-e _tl5593655990_)))
                                      (let ((_hd5593855997_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5593755993_)))
                                            (_tl5593956000_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5593755993_))))
                                        (if (gx#stx-pair? _tl5593956000_)
                                            (let ((_e5594056003_
                                                   (gx#syntax-e
                                                    _tl5593956000_)))
                                              (let ((_hd5594156007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5594056003_)))
                                                    (_tl5594256010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5594056003_))))
                                                (if (gx#stx-pair?
                                                     _tl5594256010_)
                                                    (let ((_e5594356013_
                                                           (gx#syntax-e
                                                            _tl5594256010_)))
                                                      (let ((_hd5594456017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5594356013_)))
                    (_tl5594556020_
                     (let () (declare (not safe)) (##cdr _e5594356013_))))
                (if (gx#stx-pair? _tl5594556020_)
                    (let ((_e5594656023_ (gx#syntax-e _tl5594556020_)))
                      (let ((_hd5594756027_
                             (let ()
                               (declare (not safe))
                               (##car _e5594656023_)))
                            (_tl5594856030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5594656023_))))
                        (if (gx#stx-pair? _tl5594856030_)
                            (let ((_e5594956033_ (gx#syntax-e _tl5594856030_)))
                              (let ((_hd5595056037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5594956033_)))
                                    (_tl5595156040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5594956033_))))
                                (if (gx#stx-pair? _tl5595156040_)
                                    (let ((_e5595256043_
                                           (gx#syntax-e _tl5595156040_)))
                                      (let ((_hd5595356047_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5595256043_)))
                                            (_tl5595456050_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5595256043_))))
                                        (if (gx#stx-pair? _tl5595456050_)
                                            (let ((_e5595556053_
                                                   (gx#syntax-e
                                                    _tl5595456050_)))
                                              (let ((_hd5595656057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5595556053_)))
                                                    (_tl5595756060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5595556053_))))
                                                (if (gx#stx-pair?
                                                     _tl5595756060_)
                                                    (let ((_e5595856063_
                                                           (gx#syntax-e
                                                            _tl5595756060_)))
                                                      (let ((_hd5595956067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5595856063_)))
                    (_tl5596056070_
                     (let () (declare (not safe)) (##cdr _e5595856063_))))
                (if (gx#stx-null? _tl5596056070_)
                    ((lambda (_L56073_
                              _L56075_
                              _L56076_
                              _L56077_
                              _L56078_
                              _L56079_
                              _L56080_
                              _L56081_
                              _L56082_)
                       (let ((__tmp58846 (gx#datum->syntax '#f 'let*))
                             (__tmp58615
                              (let ((__tmp58806
                                     (let ((__tmp58837
                                            (let ((__tmp58845
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp58838
                                                   (let ((__tmp58839
                                                          (let ((__tmp58844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp58840
                         (let ((__tmp58842
                                (let ((__tmp58843
                                       (let ()
                                         (declare (not safe))
                                         (cons _L56078_ '()))))
                                  (declare (not safe))
                                  (cons _L56080_ __tmp58843)))
                               (__tmp58841
                                (let ()
                                  (declare (not safe))
                                  (cons _L56081_ '()))))
                           (declare (not safe))
                           (cons __tmp58842 __tmp58841))))
                    (declare (not safe))
                    (cons __tmp58844 __tmp58840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58839 '()))))
                                              (declare (not safe))
                                              (cons __tmp58845 __tmp58838)))
                                           (__tmp58807
                                            (let ((__tmp58831
                                                   (let ((__tmp58836
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp58832
                                                          (let ((__tmp58833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58835
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp58834
                                (let ()
                                  (declare (not safe))
                                  (cons _L56082_ '()))))
                           (declare (not safe))
                           (cons __tmp58835 __tmp58834))))
                    (declare (not safe))
                    (cons __tmp58833 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58836
                                                           __tmp58832)))
                                                  (__tmp58808
                                                   (let ((__tmp58823
                                                          (let ((__tmp58830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp58824
                         (let ((__tmp58825
                                (let ((__tmp58829
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp58826
                                       (let ((__tmp58828
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp58827
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp58828 __tmp58827))))
                                  (declare (not safe))
                                  (cons __tmp58829 __tmp58826))))
                           (declare (not safe))
                           (cons __tmp58825 '()))))
                    (declare (not safe))
                    (cons __tmp58830 __tmp58824)))
                 (__tmp58809
                  (let ((__tmp58810
                         (let ((__tmp58822 (gx#datum->syntax '#f 'start))
                               (__tmp58811
                                (let ((__tmp58812
                                       (let ((__tmp58821
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp58813
                                              (let ((__tmp58815
                                                     (let ((__tmp58820
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp58816
                                                            (let ((__tmp58819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58817
                           (let ((__tmp58818 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp58818 '()))))
                      (declare (not safe))
                      (cons __tmp58819 __tmp58817))))
               (declare (not safe))
               (cons __tmp58820 __tmp58816)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58814
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp58815 __tmp58814))))
                                         (declare (not safe))
                                         (cons __tmp58821 __tmp58813))))
                                  (declare (not safe))
                                  (cons __tmp58812 '()))))
                           (declare (not safe))
                           (cons __tmp58822 __tmp58811))))
                    (declare (not safe))
                    (cons __tmp58810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58823
                                                           __tmp58809))))
                                              (declare (not safe))
                                              (cons __tmp58831 __tmp58808))))
                                       (declare (not safe))
                                       (cons __tmp58837 __tmp58807)))
                                    (__tmp58616
                                     (let ((__tmp58617
                                            (let ((__tmp58805
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp58618
                                                   (let ((__tmp58804
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp58619
                                                          (let ((__tmp58791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58800
                                (let ((__tmp58803
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp58801
                                       (let ((__tmp58802
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp58802 '()))))
                                  (declare (not safe))
                                  (cons __tmp58803 __tmp58801)))
                               (__tmp58792
                                (let ((__tmp58797
                                       (let ((__tmp58799
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp58798
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp58799 __tmp58798)))
                                      (__tmp58793
                                       (let ((__tmp58794
                                              (let ((__tmp58796
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp58795
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp58796 __tmp58795))))
                                         (declare (not safe))
                                         (cons __tmp58794 '()))))
                                  (declare (not safe))
                                  (cons __tmp58797 __tmp58793))))
                           (declare (not safe))
                           (cons __tmp58800 __tmp58792)))
                        (__tmp58620
                         (let ((__tmp58621
                                (let ((__tmp58790 (gx#datum->syntax '#f 'let))
                                      (__tmp58622
                                       (let ((__tmp58782
                                              (let ((__tmp58789
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp58783
                                                     (let ((__tmp58784
                                                            (let ((__tmp58788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp58785
                           (let ((__tmp58786
                                  (let ((__tmp58787
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp58787 '()))))
                             (declare (not safe))
                             (cons _L56082_ __tmp58786))))
                      (declare (not safe))
                      (cons __tmp58788 __tmp58785))))
               (declare (not safe))
               (cons __tmp58784 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58789 __tmp58783)))
                                             (__tmp58623
                                              (let ((__tmp58624
                                                     (let ((__tmp58781
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp58625
                                                            (let ((__tmp58718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58774
                                  (let ((__tmp58780
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp58775
                                         (let ((__tmp58779
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp58776
                                                (let ((__tmp58777
                                                       (let ((__tmp58778
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp58778
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58777 '()))))
                                           (declare (not safe))
                                           (cons __tmp58779 __tmp58776))))
                                    (declare (not safe))
                                    (cons __tmp58780 __tmp58775)))
                                 (__tmp58719
                                  (let ((__tmp58720
                                         (let ((__tmp58773
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp58721
                                                (let ((__tmp58772
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp58722
                                                       (let ((__tmp58748
                                                              (let ((__tmp58771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp58749
                             (let ((__tmp58765
                                    (let ((__tmp58770
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp58766
                                           (let ((__tmp58767
                                                  (let ((__tmp58769
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp58768
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L56078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58769
                                                          __tmp58768))))
                                             (declare (not safe))
                                             (cons _L56082_ __tmp58767))))
                                      (declare (not safe))
                                      (cons __tmp58770 __tmp58766)))
                                   (__tmp58750
                                    (let ((__tmp58753
                                           (let ((__tmp58764
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp58754
                                                  (let ((__tmp58755
                                                         (let ((__tmp58759
                                                                (let ((__tmp58763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp58760
                               (let ((__tmp58762
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp58761
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp58762 __tmp58761))))
                          (declare (not safe))
                          (cons __tmp58763 __tmp58760)))
                       (__tmp58756
                        (let ((__tmp58757
                               (let ((__tmp58758
                                      (let ()
                                        (declare (not safe))
                                        (cons _L56076_ '()))))
                                 (declare (not safe))
                                 (cons _L56077_ __tmp58758))))
                          (declare (not safe))
                          (cons __tmp58757 '()))))
                   (declare (not safe))
                   (cons __tmp58759 __tmp58756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56082_
                                                          __tmp58755))))
                                             (declare (not safe))
                                             (cons __tmp58764 __tmp58754)))
                                          (__tmp58751
                                           (let ((__tmp58752
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L56073_ '()))))
                                             (declare (not safe))
                                             (cons __tmp58752 '()))))
                                      (declare (not safe))
                                      (cons __tmp58753 __tmp58751))))
                               (declare (not safe))
                               (cons __tmp58765 __tmp58750))))
                        (declare (not safe))
                        (cons __tmp58771 __tmp58749)))
                     (__tmp58723
                      (let ((__tmp58724
                             (let ((__tmp58747 (gx#datum->syntax '#f 'begin))
                                   (__tmp58725
                                    (let ((__tmp58741
                                           (let ((__tmp58746
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp58742
                                                  (let ((__tmp58743
                                                         (let ((__tmp58745
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp58744
                        (let () (declare (not safe)) (cons _L56078_ '()))))
                   (declare (not safe))
                   (cons __tmp58745 __tmp58744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56082_
                                                          __tmp58743))))
                                             (declare (not safe))
                                             (cons __tmp58746 __tmp58742)))
                                          (__tmp58726
                                           (let ((__tmp58729
                                                  (let ((__tmp58740
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp58730
                                                         (let ((__tmp58731
                                                                (let ((__tmp58735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58739 (gx#datum->syntax '#f 'fx+))
                                     (__tmp58736
                                      (let ((__tmp58738
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp58737
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp58738 __tmp58737))))
                                 (declare (not safe))
                                 (cons __tmp58739 __tmp58736)))
                              (__tmp58732
                               (let ((__tmp58733
                                      (let ((__tmp58734
                                             (let ()
                                               (declare (not safe))
                                               (cons _L56076_ '()))))
                                        (declare (not safe))
                                        (cons _L56077_ __tmp58734))))
                                 (declare (not safe))
                                 (cons __tmp58733 '()))))
                          (declare (not safe))
                          (cons __tmp58735 __tmp58732))))
                   (declare (not safe))
                   (cons _L56082_ __tmp58731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58740
                                                          __tmp58730)))
                                                 (__tmp58727
                                                  (let ((__tmp58728
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L56075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58728 '()))))
                                             (declare (not safe))
                                             (cons __tmp58729 __tmp58727))))
                                      (declare (not safe))
                                      (cons __tmp58741 __tmp58726))))
                               (declare (not safe))
                               (cons __tmp58747 __tmp58725))))
                        (declare (not safe))
                        (cons __tmp58724 '()))))
                 (declare (not safe))
                 (cons __tmp58748 __tmp58723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58772
                                                        __tmp58722))))
                                           (declare (not safe))
                                           (cons __tmp58773 __tmp58721))))
                                    (declare (not safe))
                                    (cons __tmp58720 '()))))
                             (declare (not safe))
                             (cons __tmp58774 __tmp58719)))
                          (__tmp58626
                           (let ((__tmp58685
                                  (let ((__tmp58711
                                         (let ((__tmp58717
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp58712
                                                (let ((__tmp58716
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp58713
                                                       (let ((__tmp58714
                                                              (let ((__tmp58715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp58715 '()))))
                 (declare (not safe))
                 (cons __tmp58714 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58716
                                                        __tmp58713))))
                                           (declare (not safe))
                                           (cons __tmp58717 __tmp58712)))
                                        (__tmp58686
                                         (let ((__tmp58687
                                                (let ((__tmp58710
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp58688
                                                       (let ((__tmp58702
                                                              (let ((__tmp58709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp58703
                             (let ((__tmp58708 (gx#datum->syntax '#f 'start))
                                   (__tmp58704
                                    (let ((__tmp58707
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp58705
                                           (let ((__tmp58706
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp58706 '()))))
                                      (declare (not safe))
                                      (cons __tmp58707 __tmp58705))))
                               (declare (not safe))
                               (cons __tmp58708 __tmp58704))))
                        (declare (not safe))
                        (cons __tmp58709 __tmp58703)))
                     (__tmp58689
                      (let ((__tmp58697
                             (let ((__tmp58701 (gx#datum->syntax '#f 'fx+))
                                   (__tmp58698
                                    (let ((__tmp58700
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp58699
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp58700 __tmp58699))))
                               (declare (not safe))
                               (cons __tmp58701 __tmp58698)))
                            (__tmp58690
                             (let ((__tmp58691
                                    (let ((__tmp58696
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp58692
                                           (let ((__tmp58695
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp58693
                                                  (let ((__tmp58694
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58694 '()))))
                                             (declare (not safe))
                                             (cons __tmp58695 __tmp58693))))
                                      (declare (not safe))
                                      (cons __tmp58696 __tmp58692))))
                               (declare (not safe))
                               (cons __tmp58691 '()))))
                        (declare (not safe))
                        (cons __tmp58697 __tmp58690))))
                 (declare (not safe))
                 (cons __tmp58702 __tmp58689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58710
                                                        __tmp58688))))
                                           (declare (not safe))
                                           (cons __tmp58687 '()))))
                                    (declare (not safe))
                                    (cons __tmp58711 __tmp58686)))
                                 (__tmp58627
                                  (let ((__tmp58651
                                         (let ((__tmp58681
                                                (let ((__tmp58682
                                                       (let ((__tmp58683
                                                              (let ((__tmp58684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp58684 '()))))
                 (declare (not safe))
                 (cons _L56078_ __tmp58683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L56079_ __tmp58682)))
                                               (__tmp58652
                                                (let ((__tmp58675
                                                       (let ((__tmp58680
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp58676
                                                              (let ((__tmp58677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58679 (gx#datum->syntax '#f 'probe))
                                   (__tmp58678
                                    (let ()
                                      (declare (not safe))
                                      (cons _L56078_ '()))))
                               (declare (not safe))
                               (cons __tmp58679 __tmp58678))))
                        (declare (not safe))
                        (cons _L56082_ __tmp58677))))
                 (declare (not safe))
                 (cons __tmp58680 __tmp58676)))
              (__tmp58653
               (let ((__tmp58654
                      (let ((__tmp58674 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp58655
                             (let ((__tmp58656
                                    (let ((__tmp58669
                                           (let ((__tmp58673
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58670
                                                  (let ((__tmp58672
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp58671
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp58672
                                                          __tmp58671))))
                                             (declare (not safe))
                                             (cons __tmp58673 __tmp58670)))
                                          (__tmp58657
                                           (let ((__tmp58658
                                                  (let ((__tmp58659
                                                         (let ((__tmp58660
                                                                (let ((__tmp58668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp58661
                               (let ((__tmp58662
                                      (let ((__tmp58663
                                             (let ((__tmp58667
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58664
                                                    (let ((__tmp58666
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp58665
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58666
                                                            __tmp58665))))
                                               (declare (not safe))
                                               (cons __tmp58667 __tmp58664))))
                                        (declare (not safe))
                                        (cons __tmp58663 '()))))
                                 (declare (not safe))
                                 (cons _L56082_ __tmp58662))))
                          (declare (not safe))
                          (cons __tmp58668 __tmp58661))))
                   (declare (not safe))
                   (cons __tmp58660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L56077_
                                                          __tmp58659))))
                                             (declare (not safe))
                                             (cons __tmp58658 '()))))
                                      (declare (not safe))
                                      (cons __tmp58669 __tmp58657))))
                               (declare (not safe))
                               (cons _L56082_ __tmp58656))))
                        (declare (not safe))
                        (cons __tmp58674 __tmp58655))))
                 (declare (not safe))
                 (cons __tmp58654 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58675
                                                        __tmp58653))))
                                           (declare (not safe))
                                           (cons __tmp58681 __tmp58652)))
                                        (__tmp58628
                                         (let ((__tmp58629
                                                (let ((__tmp58650
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp58630
                                                       (let ((__tmp58631
                                                              (let ((__tmp58649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp58632
                             (let ((__tmp58641
                                    (let ((__tmp58648
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp58642
                                           (let ((__tmp58647
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp58643
                                                  (let ((__tmp58646
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp58644
                                                         (let ((__tmp58645
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp58645 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58646
                                                          __tmp58644))))
                                             (declare (not safe))
                                             (cons __tmp58647 __tmp58643))))
                                      (declare (not safe))
                                      (cons __tmp58648 __tmp58642)))
                                   (__tmp58633
                                    (let ((__tmp58636
                                           (let ((__tmp58640
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp58637
                                                  (let ((__tmp58639
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp58638
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp58639
                                                          __tmp58638))))
                                             (declare (not safe))
                                             (cons __tmp58640 __tmp58637)))
                                          (__tmp58634
                                           (let ((__tmp58635
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp58635 '()))))
                                      (declare (not safe))
                                      (cons __tmp58636 __tmp58634))))
                               (declare (not safe))
                               (cons __tmp58641 __tmp58633))))
                        (declare (not safe))
                        (cons __tmp58649 __tmp58632))))
                 (declare (not safe))
                 (cons __tmp58631 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58650
                                                        __tmp58630))))
                                           (declare (not safe))
                                           (cons __tmp58629 '()))))
                                    (declare (not safe))
                                    (cons __tmp58651 __tmp58628))))
                             (declare (not safe))
                             (cons __tmp58685 __tmp58627))))
                      (declare (not safe))
                      (cons __tmp58718 __tmp58626))))
               (declare (not safe))
               (cons __tmp58781 __tmp58625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58624 '()))))
                                         (declare (not safe))
                                         (cons __tmp58782 __tmp58623))))
                                  (declare (not safe))
                                  (cons __tmp58790 __tmp58622))))
                           (declare (not safe))
                           (cons __tmp58621 '()))))
                    (declare (not safe))
                    (cons __tmp58791 __tmp58620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58804
                                                           __tmp58619))))
                                              (declare (not safe))
                                              (cons __tmp58805 __tmp58618))))
                                       (declare (not safe))
                                       (cons __tmp58617 '()))))
                                (declare (not safe))
                                (cons __tmp58806 __tmp58616))))
                         (declare (not safe))
                         (cons __tmp58846 __tmp58615)))
                     _hd5595956067_
                     _hd5595656057_
                     _hd5595356047_
                     _hd5595056037_
                     _hd5594756027_
                     _hd5594456017_
                     _hd5594156007_
                     _hd5593855997_
                     _hd5593555987_)
                    (_g5592055966_ _g5592155970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5592055966_
                                                     _g5592155970_))))
                                            (_g5592055966_ _g5592155970_))))
                                    (_g5592055966_ _g5592155970_))))
                            (_g5592055966_ _g5592155970_))))
                    (_g5592055966_ _g5592155970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5592055966_
                                                     _g5592155970_))))
                                            (_g5592055966_ _g5592155970_))))
                                    (_g5592055966_ _g5592155970_))))
                            (_g5592055966_ _g5592155970_))))
                    (_g5592055966_ _g5592155970_)))))
        (_g5591956119_ _$stx55916_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx56123_)
      (let* ((_g5612756161_
              (lambda (_g5612856157_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5612856157_)))
             (_g5612656272_
              (lambda (_g5612856165_)
                (if (gx#stx-pair? _g5612856165_)
                    (let ((_e5613556168_ (gx#syntax-e _g5612856165_)))
                      (let ((_hd5613656172_
                             (let ()
                               (declare (not safe))
                               (##car _e5613556168_)))
                            (_tl5613756175_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5613556168_))))
                        (if (gx#stx-pair? _tl5613756175_)
                            (let ((_e5613856178_ (gx#syntax-e _tl5613756175_)))
                              (let ((_hd5613956182_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5613856178_)))
                                    (_tl5614056185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5613856178_))))
                                (if (gx#stx-pair? _tl5614056185_)
                                    (let ((_e5614156188_
                                           (gx#syntax-e _tl5614056185_)))
                                      (let ((_hd5614256192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5614156188_)))
                                            (_tl5614356195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5614156188_))))
                                        (if (gx#stx-pair? _tl5614356195_)
                                            (let ((_e5614456198_
                                                   (gx#syntax-e
                                                    _tl5614356195_)))
                                              (let ((_hd5614556202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5614456198_)))
                                                    (_tl5614656205_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5614456198_))))
                                                (if (gx#stx-pair?
                                                     _tl5614656205_)
                                                    (let ((_e5614756208_
                                                           (gx#syntax-e
                                                            _tl5614656205_)))
                                                      (let ((_hd5614856212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5614756208_)))
                    (_tl5614956215_
                     (let () (declare (not safe)) (##cdr _e5614756208_))))
                (if (gx#stx-pair? _tl5614956215_)
                    (let ((_e5615056218_ (gx#syntax-e _tl5614956215_)))
                      (let ((_hd5615156222_
                             (let ()
                               (declare (not safe))
                               (##car _e5615056218_)))
                            (_tl5615256225_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5615056218_))))
                        (if (gx#stx-pair? _tl5615256225_)
                            (let ((_e5615356228_ (gx#syntax-e _tl5615256225_)))
                              (let ((_hd5615456232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5615356228_)))
                                    (_tl5615556235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5615356228_))))
                                (if (gx#stx-null? _tl5615556235_)
                                    ((lambda (_L56238_
                                              _L56240_
                                              _L56241_
                                              _L56242_
                                              _L56243_
                                              _L56244_)
                                       (let ((__tmp59008
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp58847
                                              (let ((__tmp58968
                                                     (let ((__tmp58999
                                                            (let ((__tmp59007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp59000
                           (let ((__tmp59001
                                  (let ((__tmp59006
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp59002
                                         (let ((__tmp59004
                                                (let ((__tmp59005
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L56240_ '()))))
                                                  (declare (not safe))
                                                  (cons _L56242_ __tmp59005)))
                                               (__tmp59003
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L56243_ '()))))
                                           (declare (not safe))
                                           (cons __tmp59004 __tmp59003))))
                                    (declare (not safe))
                                    (cons __tmp59006 __tmp59002))))
                             (declare (not safe))
                             (cons __tmp59001 '()))))
                      (declare (not safe))
                      (cons __tmp59007 __tmp59000)))
                   (__tmp58969
                    (let ((__tmp58993
                           (let ((__tmp58998 (gx#datum->syntax '#f 'size))
                                 (__tmp58994
                                  (let ((__tmp58995
                                         (let ((__tmp58997
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58996
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L56244_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58997 __tmp58996))))
                                    (declare (not safe))
                                    (cons __tmp58995 '()))))
                             (declare (not safe))
                             (cons __tmp58998 __tmp58994)))
                          (__tmp58970
                           (let ((__tmp58985
                                  (let ((__tmp58992
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58986
                                         (let ((__tmp58987
                                                (let ((__tmp58991
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58988
                                                       (let ((__tmp58990
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58989
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58990 __tmp58989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58991
                                                        __tmp58988))))
                                           (declare (not safe))
                                           (cons __tmp58987 '()))))
                                    (declare (not safe))
                                    (cons __tmp58992 __tmp58986)))
                                 (__tmp58971
                                  (let ((__tmp58972
                                         (let ((__tmp58984
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58973
                                                (let ((__tmp58974
                                                       (let ((__tmp58983
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58975
                                                              (let ((__tmp58977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58982
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58978
                                    (let ((__tmp58981
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58979
                                           (let ((__tmp58980
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58980 '()))))
                                      (declare (not safe))
                                      (cons __tmp58981 __tmp58979))))
                               (declare (not safe))
                               (cons __tmp58982 __tmp58978)))
                            (__tmp58976
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58977 __tmp58976))))
                 (declare (not safe))
                 (cons __tmp58983 __tmp58975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58974 '()))))
                                           (declare (not safe))
                                           (cons __tmp58984 __tmp58973))))
                                    (declare (not safe))
                                    (cons __tmp58972 '()))))
                             (declare (not safe))
                             (cons __tmp58985 __tmp58971))))
                      (declare (not safe))
                      (cons __tmp58993 __tmp58970))))
               (declare (not safe))
               (cons __tmp58999 __tmp58969)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58848
                                                     (let ((__tmp58849
                                                            (let ((__tmp58967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp58850
                           (let ((__tmp58966 (gx#datum->syntax '#f 'loop))
                                 (__tmp58851
                                  (let ((__tmp58957
                                         (let ((__tmp58962
                                                (let ((__tmp58965
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58963
                                                       (let ((__tmp58964
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58964
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58965
                                                        __tmp58963)))
                                               (__tmp58958
                                                (let ((__tmp58959
                                                       (let ((__tmp58961
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58960
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58961 __tmp58960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58959 '()))))
                                           (declare (not safe))
                                           (cons __tmp58962 __tmp58958)))
                                        (__tmp58852
                                         (let ((__tmp58853
                                                (let ((__tmp58956
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58854
                                                       (let ((__tmp58948
                                                              (let ((__tmp58955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58949
                             (let ((__tmp58950
                                    (let ((__tmp58954
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58951
                                           (let ((__tmp58952
                                                  (let ((__tmp58953
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58953 '()))))
                                             (declare (not safe))
                                             (cons _L56244_ __tmp58952))))
                                      (declare (not safe))
                                      (cons __tmp58954 __tmp58951))))
                               (declare (not safe))
                               (cons __tmp58950 '()))))
                        (declare (not safe))
                        (cons __tmp58955 __tmp58949)))
                     (__tmp58855
                      (let ((__tmp58856
                             (let ((__tmp58947 (gx#datum->syntax '#f 'cond))
                                   (__tmp58857
                                    (let ((__tmp58936
                                           (let ((__tmp58940
                                                  (let ((__tmp58946
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58941
                                                         (let ((__tmp58945
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58942
                        (let ((__tmp58943
                               (let ((__tmp58944
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58944 '()))))
                          (declare (not safe))
                          (cons __tmp58943 '()))))
                   (declare (not safe))
                   (cons __tmp58945 __tmp58942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58946
                                                          __tmp58941)))
                                                 (__tmp58937
                                                  (let ((__tmp58938
                                                         (let ((__tmp58939
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp58939 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58938 '()))))
                                             (declare (not safe))
                                             (cons __tmp58940 __tmp58937)))
                                          (__tmp58858
                                           (let ((__tmp58910
                                                  (let ((__tmp58929
                                                         (let ((__tmp58935
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58930
                        (let ((__tmp58934 (gx#datum->syntax '#f 'k))
                              (__tmp58931
                               (let ((__tmp58932
                                      (let ((__tmp58933
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58933 '()))))
                                 (declare (not safe))
                                 (cons __tmp58932 '()))))
                          (declare (not safe))
                          (cons __tmp58934 __tmp58931))))
                   (declare (not safe))
                   (cons __tmp58935 __tmp58930)))
                (__tmp58911
                 (let ((__tmp58912
                        (let ((__tmp58928 (gx#datum->syntax '#f 'loop))
                              (__tmp58913
                               (let ((__tmp58920
                                      (let ((__tmp58927
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58921
                                             (let ((__tmp58926
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58922
                                                    (let ((__tmp58925
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58923
                                                           (let ((__tmp58924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58924 '()))))
              (declare (not safe))
              (cons __tmp58925 __tmp58923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58926 __tmp58922))))
                                        (declare (not safe))
                                        (cons __tmp58927 __tmp58921)))
                                     (__tmp58914
                                      (let ((__tmp58915
                                             (let ((__tmp58919
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58916
                                                    (let ((__tmp58918
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58917
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58918
                                                            __tmp58917))))
                                               (declare (not safe))
                                               (cons __tmp58919 __tmp58916))))
                                        (declare (not safe))
                                        (cons __tmp58915 '()))))
                                 (declare (not safe))
                                 (cons __tmp58920 __tmp58914))))
                          (declare (not safe))
                          (cons __tmp58928 __tmp58913))))
                   (declare (not safe))
                   (cons __tmp58912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58929
                                                          __tmp58911)))
                                                 (__tmp58859
                                                  (let ((__tmp58881
                                                         (let ((__tmp58906
                                                                (let ((__tmp58907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58908
                                      (let ((__tmp58909
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58909 '()))))
                                 (declare (not safe))
                                 (cons _L56240_ __tmp58908))))
                          (declare (not safe))
                          (cons _L56241_ __tmp58907)))
                       (__tmp58882
                        (let ((__tmp58898
                               (let ((__tmp58905
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp58899
                                      (let ((__tmp58900
                                             (let ((__tmp58904
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp58901
                                                    (let ((__tmp58902
                                                           (let ((__tmp58903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp58903 '()))))
              (declare (not safe))
              (cons __tmp58902 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58904 __tmp58901))))
                                        (declare (not safe))
                                        (cons _L56244_ __tmp58900))))
                                 (declare (not safe))
                                 (cons __tmp58905 __tmp58899)))
                              (__tmp58883
                               (let ((__tmp58886
                                      (let ((__tmp58897
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp58887
                                             (let ((__tmp58888
                                                    (let ((__tmp58892
                                                           (let ((__tmp58896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58893
                          (let ((__tmp58895 (gx#datum->syntax '#f 'probe))
                                (__tmp58894
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58895 __tmp58894))))
                     (declare (not safe))
                     (cons __tmp58896 __tmp58893)))
                  (__tmp58889
                   (let ((__tmp58890
                          (let ((__tmp58891
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp58891 '()))))
                     (declare (not safe))
                     (cons __tmp58890 '()))))
              (declare (not safe))
              (cons __tmp58892 __tmp58889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L56244_ __tmp58888))))
                                        (declare (not safe))
                                        (cons __tmp58897 __tmp58887)))
                                     (__tmp58884
                                      (let ((__tmp58885
                                             (let ()
                                               (declare (not safe))
                                               (cons _L56238_ '()))))
                                        (declare (not safe))
                                        (cons __tmp58885 '()))))
                                 (declare (not safe))
                                 (cons __tmp58886 __tmp58884))))
                          (declare (not safe))
                          (cons __tmp58898 __tmp58883))))
                   (declare (not safe))
                   (cons __tmp58906 __tmp58882)))
                (__tmp58860
                 (let ((__tmp58861
                        (let ((__tmp58880 (gx#datum->syntax '#f 'else))
                              (__tmp58862
                               (let ((__tmp58863
                                      (let ((__tmp58879
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58864
                                             (let ((__tmp58871
                                                    (let ((__tmp58878
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58872
                                                           (let ((__tmp58877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58873
                          (let ((__tmp58876 (gx#datum->syntax '#f 'i))
                                (__tmp58874
                                 (let ((__tmp58875
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58875 '()))))
                            (declare (not safe))
                            (cons __tmp58876 __tmp58874))))
                     (declare (not safe))
                     (cons __tmp58877 __tmp58873))))
              (declare (not safe))
              (cons __tmp58878 __tmp58872)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58865
                                                    (let ((__tmp58866
                                                           (let ((__tmp58870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58867
                          (let ((__tmp58869 (gx#datum->syntax '#f 'i))
                                (__tmp58868
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58869 __tmp58868))))
                     (declare (not safe))
                     (cons __tmp58870 __tmp58867))))
              (declare (not safe))
              (cons __tmp58866 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58871 __tmp58865))))
                                        (declare (not safe))
                                        (cons __tmp58879 __tmp58864))))
                                 (declare (not safe))
                                 (cons __tmp58863 '()))))
                          (declare (not safe))
                          (cons __tmp58880 __tmp58862))))
                   (declare (not safe))
                   (cons __tmp58861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58881
                                                          __tmp58860))))
                                             (declare (not safe))
                                             (cons __tmp58910 __tmp58859))))
                                      (declare (not safe))
                                      (cons __tmp58936 __tmp58858))))
                               (declare (not safe))
                               (cons __tmp58947 __tmp58857))))
                        (declare (not safe))
                        (cons __tmp58856 '()))))
                 (declare (not safe))
                 (cons __tmp58948 __tmp58855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58956
                                                        __tmp58854))))
                                           (declare (not safe))
                                           (cons __tmp58853 '()))))
                                    (declare (not safe))
                                    (cons __tmp58957 __tmp58852))))
                             (declare (not safe))
                             (cons __tmp58966 __tmp58851))))
                      (declare (not safe))
                      (cons __tmp58967 __tmp58850))))
               (declare (not safe))
               (cons __tmp58849 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58968 __tmp58848))))
                                         (declare (not safe))
                                         (cons __tmp59008 __tmp58847)))
                                     _hd5615456232_
                                     _hd5615156222_
                                     _hd5614856212_
                                     _hd5614556202_
                                     _hd5614256192_
                                     _hd5613956182_)
                                    (_g5612756161_ _g5612856165_))))
                            (_g5612756161_ _g5612856165_))))
                    (_g5612756161_ _g5612856165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5612756161_
                                                     _g5612856165_))))
                                            (_g5612756161_ _g5612856165_))))
                                    (_g5612756161_ _g5612856165_))))
                            (_g5612756161_ _g5612856165_))))
                    (_g5612756161_ _g5612856165_)))))
        (_g5612656272_ _$stx56123_)))))
