(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57455_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57456_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53043_)
        (let* ((_g5304753061_
                (lambda (_g5304853057_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5304853057_)))
               (_g5304653103_
                (lambda (_g5304853065_)
                  (if (gx#stx-pair? _g5304853065_)
                      (let ((_e5305253068_ (gx#syntax-e _g5304853065_)))
                        (let ((_hd5305153072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5305253068_)))
                              (_tl5305053075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5305253068_))))
                          (if (gx#stx-pair? _tl5305053075_)
                              (let ((_e5305553078_
                                     (gx#syntax-e _tl5305053075_)))
                                (let ((_hd5305453082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5305553078_)))
                                      (_tl5305353085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5305553078_))))
                                  (if (gx#stx-null? _tl5305353085_)
                                      ((lambda (_L53088_)
                                         (let ((__tmp57160
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57125
                                                (let ((__tmp57126
                                                       (let ((__tmp57153
                                                              (let ((__tmp57159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57154
                             (let ((__tmp57155
                                    (let ((__tmp57158
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57156
                                           (let ((__tmp57157
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57157 '()))))
                                      (declare (not safe))
                                      (cons __tmp57158 __tmp57156))))
                               (declare (not safe))
                               (cons __tmp57155 '()))))
                        (declare (not safe))
                        (cons __tmp57159 __tmp57154)))
                     (__tmp57127
                      (let ((__tmp57128
                             (let ((__tmp57152 (gx#datum->syntax '#f 'let))
                                   (__tmp57129
                                    (let ((__tmp57151
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57130
                                           (let ((__tmp57131
                                                  (let ((__tmp57132
                                                         (let ((__tmp57150
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57133
                        (let ((__tmp57140
                               (let ((__tmp57149 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57141
                                      (let ((__tmp57143
                                             (let ((__tmp57148
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57144
                                                    (let ((__tmp57145
                                                           (let ((__tmp57146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57147
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57147))))
                     (declare (not safe))
                     (cons '0 __tmp57146))))
              (declare (not safe))
              (cons _L53088_ __tmp57145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57148 __tmp57144)))
                                            (__tmp57142
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57143 __tmp57142))))
                                 (declare (not safe))
                                 (cons __tmp57149 __tmp57141)))
                              (__tmp57134
                               (let ((__tmp57138
                                      (let ((__tmp57139
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57139 '())))
                                     (__tmp57135
                                      (let ((__tmp57136
                                             (let ((__tmp57137
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57137 '()))))
                                        (declare (not safe))
                                        (cons __tmp57136 '()))))
                                 (declare (not safe))
                                 (cons __tmp57138 __tmp57135))))
                          (declare (not safe))
                          (cons __tmp57140 __tmp57134))))
                   (declare (not safe))
                   (cons __tmp57150 __tmp57133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57132 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57131))))
                                      (declare (not safe))
                                      (cons __tmp57151 __tmp57130))))
                               (declare (not safe))
                               (cons __tmp57152 __tmp57129))))
                        (declare (not safe))
                        (cons __tmp57128 '()))))
                 (declare (not safe))
                 (cons __tmp57153 __tmp57127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57126))))
                                           (declare (not safe))
                                           (cons __tmp57160 __tmp57125)))
                                       _hd5305453082_)
                                      (_g5304753061_ _g5304853065_))))
                              (_g5304753061_ _g5304853065_))))
                      (_g5304753061_ _g5304853065_)))))
          (_g5304653103_ _$stx53043_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53107_)
        (let* ((_g5311153125_
                (lambda (_g5311253121_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5311253121_)))
               (_g5311053166_
                (lambda (_g5311253129_)
                  (if (gx#stx-pair? _g5311253129_)
                      (let ((_e5311653132_ (gx#syntax-e _g5311253129_)))
                        (let ((_hd5311553136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5311653132_)))
                              (_tl5311453139_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5311653132_))))
                          (if (gx#stx-pair? _tl5311453139_)
                              (let ((_e5311953142_
                                     (gx#syntax-e _tl5311453139_)))
                                (let ((_hd5311853146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5311953142_)))
                                      (_tl5311753149_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5311953142_))))
                                  (if (gx#stx-null? _tl5311753149_)
                                      ((lambda (_L53152_)
                                         (let ((__tmp57165
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57161
                                                (let ((__tmp57162
                                                       (let ((__tmp57163
                                                              (let ((__tmp57164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57164))))
                 (declare (not safe))
                 (cons '0 __tmp57163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53152_ __tmp57162))))
                                           (declare (not safe))
                                           (cons __tmp57165 __tmp57161)))
                                       _hd5311853146_)
                                      (_g5311153125_ _g5311253129_))))
                              (_g5311153125_ _g5311253129_))))
                      (_g5311153125_ _g5311253129_)))))
          (_g5311053166_ _$stx53107_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx53170_)
        (let* ((_g5317453184_
                (lambda (_g5317553180_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5317553180_)))
               (_g5317353205_
                (lambda (_g5317553188_)
                  (if (gx#stx-pair? _g5317553188_)
                      (let ((_e5317853191_ (gx#syntax-e _g5317553188_)))
                        (let ((_hd5317753195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5317853191_)))
                              (_tl5317653198_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5317853191_))))
                          (if (gx#stx-null? _tl5317653198_)
                              ((lambda ()
                                 (let ((__tmp57167
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp57166
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp57167 __tmp57166))))
                              (_g5317453184_ _g5317553188_))))
                      (_g5317453184_ _g5317553188_)))))
          (_g5317353205_ _$stx53170_))))
    (define |[:0:]#defassget|
      (lambda (_$stx53209_)
        (let* ((_g5321353231_
                (lambda (_g5321453227_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5321453227_)))
               (_g5321253286_
                (lambda (_g5321453235_)
                  (if (gx#stx-pair? _g5321453235_)
                      (let ((_e5321953238_ (gx#syntax-e _g5321453235_)))
                        (let ((_hd5321853242_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5321953238_)))
                              (_tl5321753245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5321953238_))))
                          (if (gx#stx-pair? _tl5321753245_)
                              (let ((_e5322253248_
                                     (gx#syntax-e _tl5321753245_)))
                                (let ((_hd5322153252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5322253248_)))
                                      (_tl5322053255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5322253248_))))
                                  (if (gx#stx-pair? _tl5322053255_)
                                      (let ((_e5322553258_
                                             (gx#syntax-e _tl5322053255_)))
                                        (let ((_hd5322453262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5322553258_)))
                                              (_tl5322353265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5322553258_))))
                                          (if (gx#stx-null? _tl5322353265_)
                                              ((lambda (_L53268_ _L53270_)
                                                 (let ((__tmp57216
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57168
                                                        (let ((__tmp57207
                                                               (let ((__tmp57208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57215 (gx#datum->syntax '#f 'key))
                                    (__tmp57209
                                     (let ((__tmp57214
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57210
                                            (let ((__tmp57211
                                                   (let ((__tmp57213
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57213
                                                           __tmp57212))))
                                              (declare (not safe))
                                              (cons __tmp57211 '()))))
                                       (declare (not safe))
                                       (cons __tmp57214 __tmp57210))))
                                (declare (not safe))
                                (cons __tmp57215 __tmp57209))))
                         (declare (not safe))
                         (cons _L53270_ __tmp57208)))
                      (__tmp57169
                       (let ((__tmp57170
                              (let ((__tmp57206 (gx#datum->syntax '#f 'cond))
                                    (__tmp57171
                                     (let ((__tmp57188
                                            (let ((__tmp57193
                                                   (let ((__tmp57205
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57194
                                                          (let ((__tmp57201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57204 (gx#datum->syntax '#f 'pair?))
                               (__tmp57202
                                (let ((__tmp57203 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57203 '()))))
                           (declare (not safe))
                           (cons __tmp57204 __tmp57202)))
                        (__tmp57195
                         (let ((__tmp57196
                                (let ((__tmp57197
                                       (let ((__tmp57200
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57198
                                              (let ((__tmp57199
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57199 '()))))
                                         (declare (not safe))
                                         (cons __tmp57200 __tmp57198))))
                                  (declare (not safe))
                                  (cons _L53268_ __tmp57197))))
                           (declare (not safe))
                           (cons __tmp57196 '()))))
                    (declare (not safe))
                    (cons __tmp57201 __tmp57195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57205
                                                           __tmp57194)))
                                                  (__tmp57189
                                                   (let ((__tmp57192
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57190
                                                          (let ((__tmp57191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57192
                                                           __tmp57190))))
                                              (declare (not safe))
                                              (cons __tmp57193 __tmp57189)))
                                           (__tmp57172
                                            (let ((__tmp57178
                                                   (let ((__tmp57184
                                                          (let ((__tmp57187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57185
                         (let ((__tmp57186 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57186 '()))))
                    (declare (not safe))
                    (cons __tmp57187 __tmp57185)))
                 (__tmp57179
                  (let ((__tmp57180
                         (let ((__tmp57183 (gx#datum->syntax '#f 'default))
                               (__tmp57181
                                (let ((__tmp57182 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57182 '()))))
                           (declare (not safe))
                           (cons __tmp57183 __tmp57181))))
                    (declare (not safe))
                    (cons __tmp57180 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57184
                                                           __tmp57179)))
                                                  (__tmp57173
                                                   (let ((__tmp57174
                                                          (let ((__tmp57177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57175
                         (let ((__tmp57176 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57176 '()))))
                    (declare (not safe))
                    (cons __tmp57177 __tmp57175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57174 '()))))
                                              (declare (not safe))
                                              (cons __tmp57178 __tmp57173))))
                                       (declare (not safe))
                                       (cons __tmp57188 __tmp57172))))
                                (declare (not safe))
                                (cons __tmp57206 __tmp57171))))
                         (declare (not safe))
                         (cons __tmp57170 '()))))
                  (declare (not safe))
                  (cons __tmp57207 __tmp57169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57216
                                                         __tmp57168)))
                                               _hd5322453262_
                                               _hd5322153252_)
                                              (_g5321353231_ _g5321453235_))))
                                      (_g5321353231_ _g5321453235_))))
                              (_g5321353231_ _g5321453235_))))
                      (_g5321353231_ _g5321453235_)))))
          (_g5321253286_ _$stx53209_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53290_)
        (let* ((_g5329453312_
                (lambda (_g5329553308_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5329553308_)))
               (_g5329353367_
                (lambda (_g5329553316_)
                  (if (gx#stx-pair? _g5329553316_)
                      (let ((_e5330053319_ (gx#syntax-e _g5329553316_)))
                        (let ((_hd5329953323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5330053319_)))
                              (_tl5329853326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5330053319_))))
                          (if (gx#stx-pair? _tl5329853326_)
                              (let ((_e5330353329_
                                     (gx#syntax-e _tl5329853326_)))
                                (let ((_hd5330253333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5330353329_)))
                                      (_tl5330153336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5330353329_))))
                                  (if (gx#stx-pair? _tl5330153336_)
                                      (let ((_e5330653339_
                                             (gx#syntax-e _tl5330153336_)))
                                        (let ((_hd5330553343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5330653339_)))
                                              (_tl5330453346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5330653339_))))
                                          (if (gx#stx-null? _tl5330453346_)
                                              ((lambda (_L53349_ _L53351_)
                                                 (let ((__tmp57286
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57217
                                                        (let ((__tmp57277
                                                               (let ((__tmp57278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57285 (gx#datum->syntax '#f 'key))
                                    (__tmp57279
                                     (let ((__tmp57284
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57280
                                            (let ((__tmp57281
                                                   (let ((__tmp57283
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57282
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57283
                                                           __tmp57282))))
                                              (declare (not safe))
                                              (cons __tmp57281 '()))))
                                       (declare (not safe))
                                       (cons __tmp57284 __tmp57280))))
                                (declare (not safe))
                                (cons __tmp57285 __tmp57279))))
                         (declare (not safe))
                         (cons _L53351_ __tmp57278)))
                      (__tmp57218
                       (let ((__tmp57219
                              (let ((__tmp57276 (gx#datum->syntax '#f 'let))
                                    (__tmp57220
                                     (let ((__tmp57275
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57221
                                            (let ((__tmp57270
                                                   (let ((__tmp57271
                                                          (let ((__tmp57274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57272
                         (let ((__tmp57273 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57273 '()))))
                    (declare (not safe))
                    (cons __tmp57274 __tmp57272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57271 '())))
                                                  (__tmp57222
                                                   (let ((__tmp57223
                                                          (let ((__tmp57269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57224
                         (let ((__tmp57268 (gx#datum->syntax '#f 'rest))
                               (__tmp57225
                                (let ((__tmp57244
                                       (let ((__tmp57261
                                              (let ((__tmp57267
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57262
                                                     (let ((__tmp57266
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57263
                                                            (let ((__tmp57265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57264 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57265 __tmp57264))))
               (declare (not safe))
               (cons __tmp57266 __tmp57263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57267 __tmp57262)))
                                             (__tmp57245
                                              (let ((__tmp57246
                                                     (let ((__tmp57260
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57247
                                                            (let ((__tmp57255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57256
                                  (let ((__tmp57259 (gx#datum->syntax '#f 'k))
                                        (__tmp57257
                                         (let ((__tmp57258
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57258 '()))))
                                    (declare (not safe))
                                    (cons __tmp57259 __tmp57257))))
                             (declare (not safe))
                             (cons _L53349_ __tmp57256)))
                          (__tmp57248
                           (let ((__tmp57254 (gx#datum->syntax '#f 'v))
                                 (__tmp57249
                                  (let ((__tmp57250
                                         (let ((__tmp57253
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57251
                                                (let ((__tmp57252
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57252 '()))))
                                           (declare (not safe))
                                           (cons __tmp57253 __tmp57251))))
                                    (declare (not safe))
                                    (cons __tmp57250 '()))))
                             (declare (not safe))
                             (cons __tmp57254 __tmp57249))))
                      (declare (not safe))
                      (cons __tmp57255 __tmp57248))))
               (declare (not safe))
               (cons __tmp57260 __tmp57247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57246 '()))))
                                         (declare (not safe))
                                         (cons __tmp57261 __tmp57245)))
                                      (__tmp57226
                                       (let ((__tmp57227
                                              (let ((__tmp57243
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57228
                                                     (let ((__tmp57229
                                                            (let ((__tmp57242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57230
                           (let ((__tmp57238
                                  (let ((__tmp57241
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57239
                                         (let ((__tmp57240
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57240 '()))))
                                    (declare (not safe))
                                    (cons __tmp57241 __tmp57239)))
                                 (__tmp57231
                                  (let ((__tmp57234
                                         (let ((__tmp57237
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57235
                                                (let ((__tmp57236
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57236 '()))))
                                           (declare (not safe))
                                           (cons __tmp57237 __tmp57235)))
                                        (__tmp57232
                                         (let ((__tmp57233
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57233 '()))))
                                    (declare (not safe))
                                    (cons __tmp57234 __tmp57232))))
                             (declare (not safe))
                             (cons __tmp57238 __tmp57231))))
                      (declare (not safe))
                      (cons __tmp57242 __tmp57230))))
               (declare (not safe))
               (cons __tmp57229 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57243 __tmp57228))))
                                         (declare (not safe))
                                         (cons __tmp57227 '()))))
                                  (declare (not safe))
                                  (cons __tmp57244 __tmp57226))))
                           (declare (not safe))
                           (cons __tmp57268 __tmp57225))))
                    (declare (not safe))
                    (cons __tmp57269 __tmp57224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57223 '()))))
                                              (declare (not safe))
                                              (cons __tmp57270 __tmp57222))))
                                       (declare (not safe))
                                       (cons __tmp57275 __tmp57221))))
                                (declare (not safe))
                                (cons __tmp57276 __tmp57220))))
                         (declare (not safe))
                         (cons __tmp57219 '()))))
                  (declare (not safe))
                  (cons __tmp57277 __tmp57218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57286
                                                         __tmp57217)))
                                               _hd5330553343_
                                               _hd5330253333_)
                                              (_g5329453312_ _g5329553316_))))
                                      (_g5329453312_ _g5329553316_))))
                              (_g5329453312_ _g5329553316_))))
                      (_g5329453312_ _g5329553316_)))))
          (_g5329353367_ _$stx53290_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53371_)
        (let* ((_g5337553393_
                (lambda (_g5337653389_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5337653389_)))
               (_g5337453448_
                (lambda (_g5337653397_)
                  (if (gx#stx-pair? _g5337653397_)
                      (let ((_e5338153400_ (gx#syntax-e _g5337653397_)))
                        (let ((_hd5338053404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5338153400_)))
                              (_tl5337953407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5338153400_))))
                          (if (gx#stx-pair? _tl5337953407_)
                              (let ((_e5338453410_
                                     (gx#syntax-e _tl5337953407_)))
                                (let ((_hd5338353414_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5338453410_)))
                                      (_tl5338253417_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5338453410_))))
                                  (if (gx#stx-pair? _tl5338253417_)
                                      (let ((_e5338753420_
                                             (gx#syntax-e _tl5338253417_)))
                                        (let ((_hd5338653424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5338753420_)))
                                              (_tl5338553427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5338753420_))))
                                          (if (gx#stx-null? _tl5338553427_)
                                              ((lambda (_L53430_ _L53432_)
                                                 (let ((__tmp57357
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57287
                                                        (let ((__tmp57352
                                                               (let ((__tmp57353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57356 (gx#datum->syntax '#f 'el))
                                    (__tmp57354
                                     (let ((__tmp57355
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57355 '()))))
                                (declare (not safe))
                                (cons __tmp57356 __tmp57354))))
                         (declare (not safe))
                         (cons _L53432_ __tmp57353)))
                      (__tmp57288
                       (let ((__tmp57289
                              (let ((__tmp57351 (gx#datum->syntax '#f 'let))
                                    (__tmp57290
                                     (let ((__tmp57350
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57291
                                            (let ((__tmp57339
                                                   (let ((__tmp57346
                                                          (let ((__tmp57349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57347
                         (let ((__tmp57348 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57348 '()))))
                    (declare (not safe))
                    (cons __tmp57349 __tmp57347)))
                 (__tmp57340
                  (let ((__tmp57341
                         (let ((__tmp57345 (gx#datum->syntax '#f 'r))
                               (__tmp57342
                                (let ((__tmp57343
                                       (let ((__tmp57344
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57344 '()))))
                                  (declare (not safe))
                                  (cons __tmp57343 '()))))
                           (declare (not safe))
                           (cons __tmp57345 __tmp57342))))
                    (declare (not safe))
                    (cons __tmp57341 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57346
                                                           __tmp57340)))
                                                  (__tmp57292
                                                   (let ((__tmp57293
                                                          (let ((__tmp57338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57294
                         (let ((__tmp57337 (gx#datum->syntax '#f 'rest))
                               (__tmp57295
                                (let ((__tmp57301
                                       (let ((__tmp57332
                                              (let ((__tmp57336
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57333
                                                     (let ((__tmp57335
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57334
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57335
                                                             __tmp57334))))
                                                (declare (not safe))
                                                (cons __tmp57336 __tmp57333)))
                                             (__tmp57302
                                              (let ((__tmp57303
                                                     (let ((__tmp57331
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57304
                                                            (let ((__tmp57326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57327
                                  (let ((__tmp57330 (gx#datum->syntax '#f 'el))
                                        (__tmp57328
                                         (let ((__tmp57329
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57329 '()))))
                                    (declare (not safe))
                                    (cons __tmp57330 __tmp57328))))
                             (declare (not safe))
                             (cons _L53430_ __tmp57327)))
                          (__tmp57305
                           (let ((__tmp57318
                                  (let ((__tmp57325
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57319
                                         (let ((__tmp57324
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57320
                                                (let ((__tmp57323
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57321
                                                       (let ((__tmp57322
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57322
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57323
                                                        __tmp57321))))
                                           (declare (not safe))
                                           (cons __tmp57324 __tmp57320))))
                                    (declare (not safe))
                                    (cons __tmp57325 __tmp57319)))
                                 (__tmp57306
                                  (let ((__tmp57307
                                         (let ((__tmp57317
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57308
                                                (let ((__tmp57316
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57309
                                                       (let ((__tmp57310
                                                              (let ((__tmp57315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57311
                             (let ((__tmp57314 (gx#datum->syntax '#f 'hd))
                                   (__tmp57312
                                    (let ((__tmp57313
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57313 '()))))
                               (declare (not safe))
                               (cons __tmp57314 __tmp57312))))
                        (declare (not safe))
                        (cons __tmp57315 __tmp57311))))
                 (declare (not safe))
                 (cons __tmp57310 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57316
                                                        __tmp57309))))
                                           (declare (not safe))
                                           (cons __tmp57317 __tmp57308))))
                                    (declare (not safe))
                                    (cons __tmp57307 '()))))
                             (declare (not safe))
                             (cons __tmp57318 __tmp57306))))
                      (declare (not safe))
                      (cons __tmp57326 __tmp57305))))
               (declare (not safe))
               (cons __tmp57331 __tmp57304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57303 '()))))
                                         (declare (not safe))
                                         (cons __tmp57332 __tmp57302)))
                                      (__tmp57296
                                       (let ((__tmp57297
                                              (let ((__tmp57300
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57298
                                                     (let ((__tmp57299
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57299 '()))))
                                                (declare (not safe))
                                                (cons __tmp57300 __tmp57298))))
                                         (declare (not safe))
                                         (cons __tmp57297 '()))))
                                  (declare (not safe))
                                  (cons __tmp57301 __tmp57296))))
                           (declare (not safe))
                           (cons __tmp57337 __tmp57295))))
                    (declare (not safe))
                    (cons __tmp57338 __tmp57294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57293 '()))))
                                              (declare (not safe))
                                              (cons __tmp57339 __tmp57292))))
                                       (declare (not safe))
                                       (cons __tmp57350 __tmp57291))))
                                (declare (not safe))
                                (cons __tmp57351 __tmp57290))))
                         (declare (not safe))
                         (cons __tmp57289 '()))))
                  (declare (not safe))
                  (cons __tmp57352 __tmp57288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57357
                                                         __tmp57287)))
                                               _hd5338653424_
                                               _hd5338353414_)
                                              (_g5337553393_ _g5337653397_))))
                                      (_g5337553393_ _g5337653397_))))
                              (_g5337553393_ _g5337653397_))))
                      (_g5337553393_ _g5337653397_)))))
          (_g5337453448_ _$stx53371_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53452_)
        (let* ((_g5345653467_
                (lambda (_g5345753463_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5345753463_)))
               (_g5345553496_
                (lambda (_g5345753471_)
                  (if (gx#stx-pair? _g5345753471_)
                      (let ((_e5346153474_ (gx#syntax-e _g5345753471_)))
                        (let ((_hd5346053478_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5346153474_)))
                              (_tl5345953481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5346153474_))))
                          ((lambda (_L53484_)
                             (let ((__tmp57359 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57358
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53484_))))
                               (declare (not safe))
                               (cons __tmp57359 __tmp57358)))
                           _tl5345953481_)))
                      (_g5345653467_ _g5345753471_)))))
          (_g5345553496_ _$stx53452_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx53500_)
        (let* ((___stx5665656657_ _$stx53500_)
               (_g5351153725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5665656657_))))
          (let ((___kont5665956660_
                 (lambda (_L54578_ _L54580_ _L54581_ _L54582_ _L54583_)
                   (let ((__tmp57360
                          (let ((__tmp57361
                                 (let ((__tmp57362
                                        (let ((__tmp57366
                                               (let ((__tmp57367
                                                      (lambda (_g5461354616_
                                                               _g5461454619_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5461354616_
                                                                _g5461454619_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57367
                                                         '()
                                                         _L54581_)))
                                              (__tmp57363
                                               (let ((__tmp57364
                                                      (let ((__tmp57365
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54578_ '()))))
                (declare (not safe))
                (cons _L54580_ __tmp57365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54582_ __tmp57364))))
                                          (declare (not safe))
                                          (cons __tmp57366 __tmp57363))))
                                   (declare (not safe))
                                   (cons '() __tmp57362))))
                            (declare (not safe))
                            (cons '2 __tmp57361))))
                     (declare (not safe))
                     (cons _L54583_ __tmp57360))))
                (___kont5666356664_
                 (lambda (_L54431_ _L54433_ _L54434_ _L54435_)
                   (let ((__tmp57368
                          (let ((__tmp57369
                                 (let ((__tmp57370
                                        (let ((__tmp57374
                                               (let ((__tmp57375
                                                      (lambda (_g5445854461_
                                                               _g5445954464_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5445854461_
                                                                _g5445954464_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57375
                                                         '()
                                                         _L54433_)))
                                              (__tmp57371
                                               (let ((__tmp57372
                                                      (let ((__tmp57373
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54431_ '()))))
                (declare (not safe))
                (cons _L54431_ __tmp57373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54434_ __tmp57372))))
                                          (declare (not safe))
                                          (cons __tmp57374 __tmp57371))))
                                   (declare (not safe))
                                   (cons '() __tmp57370))))
                            (declare (not safe))
                            (cons '2 __tmp57369))))
                     (declare (not safe))
                     (cons _L54435_ __tmp57368))))
                (___kont5666756668_
                 (lambda (_L54334_)
                   (let ((__tmp57387 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57376
                          (let ((__tmp57377
                                 (let ((__tmp57384
                                        (let ((__tmp57386
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57385
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57386 __tmp57385)))
                                       (__tmp57378
                                        (let ((__tmp57381
                                               (let ((__tmp57383
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57382
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57383 __tmp57382)))
                                              (__tmp57379
                                               (let ((__tmp57380
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57380))))
                                          (declare (not safe))
                                          (cons __tmp57381 __tmp57379))))
                                   (declare (not safe))
                                   (cons __tmp57384 __tmp57378))))
                            (declare (not safe))
                            (cons _L54334_ __tmp57377))))
                     (declare (not safe))
                     (cons __tmp57387 __tmp57376))))
                (___kont5666956670_
                 (lambda (_L54257_
                          _L54259_
                          _L54260_
                          _L54261_
                          _L54262_
                          _L54263_)
                   (let ((__tmp57388
                          (let ((__tmp57389
                                 (let ((__tmp57391
                                        (let ((__tmp57392
                                               (let ((__tmp57393
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54260_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54261_ __tmp57393))))
                                          (declare (not safe))
                                          (cons __tmp57392 _L54262_)))
                                       (__tmp57390
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54259_ _L54257_))))
                                   (declare (not safe))
                                   (cons __tmp57391 __tmp57390))))
                            (declare (not safe))
                            (cons '2 __tmp57389))))
                     (declare (not safe))
                     (cons _L54263_ __tmp57388))))
                (___kont5667156672_
                 (lambda (_L54138_ _L54140_ _L54141_ _L54142_ _L54143_)
                   (let ((__tmp57394
                          (let ((__tmp57395
                                 (let ((__tmp57397
                                        (let ((__tmp57398
                                               (let ((__tmp57399
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54141_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54141_ __tmp57399))))
                                          (declare (not safe))
                                          (cons __tmp57398 _L54142_)))
                                       (__tmp57396
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54140_ _L54138_))))
                                   (declare (not safe))
                                   (cons __tmp57397 __tmp57396))))
                            (declare (not safe))
                            (cons '2 __tmp57395))))
                     (declare (not safe))
                     (cons _L54143_ __tmp57394))))
                (___kont5667356674_
                 (lambda (_L54055_ _L54057_ _L54058_)
                   (let ((__tmp57400
                          (let ((__tmp57401
                                 (let ((__tmp57402
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54057_ _L54055_))))
                                   (declare (not safe))
                                   (cons '() __tmp57402))))
                            (declare (not safe))
                            (cons '3 __tmp57401))))
                     (declare (not safe))
                     (cons _L54058_ __tmp57400))))
                (___kont5667556676_
                 (lambda (_L53976_ _L53978_ _L53979_ _L53980_ _L53981_)
                   (let ((__tmp57403
                          (let ((__tmp57404
                                 (let ((__tmp57406
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53979_ _L53980_)))
                                       (__tmp57405
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53978_ _L53976_))))
                                   (declare (not safe))
                                   (cons __tmp57406 __tmp57405))))
                            (declare (not safe))
                            (cons '3 __tmp57404))))
                     (declare (not safe))
                     (cons _L53981_ __tmp57403))))
                (___kont5667756678_
                 (lambda (_L53860_
                          _L53862_
                          _L53863_
                          _L53864_
                          _L53865_
                          _L53866_)
                   (let ((__tmp57454 (gx#datum->syntax '#f 'let))
                         (__tmp57407
                          (let ((__tmp57442
                                 (let ((__tmp57451
                                        (let ((__tmp57453
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57452
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L53863_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57453 __tmp57452)))
                                       (__tmp57443
                                        (let ((__tmp57444
                                               (let ((__tmp57450
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57445
                                                      (let ((__tmp57446
                                                             (let ((__tmp57449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57447
                            (let ((__tmp57448
                                   (let ()
                                     (declare (not safe))
                                     (cons _L53860_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57448))))
                       (declare (not safe))
                       (cons __tmp57449 __tmp57447))))
                (declare (not safe))
                (cons __tmp57446 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57450
                                                       __tmp57445))))
                                          (declare (not safe))
                                          (cons __tmp57444 '()))))
                                   (declare (not safe))
                                   (cons __tmp57451 __tmp57443)))
                                (__tmp57408
                                 (let ((__tmp57409
                                        (let ((__tmp57441
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57410
                                               (let ((__tmp57440
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57411
                                                      (let ((__tmp57415
                                                             (let ((__tmp57439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57416
                            (let ((__tmp57438 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57417
                                   (let ((__tmp57433
                                          (let ((__tmp57437
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57434
                                                 (let ((__tmp57435
                                                        (let ((__tmp57436
                                                               (lambda (_g5390053903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5390153906_)
                         (let ()
                           (declare (not safe))
                           (cons _g5390053903_ _g5390153906_)))))
                  (declare (not safe))
                  (foldr1 __tmp57436 '() _L53865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57435 '()))))
                                            (declare (not safe))
                                            (cons __tmp57437 __tmp57434)))
                                         (__tmp57418
                                          (let ((__tmp57425
                                                 (let ((__tmp57432
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57426
                                                        (let ((__tmp57427
                                                               (lambda (_g5389853909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5389953912_)
                         (let ((__tmp57428
                                (let ((__tmp57431
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57429
                                       (let ((__tmp57430
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5389853909_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57430))))
                                  (declare (not safe))
                                  (cons __tmp57431 __tmp57429))))
                           (declare (not safe))
                           (cons __tmp57428 _g5389953912_)))))
                  (declare (not safe))
                  (foldr1 __tmp57427 '() _L53864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57432
                                                         __tmp57426)))
                                                (__tmp57419
                                                 (let ((__tmp57422
                                                        (let ((__tmp57424
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57423
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L53862_ '()))))
                  (declare (not safe))
                  (cons __tmp57424 __tmp57423)))
               (__tmp57420
                (let ((__tmp57421 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57422
                                                         __tmp57420))))
                                            (declare (not safe))
                                            (cons __tmp57425 __tmp57419))))
                                     (declare (not safe))
                                     (cons __tmp57433 __tmp57418))))
                              (declare (not safe))
                              (cons __tmp57438 __tmp57417))))
                       (declare (not safe))
                       (cons __tmp57439 __tmp57416)))
                    (__tmp57412
                     (let ((__tmp57413
                            (let ((__tmp57414 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57414 '()))))
                       (declare (not safe))
                       (cons __tmp57413 '()))))
                (declare (not safe))
                (cons __tmp57415 __tmp57412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57440
                                                       __tmp57411))))
                                          (declare (not safe))
                                          (cons __tmp57441 __tmp57410))))
                                   (declare (not safe))
                                   (cons __tmp57409 '()))))
                            (declare (not safe))
                            (cons __tmp57442 __tmp57408))))
                     (declare (not safe))
                     (cons __tmp57454 __tmp57407)))))
            (let* ((___match5700757008_
                    (lambda (_e5368353732_
                             _hd5368253736_
                             _tl5368153739_
                             _e5368653742_
                             _hd5368553746_
                             _tl5368453749_
                             _e5368753752_
                             _e5369053756_
                             _hd5368953760_
                             _tl5368853763_
                             ___splice5667956680_
                             _target5369153766_
                             _tl5369353769_)
                      (letrec ((_loop5369453772_
                                (lambda (_hd5369253776_
                                         _exprs5369853779_
                                         _names5369953781_)
                                  (if (gx#stx-pair? _hd5369253776_)
                                      (let ((_e5369553784_
                                             (gx#syntax-e _hd5369253776_)))
                                        (let ((_lp-tl5369753791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5369553784_)))
                                              (_lp-hd5369653788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5369553784_))))
                                          (if (gx#stx-pair? _lp-hd5369653788_)
                                              (let ((_e5370453794_
                                                     (gx#syntax-e
                                                      _lp-hd5369653788_)))
                                                (let ((_tl5370253801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5370453794_)))
                                                      (_hd5370353798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5370453794_))))
                                                  (if (gx#stx-pair?
                                                       _tl5370253801_)
                                                      (let ((_e5370753804_
                                                             (gx#syntax-e
                                                              _tl5370253801_)))
                                                        (let ((_tl5370553811_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5370753804_)))
                      (_hd5370653808_
                       (let () (declare (not safe)) (##car _e5370753804_))))
                  (if (gx#stx-null? _tl5370553811_)
                      (_loop5369453772_
                       _lp-tl5369753791_
                       (let ()
                         (declare (not safe))
                         (cons _hd5370653808_ _exprs5369853779_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5370353798_ _names5369953781_)))
                      (let () (declare (not safe)) (_g5351153725_)))))
              (let () (declare (not safe)) (_g5351153725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5351153725_)))))
                                      (let ((_names5370153817_
                                             (reverse _names5369953781_))
                                            (_exprs5370053814_
                                             (reverse _exprs5369853779_)))
                                        (if (gx#stx-pair? _tl5368853763_)
                                            (let ((_e5371053820_
                                                   (gx#syntax-e
                                                    _tl5368853763_)))
                                              (let ((_tl5370853827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5371053820_)))
                                                    (_hd5370953824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5371053820_))))
                                                (if (gx#stx-null?
                                                     _hd5370953824_)
                                                    (if (gx#stx-pair?
                                                         _tl5370853827_)
                                                        (let ((_e5371353830_
                                                               (gx#syntax-e
                                                                _tl5370853827_)))
                                                          (let ((_tl5371153837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5371353830_)))
                        (_hd5371253834_
                         (let () (declare (not safe)) (##car _e5371353830_))))
                    (if (gx#stx-pair? _tl5371153837_)
                        (let ((_e5371653840_ (gx#syntax-e _tl5371153837_)))
                          (let ((_tl5371453847_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5371653840_)))
                                (_hd5371553844_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5371653840_))))
                            (if (gx#stx-pair? _tl5371453847_)
                                (let ((_e5371953850_
                                       (gx#syntax-e _tl5371453847_)))
                                  (let ((_tl5371753857_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5371953850_)))
                                        (_hd5371853854_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5371953850_))))
                                    (if (gx#stx-null? _tl5371753857_)
                                        (___kont5667756678_
                                         _hd5371853854_
                                         _hd5371553844_
                                         _hd5371253834_
                                         _exprs5370053814_
                                         _names5370153817_
                                         _hd5368253736_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_)))))
                        (let () (declare (not safe)) (_g5351153725_)))))
                (let () (declare (not safe)) (_g5351153725_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5351153725_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5351153725_))))))))
                        (_loop5369453772_ _target5369153766_ '() '()))))
                   (___match5678556786_
                    (lambda (_e5355554357_
                             _hd5355454361_
                             _tl5355354364_
                             _e5355854367_
                             _hd5355754371_
                             _tl5355654374_
                             _e5355954377_
                             _e5356254381_
                             _hd5356154385_
                             _tl5356054388_
                             ___splice5666556666_
                             _target5356354391_
                             _tl5356554394_
                             _e5357454397_
                             _hd5357354401_
                             _tl5357254404_)
                      (letrec ((_loop5356654407_
                                (lambda (_hd5356454411_ _exprs5357054414_)
                                  (if (gx#stx-pair? _hd5356454411_)
                                      (let ((_e5356754417_
                                             (gx#syntax-e _hd5356454411_)))
                                        (let ((_lp-tl5356954424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5356754417_)))
                                              (_lp-hd5356854421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5356754417_))))
                                          (_loop5356654407_
                                           _lp-tl5356954424_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5356854421_
                                                   _exprs5357054414_)))))
                                      (let ((_exprs5357154427_
                                             (reverse _exprs5357054414_)))
                                        (___kont5666356664_
                                         _hd5357354401_
                                         _exprs5357154427_
                                         _hd5356154385_
                                         _hd5355454361_))))))
                        (_loop5356654407_ _target5356354391_ '()))))
                   (___match5674556746_
                    (lambda (_e5352054474_
                             _hd5351954478_
                             _tl5351854481_
                             _e5352354484_
                             _hd5352254488_
                             _tl5352154491_
                             _e5352454494_
                             _e5352754498_
                             _hd5352654502_
                             _tl5352554505_
                             ___splice5666156662_
                             _target5352854508_
                             _tl5353054511_
                             _e5353954514_
                             _hd5353854518_
                             _tl5353754521_
                             _e5354254524_
                             _hd5354154528_
                             _tl5354054531_
                             _e5354554534_
                             _hd5354454538_
                             _tl5354354541_
                             _e5354854544_
                             _hd5354754548_
                             _tl5354654551_)
                      (letrec ((_loop5353154554_
                                (lambda (_hd5352954558_ _exprs5353554561_)
                                  (if (gx#stx-pair? _hd5352954558_)
                                      (let ((_e5353254564_
                                             (gx#syntax-e _hd5352954558_)))
                                        (let ((_lp-tl5353454571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5353254564_)))
                                              (_lp-hd5353354568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5353254564_))))
                                          (_loop5353154554_
                                           _lp-tl5353454571_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5353354568_
                                                   _exprs5353554561_)))))
                                      (let ((_exprs5353654574_
                                             (reverse _exprs5353554561_)))
                                        (___kont5665956660_
                                         _hd5354754548_
                                         _hd5354454538_
                                         _exprs5353654574_
                                         _hd5352654502_
                                         _hd5351954478_))))))
                        (_loop5353154554_ _target5352854508_ '())))))
              (if (gx#stx-pair? ___stx5665656657_)
                  (let ((_e5352054474_ (gx#syntax-e ___stx5665656657_)))
                    (let ((_tl5351854481_
                           (let () (declare (not safe)) (##cdr _e5352054474_)))
                          (_hd5351954478_
                           (let ()
                             (declare (not safe))
                             (##car _e5352054474_))))
                      (if (gx#stx-pair? _tl5351854481_)
                          (let ((_e5352354484_ (gx#syntax-e _tl5351854481_)))
                            (let ((_tl5352154491_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5352354484_)))
                                  (_hd5352254488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5352354484_))))
                              (if (gx#stx-datum? _hd5352254488_)
                                  (let ((_e5352454494_
                                         (gx#stx-e _hd5352254488_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5352454494_ '1))
                                        (if (gx#stx-pair? _tl5352154491_)
                                            (let ((_e5352754498_
                                                   (gx#syntax-e
                                                    _tl5352154491_)))
                                              (let ((_tl5352554505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5352754498_)))
                                                    (_hd5352654502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5352754498_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5352554505_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5352554505_)
                                                              '2)
                                                        (let ((___splice5666156662_
                                                               (gx#syntax-split-splice
                                                                _tl5352554505_
                                                                '2)))
                                                          (let ((_tl5353054511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5666156662_ '1)))
                        (_target5352854508_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5666156662_ '0))))
                    (if (gx#stx-pair? _tl5353054511_)
                        (let ((_e5353954514_ (gx#syntax-e _tl5353054511_)))
                          (let ((_tl5353754521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5353954514_)))
                                (_hd5353854518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5353954514_))))
                            (if (gx#stx-pair? _hd5353854518_)
                                (let ((_e5354254524_
                                       (gx#syntax-e _hd5353854518_)))
                                  (let ((_tl5354054531_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5354254524_)))
                                        (_hd5354154528_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5354254524_))))
                                    (if (gx#identifier? _hd5354154528_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57456_|
                                             _hd5354154528_)
                                            (if (gx#stx-pair? _tl5354054531_)
                                                (let ((_e5354554534_
                                                       (gx#syntax-e
                                                        _tl5354054531_)))
                                                  (let ((_tl5354354541_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5354554534_)))
                                                        (_hd5354454538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5354554534_))))
                                                    (if (gx#stx-null?
                                                         _tl5354354541_)
                                                        (if (gx#stx-pair?
                                                             _tl5353754521_)
                                                            (let ((_e5354854544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5353754521_)))
                      (let ((_tl5354654551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5354854544_)))
                            (_hd5354754548_
                             (let ()
                               (declare (not safe))
                               (##car _e5354854544_))))
                        (if (gx#stx-null? _tl5354654551_)
                            (___match5674556746_
                             _e5352054474_
                             _hd5351954478_
                             _tl5351854481_
                             _e5352354484_
                             _hd5352254488_
                             _tl5352154491_
                             _e5352454494_
                             _e5352754498_
                             _hd5352654502_
                             _tl5352554505_
                             ___splice5666156662_
                             _target5352854508_
                             _tl5353054511_
                             _e5353954514_
                             _hd5353854518_
                             _tl5353754521_
                             _e5354254524_
                             _hd5354154528_
                             _tl5354054531_
                             _e5354554534_
                             _hd5354454538_
                             _tl5354354541_
                             _e5354854544_
                             _hd5354754548_
                             _tl5354654551_)
                            (if (fx>= (gx#stx-length _tl5352554505_) '1)
                                (let ((___splice5666556666_
                                       (gx#syntax-split-splice
                                        _tl5352554505_
                                        '1)))
                                  (let ((_tl5356554394_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5666556666_
                                            '1)))
                                        (_target5356354391_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5666556666_
                                            '0))))
                                    (if (gx#stx-pair? _tl5356554394_)
                                        (let ((_e5357454397_
                                               (gx#syntax-e _tl5356554394_)))
                                          (let ((_tl5357254404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5357454397_)))
                                                (_hd5357354401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5357454397_))))
                                            (if (gx#stx-null? _tl5357254404_)
                                                (___match5678556786_
                                                 _e5352054474_
                                                 _hd5351954478_
                                                 _tl5351854481_
                                                 _e5352354484_
                                                 _hd5352254488_
                                                 _tl5352154491_
                                                 _e5352454494_
                                                 _e5352754498_
                                                 _hd5352654502_
                                                 _tl5352554505_
                                                 ___splice5666556666_
                                                 _target5356354391_
                                                 _tl5356554394_
                                                 _e5357454397_
                                                 _hd5357354401_
                                                 _tl5357254404_)
                                                (if (gx#stx-null?
                                                     _tl5352554505_)
                                                    (___kont5666756668_
                                                     _hd5352654502_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5351153725_))))))
                                        (if (gx#stx-null? _tl5352554505_)
                                            (___kont5666756668_ _hd5352654502_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5351153725_))))))
                                (if (gx#stx-null? _tl5352554505_)
                                    (___kont5666756668_ _hd5352654502_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5351153725_)))))))
                    (if (fx>= (gx#stx-length _tl5352554505_) '1)
                        (let ((___splice5666556666_
                               (gx#syntax-split-splice _tl5352554505_ '1)))
                          (let ((_tl5356554394_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5666556666_ '1)))
                                (_target5356354391_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5666556666_ '0))))
                            (if (gx#stx-pair? _tl5356554394_)
                                (let ((_e5357454397_
                                       (gx#syntax-e _tl5356554394_)))
                                  (let ((_tl5357254404_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5357454397_)))
                                        (_hd5357354401_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5357454397_))))
                                    (if (gx#stx-null? _tl5357254404_)
                                        (___match5678556786_
                                         _e5352054474_
                                         _hd5351954478_
                                         _tl5351854481_
                                         _e5352354484_
                                         _hd5352254488_
                                         _tl5352154491_
                                         _e5352454494_
                                         _e5352754498_
                                         _hd5352654502_
                                         _tl5352554505_
                                         ___splice5666556666_
                                         _target5356354391_
                                         _tl5356554394_
                                         _e5357454397_
                                         _hd5357354401_
                                         _tl5357254404_)
                                        (if (gx#stx-null? _tl5352554505_)
                                            (___kont5666756668_ _hd5352654502_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5351153725_))))))
                                (if (gx#stx-null? _tl5352554505_)
                                    (___kont5666756668_ _hd5352654502_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5351153725_))))))
                        (if (gx#stx-null? _tl5352554505_)
                            (___kont5666756668_ _hd5352654502_)
                            (let () (declare (not safe)) (_g5351153725_)))))
                (if (fx>= (gx#stx-length _tl5352554505_) '1)
                    (let ((___splice5666556666_
                           (gx#syntax-split-splice _tl5352554505_ '1)))
                      (let ((_tl5356554394_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5666556666_ '1)))
                            (_target5356354391_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5666556666_ '0))))
                        (if (gx#stx-pair? _tl5356554394_)
                            (let ((_e5357454397_ (gx#syntax-e _tl5356554394_)))
                              (let ((_tl5357254404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5357454397_)))
                                    (_hd5357354401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5357454397_))))
                                (if (gx#stx-null? _tl5357254404_)
                                    (___match5678556786_
                                     _e5352054474_
                                     _hd5351954478_
                                     _tl5351854481_
                                     _e5352354484_
                                     _hd5352254488_
                                     _tl5352154491_
                                     _e5352454494_
                                     _e5352754498_
                                     _hd5352654502_
                                     _tl5352554505_
                                     ___splice5666556666_
                                     _target5356354391_
                                     _tl5356554394_
                                     _e5357454397_
                                     _hd5357354401_
                                     _tl5357254404_)
                                    (if (gx#stx-null? _tl5352554505_)
                                        (___kont5666756668_ _hd5352654502_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_))))))
                            (if (gx#stx-null? _tl5352554505_)
                                (___kont5666756668_ _hd5352654502_)
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_))))))
                    (if (gx#stx-null? _tl5352554505_)
                        (___kont5666756668_ _hd5352654502_)
                        (let () (declare (not safe)) (_g5351153725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5352554505_)
                                                          '1)
                                                    (let ((___splice5666556666_
                                                           (gx#syntax-split-splice
                                                            _tl5352554505_
                                                            '1)))
                                                      (let ((_tl5356554394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5666556666_ '1)))
                    (_target5356354391_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5666556666_ '0))))
                (if (gx#stx-pair? _tl5356554394_)
                    (let ((_e5357454397_ (gx#syntax-e _tl5356554394_)))
                      (let ((_tl5357254404_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5357454397_)))
                            (_hd5357354401_
                             (let ()
                               (declare (not safe))
                               (##car _e5357454397_))))
                        (if (gx#stx-null? _tl5357254404_)
                            (___match5678556786_
                             _e5352054474_
                             _hd5351954478_
                             _tl5351854481_
                             _e5352354484_
                             _hd5352254488_
                             _tl5352154491_
                             _e5352454494_
                             _e5352754498_
                             _hd5352654502_
                             _tl5352554505_
                             ___splice5666556666_
                             _target5356354391_
                             _tl5356554394_
                             _e5357454397_
                             _hd5357354401_
                             _tl5357254404_)
                            (if (gx#stx-null? _tl5352554505_)
                                (___kont5666756668_ _hd5352654502_)
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_))))))
                    (if (gx#stx-null? _tl5352554505_)
                        (___kont5666756668_ _hd5352654502_)
                        (let () (declare (not safe)) (_g5351153725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5352554505_)
                                                        (___kont5666756668_
                                                         _hd5352654502_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5351153725_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5352554505_)
                                                      '1)
                                                (let ((___splice5666556666_
                                                       (gx#syntax-split-splice
                                                        _tl5352554505_
                                                        '1)))
                                                  (let ((_tl5356554394_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5666556666_
                                                            '1)))
                                                        (_target5356354391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5666556666_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5356554394_)
                                                        (let ((_e5357454397_
                                                               (gx#syntax-e
                                                                _tl5356554394_)))
                                                          (let ((_tl5357254404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5357454397_)))
                        (_hd5357354401_
                         (let () (declare (not safe)) (##car _e5357454397_))))
                    (if (gx#stx-null? _tl5357254404_)
                        (___match5678556786_
                         _e5352054474_
                         _hd5351954478_
                         _tl5351854481_
                         _e5352354484_
                         _hd5352254488_
                         _tl5352154491_
                         _e5352454494_
                         _e5352754498_
                         _hd5352654502_
                         _tl5352554505_
                         ___splice5666556666_
                         _target5356354391_
                         _tl5356554394_
                         _e5357454397_
                         _hd5357354401_
                         _tl5357254404_)
                        (if (gx#stx-null? _tl5352554505_)
                            (___kont5666756668_ _hd5352654502_)
                            (let () (declare (not safe)) (_g5351153725_))))))
                (if (gx#stx-null? _tl5352554505_)
                    (___kont5666756668_ _hd5352654502_)
                    (let () (declare (not safe)) (_g5351153725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5352554505_)
                                                    (___kont5666756668_
                                                     _hd5352654502_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5351153725_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5352554505_)
                                                  '1)
                                            (let ((___splice5666556666_
                                                   (gx#syntax-split-splice
                                                    _tl5352554505_
                                                    '1)))
                                              (let ((_tl5356554394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5666556666_
                                                        '1)))
                                                    (_target5356354391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5666556666_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5356554394_)
                                                    (let ((_e5357454397_
                                                           (gx#syntax-e
                                                            _tl5356554394_)))
                                                      (let ((_tl5357254404_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5357454397_)))
                    (_hd5357354401_
                     (let () (declare (not safe)) (##car _e5357454397_))))
                (if (gx#stx-null? _tl5357254404_)
                    (___match5678556786_
                     _e5352054474_
                     _hd5351954478_
                     _tl5351854481_
                     _e5352354484_
                     _hd5352254488_
                     _tl5352154491_
                     _e5352454494_
                     _e5352754498_
                     _hd5352654502_
                     _tl5352554505_
                     ___splice5666556666_
                     _target5356354391_
                     _tl5356554394_
                     _e5357454397_
                     _hd5357354401_
                     _tl5357254404_)
                    (if (gx#stx-null? _tl5352554505_)
                        (___kont5666756668_ _hd5352654502_)
                        (let () (declare (not safe)) (_g5351153725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5352554505_)
                                                        (___kont5666756668_
                                                         _hd5352654502_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5351153725_))))))
                                            (if (gx#stx-null? _tl5352554505_)
                                                (___kont5666756668_
                                                 _hd5352654502_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5351153725_)))))))
                                (if (fx>= (gx#stx-length _tl5352554505_) '1)
                                    (let ((___splice5666556666_
                                           (gx#syntax-split-splice
                                            _tl5352554505_
                                            '1)))
                                      (let ((_tl5356554394_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5666556666_
                                                '1)))
                                            (_target5356354391_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5666556666_
                                                '0))))
                                        (if (gx#stx-pair? _tl5356554394_)
                                            (let ((_e5357454397_
                                                   (gx#syntax-e
                                                    _tl5356554394_)))
                                              (let ((_tl5357254404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5357454397_)))
                                                    (_hd5357354401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5357454397_))))
                                                (if (gx#stx-null?
                                                     _tl5357254404_)
                                                    (___match5678556786_
                                                     _e5352054474_
                                                     _hd5351954478_
                                                     _tl5351854481_
                                                     _e5352354484_
                                                     _hd5352254488_
                                                     _tl5352154491_
                                                     _e5352454494_
                                                     _e5352754498_
                                                     _hd5352654502_
                                                     _tl5352554505_
                                                     ___splice5666556666_
                                                     _target5356354391_
                                                     _tl5356554394_
                                                     _e5357454397_
                                                     _hd5357354401_
                                                     _tl5357254404_)
                                                    (if (gx#stx-null?
                                                         _tl5352554505_)
                                                        (___kont5666756668_
                                                         _hd5352654502_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5351153725_))))))
                                            (if (gx#stx-null? _tl5352554505_)
                                                (___kont5666756668_
                                                 _hd5352654502_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5351153725_))))))
                                    (if (gx#stx-null? _tl5352554505_)
                                        (___kont5666756668_ _hd5352654502_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_)))))))
                        (if (fx>= (gx#stx-length _tl5352554505_) '1)
                            (let ((___splice5666556666_
                                   (gx#syntax-split-splice _tl5352554505_ '1)))
                              (let ((_tl5356554394_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5666556666_ '1)))
                                    (_target5356354391_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5666556666_
                                        '0))))
                                (if (gx#stx-pair? _tl5356554394_)
                                    (let ((_e5357454397_
                                           (gx#syntax-e _tl5356554394_)))
                                      (let ((_tl5357254404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5357454397_)))
                                            (_hd5357354401_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5357454397_))))
                                        (if (gx#stx-null? _tl5357254404_)
                                            (___match5678556786_
                                             _e5352054474_
                                             _hd5351954478_
                                             _tl5351854481_
                                             _e5352354484_
                                             _hd5352254488_
                                             _tl5352154491_
                                             _e5352454494_
                                             _e5352754498_
                                             _hd5352654502_
                                             _tl5352554505_
                                             ___splice5666556666_
                                             _target5356354391_
                                             _tl5356554394_
                                             _e5357454397_
                                             _hd5357354401_
                                             _tl5357254404_)
                                            (if (gx#stx-null? _tl5352554505_)
                                                (___kont5666756668_
                                                 _hd5352654502_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5351153725_))))))
                                    (if (gx#stx-null? _tl5352554505_)
                                        (___kont5666756668_ _hd5352654502_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_))))))
                            (if (gx#stx-null? _tl5352554505_)
                                (___kont5666756668_ _hd5352654502_)
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_)))))))
                (if (fx>= (gx#stx-length _tl5352554505_) '1)
                    (let ((___splice5666556666_
                           (gx#syntax-split-splice _tl5352554505_ '1)))
                      (let ((_tl5356554394_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5666556666_ '1)))
                            (_target5356354391_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5666556666_ '0))))
                        (if (gx#stx-pair? _tl5356554394_)
                            (let ((_e5357454397_ (gx#syntax-e _tl5356554394_)))
                              (let ((_tl5357254404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5357454397_)))
                                    (_hd5357354401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5357454397_))))
                                (if (gx#stx-null? _tl5357254404_)
                                    (___match5678556786_
                                     _e5352054474_
                                     _hd5351954478_
                                     _tl5351854481_
                                     _e5352354484_
                                     _hd5352254488_
                                     _tl5352154491_
                                     _e5352454494_
                                     _e5352754498_
                                     _hd5352654502_
                                     _tl5352554505_
                                     ___splice5666556666_
                                     _target5356354391_
                                     _tl5356554394_
                                     _e5357454397_
                                     _hd5357354401_
                                     _tl5357254404_)
                                    (if (gx#stx-null? _tl5352554505_)
                                        (___kont5666756668_ _hd5352654502_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_))))))
                            (if (gx#stx-null? _tl5352554505_)
                                (___kont5666756668_ _hd5352654502_)
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_))))))
                    (if (gx#stx-null? _tl5352554505_)
                        (___kont5666756668_ _hd5352654502_)
                        (let () (declare (not safe)) (_g5351153725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5352554505_)
                                                        (___kont5666756668_
                                                         _hd5352654502_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5351153725_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5351153725_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5352454494_ '2))
                                            (if (gx#stx-pair? _tl5352154491_)
                                                (let ((_e5360154197_
                                                       (gx#syntax-e
                                                        _tl5352154491_)))
                                                  (let ((_tl5359954204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5360154197_)))
                                                        (_hd5360054201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5360154197_))))
                                                    (if (gx#stx-pair?
                                                         _tl5359954204_)
                                                        (let ((_e5360454207_
                                                               (gx#syntax-e
                                                                _tl5359954204_)))
                                                          (let ((_tl5360254214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5360454207_)))
                        (_hd5360354211_
                         (let () (declare (not safe)) (##car _e5360454207_))))
                    (if (gx#stx-pair? _hd5360354211_)
                        (let ((_e5360754217_ (gx#syntax-e _hd5360354211_)))
                          (let ((_tl5360554224_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5360754217_)))
                                (_hd5360654221_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5360754217_))))
                            (if (gx#stx-pair? _hd5360654221_)
                                (let ((_e5361054227_
                                       (gx#syntax-e _hd5360654221_)))
                                  (let ((_tl5360854234_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5361054227_)))
                                        (_hd5360954231_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5361054227_))))
                                    (if (gx#identifier? _hd5360954231_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57455_|
                                             _hd5360954231_)
                                            (if (gx#stx-pair? _tl5360854234_)
                                                (let ((_e5361354237_
                                                       (gx#syntax-e
                                                        _tl5360854234_)))
                                                  (let ((_tl5361154244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5361354237_)))
                                                        (_hd5361254241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5361354237_))))
                                                    (if (gx#stx-null?
                                                         _tl5361154244_)
                                                        (if (gx#stx-pair?
                                                             _tl5360554224_)
                                                            (let ((_e5361654247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5360554224_)))
                      (let ((_tl5361454254_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5361654247_)))
                            (_hd5361554251_
                             (let ()
                               (declare (not safe))
                               (##car _e5361654247_))))
                        (___kont5666956670_
                         _tl5360254214_
                         _tl5361454254_
                         _hd5361554251_
                         _hd5361254241_
                         _hd5360054201_
                         _hd5351954478_)))
                    (___kont5667156672_
                     _tl5360254214_
                     _tl5360554224_
                     _hd5360654221_
                     _hd5360054201_
                     _hd5351954478_))
                (___kont5667156672_
                 _tl5360254214_
                 _tl5360554224_
                 _hd5360654221_
                 _hd5360054201_
                 _hd5351954478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5667156672_
                                                 _tl5360254214_
                                                 _tl5360554224_
                                                 _hd5360654221_
                                                 _hd5360054201_
                                                 _hd5351954478_))
                                            (___kont5667156672_
                                             _tl5360254214_
                                             _tl5360554224_
                                             _hd5360654221_
                                             _hd5360054201_
                                             _hd5351954478_))
                                        (___kont5667156672_
                                         _tl5360254214_
                                         _tl5360554224_
                                         _hd5360654221_
                                         _hd5360054201_
                                         _hd5351954478_))))
                                (___kont5667156672_
                                 _tl5360254214_
                                 _tl5360554224_
                                 _hd5360654221_
                                 _hd5360054201_
                                 _hd5351954478_))))
                        (if (gx#stx-null? _hd5360354211_)
                            (___kont5667356674_
                             _tl5360254214_
                             _hd5360054201_
                             _hd5351954478_)
                            (let () (declare (not safe)) (_g5351153725_))))))
                (let () (declare (not safe)) (_g5351153725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5351153725_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5352454494_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5352154491_)
                                                    (let ((_e5366853946_
                                                           (gx#syntax-e
                                                            _tl5352154491_)))
                                                      (let ((_tl5366653953_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5366853946_)))
                    (_hd5366753950_
                     (let () (declare (not safe)) (##car _e5366853946_))))
                (if (gx#stx-pair? _tl5366653953_)
                    (let ((_e5367153956_ (gx#syntax-e _tl5366653953_)))
                      (let ((_tl5366953963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5367153956_)))
                            (_hd5367053960_
                             (let ()
                               (declare (not safe))
                               (##car _e5367153956_))))
                        (if (gx#stx-pair? _hd5367053960_)
                            (let ((_e5367453966_ (gx#syntax-e _hd5367053960_)))
                              (let ((_tl5367253973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5367453966_)))
                                    (_hd5367353970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5367453966_))))
                                (___kont5667556676_
                                 _tl5366953963_
                                 _tl5367253973_
                                 _hd5367353970_
                                 _hd5366753950_
                                 _hd5351954478_)))
                            (if (gx#stx-pair/null? _hd5366753950_)
                                (let ((___splice5667956680_
                                       (gx#syntax-split-splice
                                        _hd5366753950_
                                        '0)))
                                  (let ((_tl5369353769_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5667956680_
                                            '1)))
                                        (_target5369153766_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5667956680_
                                            '0))))
                                    (if (gx#stx-null? _tl5369353769_)
                                        (___match5700757008_
                                         _e5352054474_
                                         _hd5351954478_
                                         _tl5351854481_
                                         _e5352354484_
                                         _hd5352254488_
                                         _tl5352154491_
                                         _e5352454494_
                                         _e5366853946_
                                         _hd5366753950_
                                         _tl5366653953_
                                         ___splice5667956680_
                                         _target5369153766_
                                         _tl5369353769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5351153725_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_))))))
                    (if (gx#stx-pair/null? _hd5366753950_)
                        (let ((___splice5667956680_
                               (gx#syntax-split-splice _hd5366753950_ '0)))
                          (let ((_tl5369353769_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5667956680_ '1)))
                                (_target5369153766_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5667956680_ '0))))
                            (if (gx#stx-null? _tl5369353769_)
                                (___match5700757008_
                                 _e5352054474_
                                 _hd5351954478_
                                 _tl5351854481_
                                 _e5352354484_
                                 _hd5352254488_
                                 _tl5352154491_
                                 _e5352454494_
                                 _e5366853946_
                                 _hd5366753950_
                                 _tl5366653953_
                                 ___splice5667956680_
                                 _target5369153766_
                                 _tl5369353769_)
                                (let ()
                                  (declare (not safe))
                                  (_g5351153725_)))))
                        (let () (declare (not safe)) (_g5351153725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5351153725_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5351153725_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5351153725_)))))
                          (let () (declare (not safe)) (_g5351153725_)))))
                  (let () (declare (not safe)) (_g5351153725_))))))))))
