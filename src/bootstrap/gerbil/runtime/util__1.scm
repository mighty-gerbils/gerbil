(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57413_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57414_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53042_)
        (let* ((_g5304653060_
                (lambda (_g5304753056_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5304753056_)))
               (_g5304553102_
                (lambda (_g5304753064_)
                  (if (gx#stx-pair? _g5304753064_)
                      (let ((_e5305153067_ (gx#syntax-e _g5304753064_)))
                        (let ((_hd5305053071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5305153067_)))
                              (_tl5304953074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5305153067_))))
                          (if (gx#stx-pair? _tl5304953074_)
                              (let ((_e5305453077_
                                     (gx#syntax-e _tl5304953074_)))
                                (let ((_hd5305353081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5305453077_)))
                                      (_tl5305253084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5305453077_))))
                                  (if (gx#stx-null? _tl5305253084_)
                                      ((lambda (_L53087_)
                                         (let ((__tmp57120
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57085
                                                (let ((__tmp57086
                                                       (let ((__tmp57113
                                                              (let ((__tmp57119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57114
                             (let ((__tmp57115
                                    (let ((__tmp57118
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57116
                                           (let ((__tmp57117
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57117 '()))))
                                      (declare (not safe))
                                      (cons __tmp57118 __tmp57116))))
                               (declare (not safe))
                               (cons __tmp57115 '()))))
                        (declare (not safe))
                        (cons __tmp57119 __tmp57114)))
                     (__tmp57087
                      (let ((__tmp57088
                             (let ((__tmp57112 (gx#datum->syntax '#f 'let))
                                   (__tmp57089
                                    (let ((__tmp57111
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57090
                                           (let ((__tmp57091
                                                  (let ((__tmp57092
                                                         (let ((__tmp57110
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57093
                        (let ((__tmp57100
                               (let ((__tmp57109 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57101
                                      (let ((__tmp57103
                                             (let ((__tmp57108
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57104
                                                    (let ((__tmp57105
                                                           (let ((__tmp57106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57107
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57107))))
                     (declare (not safe))
                     (cons '0 __tmp57106))))
              (declare (not safe))
              (cons _L53087_ __tmp57105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57108 __tmp57104)))
                                            (__tmp57102
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57103 __tmp57102))))
                                 (declare (not safe))
                                 (cons __tmp57109 __tmp57101)))
                              (__tmp57094
                               (let ((__tmp57098
                                      (let ((__tmp57099
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57099 '())))
                                     (__tmp57095
                                      (let ((__tmp57096
                                             (let ((__tmp57097
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57097 '()))))
                                        (declare (not safe))
                                        (cons __tmp57096 '()))))
                                 (declare (not safe))
                                 (cons __tmp57098 __tmp57095))))
                          (declare (not safe))
                          (cons __tmp57100 __tmp57094))))
                   (declare (not safe))
                   (cons __tmp57110 __tmp57093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57092 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57091))))
                                      (declare (not safe))
                                      (cons __tmp57111 __tmp57090))))
                               (declare (not safe))
                               (cons __tmp57112 __tmp57089))))
                        (declare (not safe))
                        (cons __tmp57088 '()))))
                 (declare (not safe))
                 (cons __tmp57113 __tmp57087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57086))))
                                           (declare (not safe))
                                           (cons __tmp57120 __tmp57085)))
                                       _hd5305353081_)
                                      (_g5304653060_ _g5304753064_))))
                              (_g5304653060_ _g5304753064_))))
                      (_g5304653060_ _g5304753064_)))))
          (_g5304553102_ _$stx53042_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53106_)
        (let* ((_g5311053124_
                (lambda (_g5311153120_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5311153120_)))
               (_g5310953165_
                (lambda (_g5311153128_)
                  (if (gx#stx-pair? _g5311153128_)
                      (let ((_e5311553131_ (gx#syntax-e _g5311153128_)))
                        (let ((_hd5311453135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5311553131_)))
                              (_tl5311353138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5311553131_))))
                          (if (gx#stx-pair? _tl5311353138_)
                              (let ((_e5311853141_
                                     (gx#syntax-e _tl5311353138_)))
                                (let ((_hd5311753145_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5311853141_)))
                                      (_tl5311653148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5311853141_))))
                                  (if (gx#stx-null? _tl5311653148_)
                                      ((lambda (_L53151_)
                                         (let ((__tmp57125
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57121
                                                (let ((__tmp57122
                                                       (let ((__tmp57123
                                                              (let ((__tmp57124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57124))))
                 (declare (not safe))
                 (cons '0 __tmp57123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53151_ __tmp57122))))
                                           (declare (not safe))
                                           (cons __tmp57125 __tmp57121)))
                                       _hd5311753145_)
                                      (_g5311053124_ _g5311153128_))))
                              (_g5311053124_ _g5311153128_))))
                      (_g5311053124_ _g5311153128_)))))
          (_g5310953165_ _$stx53106_))))
    (define |[:0:]#defassget|
      (lambda (_$stx53169_)
        (let* ((_g5317353191_
                (lambda (_g5317453187_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5317453187_)))
               (_g5317253246_
                (lambda (_g5317453195_)
                  (if (gx#stx-pair? _g5317453195_)
                      (let ((_e5317953198_ (gx#syntax-e _g5317453195_)))
                        (let ((_hd5317853202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5317953198_)))
                              (_tl5317753205_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5317953198_))))
                          (if (gx#stx-pair? _tl5317753205_)
                              (let ((_e5318253208_
                                     (gx#syntax-e _tl5317753205_)))
                                (let ((_hd5318153212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5318253208_)))
                                      (_tl5318053215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5318253208_))))
                                  (if (gx#stx-pair? _tl5318053215_)
                                      (let ((_e5318553218_
                                             (gx#syntax-e _tl5318053215_)))
                                        (let ((_hd5318453222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5318553218_)))
                                              (_tl5318353225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5318553218_))))
                                          (if (gx#stx-null? _tl5318353225_)
                                              ((lambda (_L53228_ _L53230_)
                                                 (let ((__tmp57174
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57126
                                                        (let ((__tmp57165
                                                               (let ((__tmp57166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57173 (gx#datum->syntax '#f 'key))
                                    (__tmp57167
                                     (let ((__tmp57172
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57168
                                            (let ((__tmp57169
                                                   (let ((__tmp57171
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57170
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57171
                                                           __tmp57170))))
                                              (declare (not safe))
                                              (cons __tmp57169 '()))))
                                       (declare (not safe))
                                       (cons __tmp57172 __tmp57168))))
                                (declare (not safe))
                                (cons __tmp57173 __tmp57167))))
                         (declare (not safe))
                         (cons _L53230_ __tmp57166)))
                      (__tmp57127
                       (let ((__tmp57128
                              (let ((__tmp57164 (gx#datum->syntax '#f 'cond))
                                    (__tmp57129
                                     (let ((__tmp57146
                                            (let ((__tmp57151
                                                   (let ((__tmp57163
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57152
                                                          (let ((__tmp57159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57162 (gx#datum->syntax '#f 'pair?))
                               (__tmp57160
                                (let ((__tmp57161 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57161 '()))))
                           (declare (not safe))
                           (cons __tmp57162 __tmp57160)))
                        (__tmp57153
                         (let ((__tmp57154
                                (let ((__tmp57155
                                       (let ((__tmp57158
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57156
                                              (let ((__tmp57157
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57157 '()))))
                                         (declare (not safe))
                                         (cons __tmp57158 __tmp57156))))
                                  (declare (not safe))
                                  (cons _L53228_ __tmp57155))))
                           (declare (not safe))
                           (cons __tmp57154 '()))))
                    (declare (not safe))
                    (cons __tmp57159 __tmp57153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57163
                                                           __tmp57152)))
                                                  (__tmp57147
                                                   (let ((__tmp57150
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57148
                                                          (let ((__tmp57149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57150
                                                           __tmp57148))))
                                              (declare (not safe))
                                              (cons __tmp57151 __tmp57147)))
                                           (__tmp57130
                                            (let ((__tmp57136
                                                   (let ((__tmp57142
                                                          (let ((__tmp57145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57143
                         (let ((__tmp57144 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57144 '()))))
                    (declare (not safe))
                    (cons __tmp57145 __tmp57143)))
                 (__tmp57137
                  (let ((__tmp57138
                         (let ((__tmp57141 (gx#datum->syntax '#f 'default))
                               (__tmp57139
                                (let ((__tmp57140 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57140 '()))))
                           (declare (not safe))
                           (cons __tmp57141 __tmp57139))))
                    (declare (not safe))
                    (cons __tmp57138 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57142
                                                           __tmp57137)))
                                                  (__tmp57131
                                                   (let ((__tmp57132
                                                          (let ((__tmp57135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57133
                         (let ((__tmp57134 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57134 '()))))
                    (declare (not safe))
                    (cons __tmp57135 __tmp57133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57132 '()))))
                                              (declare (not safe))
                                              (cons __tmp57136 __tmp57131))))
                                       (declare (not safe))
                                       (cons __tmp57146 __tmp57130))))
                                (declare (not safe))
                                (cons __tmp57164 __tmp57129))))
                         (declare (not safe))
                         (cons __tmp57128 '()))))
                  (declare (not safe))
                  (cons __tmp57165 __tmp57127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57174
                                                         __tmp57126)))
                                               _hd5318453222_
                                               _hd5318153212_)
                                              (_g5317353191_ _g5317453195_))))
                                      (_g5317353191_ _g5317453195_))))
                              (_g5317353191_ _g5317453195_))))
                      (_g5317353191_ _g5317453195_)))))
          (_g5317253246_ _$stx53169_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53250_)
        (let* ((_g5325453272_
                (lambda (_g5325553268_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5325553268_)))
               (_g5325353327_
                (lambda (_g5325553276_)
                  (if (gx#stx-pair? _g5325553276_)
                      (let ((_e5326053279_ (gx#syntax-e _g5325553276_)))
                        (let ((_hd5325953283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5326053279_)))
                              (_tl5325853286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5326053279_))))
                          (if (gx#stx-pair? _tl5325853286_)
                              (let ((_e5326353289_
                                     (gx#syntax-e _tl5325853286_)))
                                (let ((_hd5326253293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5326353289_)))
                                      (_tl5326153296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5326353289_))))
                                  (if (gx#stx-pair? _tl5326153296_)
                                      (let ((_e5326653299_
                                             (gx#syntax-e _tl5326153296_)))
                                        (let ((_hd5326553303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5326653299_)))
                                              (_tl5326453306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5326653299_))))
                                          (if (gx#stx-null? _tl5326453306_)
                                              ((lambda (_L53309_ _L53311_)
                                                 (let ((__tmp57244
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57175
                                                        (let ((__tmp57235
                                                               (let ((__tmp57236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57243 (gx#datum->syntax '#f 'key))
                                    (__tmp57237
                                     (let ((__tmp57242
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57238
                                            (let ((__tmp57239
                                                   (let ((__tmp57241
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57241
                                                           __tmp57240))))
                                              (declare (not safe))
                                              (cons __tmp57239 '()))))
                                       (declare (not safe))
                                       (cons __tmp57242 __tmp57238))))
                                (declare (not safe))
                                (cons __tmp57243 __tmp57237))))
                         (declare (not safe))
                         (cons _L53311_ __tmp57236)))
                      (__tmp57176
                       (let ((__tmp57177
                              (let ((__tmp57234 (gx#datum->syntax '#f 'let))
                                    (__tmp57178
                                     (let ((__tmp57233
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57179
                                            (let ((__tmp57228
                                                   (let ((__tmp57229
                                                          (let ((__tmp57232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57230
                         (let ((__tmp57231 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57231 '()))))
                    (declare (not safe))
                    (cons __tmp57232 __tmp57230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57229 '())))
                                                  (__tmp57180
                                                   (let ((__tmp57181
                                                          (let ((__tmp57227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57182
                         (let ((__tmp57226 (gx#datum->syntax '#f 'rest))
                               (__tmp57183
                                (let ((__tmp57202
                                       (let ((__tmp57219
                                              (let ((__tmp57225
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57220
                                                     (let ((__tmp57224
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57221
                                                            (let ((__tmp57223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57222 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57223 __tmp57222))))
               (declare (not safe))
               (cons __tmp57224 __tmp57221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57225 __tmp57220)))
                                             (__tmp57203
                                              (let ((__tmp57204
                                                     (let ((__tmp57218
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57205
                                                            (let ((__tmp57213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57214
                                  (let ((__tmp57217 (gx#datum->syntax '#f 'k))
                                        (__tmp57215
                                         (let ((__tmp57216
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57216 '()))))
                                    (declare (not safe))
                                    (cons __tmp57217 __tmp57215))))
                             (declare (not safe))
                             (cons _L53309_ __tmp57214)))
                          (__tmp57206
                           (let ((__tmp57212 (gx#datum->syntax '#f 'v))
                                 (__tmp57207
                                  (let ((__tmp57208
                                         (let ((__tmp57211
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57209
                                                (let ((__tmp57210
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57210 '()))))
                                           (declare (not safe))
                                           (cons __tmp57211 __tmp57209))))
                                    (declare (not safe))
                                    (cons __tmp57208 '()))))
                             (declare (not safe))
                             (cons __tmp57212 __tmp57207))))
                      (declare (not safe))
                      (cons __tmp57213 __tmp57206))))
               (declare (not safe))
               (cons __tmp57218 __tmp57205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57204 '()))))
                                         (declare (not safe))
                                         (cons __tmp57219 __tmp57203)))
                                      (__tmp57184
                                       (let ((__tmp57185
                                              (let ((__tmp57201
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57186
                                                     (let ((__tmp57187
                                                            (let ((__tmp57200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57188
                           (let ((__tmp57196
                                  (let ((__tmp57199
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57197
                                         (let ((__tmp57198
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57198 '()))))
                                    (declare (not safe))
                                    (cons __tmp57199 __tmp57197)))
                                 (__tmp57189
                                  (let ((__tmp57192
                                         (let ((__tmp57195
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57193
                                                (let ((__tmp57194
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57194 '()))))
                                           (declare (not safe))
                                           (cons __tmp57195 __tmp57193)))
                                        (__tmp57190
                                         (let ((__tmp57191
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57191 '()))))
                                    (declare (not safe))
                                    (cons __tmp57192 __tmp57190))))
                             (declare (not safe))
                             (cons __tmp57196 __tmp57189))))
                      (declare (not safe))
                      (cons __tmp57200 __tmp57188))))
               (declare (not safe))
               (cons __tmp57187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57201 __tmp57186))))
                                         (declare (not safe))
                                         (cons __tmp57185 '()))))
                                  (declare (not safe))
                                  (cons __tmp57202 __tmp57184))))
                           (declare (not safe))
                           (cons __tmp57226 __tmp57183))))
                    (declare (not safe))
                    (cons __tmp57227 __tmp57182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57181 '()))))
                                              (declare (not safe))
                                              (cons __tmp57228 __tmp57180))))
                                       (declare (not safe))
                                       (cons __tmp57233 __tmp57179))))
                                (declare (not safe))
                                (cons __tmp57234 __tmp57178))))
                         (declare (not safe))
                         (cons __tmp57177 '()))))
                  (declare (not safe))
                  (cons __tmp57235 __tmp57176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57244
                                                         __tmp57175)))
                                               _hd5326553303_
                                               _hd5326253293_)
                                              (_g5325453272_ _g5325553276_))))
                                      (_g5325453272_ _g5325553276_))))
                              (_g5325453272_ _g5325553276_))))
                      (_g5325453272_ _g5325553276_)))))
          (_g5325353327_ _$stx53250_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53331_)
        (let* ((_g5333553353_
                (lambda (_g5333653349_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5333653349_)))
               (_g5333453408_
                (lambda (_g5333653357_)
                  (if (gx#stx-pair? _g5333653357_)
                      (let ((_e5334153360_ (gx#syntax-e _g5333653357_)))
                        (let ((_hd5334053364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5334153360_)))
                              (_tl5333953367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5334153360_))))
                          (if (gx#stx-pair? _tl5333953367_)
                              (let ((_e5334453370_
                                     (gx#syntax-e _tl5333953367_)))
                                (let ((_hd5334353374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5334453370_)))
                                      (_tl5334253377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5334453370_))))
                                  (if (gx#stx-pair? _tl5334253377_)
                                      (let ((_e5334753380_
                                             (gx#syntax-e _tl5334253377_)))
                                        (let ((_hd5334653384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5334753380_)))
                                              (_tl5334553387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5334753380_))))
                                          (if (gx#stx-null? _tl5334553387_)
                                              ((lambda (_L53390_ _L53392_)
                                                 (let ((__tmp57315
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57245
                                                        (let ((__tmp57310
                                                               (let ((__tmp57311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57314 (gx#datum->syntax '#f 'el))
                                    (__tmp57312
                                     (let ((__tmp57313
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57313 '()))))
                                (declare (not safe))
                                (cons __tmp57314 __tmp57312))))
                         (declare (not safe))
                         (cons _L53392_ __tmp57311)))
                      (__tmp57246
                       (let ((__tmp57247
                              (let ((__tmp57309 (gx#datum->syntax '#f 'let))
                                    (__tmp57248
                                     (let ((__tmp57308
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57249
                                            (let ((__tmp57297
                                                   (let ((__tmp57304
                                                          (let ((__tmp57307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57305
                         (let ((__tmp57306 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57306 '()))))
                    (declare (not safe))
                    (cons __tmp57307 __tmp57305)))
                 (__tmp57298
                  (let ((__tmp57299
                         (let ((__tmp57303 (gx#datum->syntax '#f 'r))
                               (__tmp57300
                                (let ((__tmp57301
                                       (let ((__tmp57302
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57302 '()))))
                                  (declare (not safe))
                                  (cons __tmp57301 '()))))
                           (declare (not safe))
                           (cons __tmp57303 __tmp57300))))
                    (declare (not safe))
                    (cons __tmp57299 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57304
                                                           __tmp57298)))
                                                  (__tmp57250
                                                   (let ((__tmp57251
                                                          (let ((__tmp57296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57252
                         (let ((__tmp57295 (gx#datum->syntax '#f 'rest))
                               (__tmp57253
                                (let ((__tmp57259
                                       (let ((__tmp57290
                                              (let ((__tmp57294
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57291
                                                     (let ((__tmp57293
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57292
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57293
                                                             __tmp57292))))
                                                (declare (not safe))
                                                (cons __tmp57294 __tmp57291)))
                                             (__tmp57260
                                              (let ((__tmp57261
                                                     (let ((__tmp57289
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57262
                                                            (let ((__tmp57284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57285
                                  (let ((__tmp57288 (gx#datum->syntax '#f 'el))
                                        (__tmp57286
                                         (let ((__tmp57287
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57287 '()))))
                                    (declare (not safe))
                                    (cons __tmp57288 __tmp57286))))
                             (declare (not safe))
                             (cons _L53390_ __tmp57285)))
                          (__tmp57263
                           (let ((__tmp57276
                                  (let ((__tmp57283
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57277
                                         (let ((__tmp57282
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57278
                                                (let ((__tmp57281
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57279
                                                       (let ((__tmp57280
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57280
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57281
                                                        __tmp57279))))
                                           (declare (not safe))
                                           (cons __tmp57282 __tmp57278))))
                                    (declare (not safe))
                                    (cons __tmp57283 __tmp57277)))
                                 (__tmp57264
                                  (let ((__tmp57265
                                         (let ((__tmp57275
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57266
                                                (let ((__tmp57274
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57267
                                                       (let ((__tmp57268
                                                              (let ((__tmp57273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57269
                             (let ((__tmp57272 (gx#datum->syntax '#f 'hd))
                                   (__tmp57270
                                    (let ((__tmp57271
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57271 '()))))
                               (declare (not safe))
                               (cons __tmp57272 __tmp57270))))
                        (declare (not safe))
                        (cons __tmp57273 __tmp57269))))
                 (declare (not safe))
                 (cons __tmp57268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57274
                                                        __tmp57267))))
                                           (declare (not safe))
                                           (cons __tmp57275 __tmp57266))))
                                    (declare (not safe))
                                    (cons __tmp57265 '()))))
                             (declare (not safe))
                             (cons __tmp57276 __tmp57264))))
                      (declare (not safe))
                      (cons __tmp57284 __tmp57263))))
               (declare (not safe))
               (cons __tmp57289 __tmp57262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57261 '()))))
                                         (declare (not safe))
                                         (cons __tmp57290 __tmp57260)))
                                      (__tmp57254
                                       (let ((__tmp57255
                                              (let ((__tmp57258
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57256
                                                     (let ((__tmp57257
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57257 '()))))
                                                (declare (not safe))
                                                (cons __tmp57258 __tmp57256))))
                                         (declare (not safe))
                                         (cons __tmp57255 '()))))
                                  (declare (not safe))
                                  (cons __tmp57259 __tmp57254))))
                           (declare (not safe))
                           (cons __tmp57295 __tmp57253))))
                    (declare (not safe))
                    (cons __tmp57296 __tmp57252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57251 '()))))
                                              (declare (not safe))
                                              (cons __tmp57297 __tmp57250))))
                                       (declare (not safe))
                                       (cons __tmp57308 __tmp57249))))
                                (declare (not safe))
                                (cons __tmp57309 __tmp57248))))
                         (declare (not safe))
                         (cons __tmp57247 '()))))
                  (declare (not safe))
                  (cons __tmp57310 __tmp57246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57315
                                                         __tmp57245)))
                                               _hd5334653384_
                                               _hd5334353374_)
                                              (_g5333553353_ _g5333653357_))))
                                      (_g5333553353_ _g5333653357_))))
                              (_g5333553353_ _g5333653357_))))
                      (_g5333553353_ _g5333653357_)))))
          (_g5333453408_ _$stx53331_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53412_)
        (let* ((_g5341653427_
                (lambda (_g5341753423_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5341753423_)))
               (_g5341553456_
                (lambda (_g5341753431_)
                  (if (gx#stx-pair? _g5341753431_)
                      (let ((_e5342153434_ (gx#syntax-e _g5341753431_)))
                        (let ((_hd5342053438_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5342153434_)))
                              (_tl5341953441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5342153434_))))
                          ((lambda (_L53444_)
                             (let ((__tmp57317 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57316
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53444_))))
                               (declare (not safe))
                               (cons __tmp57317 __tmp57316)))
                           _tl5341953441_)))
                      (_g5341653427_ _g5341753431_)))))
          (_g5341553456_ _$stx53412_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx53460_)
        (let* ((___stx5661656617_ _$stx53460_)
               (_g5347153685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5661656617_))))
          (let ((___kont5661956620_
                 (lambda (_L54538_ _L54540_ _L54541_ _L54542_ _L54543_)
                   (let ((__tmp57318
                          (let ((__tmp57319
                                 (let ((__tmp57320
                                        (let ((__tmp57324
                                               (let ((__tmp57325
                                                      (lambda (_g5457354576_
                                                               _g5457454579_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5457354576_
                                                                _g5457454579_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57325
                                                         '()
                                                         _L54541_)))
                                              (__tmp57321
                                               (let ((__tmp57322
                                                      (let ((__tmp57323
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54538_ '()))))
                (declare (not safe))
                (cons _L54540_ __tmp57323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54542_ __tmp57322))))
                                          (declare (not safe))
                                          (cons __tmp57324 __tmp57321))))
                                   (declare (not safe))
                                   (cons '() __tmp57320))))
                            (declare (not safe))
                            (cons '2 __tmp57319))))
                     (declare (not safe))
                     (cons _L54543_ __tmp57318))))
                (___kont5662356624_
                 (lambda (_L54391_ _L54393_ _L54394_ _L54395_)
                   (let ((__tmp57326
                          (let ((__tmp57327
                                 (let ((__tmp57328
                                        (let ((__tmp57332
                                               (let ((__tmp57333
                                                      (lambda (_g5441854421_
                                                               _g5441954424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5441854421_
                                                                _g5441954424_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57333
                                                         '()
                                                         _L54393_)))
                                              (__tmp57329
                                               (let ((__tmp57330
                                                      (let ((__tmp57331
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54391_ '()))))
                (declare (not safe))
                (cons _L54391_ __tmp57331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54394_ __tmp57330))))
                                          (declare (not safe))
                                          (cons __tmp57332 __tmp57329))))
                                   (declare (not safe))
                                   (cons '() __tmp57328))))
                            (declare (not safe))
                            (cons '2 __tmp57327))))
                     (declare (not safe))
                     (cons _L54395_ __tmp57326))))
                (___kont5662756628_
                 (lambda (_L54294_)
                   (let ((__tmp57345 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57334
                          (let ((__tmp57335
                                 (let ((__tmp57342
                                        (let ((__tmp57344
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57343
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57344 __tmp57343)))
                                       (__tmp57336
                                        (let ((__tmp57339
                                               (let ((__tmp57341
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57340
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57341 __tmp57340)))
                                              (__tmp57337
                                               (let ((__tmp57338
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57338))))
                                          (declare (not safe))
                                          (cons __tmp57339 __tmp57337))))
                                   (declare (not safe))
                                   (cons __tmp57342 __tmp57336))))
                            (declare (not safe))
                            (cons _L54294_ __tmp57335))))
                     (declare (not safe))
                     (cons __tmp57345 __tmp57334))))
                (___kont5662956630_
                 (lambda (_L54217_
                          _L54219_
                          _L54220_
                          _L54221_
                          _L54222_
                          _L54223_)
                   (let ((__tmp57346
                          (let ((__tmp57347
                                 (let ((__tmp57349
                                        (let ((__tmp57350
                                               (let ((__tmp57351
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54220_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54221_ __tmp57351))))
                                          (declare (not safe))
                                          (cons __tmp57350 _L54222_)))
                                       (__tmp57348
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54219_ _L54217_))))
                                   (declare (not safe))
                                   (cons __tmp57349 __tmp57348))))
                            (declare (not safe))
                            (cons '2 __tmp57347))))
                     (declare (not safe))
                     (cons _L54223_ __tmp57346))))
                (___kont5663156632_
                 (lambda (_L54098_ _L54100_ _L54101_ _L54102_ _L54103_)
                   (let ((__tmp57352
                          (let ((__tmp57353
                                 (let ((__tmp57355
                                        (let ((__tmp57356
                                               (let ((__tmp57357
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54101_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54101_ __tmp57357))))
                                          (declare (not safe))
                                          (cons __tmp57356 _L54102_)))
                                       (__tmp57354
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54100_ _L54098_))))
                                   (declare (not safe))
                                   (cons __tmp57355 __tmp57354))))
                            (declare (not safe))
                            (cons '2 __tmp57353))))
                     (declare (not safe))
                     (cons _L54103_ __tmp57352))))
                (___kont5663356634_
                 (lambda (_L54015_ _L54017_ _L54018_)
                   (let ((__tmp57358
                          (let ((__tmp57359
                                 (let ((__tmp57360
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54017_ _L54015_))))
                                   (declare (not safe))
                                   (cons '() __tmp57360))))
                            (declare (not safe))
                            (cons '3 __tmp57359))))
                     (declare (not safe))
                     (cons _L54018_ __tmp57358))))
                (___kont5663556636_
                 (lambda (_L53936_ _L53938_ _L53939_ _L53940_ _L53941_)
                   (let ((__tmp57361
                          (let ((__tmp57362
                                 (let ((__tmp57364
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53939_ _L53940_)))
                                       (__tmp57363
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53938_ _L53936_))))
                                   (declare (not safe))
                                   (cons __tmp57364 __tmp57363))))
                            (declare (not safe))
                            (cons '3 __tmp57362))))
                     (declare (not safe))
                     (cons _L53941_ __tmp57361))))
                (___kont5663756638_
                 (lambda (_L53820_
                          _L53822_
                          _L53823_
                          _L53824_
                          _L53825_
                          _L53826_)
                   (let ((__tmp57412 (gx#datum->syntax '#f 'let))
                         (__tmp57365
                          (let ((__tmp57400
                                 (let ((__tmp57409
                                        (let ((__tmp57411
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57410
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L53823_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57411 __tmp57410)))
                                       (__tmp57401
                                        (let ((__tmp57402
                                               (let ((__tmp57408
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57403
                                                      (let ((__tmp57404
                                                             (let ((__tmp57407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57405
                            (let ((__tmp57406
                                   (let ()
                                     (declare (not safe))
                                     (cons _L53820_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57406))))
                       (declare (not safe))
                       (cons __tmp57407 __tmp57405))))
                (declare (not safe))
                (cons __tmp57404 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57408
                                                       __tmp57403))))
                                          (declare (not safe))
                                          (cons __tmp57402 '()))))
                                   (declare (not safe))
                                   (cons __tmp57409 __tmp57401)))
                                (__tmp57366
                                 (let ((__tmp57367
                                        (let ((__tmp57399
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57368
                                               (let ((__tmp57398
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57369
                                                      (let ((__tmp57373
                                                             (let ((__tmp57397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57374
                            (let ((__tmp57396 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57375
                                   (let ((__tmp57391
                                          (let ((__tmp57395
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57392
                                                 (let ((__tmp57393
                                                        (let ((__tmp57394
                                                               (lambda (_g5386053863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5386153866_)
                         (let ()
                           (declare (not safe))
                           (cons _g5386053863_ _g5386153866_)))))
                  (declare (not safe))
                  (foldr1 __tmp57394 '() _L53825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57393 '()))))
                                            (declare (not safe))
                                            (cons __tmp57395 __tmp57392)))
                                         (__tmp57376
                                          (let ((__tmp57383
                                                 (let ((__tmp57390
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57384
                                                        (let ((__tmp57385
                                                               (lambda (_g5385853869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5385953872_)
                         (let ((__tmp57386
                                (let ((__tmp57389
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57387
                                       (let ((__tmp57388
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5385853869_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57388))))
                                  (declare (not safe))
                                  (cons __tmp57389 __tmp57387))))
                           (declare (not safe))
                           (cons __tmp57386 _g5385953872_)))))
                  (declare (not safe))
                  (foldr1 __tmp57385 '() _L53824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57390
                                                         __tmp57384)))
                                                (__tmp57377
                                                 (let ((__tmp57380
                                                        (let ((__tmp57382
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57381
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L53822_ '()))))
                  (declare (not safe))
                  (cons __tmp57382 __tmp57381)))
               (__tmp57378
                (let ((__tmp57379 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57379 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57380
                                                         __tmp57378))))
                                            (declare (not safe))
                                            (cons __tmp57383 __tmp57377))))
                                     (declare (not safe))
                                     (cons __tmp57391 __tmp57376))))
                              (declare (not safe))
                              (cons __tmp57396 __tmp57375))))
                       (declare (not safe))
                       (cons __tmp57397 __tmp57374)))
                    (__tmp57370
                     (let ((__tmp57371
                            (let ((__tmp57372 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57372 '()))))
                       (declare (not safe))
                       (cons __tmp57371 '()))))
                (declare (not safe))
                (cons __tmp57373 __tmp57370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57398
                                                       __tmp57369))))
                                          (declare (not safe))
                                          (cons __tmp57399 __tmp57368))))
                                   (declare (not safe))
                                   (cons __tmp57367 '()))))
                            (declare (not safe))
                            (cons __tmp57400 __tmp57366))))
                     (declare (not safe))
                     (cons __tmp57412 __tmp57365)))))
            (let* ((___match5696756968_
                    (lambda (_e5364353692_
                             _hd5364253696_
                             _tl5364153699_
                             _e5364653702_
                             _hd5364553706_
                             _tl5364453709_
                             _e5364753712_
                             _e5365053716_
                             _hd5364953720_
                             _tl5364853723_
                             ___splice5663956640_
                             _target5365153726_
                             _tl5365353729_)
                      (letrec ((_loop5365453732_
                                (lambda (_hd5365253736_
                                         _exprs5365853739_
                                         _names5365953741_)
                                  (if (gx#stx-pair? _hd5365253736_)
                                      (let ((_e5365553744_
                                             (gx#syntax-e _hd5365253736_)))
                                        (let ((_lp-tl5365753751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5365553744_)))
                                              (_lp-hd5365653748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5365553744_))))
                                          (if (gx#stx-pair? _lp-hd5365653748_)
                                              (let ((_e5366453754_
                                                     (gx#syntax-e
                                                      _lp-hd5365653748_)))
                                                (let ((_tl5366253761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5366453754_)))
                                                      (_hd5366353758_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5366453754_))))
                                                  (if (gx#stx-pair?
                                                       _tl5366253761_)
                                                      (let ((_e5366753764_
                                                             (gx#syntax-e
                                                              _tl5366253761_)))
                                                        (let ((_tl5366553771_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5366753764_)))
                      (_hd5366653768_
                       (let () (declare (not safe)) (##car _e5366753764_))))
                  (if (gx#stx-null? _tl5366553771_)
                      (_loop5365453732_
                       _lp-tl5365753751_
                       (let ()
                         (declare (not safe))
                         (cons _hd5366653768_ _exprs5365853739_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5366353758_ _names5365953741_)))
                      (let () (declare (not safe)) (_g5347153685_)))))
              (let () (declare (not safe)) (_g5347153685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5347153685_)))))
                                      (let ((_names5366153777_
                                             (reverse _names5365953741_))
                                            (_exprs5366053774_
                                             (reverse _exprs5365853739_)))
                                        (if (gx#stx-pair? _tl5364853723_)
                                            (let ((_e5367053780_
                                                   (gx#syntax-e
                                                    _tl5364853723_)))
                                              (let ((_tl5366853787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5367053780_)))
                                                    (_hd5366953784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5367053780_))))
                                                (if (gx#stx-null?
                                                     _hd5366953784_)
                                                    (if (gx#stx-pair?
                                                         _tl5366853787_)
                                                        (let ((_e5367353790_
                                                               (gx#syntax-e
                                                                _tl5366853787_)))
                                                          (let ((_tl5367153797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5367353790_)))
                        (_hd5367253794_
                         (let () (declare (not safe)) (##car _e5367353790_))))
                    (if (gx#stx-pair? _tl5367153797_)
                        (let ((_e5367653800_ (gx#syntax-e _tl5367153797_)))
                          (let ((_tl5367453807_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5367653800_)))
                                (_hd5367553804_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5367653800_))))
                            (if (gx#stx-pair? _tl5367453807_)
                                (let ((_e5367953810_
                                       (gx#syntax-e _tl5367453807_)))
                                  (let ((_tl5367753817_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5367953810_)))
                                        (_hd5367853814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5367953810_))))
                                    (if (gx#stx-null? _tl5367753817_)
                                        (___kont5663756638_
                                         _hd5367853814_
                                         _hd5367553804_
                                         _hd5367253794_
                                         _exprs5366053774_
                                         _names5366153777_
                                         _hd5364253696_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_)))))
                        (let () (declare (not safe)) (_g5347153685_)))))
                (let () (declare (not safe)) (_g5347153685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5347153685_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5347153685_))))))))
                        (_loop5365453732_ _target5365153726_ '() '()))))
                   (___match5674556746_
                    (lambda (_e5351554317_
                             _hd5351454321_
                             _tl5351354324_
                             _e5351854327_
                             _hd5351754331_
                             _tl5351654334_
                             _e5351954337_
                             _e5352254341_
                             _hd5352154345_
                             _tl5352054348_
                             ___splice5662556626_
                             _target5352354351_
                             _tl5352554354_
                             _e5353454357_
                             _hd5353354361_
                             _tl5353254364_)
                      (letrec ((_loop5352654367_
                                (lambda (_hd5352454371_ _exprs5353054374_)
                                  (if (gx#stx-pair? _hd5352454371_)
                                      (let ((_e5352754377_
                                             (gx#syntax-e _hd5352454371_)))
                                        (let ((_lp-tl5352954384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5352754377_)))
                                              (_lp-hd5352854381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5352754377_))))
                                          (_loop5352654367_
                                           _lp-tl5352954384_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5352854381_
                                                   _exprs5353054374_)))))
                                      (let ((_exprs5353154387_
                                             (reverse _exprs5353054374_)))
                                        (___kont5662356624_
                                         _hd5353354361_
                                         _exprs5353154387_
                                         _hd5352154345_
                                         _hd5351454321_))))))
                        (_loop5352654367_ _target5352354351_ '()))))
                   (___match5670556706_
                    (lambda (_e5348054434_
                             _hd5347954438_
                             _tl5347854441_
                             _e5348354444_
                             _hd5348254448_
                             _tl5348154451_
                             _e5348454454_
                             _e5348754458_
                             _hd5348654462_
                             _tl5348554465_
                             ___splice5662156622_
                             _target5348854468_
                             _tl5349054471_
                             _e5349954474_
                             _hd5349854478_
                             _tl5349754481_
                             _e5350254484_
                             _hd5350154488_
                             _tl5350054491_
                             _e5350554494_
                             _hd5350454498_
                             _tl5350354501_
                             _e5350854504_
                             _hd5350754508_
                             _tl5350654511_)
                      (letrec ((_loop5349154514_
                                (lambda (_hd5348954518_ _exprs5349554521_)
                                  (if (gx#stx-pair? _hd5348954518_)
                                      (let ((_e5349254524_
                                             (gx#syntax-e _hd5348954518_)))
                                        (let ((_lp-tl5349454531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5349254524_)))
                                              (_lp-hd5349354528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5349254524_))))
                                          (_loop5349154514_
                                           _lp-tl5349454531_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5349354528_
                                                   _exprs5349554521_)))))
                                      (let ((_exprs5349654534_
                                             (reverse _exprs5349554521_)))
                                        (___kont5661956620_
                                         _hd5350754508_
                                         _hd5350454498_
                                         _exprs5349654534_
                                         _hd5348654462_
                                         _hd5347954438_))))))
                        (_loop5349154514_ _target5348854468_ '())))))
              (if (gx#stx-pair? ___stx5661656617_)
                  (let ((_e5348054434_ (gx#syntax-e ___stx5661656617_)))
                    (let ((_tl5347854441_
                           (let () (declare (not safe)) (##cdr _e5348054434_)))
                          (_hd5347954438_
                           (let ()
                             (declare (not safe))
                             (##car _e5348054434_))))
                      (if (gx#stx-pair? _tl5347854441_)
                          (let ((_e5348354444_ (gx#syntax-e _tl5347854441_)))
                            (let ((_tl5348154451_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5348354444_)))
                                  (_hd5348254448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5348354444_))))
                              (if (gx#stx-datum? _hd5348254448_)
                                  (let ((_e5348454454_
                                         (gx#stx-e _hd5348254448_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5348454454_ '1))
                                        (if (gx#stx-pair? _tl5348154451_)
                                            (let ((_e5348754458_
                                                   (gx#syntax-e
                                                    _tl5348154451_)))
                                              (let ((_tl5348554465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5348754458_)))
                                                    (_hd5348654462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5348754458_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5348554465_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5348554465_)
                                                              '2)
                                                        (let ((___splice5662156622_
                                                               (gx#syntax-split-splice
                                                                _tl5348554465_
                                                                '2)))
                                                          (let ((_tl5349054471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5662156622_ '1)))
                        (_target5348854468_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5662156622_ '0))))
                    (if (gx#stx-pair? _tl5349054471_)
                        (let ((_e5349954474_ (gx#syntax-e _tl5349054471_)))
                          (let ((_tl5349754481_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5349954474_)))
                                (_hd5349854478_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5349954474_))))
                            (if (gx#stx-pair? _hd5349854478_)
                                (let ((_e5350254484_
                                       (gx#syntax-e _hd5349854478_)))
                                  (let ((_tl5350054491_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5350254484_)))
                                        (_hd5350154488_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5350254484_))))
                                    (if (gx#identifier? _hd5350154488_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57414_|
                                             _hd5350154488_)
                                            (if (gx#stx-pair? _tl5350054491_)
                                                (let ((_e5350554494_
                                                       (gx#syntax-e
                                                        _tl5350054491_)))
                                                  (let ((_tl5350354501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5350554494_)))
                                                        (_hd5350454498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5350554494_))))
                                                    (if (gx#stx-null?
                                                         _tl5350354501_)
                                                        (if (gx#stx-pair?
                                                             _tl5349754481_)
                                                            (let ((_e5350854504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5349754481_)))
                      (let ((_tl5350654511_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5350854504_)))
                            (_hd5350754508_
                             (let ()
                               (declare (not safe))
                               (##car _e5350854504_))))
                        (if (gx#stx-null? _tl5350654511_)
                            (___match5670556706_
                             _e5348054434_
                             _hd5347954438_
                             _tl5347854441_
                             _e5348354444_
                             _hd5348254448_
                             _tl5348154451_
                             _e5348454454_
                             _e5348754458_
                             _hd5348654462_
                             _tl5348554465_
                             ___splice5662156622_
                             _target5348854468_
                             _tl5349054471_
                             _e5349954474_
                             _hd5349854478_
                             _tl5349754481_
                             _e5350254484_
                             _hd5350154488_
                             _tl5350054491_
                             _e5350554494_
                             _hd5350454498_
                             _tl5350354501_
                             _e5350854504_
                             _hd5350754508_
                             _tl5350654511_)
                            (if (fx>= (gx#stx-length _tl5348554465_) '1)
                                (let ((___splice5662556626_
                                       (gx#syntax-split-splice
                                        _tl5348554465_
                                        '1)))
                                  (let ((_tl5352554354_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5662556626_
                                            '1)))
                                        (_target5352354351_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5662556626_
                                            '0))))
                                    (if (gx#stx-pair? _tl5352554354_)
                                        (let ((_e5353454357_
                                               (gx#syntax-e _tl5352554354_)))
                                          (let ((_tl5353254364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5353454357_)))
                                                (_hd5353354361_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5353454357_))))
                                            (if (gx#stx-null? _tl5353254364_)
                                                (___match5674556746_
                                                 _e5348054434_
                                                 _hd5347954438_
                                                 _tl5347854441_
                                                 _e5348354444_
                                                 _hd5348254448_
                                                 _tl5348154451_
                                                 _e5348454454_
                                                 _e5348754458_
                                                 _hd5348654462_
                                                 _tl5348554465_
                                                 ___splice5662556626_
                                                 _target5352354351_
                                                 _tl5352554354_
                                                 _e5353454357_
                                                 _hd5353354361_
                                                 _tl5353254364_)
                                                (if (gx#stx-null?
                                                     _tl5348554465_)
                                                    (___kont5662756628_
                                                     _hd5348654462_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5347153685_))))))
                                        (if (gx#stx-null? _tl5348554465_)
                                            (___kont5662756628_ _hd5348654462_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5347153685_))))))
                                (if (gx#stx-null? _tl5348554465_)
                                    (___kont5662756628_ _hd5348654462_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5347153685_)))))))
                    (if (fx>= (gx#stx-length _tl5348554465_) '1)
                        (let ((___splice5662556626_
                               (gx#syntax-split-splice _tl5348554465_ '1)))
                          (let ((_tl5352554354_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5662556626_ '1)))
                                (_target5352354351_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5662556626_ '0))))
                            (if (gx#stx-pair? _tl5352554354_)
                                (let ((_e5353454357_
                                       (gx#syntax-e _tl5352554354_)))
                                  (let ((_tl5353254364_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5353454357_)))
                                        (_hd5353354361_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5353454357_))))
                                    (if (gx#stx-null? _tl5353254364_)
                                        (___match5674556746_
                                         _e5348054434_
                                         _hd5347954438_
                                         _tl5347854441_
                                         _e5348354444_
                                         _hd5348254448_
                                         _tl5348154451_
                                         _e5348454454_
                                         _e5348754458_
                                         _hd5348654462_
                                         _tl5348554465_
                                         ___splice5662556626_
                                         _target5352354351_
                                         _tl5352554354_
                                         _e5353454357_
                                         _hd5353354361_
                                         _tl5353254364_)
                                        (if (gx#stx-null? _tl5348554465_)
                                            (___kont5662756628_ _hd5348654462_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5347153685_))))))
                                (if (gx#stx-null? _tl5348554465_)
                                    (___kont5662756628_ _hd5348654462_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5347153685_))))))
                        (if (gx#stx-null? _tl5348554465_)
                            (___kont5662756628_ _hd5348654462_)
                            (let () (declare (not safe)) (_g5347153685_)))))
                (if (fx>= (gx#stx-length _tl5348554465_) '1)
                    (let ((___splice5662556626_
                           (gx#syntax-split-splice _tl5348554465_ '1)))
                      (let ((_tl5352554354_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5662556626_ '1)))
                            (_target5352354351_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5662556626_ '0))))
                        (if (gx#stx-pair? _tl5352554354_)
                            (let ((_e5353454357_ (gx#syntax-e _tl5352554354_)))
                              (let ((_tl5353254364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5353454357_)))
                                    (_hd5353354361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5353454357_))))
                                (if (gx#stx-null? _tl5353254364_)
                                    (___match5674556746_
                                     _e5348054434_
                                     _hd5347954438_
                                     _tl5347854441_
                                     _e5348354444_
                                     _hd5348254448_
                                     _tl5348154451_
                                     _e5348454454_
                                     _e5348754458_
                                     _hd5348654462_
                                     _tl5348554465_
                                     ___splice5662556626_
                                     _target5352354351_
                                     _tl5352554354_
                                     _e5353454357_
                                     _hd5353354361_
                                     _tl5353254364_)
                                    (if (gx#stx-null? _tl5348554465_)
                                        (___kont5662756628_ _hd5348654462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_))))))
                            (if (gx#stx-null? _tl5348554465_)
                                (___kont5662756628_ _hd5348654462_)
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_))))))
                    (if (gx#stx-null? _tl5348554465_)
                        (___kont5662756628_ _hd5348654462_)
                        (let () (declare (not safe)) (_g5347153685_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5348554465_)
                                                          '1)
                                                    (let ((___splice5662556626_
                                                           (gx#syntax-split-splice
                                                            _tl5348554465_
                                                            '1)))
                                                      (let ((_tl5352554354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5662556626_ '1)))
                    (_target5352354351_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5662556626_ '0))))
                (if (gx#stx-pair? _tl5352554354_)
                    (let ((_e5353454357_ (gx#syntax-e _tl5352554354_)))
                      (let ((_tl5353254364_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5353454357_)))
                            (_hd5353354361_
                             (let ()
                               (declare (not safe))
                               (##car _e5353454357_))))
                        (if (gx#stx-null? _tl5353254364_)
                            (___match5674556746_
                             _e5348054434_
                             _hd5347954438_
                             _tl5347854441_
                             _e5348354444_
                             _hd5348254448_
                             _tl5348154451_
                             _e5348454454_
                             _e5348754458_
                             _hd5348654462_
                             _tl5348554465_
                             ___splice5662556626_
                             _target5352354351_
                             _tl5352554354_
                             _e5353454357_
                             _hd5353354361_
                             _tl5353254364_)
                            (if (gx#stx-null? _tl5348554465_)
                                (___kont5662756628_ _hd5348654462_)
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_))))))
                    (if (gx#stx-null? _tl5348554465_)
                        (___kont5662756628_ _hd5348654462_)
                        (let () (declare (not safe)) (_g5347153685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5348554465_)
                                                        (___kont5662756628_
                                                         _hd5348654462_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5347153685_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5348554465_)
                                                      '1)
                                                (let ((___splice5662556626_
                                                       (gx#syntax-split-splice
                                                        _tl5348554465_
                                                        '1)))
                                                  (let ((_tl5352554354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5662556626_
                                                            '1)))
                                                        (_target5352354351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5662556626_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5352554354_)
                                                        (let ((_e5353454357_
                                                               (gx#syntax-e
                                                                _tl5352554354_)))
                                                          (let ((_tl5353254364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5353454357_)))
                        (_hd5353354361_
                         (let () (declare (not safe)) (##car _e5353454357_))))
                    (if (gx#stx-null? _tl5353254364_)
                        (___match5674556746_
                         _e5348054434_
                         _hd5347954438_
                         _tl5347854441_
                         _e5348354444_
                         _hd5348254448_
                         _tl5348154451_
                         _e5348454454_
                         _e5348754458_
                         _hd5348654462_
                         _tl5348554465_
                         ___splice5662556626_
                         _target5352354351_
                         _tl5352554354_
                         _e5353454357_
                         _hd5353354361_
                         _tl5353254364_)
                        (if (gx#stx-null? _tl5348554465_)
                            (___kont5662756628_ _hd5348654462_)
                            (let () (declare (not safe)) (_g5347153685_))))))
                (if (gx#stx-null? _tl5348554465_)
                    (___kont5662756628_ _hd5348654462_)
                    (let () (declare (not safe)) (_g5347153685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5348554465_)
                                                    (___kont5662756628_
                                                     _hd5348654462_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5347153685_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5348554465_)
                                                  '1)
                                            (let ((___splice5662556626_
                                                   (gx#syntax-split-splice
                                                    _tl5348554465_
                                                    '1)))
                                              (let ((_tl5352554354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5662556626_
                                                        '1)))
                                                    (_target5352354351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5662556626_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5352554354_)
                                                    (let ((_e5353454357_
                                                           (gx#syntax-e
                                                            _tl5352554354_)))
                                                      (let ((_tl5353254364_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5353454357_)))
                    (_hd5353354361_
                     (let () (declare (not safe)) (##car _e5353454357_))))
                (if (gx#stx-null? _tl5353254364_)
                    (___match5674556746_
                     _e5348054434_
                     _hd5347954438_
                     _tl5347854441_
                     _e5348354444_
                     _hd5348254448_
                     _tl5348154451_
                     _e5348454454_
                     _e5348754458_
                     _hd5348654462_
                     _tl5348554465_
                     ___splice5662556626_
                     _target5352354351_
                     _tl5352554354_
                     _e5353454357_
                     _hd5353354361_
                     _tl5353254364_)
                    (if (gx#stx-null? _tl5348554465_)
                        (___kont5662756628_ _hd5348654462_)
                        (let () (declare (not safe)) (_g5347153685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5348554465_)
                                                        (___kont5662756628_
                                                         _hd5348654462_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5347153685_))))))
                                            (if (gx#stx-null? _tl5348554465_)
                                                (___kont5662756628_
                                                 _hd5348654462_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5347153685_)))))))
                                (if (fx>= (gx#stx-length _tl5348554465_) '1)
                                    (let ((___splice5662556626_
                                           (gx#syntax-split-splice
                                            _tl5348554465_
                                            '1)))
                                      (let ((_tl5352554354_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5662556626_
                                                '1)))
                                            (_target5352354351_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5662556626_
                                                '0))))
                                        (if (gx#stx-pair? _tl5352554354_)
                                            (let ((_e5353454357_
                                                   (gx#syntax-e
                                                    _tl5352554354_)))
                                              (let ((_tl5353254364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5353454357_)))
                                                    (_hd5353354361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5353454357_))))
                                                (if (gx#stx-null?
                                                     _tl5353254364_)
                                                    (___match5674556746_
                                                     _e5348054434_
                                                     _hd5347954438_
                                                     _tl5347854441_
                                                     _e5348354444_
                                                     _hd5348254448_
                                                     _tl5348154451_
                                                     _e5348454454_
                                                     _e5348754458_
                                                     _hd5348654462_
                                                     _tl5348554465_
                                                     ___splice5662556626_
                                                     _target5352354351_
                                                     _tl5352554354_
                                                     _e5353454357_
                                                     _hd5353354361_
                                                     _tl5353254364_)
                                                    (if (gx#stx-null?
                                                         _tl5348554465_)
                                                        (___kont5662756628_
                                                         _hd5348654462_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5347153685_))))))
                                            (if (gx#stx-null? _tl5348554465_)
                                                (___kont5662756628_
                                                 _hd5348654462_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5347153685_))))))
                                    (if (gx#stx-null? _tl5348554465_)
                                        (___kont5662756628_ _hd5348654462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_)))))))
                        (if (fx>= (gx#stx-length _tl5348554465_) '1)
                            (let ((___splice5662556626_
                                   (gx#syntax-split-splice _tl5348554465_ '1)))
                              (let ((_tl5352554354_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5662556626_ '1)))
                                    (_target5352354351_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5662556626_
                                        '0))))
                                (if (gx#stx-pair? _tl5352554354_)
                                    (let ((_e5353454357_
                                           (gx#syntax-e _tl5352554354_)))
                                      (let ((_tl5353254364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5353454357_)))
                                            (_hd5353354361_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5353454357_))))
                                        (if (gx#stx-null? _tl5353254364_)
                                            (___match5674556746_
                                             _e5348054434_
                                             _hd5347954438_
                                             _tl5347854441_
                                             _e5348354444_
                                             _hd5348254448_
                                             _tl5348154451_
                                             _e5348454454_
                                             _e5348754458_
                                             _hd5348654462_
                                             _tl5348554465_
                                             ___splice5662556626_
                                             _target5352354351_
                                             _tl5352554354_
                                             _e5353454357_
                                             _hd5353354361_
                                             _tl5353254364_)
                                            (if (gx#stx-null? _tl5348554465_)
                                                (___kont5662756628_
                                                 _hd5348654462_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5347153685_))))))
                                    (if (gx#stx-null? _tl5348554465_)
                                        (___kont5662756628_ _hd5348654462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_))))))
                            (if (gx#stx-null? _tl5348554465_)
                                (___kont5662756628_ _hd5348654462_)
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_)))))))
                (if (fx>= (gx#stx-length _tl5348554465_) '1)
                    (let ((___splice5662556626_
                           (gx#syntax-split-splice _tl5348554465_ '1)))
                      (let ((_tl5352554354_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5662556626_ '1)))
                            (_target5352354351_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5662556626_ '0))))
                        (if (gx#stx-pair? _tl5352554354_)
                            (let ((_e5353454357_ (gx#syntax-e _tl5352554354_)))
                              (let ((_tl5353254364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5353454357_)))
                                    (_hd5353354361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5353454357_))))
                                (if (gx#stx-null? _tl5353254364_)
                                    (___match5674556746_
                                     _e5348054434_
                                     _hd5347954438_
                                     _tl5347854441_
                                     _e5348354444_
                                     _hd5348254448_
                                     _tl5348154451_
                                     _e5348454454_
                                     _e5348754458_
                                     _hd5348654462_
                                     _tl5348554465_
                                     ___splice5662556626_
                                     _target5352354351_
                                     _tl5352554354_
                                     _e5353454357_
                                     _hd5353354361_
                                     _tl5353254364_)
                                    (if (gx#stx-null? _tl5348554465_)
                                        (___kont5662756628_ _hd5348654462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_))))))
                            (if (gx#stx-null? _tl5348554465_)
                                (___kont5662756628_ _hd5348654462_)
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_))))))
                    (if (gx#stx-null? _tl5348554465_)
                        (___kont5662756628_ _hd5348654462_)
                        (let () (declare (not safe)) (_g5347153685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5348554465_)
                                                        (___kont5662756628_
                                                         _hd5348654462_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5347153685_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5347153685_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5348454454_ '2))
                                            (if (gx#stx-pair? _tl5348154451_)
                                                (let ((_e5356154157_
                                                       (gx#syntax-e
                                                        _tl5348154451_)))
                                                  (let ((_tl5355954164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5356154157_)))
                                                        (_hd5356054161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5356154157_))))
                                                    (if (gx#stx-pair?
                                                         _tl5355954164_)
                                                        (let ((_e5356454167_
                                                               (gx#syntax-e
                                                                _tl5355954164_)))
                                                          (let ((_tl5356254174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5356454167_)))
                        (_hd5356354171_
                         (let () (declare (not safe)) (##car _e5356454167_))))
                    (if (gx#stx-pair? _hd5356354171_)
                        (let ((_e5356754177_ (gx#syntax-e _hd5356354171_)))
                          (let ((_tl5356554184_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5356754177_)))
                                (_hd5356654181_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5356754177_))))
                            (if (gx#stx-pair? _hd5356654181_)
                                (let ((_e5357054187_
                                       (gx#syntax-e _hd5356654181_)))
                                  (let ((_tl5356854194_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5357054187_)))
                                        (_hd5356954191_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5357054187_))))
                                    (if (gx#identifier? _hd5356954191_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57413_|
                                             _hd5356954191_)
                                            (if (gx#stx-pair? _tl5356854194_)
                                                (let ((_e5357354197_
                                                       (gx#syntax-e
                                                        _tl5356854194_)))
                                                  (let ((_tl5357154204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5357354197_)))
                                                        (_hd5357254201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5357354197_))))
                                                    (if (gx#stx-null?
                                                         _tl5357154204_)
                                                        (if (gx#stx-pair?
                                                             _tl5356554184_)
                                                            (let ((_e5357654207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5356554184_)))
                      (let ((_tl5357454214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5357654207_)))
                            (_hd5357554211_
                             (let ()
                               (declare (not safe))
                               (##car _e5357654207_))))
                        (___kont5662956630_
                         _tl5356254174_
                         _tl5357454214_
                         _hd5357554211_
                         _hd5357254201_
                         _hd5356054161_
                         _hd5347954438_)))
                    (___kont5663156632_
                     _tl5356254174_
                     _tl5356554184_
                     _hd5356654181_
                     _hd5356054161_
                     _hd5347954438_))
                (___kont5663156632_
                 _tl5356254174_
                 _tl5356554184_
                 _hd5356654181_
                 _hd5356054161_
                 _hd5347954438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5663156632_
                                                 _tl5356254174_
                                                 _tl5356554184_
                                                 _hd5356654181_
                                                 _hd5356054161_
                                                 _hd5347954438_))
                                            (___kont5663156632_
                                             _tl5356254174_
                                             _tl5356554184_
                                             _hd5356654181_
                                             _hd5356054161_
                                             _hd5347954438_))
                                        (___kont5663156632_
                                         _tl5356254174_
                                         _tl5356554184_
                                         _hd5356654181_
                                         _hd5356054161_
                                         _hd5347954438_))))
                                (___kont5663156632_
                                 _tl5356254174_
                                 _tl5356554184_
                                 _hd5356654181_
                                 _hd5356054161_
                                 _hd5347954438_))))
                        (if (gx#stx-null? _hd5356354171_)
                            (___kont5663356634_
                             _tl5356254174_
                             _hd5356054161_
                             _hd5347954438_)
                            (let () (declare (not safe)) (_g5347153685_))))))
                (let () (declare (not safe)) (_g5347153685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5347153685_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5348454454_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5348154451_)
                                                    (let ((_e5362853906_
                                                           (gx#syntax-e
                                                            _tl5348154451_)))
                                                      (let ((_tl5362653913_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5362853906_)))
                    (_hd5362753910_
                     (let () (declare (not safe)) (##car _e5362853906_))))
                (if (gx#stx-pair? _tl5362653913_)
                    (let ((_e5363153916_ (gx#syntax-e _tl5362653913_)))
                      (let ((_tl5362953923_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5363153916_)))
                            (_hd5363053920_
                             (let ()
                               (declare (not safe))
                               (##car _e5363153916_))))
                        (if (gx#stx-pair? _hd5363053920_)
                            (let ((_e5363453926_ (gx#syntax-e _hd5363053920_)))
                              (let ((_tl5363253933_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5363453926_)))
                                    (_hd5363353930_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5363453926_))))
                                (___kont5663556636_
                                 _tl5362953923_
                                 _tl5363253933_
                                 _hd5363353930_
                                 _hd5362753910_
                                 _hd5347954438_)))
                            (if (gx#stx-pair/null? _hd5362753910_)
                                (let ((___splice5663956640_
                                       (gx#syntax-split-splice
                                        _hd5362753910_
                                        '0)))
                                  (let ((_tl5365353729_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5663956640_
                                            '1)))
                                        (_target5365153726_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5663956640_
                                            '0))))
                                    (if (gx#stx-null? _tl5365353729_)
                                        (___match5696756968_
                                         _e5348054434_
                                         _hd5347954438_
                                         _tl5347854441_
                                         _e5348354444_
                                         _hd5348254448_
                                         _tl5348154451_
                                         _e5348454454_
                                         _e5362853906_
                                         _hd5362753910_
                                         _tl5362653913_
                                         ___splice5663956640_
                                         _target5365153726_
                                         _tl5365353729_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5347153685_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_))))))
                    (if (gx#stx-pair/null? _hd5362753910_)
                        (let ((___splice5663956640_
                               (gx#syntax-split-splice _hd5362753910_ '0)))
                          (let ((_tl5365353729_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5663956640_ '1)))
                                (_target5365153726_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5663956640_ '0))))
                            (if (gx#stx-null? _tl5365353729_)
                                (___match5696756968_
                                 _e5348054434_
                                 _hd5347954438_
                                 _tl5347854441_
                                 _e5348354444_
                                 _hd5348254448_
                                 _tl5348154451_
                                 _e5348454454_
                                 _e5362853906_
                                 _hd5362753910_
                                 _tl5362653913_
                                 ___splice5663956640_
                                 _target5365153726_
                                 _tl5365353729_)
                                (let ()
                                  (declare (not safe))
                                  (_g5347153685_)))))
                        (let () (declare (not safe)) (_g5347153685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5347153685_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5347153685_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5347153685_)))))
                          (let () (declare (not safe)) (_g5347153685_)))))
                  (let () (declare (not safe)) (_g5347153685_))))))))))
