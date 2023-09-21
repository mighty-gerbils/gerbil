(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx3651_)
      (let* ((_g36553673_
              (lambda (_g36563669_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36563669_)))
             (_g36543729_
              (lambda (_g36563677_)
                (if (gx#stx-pair? _g36563677_)
                    (let ((_e36613680_ (gx#syntax-e _g36563677_)))
                      (let ((_hd36603684_
                             (let () (declare (not safe)) (##car _e36613680_)))
                            (_tl36593687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e36613680_))))
                        (if (gx#stx-pair? _tl36593687_)
                            (let ((_e36643690_ (gx#syntax-e _tl36593687_)))
                              (let ((_hd36633694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e36643690_)))
                                    (_tl36623697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e36643690_))))
                                (if (gx#stx-pair? _tl36623697_)
                                    (let ((_e36673700_
                                           (gx#syntax-e _tl36623697_)))
                                      (let ((_hd36663704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e36673700_)))
                                            (_tl36653707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e36673700_))))
                                        (if (gx#stx-null? _tl36653707_)
                                            ((lambda (_L3710_ _L3712_)
                                               (let ((__tmp8094
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8046
                                                      (let ((__tmp8085
                                                             (let ((__tmp8086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8093 (gx#datum->syntax '#f 'key))
                                  (__tmp8087
                                   (let ((__tmp8092
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8088
                                          (let ((__tmp8089
                                                 (let ((__tmp8091
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8090
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8091
                                                         __tmp8090))))
                                            (declare (not safe))
                                            (cons __tmp8089 '()))))
                                     (declare (not safe))
                                     (cons __tmp8092 __tmp8088))))
                              (declare (not safe))
                              (cons __tmp8093 __tmp8087))))
                       (declare (not safe))
                       (cons _L3712_ __tmp8086)))
                    (__tmp8047
                     (let ((__tmp8048
                            (let ((__tmp8084 (gx#datum->syntax '#f 'cond))
                                  (__tmp8049
                                   (let ((__tmp8066
                                          (let ((__tmp8071
                                                 (let ((__tmp8083
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8072
                                                        (let ((__tmp8079
                                                               (let ((__tmp8082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8080
                              (let ((__tmp8081 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8081 '()))))
                         (declare (not safe))
                         (cons __tmp8082 __tmp8080)))
                      (__tmp8073
                       (let ((__tmp8074
                              (let ((__tmp8075
                                     (let ((__tmp8078
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8076
                                            (let ((__tmp8077
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8077 '()))))
                                       (declare (not safe))
                                       (cons __tmp8078 __tmp8076))))
                                (declare (not safe))
                                (cons _L3710_ __tmp8075))))
                         (declare (not safe))
                         (cons __tmp8074 '()))))
                  (declare (not safe))
                  (cons __tmp8079 __tmp8073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8083 __tmp8072)))
                                                (__tmp8067
                                                 (let ((__tmp8070
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8068
                                                        (let ((__tmp8069
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8069
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8070
                                                         __tmp8068))))
                                            (declare (not safe))
                                            (cons __tmp8071 __tmp8067)))
                                         (__tmp8050
                                          (let ((__tmp8056
                                                 (let ((__tmp8062
                                                        (let ((__tmp8065
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8063
                                                               (let ((__tmp8064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8064 '()))))
                  (declare (not safe))
                  (cons __tmp8065 __tmp8063)))
               (__tmp8057
                (let ((__tmp8058
                       (let ((__tmp8061 (gx#datum->syntax '#f 'default))
                             (__tmp8059
                              (let ((__tmp8060 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8060 '()))))
                         (declare (not safe))
                         (cons __tmp8061 __tmp8059))))
                  (declare (not safe))
                  (cons __tmp8058 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8062 __tmp8057)))
                                                (__tmp8051
                                                 (let ((__tmp8052
                                                        (let ((__tmp8055
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8053
                                                               (let ((__tmp8054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8054 '()))))
                  (declare (not safe))
                  (cons __tmp8055 __tmp8053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8052 '()))))
                                            (declare (not safe))
                                            (cons __tmp8056 __tmp8051))))
                                     (declare (not safe))
                                     (cons __tmp8066 __tmp8050))))
                              (declare (not safe))
                              (cons __tmp8084 __tmp8049))))
                       (declare (not safe))
                       (cons __tmp8048 '()))))
                (declare (not safe))
                (cons __tmp8085 __tmp8047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8094 __tmp8046)))
                                             _hd36663704_
                                             _hd36633694_)
                                            (_g36553673_ _g36563677_))))
                                    (_g36553673_ _g36563677_))))
                            (_g36553673_ _g36563677_))))
                    (_g36553673_ _g36563677_)))))
        (_g36543729_ _$stx3651_))))
  (define |[:0:]#defpget|
    (lambda (_$stx3733_)
      (let* ((_g37373755_
              (lambda (_g37383751_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37383751_)))
             (_g37363810_
              (lambda (_g37383759_)
                (if (gx#stx-pair? _g37383759_)
                    (let ((_e37433762_ (gx#syntax-e _g37383759_)))
                      (let ((_hd37423766_
                             (let () (declare (not safe)) (##car _e37433762_)))
                            (_tl37413769_
                             (let ()
                               (declare (not safe))
                               (##cdr _e37433762_))))
                        (if (gx#stx-pair? _tl37413769_)
                            (let ((_e37463772_ (gx#syntax-e _tl37413769_)))
                              (let ((_hd37453776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e37463772_)))
                                    (_tl37443779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e37463772_))))
                                (if (gx#stx-pair? _tl37443779_)
                                    (let ((_e37493782_
                                           (gx#syntax-e _tl37443779_)))
                                      (let ((_hd37483786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e37493782_)))
                                            (_tl37473789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e37493782_))))
                                        (if (gx#stx-null? _tl37473789_)
                                            ((lambda (_L3792_ _L3794_)
                                               (let ((__tmp8164
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8095
                                                      (let ((__tmp8155
                                                             (let ((__tmp8156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8163 (gx#datum->syntax '#f 'key))
                                  (__tmp8157
                                   (let ((__tmp8162
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8158
                                          (let ((__tmp8159
                                                 (let ((__tmp8161
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8160
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8161
                                                         __tmp8160))))
                                            (declare (not safe))
                                            (cons __tmp8159 '()))))
                                     (declare (not safe))
                                     (cons __tmp8162 __tmp8158))))
                              (declare (not safe))
                              (cons __tmp8163 __tmp8157))))
                       (declare (not safe))
                       (cons _L3794_ __tmp8156)))
                    (__tmp8096
                     (let ((__tmp8097
                            (let ((__tmp8154 (gx#datum->syntax '#f 'let))
                                  (__tmp8098
                                   (let ((__tmp8153 (gx#datum->syntax '#f 'lp))
                                         (__tmp8099
                                          (let ((__tmp8148
                                                 (let ((__tmp8149
                                                        (let ((__tmp8152
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8150
                                                               (let ((__tmp8151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8151 '()))))
                  (declare (not safe))
                  (cons __tmp8152 __tmp8150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8149 '())))
                                                (__tmp8100
                                                 (let ((__tmp8101
                                                        (let ((__tmp8147
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8102
                                                               (let ((__tmp8146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8103
                              (let ((__tmp8122
                                     (let ((__tmp8139
                                            (let ((__tmp8145
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8140
                                                   (let ((__tmp8144
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8141
                                                          (let ((__tmp8143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8142 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8143 __tmp8142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8144
                                                           __tmp8141))))
                                              (declare (not safe))
                                              (cons __tmp8145 __tmp8140)))
                                           (__tmp8123
                                            (let ((__tmp8124
                                                   (let ((__tmp8138
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8125
                                                          (let ((__tmp8133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8134
                                (let ((__tmp8137 (gx#datum->syntax '#f 'k))
                                      (__tmp8135
                                       (let ((__tmp8136
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8136 '()))))
                                  (declare (not safe))
                                  (cons __tmp8137 __tmp8135))))
                           (declare (not safe))
                           (cons _L3792_ __tmp8134)))
                        (__tmp8126
                         (let ((__tmp8132 (gx#datum->syntax '#f 'v))
                               (__tmp8127
                                (let ((__tmp8128
                                       (let ((__tmp8131
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8129
                                              (let ((__tmp8130
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8130 '()))))
                                         (declare (not safe))
                                         (cons __tmp8131 __tmp8129))))
                                  (declare (not safe))
                                  (cons __tmp8128 '()))))
                           (declare (not safe))
                           (cons __tmp8132 __tmp8127))))
                    (declare (not safe))
                    (cons __tmp8133 __tmp8126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8138
                                                           __tmp8125))))
                                              (declare (not safe))
                                              (cons __tmp8124 '()))))
                                       (declare (not safe))
                                       (cons __tmp8139 __tmp8123)))
                                    (__tmp8104
                                     (let ((__tmp8105
                                            (let ((__tmp8121
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8106
                                                   (let ((__tmp8107
                                                          (let ((__tmp8120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8108
                         (let ((__tmp8116
                                (let ((__tmp8119
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8117
                                       (let ((__tmp8118
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8118 '()))))
                                  (declare (not safe))
                                  (cons __tmp8119 __tmp8117)))
                               (__tmp8109
                                (let ((__tmp8112
                                       (let ((__tmp8115
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8113
                                              (let ((__tmp8114
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8114 '()))))
                                         (declare (not safe))
                                         (cons __tmp8115 __tmp8113)))
                                      (__tmp8110
                                       (let ((__tmp8111
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8111 '()))))
                                  (declare (not safe))
                                  (cons __tmp8112 __tmp8110))))
                           (declare (not safe))
                           (cons __tmp8116 __tmp8109))))
                    (declare (not safe))
                    (cons __tmp8120 __tmp8108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8107 '()))))
                                              (declare (not safe))
                                              (cons __tmp8121 __tmp8106))))
                                       (declare (not safe))
                                       (cons __tmp8105 '()))))
                                (declare (not safe))
                                (cons __tmp8122 __tmp8104))))
                         (declare (not safe))
                         (cons __tmp8146 __tmp8103))))
                  (declare (not safe))
                  (cons __tmp8147 __tmp8102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8101 '()))))
                                            (declare (not safe))
                                            (cons __tmp8148 __tmp8100))))
                                     (declare (not safe))
                                     (cons __tmp8153 __tmp8099))))
                              (declare (not safe))
                              (cons __tmp8154 __tmp8098))))
                       (declare (not safe))
                       (cons __tmp8097 '()))))
                (declare (not safe))
                (cons __tmp8155 __tmp8096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8164 __tmp8095)))
                                             _hd37483786_
                                             _hd37453776_)
                                            (_g37373755_ _g37383759_))))
                                    (_g37373755_ _g37383759_))))
                            (_g37373755_ _g37383759_))))
                    (_g37373755_ _g37383759_)))))
        (_g37363810_ _$stx3733_))))
  (define |[:0:]#defremove1|
    (lambda (_$stx3814_)
      (let* ((_g38183836_
              (lambda (_g38193832_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38193832_)))
             (_g38173891_
              (lambda (_g38193840_)
                (if (gx#stx-pair? _g38193840_)
                    (let ((_e38243843_ (gx#syntax-e _g38193840_)))
                      (let ((_hd38233847_
                             (let () (declare (not safe)) (##car _e38243843_)))
                            (_tl38223850_
                             (let ()
                               (declare (not safe))
                               (##cdr _e38243843_))))
                        (if (gx#stx-pair? _tl38223850_)
                            (let ((_e38273853_ (gx#syntax-e _tl38223850_)))
                              (let ((_hd38263857_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e38273853_)))
                                    (_tl38253860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e38273853_))))
                                (if (gx#stx-pair? _tl38253860_)
                                    (let ((_e38303863_
                                           (gx#syntax-e _tl38253860_)))
                                      (let ((_hd38293867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e38303863_)))
                                            (_tl38283870_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e38303863_))))
                                        (if (gx#stx-null? _tl38283870_)
                                            ((lambda (_L3873_ _L3875_)
                                               (let ((__tmp8235
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8165
                                                      (let ((__tmp8230
                                                             (let ((__tmp8231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8234 (gx#datum->syntax '#f 'el))
                                  (__tmp8232
                                   (let ((__tmp8233
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp8233 '()))))
                              (declare (not safe))
                              (cons __tmp8234 __tmp8232))))
                       (declare (not safe))
                       (cons _L3875_ __tmp8231)))
                    (__tmp8166
                     (let ((__tmp8167
                            (let ((__tmp8229 (gx#datum->syntax '#f 'let))
                                  (__tmp8168
                                   (let ((__tmp8228 (gx#datum->syntax '#f 'lp))
                                         (__tmp8169
                                          (let ((__tmp8217
                                                 (let ((__tmp8224
                                                        (let ((__tmp8227
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8225
                                                               (let ((__tmp8226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8226 '()))))
                  (declare (not safe))
                  (cons __tmp8227 __tmp8225)))
               (__tmp8218
                (let ((__tmp8219
                       (let ((__tmp8223 (gx#datum->syntax '#f 'r))
                             (__tmp8220
                              (let ((__tmp8221
                                     (let ((__tmp8222
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp8222 '()))))
                                (declare (not safe))
                                (cons __tmp8221 '()))))
                         (declare (not safe))
                         (cons __tmp8223 __tmp8220))))
                  (declare (not safe))
                  (cons __tmp8219 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8224 __tmp8218)))
                                                (__tmp8170
                                                 (let ((__tmp8171
                                                        (let ((__tmp8216
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8172
                                                               (let ((__tmp8215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8173
                              (let ((__tmp8179
                                     (let ((__tmp8210
                                            (let ((__tmp8214
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8211
                                                   (let ((__tmp8213
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp8212
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp8213
                                                           __tmp8212))))
                                              (declare (not safe))
                                              (cons __tmp8214 __tmp8211)))
                                           (__tmp8180
                                            (let ((__tmp8181
                                                   (let ((__tmp8209
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8182
                                                          (let ((__tmp8204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8205
                                (let ((__tmp8208 (gx#datum->syntax '#f 'el))
                                      (__tmp8206
                                       (let ((__tmp8207
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp8207 '()))))
                                  (declare (not safe))
                                  (cons __tmp8208 __tmp8206))))
                           (declare (not safe))
                           (cons _L3873_ __tmp8205)))
                        (__tmp8183
                         (let ((__tmp8196
                                (let ((__tmp8203
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp8197
                                       (let ((__tmp8202
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp8198
                                              (let ((__tmp8201
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8199
                                                     (let ((__tmp8200
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp8200 '()))))
                                                (declare (not safe))
                                                (cons __tmp8201 __tmp8199))))
                                         (declare (not safe))
                                         (cons __tmp8202 __tmp8198))))
                                  (declare (not safe))
                                  (cons __tmp8203 __tmp8197)))
                               (__tmp8184
                                (let ((__tmp8185
                                       (let ((__tmp8195
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8186
                                              (let ((__tmp8194
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8187
                                                     (let ((__tmp8188
                                                            (let ((__tmp8193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp8189
                           (let ((__tmp8192 (gx#datum->syntax '#f 'hd))
                                 (__tmp8190
                                  (let ((__tmp8191 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp8191 '()))))
                             (declare (not safe))
                             (cons __tmp8192 __tmp8190))))
                      (declare (not safe))
                      (cons __tmp8193 __tmp8189))))
               (declare (not safe))
               (cons __tmp8188 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8194 __tmp8187))))
                                         (declare (not safe))
                                         (cons __tmp8195 __tmp8186))))
                                  (declare (not safe))
                                  (cons __tmp8185 '()))))
                           (declare (not safe))
                           (cons __tmp8196 __tmp8184))))
                    (declare (not safe))
                    (cons __tmp8204 __tmp8183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8209
                                                           __tmp8182))))
                                              (declare (not safe))
                                              (cons __tmp8181 '()))))
                                       (declare (not safe))
                                       (cons __tmp8210 __tmp8180)))
                                    (__tmp8174
                                     (let ((__tmp8175
                                            (let ((__tmp8178
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8176
                                                   (let ((__tmp8177
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp8177 '()))))
                                              (declare (not safe))
                                              (cons __tmp8178 __tmp8176))))
                                       (declare (not safe))
                                       (cons __tmp8175 '()))))
                                (declare (not safe))
                                (cons __tmp8179 __tmp8174))))
                         (declare (not safe))
                         (cons __tmp8215 __tmp8173))))
                  (declare (not safe))
                  (cons __tmp8216 __tmp8172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8171 '()))))
                                            (declare (not safe))
                                            (cons __tmp8217 __tmp8170))))
                                     (declare (not safe))
                                     (cons __tmp8228 __tmp8169))))
                              (declare (not safe))
                              (cons __tmp8229 __tmp8168))))
                       (declare (not safe))
                       (cons __tmp8167 '()))))
                (declare (not safe))
                (cons __tmp8230 __tmp8166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8235 __tmp8165)))
                                             _hd38293867_
                                             _hd38263857_)
                                            (_g38183836_ _g38193840_))))
                                    (_g38183836_ _g38193840_))))
                            (_g38183836_ _g38193840_))))
                    (_g38183836_ _g38193840_)))))
        (_g38173891_ _$stx3814_)))))
