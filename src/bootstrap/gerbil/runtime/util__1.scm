(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g54419_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g54420_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx50148_)
        (let* ((_g5015250166_
                (lambda (_g5015350162_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5015350162_)))
               (_g5015150208_
                (lambda (_g5015350170_)
                  (if (gx#stx-pair? _g5015350170_)
                      (let ((_e5015550173_ (gx#syntax-e _g5015350170_)))
                        (let ((_hd5015650177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5015550173_)))
                              (_tl5015750180_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5015550173_))))
                          (if (gx#stx-pair? _tl5015750180_)
                              (let ((_e5015850183_
                                     (gx#syntax-e _tl5015750180_)))
                                (let ((_hd5015950187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5015850183_)))
                                      (_tl5016050190_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5015850183_))))
                                  (if (gx#stx-null? _tl5016050190_)
                                      ((lambda (_L50193_)
                                         (let ((__tmp54124
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp54089
                                                (let ((__tmp54090
                                                       (let ((__tmp54117
                                                              (let ((__tmp54123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp54118
                             (let ((__tmp54119
                                    (let ((__tmp54122
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp54120
                                           (let ((__tmp54121
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp54121 '()))))
                                      (declare (not safe))
                                      (cons __tmp54122 __tmp54120))))
                               (declare (not safe))
                               (cons __tmp54119 '()))))
                        (declare (not safe))
                        (cons __tmp54123 __tmp54118)))
                     (__tmp54091
                      (let ((__tmp54092
                             (let ((__tmp54116 (gx#datum->syntax '#f 'let))
                                   (__tmp54093
                                    (let ((__tmp54115
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp54094
                                           (let ((__tmp54095
                                                  (let ((__tmp54096
                                                         (let ((__tmp54114
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp54097
                        (let ((__tmp54104
                               (let ((__tmp54113 (gx#datum->syntax '#f '##fx=))
                                     (__tmp54105
                                      (let ((__tmp54107
                                             (let ((__tmp54112
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp54108
                                                    (let ((__tmp54109
                                                           (let ((__tmp54110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp54111
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp54111))))
                     (declare (not safe))
                     (cons '0 __tmp54110))))
              (declare (not safe))
              (cons _L50193_ __tmp54109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp54112 __tmp54108)))
                                            (__tmp54106
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp54107 __tmp54106))))
                                 (declare (not safe))
                                 (cons __tmp54113 __tmp54105)))
                              (__tmp54098
                               (let ((__tmp54102
                                      (let ((__tmp54103
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp54103 '())))
                                     (__tmp54099
                                      (let ((__tmp54100
                                             (let ((__tmp54101
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp54101 '()))))
                                        (declare (not safe))
                                        (cons __tmp54100 '()))))
                                 (declare (not safe))
                                 (cons __tmp54102 __tmp54099))))
                          (declare (not safe))
                          (cons __tmp54104 __tmp54098))))
                   (declare (not safe))
                   (cons __tmp54114 __tmp54097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp54096 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp54095))))
                                      (declare (not safe))
                                      (cons __tmp54115 __tmp54094))))
                               (declare (not safe))
                               (cons __tmp54116 __tmp54093))))
                        (declare (not safe))
                        (cons __tmp54092 '()))))
                 (declare (not safe))
                 (cons __tmp54117 __tmp54091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp54090))))
                                           (declare (not safe))
                                           (cons __tmp54124 __tmp54089)))
                                       _hd5015950187_)
                                      (_g5015250166_ _g5015350170_))))
                              (_g5015250166_ _g5015350170_))))
                      (_g5015250166_ _g5015350170_)))))
          (_g5015150208_ _$stx50148_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx50212_)
        (let* ((_g5021650230_
                (lambda (_g5021750226_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5021750226_)))
               (_g5021550271_
                (lambda (_g5021750234_)
                  (if (gx#stx-pair? _g5021750234_)
                      (let ((_e5021950237_ (gx#syntax-e _g5021750234_)))
                        (let ((_hd5022050241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5021950237_)))
                              (_tl5022150244_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5021950237_))))
                          (if (gx#stx-pair? _tl5022150244_)
                              (let ((_e5022250247_
                                     (gx#syntax-e _tl5022150244_)))
                                (let ((_hd5022350251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5022250247_)))
                                      (_tl5022450254_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5022250247_))))
                                  (if (gx#stx-null? _tl5022450254_)
                                      ((lambda (_L50257_)
                                         (let ((__tmp54129
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp54125
                                                (let ((__tmp54126
                                                       (let ((__tmp54127
                                                              (let ((__tmp54128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp54128))))
                 (declare (not safe))
                 (cons '0 __tmp54127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L50257_ __tmp54126))))
                                           (declare (not safe))
                                           (cons __tmp54129 __tmp54125)))
                                       _hd5022350251_)
                                      (_g5021650230_ _g5021750234_))))
                              (_g5021650230_ _g5021750234_))))
                      (_g5021650230_ _g5021750234_)))))
          (_g5021550271_ _$stx50212_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx50275_)
        (let* ((_g5027950289_
                (lambda (_g5028050285_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5028050285_)))
               (_g5027850310_
                (lambda (_g5028050293_)
                  (if (gx#stx-pair? _g5028050293_)
                      (let ((_e5028150296_ (gx#syntax-e _g5028050293_)))
                        (let ((_hd5028250300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5028150296_)))
                              (_tl5028350303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5028150296_))))
                          (if (gx#stx-null? _tl5028350303_)
                              ((lambda ()
                                 (let ((__tmp54131
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp54130
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp54131 __tmp54130))))
                              (_g5027950289_ _g5028050293_))))
                      (_g5027950289_ _g5028050293_)))))
          (_g5027850310_ _$stx50275_))))
    (define |[:0:]#defassget|
      (lambda (_$stx50314_)
        (let* ((_g5031850336_
                (lambda (_g5031950332_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5031950332_)))
               (_g5031750391_
                (lambda (_g5031950340_)
                  (if (gx#stx-pair? _g5031950340_)
                      (let ((_e5032250343_ (gx#syntax-e _g5031950340_)))
                        (let ((_hd5032350347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5032250343_)))
                              (_tl5032450350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5032250343_))))
                          (if (gx#stx-pair? _tl5032450350_)
                              (let ((_e5032550353_
                                     (gx#syntax-e _tl5032450350_)))
                                (let ((_hd5032650357_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5032550353_)))
                                      (_tl5032750360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5032550353_))))
                                  (if (gx#stx-pair? _tl5032750360_)
                                      (let ((_e5032850363_
                                             (gx#syntax-e _tl5032750360_)))
                                        (let ((_hd5032950367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5032850363_)))
                                              (_tl5033050370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5032850363_))))
                                          (if (gx#stx-null? _tl5033050370_)
                                              ((lambda (_L50373_ _L50375_)
                                                 (let ((__tmp54180
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54132
                                                        (let ((__tmp54171
                                                               (let ((__tmp54172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54179 (gx#datum->syntax '#f 'key))
                                    (__tmp54173
                                     (let ((__tmp54178
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54174
                                            (let ((__tmp54175
                                                   (let ((__tmp54177
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54176
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54177
                                                           __tmp54176))))
                                              (declare (not safe))
                                              (cons __tmp54175 '()))))
                                       (declare (not safe))
                                       (cons __tmp54178 __tmp54174))))
                                (declare (not safe))
                                (cons __tmp54179 __tmp54173))))
                         (declare (not safe))
                         (cons _L50375_ __tmp54172)))
                      (__tmp54133
                       (let ((__tmp54134
                              (let ((__tmp54170 (gx#datum->syntax '#f 'cond))
                                    (__tmp54135
                                     (let ((__tmp54152
                                            (let ((__tmp54157
                                                   (let ((__tmp54169
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp54158
                                                          (let ((__tmp54165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp54168 (gx#datum->syntax '#f 'pair?))
                               (__tmp54166
                                (let ((__tmp54167 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp54167 '()))))
                           (declare (not safe))
                           (cons __tmp54168 __tmp54166)))
                        (__tmp54159
                         (let ((__tmp54160
                                (let ((__tmp54161
                                       (let ((__tmp54164
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp54162
                                              (let ((__tmp54163
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp54163 '()))))
                                         (declare (not safe))
                                         (cons __tmp54164 __tmp54162))))
                                  (declare (not safe))
                                  (cons _L50373_ __tmp54161))))
                           (declare (not safe))
                           (cons __tmp54160 '()))))
                    (declare (not safe))
                    (cons __tmp54165 __tmp54159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54169
                                                           __tmp54158)))
                                                  (__tmp54153
                                                   (let ((__tmp54156
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp54154
                                                          (let ((__tmp54155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp54155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54156
                                                           __tmp54154))))
                                              (declare (not safe))
                                              (cons __tmp54157 __tmp54153)))
                                           (__tmp54136
                                            (let ((__tmp54142
                                                   (let ((__tmp54148
                                                          (let ((__tmp54151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp54149
                         (let ((__tmp54150 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54150 '()))))
                    (declare (not safe))
                    (cons __tmp54151 __tmp54149)))
                 (__tmp54143
                  (let ((__tmp54144
                         (let ((__tmp54147 (gx#datum->syntax '#f 'default))
                               (__tmp54145
                                (let ((__tmp54146 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp54146 '()))))
                           (declare (not safe))
                           (cons __tmp54147 __tmp54145))))
                    (declare (not safe))
                    (cons __tmp54144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54148
                                                           __tmp54143)))
                                                  (__tmp54137
                                                   (let ((__tmp54138
                                                          (let ((__tmp54141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp54139
                         (let ((__tmp54140 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54140 '()))))
                    (declare (not safe))
                    (cons __tmp54141 __tmp54139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54138 '()))))
                                              (declare (not safe))
                                              (cons __tmp54142 __tmp54137))))
                                       (declare (not safe))
                                       (cons __tmp54152 __tmp54136))))
                                (declare (not safe))
                                (cons __tmp54170 __tmp54135))))
                         (declare (not safe))
                         (cons __tmp54134 '()))))
                  (declare (not safe))
                  (cons __tmp54171 __tmp54133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54180
                                                         __tmp54132)))
                                               _hd5032950367_
                                               _hd5032650357_)
                                              (_g5031850336_ _g5031950340_))))
                                      (_g5031850336_ _g5031950340_))))
                              (_g5031850336_ _g5031950340_))))
                      (_g5031850336_ _g5031950340_)))))
          (_g5031750391_ _$stx50314_))))
    (define |[:0:]#defpget|
      (lambda (_$stx50395_)
        (let* ((_g5039950417_
                (lambda (_g5040050413_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5040050413_)))
               (_g5039850472_
                (lambda (_g5040050421_)
                  (if (gx#stx-pair? _g5040050421_)
                      (let ((_e5040350424_ (gx#syntax-e _g5040050421_)))
                        (let ((_hd5040450428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5040350424_)))
                              (_tl5040550431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5040350424_))))
                          (if (gx#stx-pair? _tl5040550431_)
                              (let ((_e5040650434_
                                     (gx#syntax-e _tl5040550431_)))
                                (let ((_hd5040750438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5040650434_)))
                                      (_tl5040850441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5040650434_))))
                                  (if (gx#stx-pair? _tl5040850441_)
                                      (let ((_e5040950444_
                                             (gx#syntax-e _tl5040850441_)))
                                        (let ((_hd5041050448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5040950444_)))
                                              (_tl5041150451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5040950444_))))
                                          (if (gx#stx-null? _tl5041150451_)
                                              ((lambda (_L50454_ _L50456_)
                                                 (let ((__tmp54250
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54181
                                                        (let ((__tmp54241
                                                               (let ((__tmp54242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54249 (gx#datum->syntax '#f 'key))
                                    (__tmp54243
                                     (let ((__tmp54248
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54244
                                            (let ((__tmp54245
                                                   (let ((__tmp54247
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54246
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54247
                                                           __tmp54246))))
                                              (declare (not safe))
                                              (cons __tmp54245 '()))))
                                       (declare (not safe))
                                       (cons __tmp54248 __tmp54244))))
                                (declare (not safe))
                                (cons __tmp54249 __tmp54243))))
                         (declare (not safe))
                         (cons _L50456_ __tmp54242)))
                      (__tmp54182
                       (let ((__tmp54183
                              (let ((__tmp54240 (gx#datum->syntax '#f 'let))
                                    (__tmp54184
                                     (let ((__tmp54239
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54185
                                            (let ((__tmp54234
                                                   (let ((__tmp54235
                                                          (let ((__tmp54238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp54236
                         (let ((__tmp54237 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp54237 '()))))
                    (declare (not safe))
                    (cons __tmp54238 __tmp54236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54235 '())))
                                                  (__tmp54186
                                                   (let ((__tmp54187
                                                          (let ((__tmp54233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54188
                         (let ((__tmp54232 (gx#datum->syntax '#f 'rest))
                               (__tmp54189
                                (let ((__tmp54208
                                       (let ((__tmp54225
                                              (let ((__tmp54231
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp54226
                                                     (let ((__tmp54230
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp54227
                                                            (let ((__tmp54229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp54228 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp54229 __tmp54228))))
               (declare (not safe))
               (cons __tmp54230 __tmp54227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54231 __tmp54226)))
                                             (__tmp54209
                                              (let ((__tmp54210
                                                     (let ((__tmp54224
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54211
                                                            (let ((__tmp54219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp54220
                                  (let ((__tmp54223 (gx#datum->syntax '#f 'k))
                                        (__tmp54221
                                         (let ((__tmp54222
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp54222 '()))))
                                    (declare (not safe))
                                    (cons __tmp54223 __tmp54221))))
                             (declare (not safe))
                             (cons _L50454_ __tmp54220)))
                          (__tmp54212
                           (let ((__tmp54218 (gx#datum->syntax '#f 'v))
                                 (__tmp54213
                                  (let ((__tmp54214
                                         (let ((__tmp54217
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54215
                                                (let ((__tmp54216
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp54216 '()))))
                                           (declare (not safe))
                                           (cons __tmp54217 __tmp54215))))
                                    (declare (not safe))
                                    (cons __tmp54214 '()))))
                             (declare (not safe))
                             (cons __tmp54218 __tmp54213))))
                      (declare (not safe))
                      (cons __tmp54219 __tmp54212))))
               (declare (not safe))
               (cons __tmp54224 __tmp54211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54210 '()))))
                                         (declare (not safe))
                                         (cons __tmp54225 __tmp54209)))
                                      (__tmp54190
                                       (let ((__tmp54191
                                              (let ((__tmp54207
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54192
                                                     (let ((__tmp54193
                                                            (let ((__tmp54206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp54194
                           (let ((__tmp54202
                                  (let ((__tmp54205
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp54203
                                         (let ((__tmp54204
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54204 '()))))
                                    (declare (not safe))
                                    (cons __tmp54205 __tmp54203)))
                                 (__tmp54195
                                  (let ((__tmp54198
                                         (let ((__tmp54201
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp54199
                                                (let ((__tmp54200
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp54200 '()))))
                                           (declare (not safe))
                                           (cons __tmp54201 __tmp54199)))
                                        (__tmp54196
                                         (let ((__tmp54197
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54197 '()))))
                                    (declare (not safe))
                                    (cons __tmp54198 __tmp54196))))
                             (declare (not safe))
                             (cons __tmp54202 __tmp54195))))
                      (declare (not safe))
                      (cons __tmp54206 __tmp54194))))
               (declare (not safe))
               (cons __tmp54193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54207 __tmp54192))))
                                         (declare (not safe))
                                         (cons __tmp54191 '()))))
                                  (declare (not safe))
                                  (cons __tmp54208 __tmp54190))))
                           (declare (not safe))
                           (cons __tmp54232 __tmp54189))))
                    (declare (not safe))
                    (cons __tmp54233 __tmp54188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54187 '()))))
                                              (declare (not safe))
                                              (cons __tmp54234 __tmp54186))))
                                       (declare (not safe))
                                       (cons __tmp54239 __tmp54185))))
                                (declare (not safe))
                                (cons __tmp54240 __tmp54184))))
                         (declare (not safe))
                         (cons __tmp54183 '()))))
                  (declare (not safe))
                  (cons __tmp54241 __tmp54182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54250
                                                         __tmp54181)))
                                               _hd5041050448_
                                               _hd5040750438_)
                                              (_g5039950417_ _g5040050421_))))
                                      (_g5039950417_ _g5040050421_))))
                              (_g5039950417_ _g5040050421_))))
                      (_g5039950417_ _g5040050421_)))))
          (_g5039850472_ _$stx50395_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx50476_)
        (let* ((_g5048050498_
                (lambda (_g5048150494_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5048150494_)))
               (_g5047950553_
                (lambda (_g5048150502_)
                  (if (gx#stx-pair? _g5048150502_)
                      (let ((_e5048450505_ (gx#syntax-e _g5048150502_)))
                        (let ((_hd5048550509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5048450505_)))
                              (_tl5048650512_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5048450505_))))
                          (if (gx#stx-pair? _tl5048650512_)
                              (let ((_e5048750515_
                                     (gx#syntax-e _tl5048650512_)))
                                (let ((_hd5048850519_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5048750515_)))
                                      (_tl5048950522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5048750515_))))
                                  (if (gx#stx-pair? _tl5048950522_)
                                      (let ((_e5049050525_
                                             (gx#syntax-e _tl5048950522_)))
                                        (let ((_hd5049150529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5049050525_)))
                                              (_tl5049250532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5049050525_))))
                                          (if (gx#stx-null? _tl5049250532_)
                                              ((lambda (_L50535_ _L50537_)
                                                 (let ((__tmp54321
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54251
                                                        (let ((__tmp54316
                                                               (let ((__tmp54317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54320 (gx#datum->syntax '#f 'el))
                                    (__tmp54318
                                     (let ((__tmp54319
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp54319 '()))))
                                (declare (not safe))
                                (cons __tmp54320 __tmp54318))))
                         (declare (not safe))
                         (cons _L50537_ __tmp54317)))
                      (__tmp54252
                       (let ((__tmp54253
                              (let ((__tmp54315 (gx#datum->syntax '#f 'let))
                                    (__tmp54254
                                     (let ((__tmp54314
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54255
                                            (let ((__tmp54303
                                                   (let ((__tmp54310
                                                          (let ((__tmp54313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp54311
                         (let ((__tmp54312 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp54312 '()))))
                    (declare (not safe))
                    (cons __tmp54313 __tmp54311)))
                 (__tmp54304
                  (let ((__tmp54305
                         (let ((__tmp54309 (gx#datum->syntax '#f 'r))
                               (__tmp54306
                                (let ((__tmp54307
                                       (let ((__tmp54308
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp54308 '()))))
                                  (declare (not safe))
                                  (cons __tmp54307 '()))))
                           (declare (not safe))
                           (cons __tmp54309 __tmp54306))))
                    (declare (not safe))
                    (cons __tmp54305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54310
                                                           __tmp54304)))
                                                  (__tmp54256
                                                   (let ((__tmp54257
                                                          (let ((__tmp54302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54258
                         (let ((__tmp54301 (gx#datum->syntax '#f 'rest))
                               (__tmp54259
                                (let ((__tmp54265
                                       (let ((__tmp54296
                                              (let ((__tmp54300
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp54297
                                                     (let ((__tmp54299
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp54298
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp54299
                                                             __tmp54298))))
                                                (declare (not safe))
                                                (cons __tmp54300 __tmp54297)))
                                             (__tmp54266
                                              (let ((__tmp54267
                                                     (let ((__tmp54295
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54268
                                                            (let ((__tmp54290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp54291
                                  (let ((__tmp54294 (gx#datum->syntax '#f 'el))
                                        (__tmp54292
                                         (let ((__tmp54293
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp54293 '()))))
                                    (declare (not safe))
                                    (cons __tmp54294 __tmp54292))))
                             (declare (not safe))
                             (cons _L50535_ __tmp54291)))
                          (__tmp54269
                           (let ((__tmp54282
                                  (let ((__tmp54289
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp54283
                                         (let ((__tmp54288
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp54284
                                                (let ((__tmp54287
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp54285
                                                       (let ((__tmp54286
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp54286
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp54287
                                                        __tmp54285))))
                                           (declare (not safe))
                                           (cons __tmp54288 __tmp54284))))
                                    (declare (not safe))
                                    (cons __tmp54289 __tmp54283)))
                                 (__tmp54270
                                  (let ((__tmp54271
                                         (let ((__tmp54281
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54272
                                                (let ((__tmp54280
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp54273
                                                       (let ((__tmp54274
                                                              (let ((__tmp54279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp54275
                             (let ((__tmp54278 (gx#datum->syntax '#f 'hd))
                                   (__tmp54276
                                    (let ((__tmp54277
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp54277 '()))))
                               (declare (not safe))
                               (cons __tmp54278 __tmp54276))))
                        (declare (not safe))
                        (cons __tmp54279 __tmp54275))))
                 (declare (not safe))
                 (cons __tmp54274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp54280
                                                        __tmp54273))))
                                           (declare (not safe))
                                           (cons __tmp54281 __tmp54272))))
                                    (declare (not safe))
                                    (cons __tmp54271 '()))))
                             (declare (not safe))
                             (cons __tmp54282 __tmp54270))))
                      (declare (not safe))
                      (cons __tmp54290 __tmp54269))))
               (declare (not safe))
               (cons __tmp54295 __tmp54268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54267 '()))))
                                         (declare (not safe))
                                         (cons __tmp54296 __tmp54266)))
                                      (__tmp54260
                                       (let ((__tmp54261
                                              (let ((__tmp54264
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54262
                                                     (let ((__tmp54263
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp54263 '()))))
                                                (declare (not safe))
                                                (cons __tmp54264 __tmp54262))))
                                         (declare (not safe))
                                         (cons __tmp54261 '()))))
                                  (declare (not safe))
                                  (cons __tmp54265 __tmp54260))))
                           (declare (not safe))
                           (cons __tmp54301 __tmp54259))))
                    (declare (not safe))
                    (cons __tmp54302 __tmp54258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54257 '()))))
                                              (declare (not safe))
                                              (cons __tmp54303 __tmp54256))))
                                       (declare (not safe))
                                       (cons __tmp54314 __tmp54255))))
                                (declare (not safe))
                                (cons __tmp54315 __tmp54254))))
                         (declare (not safe))
                         (cons __tmp54253 '()))))
                  (declare (not safe))
                  (cons __tmp54316 __tmp54252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54321
                                                         __tmp54251)))
                                               _hd5049150529_
                                               _hd5048850519_)
                                              (_g5048050498_ _g5048150502_))))
                                      (_g5048050498_ _g5048150502_))))
                              (_g5048050498_ _g5048150502_))))
                      (_g5048050498_ _g5048150502_)))))
          (_g5047950553_ _$stx50476_))))
    (define |[:0:]#DBG|
      (lambda (_$stx50557_)
        (let* ((_g5056150572_
                (lambda (_g5056250568_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5056250568_)))
               (_g5056050601_
                (lambda (_g5056250576_)
                  (if (gx#stx-pair? _g5056250576_)
                      (let ((_e5056450579_ (gx#syntax-e _g5056250576_)))
                        (let ((_hd5056550583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5056450579_)))
                              (_tl5056650586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5056450579_))))
                          ((lambda (_L50589_)
                             (let ((__tmp54323 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp54322
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L50589_))))
                               (declare (not safe))
                               (cons __tmp54323 __tmp54322)))
                           _tl5056650586_)))
                      (_g5056150572_ _g5056250576_)))))
          (_g5056050601_ _$stx50557_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx50605_)
        (let* ((___stx5363153632_ _$stx50605_)
               (_g5061650830_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5363153632_))))
          (let ((___kont5363453635_
                 (lambda (_L51683_ _L51685_ _L51686_ _L51687_ _L51688_)
                   (let ((__tmp54324
                          (let ((__tmp54325
                                 (let ((__tmp54326
                                        (let ((__tmp54330
                                               (let ((__tmp54331
                                                      (lambda (_g5171851721_
                                                               _g5171951724_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5171851721_
                                                                _g5171951724_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp54331
                                                         '()
                                                         _L51686_)))
                                              (__tmp54327
                                               (let ((__tmp54328
                                                      (let ((__tmp54329
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L51683_ '()))))
                (declare (not safe))
                (cons _L51685_ __tmp54329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L51687_ __tmp54328))))
                                          (declare (not safe))
                                          (cons __tmp54330 __tmp54327))))
                                   (declare (not safe))
                                   (cons '() __tmp54326))))
                            (declare (not safe))
                            (cons '2 __tmp54325))))
                     (declare (not safe))
                     (cons _L51688_ __tmp54324))))
                (___kont5363853639_
                 (lambda (_L51536_ _L51538_ _L51539_ _L51540_)
                   (let ((__tmp54332
                          (let ((__tmp54333
                                 (let ((__tmp54334
                                        (let ((__tmp54338
                                               (let ((__tmp54339
                                                      (lambda (_g5156351566_
                                                               _g5156451569_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5156351566_
                                                                _g5156451569_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp54339
                                                         '()
                                                         _L51538_)))
                                              (__tmp54335
                                               (let ((__tmp54336
                                                      (let ((__tmp54337
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L51536_ '()))))
                (declare (not safe))
                (cons _L51536_ __tmp54337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L51539_ __tmp54336))))
                                          (declare (not safe))
                                          (cons __tmp54338 __tmp54335))))
                                   (declare (not safe))
                                   (cons '() __tmp54334))))
                            (declare (not safe))
                            (cons '2 __tmp54333))))
                     (declare (not safe))
                     (cons _L51540_ __tmp54332))))
                (___kont5364253643_
                 (lambda (_L51439_)
                   (let ((__tmp54351 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp54340
                          (let ((__tmp54341
                                 (let ((__tmp54348
                                        (let ((__tmp54350
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp54349
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp54350 __tmp54349)))
                                       (__tmp54342
                                        (let ((__tmp54345
                                               (let ((__tmp54347
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp54346
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp54347 __tmp54346)))
                                              (__tmp54343
                                               (let ((__tmp54344
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp54344))))
                                          (declare (not safe))
                                          (cons __tmp54345 __tmp54343))))
                                   (declare (not safe))
                                   (cons __tmp54348 __tmp54342))))
                            (declare (not safe))
                            (cons _L51439_ __tmp54341))))
                     (declare (not safe))
                     (cons __tmp54351 __tmp54340))))
                (___kont5364453645_
                 (lambda (_L51362_
                          _L51364_
                          _L51365_
                          _L51366_
                          _L51367_
                          _L51368_)
                   (let ((__tmp54352
                          (let ((__tmp54353
                                 (let ((__tmp54355
                                        (let ((__tmp54356
                                               (let ((__tmp54357
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L51365_ '()))))
                                                 (declare (not safe))
                                                 (cons _L51366_ __tmp54357))))
                                          (declare (not safe))
                                          (cons __tmp54356 _L51367_)))
                                       (__tmp54354
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51364_ _L51362_))))
                                   (declare (not safe))
                                   (cons __tmp54355 __tmp54354))))
                            (declare (not safe))
                            (cons '2 __tmp54353))))
                     (declare (not safe))
                     (cons _L51368_ __tmp54352))))
                (___kont5364653647_
                 (lambda (_L51243_ _L51245_ _L51246_ _L51247_ _L51248_)
                   (let ((__tmp54358
                          (let ((__tmp54359
                                 (let ((__tmp54361
                                        (let ((__tmp54362
                                               (let ((__tmp54363
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L51246_ '()))))
                                                 (declare (not safe))
                                                 (cons _L51246_ __tmp54363))))
                                          (declare (not safe))
                                          (cons __tmp54362 _L51247_)))
                                       (__tmp54360
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51245_ _L51243_))))
                                   (declare (not safe))
                                   (cons __tmp54361 __tmp54360))))
                            (declare (not safe))
                            (cons '2 __tmp54359))))
                     (declare (not safe))
                     (cons _L51248_ __tmp54358))))
                (___kont5364853649_
                 (lambda (_L51160_ _L51162_ _L51163_)
                   (let ((__tmp54364
                          (let ((__tmp54365
                                 (let ((__tmp54366
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51162_ _L51160_))))
                                   (declare (not safe))
                                   (cons '() __tmp54366))))
                            (declare (not safe))
                            (cons '3 __tmp54365))))
                     (declare (not safe))
                     (cons _L51163_ __tmp54364))))
                (___kont5365053651_
                 (lambda (_L51081_ _L51083_ _L51084_ _L51085_ _L51086_)
                   (let ((__tmp54367
                          (let ((__tmp54368
                                 (let ((__tmp54370
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51084_ _L51085_)))
                                       (__tmp54369
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51083_ _L51081_))))
                                   (declare (not safe))
                                   (cons __tmp54370 __tmp54369))))
                            (declare (not safe))
                            (cons '3 __tmp54368))))
                     (declare (not safe))
                     (cons _L51086_ __tmp54367))))
                (___kont5365253653_
                 (lambda (_L50965_
                          _L50967_
                          _L50968_
                          _L50969_
                          _L50970_
                          _L50971_)
                   (let ((__tmp54418 (gx#datum->syntax '#f 'let))
                         (__tmp54371
                          (let ((__tmp54406
                                 (let ((__tmp54415
                                        (let ((__tmp54417
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp54416
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L50968_ '()))))
                                          (declare (not safe))
                                          (cons __tmp54417 __tmp54416)))
                                       (__tmp54407
                                        (let ((__tmp54408
                                               (let ((__tmp54414
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp54409
                                                      (let ((__tmp54410
                                                             (let ((__tmp54413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp54411
                            (let ((__tmp54412
                                   (let ()
                                     (declare (not safe))
                                     (cons _L50965_ '()))))
                              (declare (not safe))
                              (cons '() __tmp54412))))
                       (declare (not safe))
                       (cons __tmp54413 __tmp54411))))
                (declare (not safe))
                (cons __tmp54410 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp54414
                                                       __tmp54409))))
                                          (declare (not safe))
                                          (cons __tmp54408 '()))))
                                   (declare (not safe))
                                   (cons __tmp54415 __tmp54407)))
                                (__tmp54372
                                 (let ((__tmp54373
                                        (let ((__tmp54405
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp54374
                                               (let ((__tmp54404
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp54375
                                                      (let ((__tmp54379
                                                             (let ((__tmp54403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp54380
                            (let ((__tmp54402 (gx#datum->syntax '#f 'tagval))
                                  (__tmp54381
                                   (let ((__tmp54397
                                          (let ((__tmp54401
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp54398
                                                 (let ((__tmp54399
                                                        (let ((__tmp54400
                                                               (lambda (_g5100351008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5100451011_)
                         (let ()
                           (declare (not safe))
                           (cons _g5100351008_ _g5100451011_)))))
                  (declare (not safe))
                  (foldr1 __tmp54400 '() _L50970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54399 '()))))
                                            (declare (not safe))
                                            (cons __tmp54401 __tmp54398)))
                                         (__tmp54382
                                          (let ((__tmp54389
                                                 (let ((__tmp54396
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp54390
                                                        (let ((__tmp54391
                                                               (lambda (_g5100551014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5100651017_)
                         (let ((__tmp54392
                                (let ((__tmp54395
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp54393
                                       (let ((__tmp54394
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5100551014_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp54394))))
                                  (declare (not safe))
                                  (cons __tmp54395 __tmp54393))))
                           (declare (not safe))
                           (cons __tmp54392 _g5100651017_)))))
                  (declare (not safe))
                  (foldr1 __tmp54391 '() _L50969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54396
                                                         __tmp54390)))
                                                (__tmp54383
                                                 (let ((__tmp54386
                                                        (let ((__tmp54388
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp54387
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L50967_ '()))))
                  (declare (not safe))
                  (cons __tmp54388 __tmp54387)))
               (__tmp54384
                (let ((__tmp54385 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp54385 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54386
                                                         __tmp54384))))
                                            (declare (not safe))
                                            (cons __tmp54389 __tmp54383))))
                                     (declare (not safe))
                                     (cons __tmp54397 __tmp54382))))
                              (declare (not safe))
                              (cons __tmp54402 __tmp54381))))
                       (declare (not safe))
                       (cons __tmp54403 __tmp54380)))
                    (__tmp54376
                     (let ((__tmp54377
                            (let ((__tmp54378 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp54378 '()))))
                       (declare (not safe))
                       (cons __tmp54377 '()))))
                (declare (not safe))
                (cons __tmp54379 __tmp54376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp54404
                                                       __tmp54375))))
                                          (declare (not safe))
                                          (cons __tmp54405 __tmp54374))))
                                   (declare (not safe))
                                   (cons __tmp54373 '()))))
                            (declare (not safe))
                            (cons __tmp54406 __tmp54372))))
                     (declare (not safe))
                     (cons __tmp54418 __tmp54371)))))
            (let* ((___match5398253983_
                    (lambda (_e5078650837_
                             _hd5078750841_
                             _tl5078850844_
                             _e5078950847_
                             _hd5079050851_
                             _tl5079150854_
                             _e5079250857_
                             _e5079350861_
                             _hd5079450865_
                             _tl5079550868_
                             ___splice5365453655_
                             _target5079650871_
                             _tl5079850874_)
                      (letrec ((_loop5079950877_
                                (lambda (_hd5079750881_
                                         _exprs5080350884_
                                         _names5080450886_)
                                  (if (gx#stx-pair? _hd5079750881_)
                                      (let ((_e5080050889_
                                             (gx#syntax-e _hd5079750881_)))
                                        (let ((_lp-tl5080250896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5080050889_)))
                                              (_lp-hd5080150893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5080050889_))))
                                          (if (gx#stx-pair? _lp-hd5080150893_)
                                              (let ((_e5080750899_
                                                     (gx#syntax-e
                                                      _lp-hd5080150893_)))
                                                (let ((_tl5080950906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5080750899_)))
                                                      (_hd5080850903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5080750899_))))
                                                  (if (gx#stx-pair?
                                                       _tl5080950906_)
                                                      (let ((_e5081050909_
                                                             (gx#syntax-e
                                                              _tl5080950906_)))
                                                        (let ((_tl5081250916_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5081050909_)))
                      (_hd5081150913_
                       (let () (declare (not safe)) (##car _e5081050909_))))
                  (if (gx#stx-null? _tl5081250916_)
                      (_loop5079950877_
                       _lp-tl5080250896_
                       (let ()
                         (declare (not safe))
                         (cons _hd5081150913_ _exprs5080350884_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5080850903_ _names5080450886_)))
                      (let () (declare (not safe)) (_g5061650830_)))))
              (let () (declare (not safe)) (_g5061650830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5061650830_)))))
                                      (let ((_names5080650922_
                                             (reverse _names5080450886_))
                                            (_exprs5080550919_
                                             (reverse _exprs5080350884_)))
                                        (if (gx#stx-pair? _tl5079550868_)
                                            (let ((_e5081350925_
                                                   (gx#syntax-e
                                                    _tl5079550868_)))
                                              (let ((_tl5081550932_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5081350925_)))
                                                    (_hd5081450929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5081350925_))))
                                                (if (gx#stx-null?
                                                     _hd5081450929_)
                                                    (if (gx#stx-pair?
                                                         _tl5081550932_)
                                                        (let ((_e5081650935_
                                                               (gx#syntax-e
                                                                _tl5081550932_)))
                                                          (let ((_tl5081850942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5081650935_)))
                        (_hd5081750939_
                         (let () (declare (not safe)) (##car _e5081650935_))))
                    (if (gx#stx-pair? _tl5081850942_)
                        (let ((_e5081950945_ (gx#syntax-e _tl5081850942_)))
                          (let ((_tl5082150952_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5081950945_)))
                                (_hd5082050949_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5081950945_))))
                            (if (gx#stx-pair? _tl5082150952_)
                                (let ((_e5082250955_
                                       (gx#syntax-e _tl5082150952_)))
                                  (let ((_tl5082450962_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5082250955_)))
                                        (_hd5082350959_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5082250955_))))
                                    (if (gx#stx-null? _tl5082450962_)
                                        (___kont5365253653_
                                         _hd5082350959_
                                         _hd5082050949_
                                         _hd5081750939_
                                         _exprs5080550919_
                                         _names5080650922_
                                         _hd5078750841_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_)))))
                        (let () (declare (not safe)) (_g5061650830_)))))
                (let () (declare (not safe)) (_g5061650830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5061650830_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5061650830_))))))))
                        (_loop5079950877_ _target5079650871_ '() '()))))
                   (___match5376053761_
                    (lambda (_e5065851462_
                             _hd5065951466_
                             _tl5066051469_
                             _e5066151472_
                             _hd5066251476_
                             _tl5066351479_
                             _e5066451482_
                             _e5066551486_
                             _hd5066651490_
                             _tl5066751493_
                             ___splice5364053641_
                             _target5066851496_
                             _tl5067051499_
                             _e5067751502_
                             _hd5067851506_
                             _tl5067951509_)
                      (letrec ((_loop5067151512_
                                (lambda (_hd5066951516_ _exprs5067551519_)
                                  (if (gx#stx-pair? _hd5066951516_)
                                      (let ((_e5067251522_
                                             (gx#syntax-e _hd5066951516_)))
                                        (let ((_lp-tl5067451529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5067251522_)))
                                              (_lp-hd5067351526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5067251522_))))
                                          (_loop5067151512_
                                           _lp-tl5067451529_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5067351526_
                                                   _exprs5067551519_)))))
                                      (let ((_exprs5067651532_
                                             (reverse _exprs5067551519_)))
                                        (___kont5363853639_
                                         _hd5067851506_
                                         _exprs5067651532_
                                         _hd5066651490_
                                         _hd5065951466_))))))
                        (_loop5067151512_ _target5066851496_ '()))))
                   (___match5372053721_
                    (lambda (_e5062351579_
                             _hd5062451583_
                             _tl5062551586_
                             _e5062651589_
                             _hd5062751593_
                             _tl5062851596_
                             _e5062951599_
                             _e5063051603_
                             _hd5063151607_
                             _tl5063251610_
                             ___splice5363653637_
                             _target5063351613_
                             _tl5063551616_
                             _e5064251619_
                             _hd5064351623_
                             _tl5064451626_
                             _e5064551629_
                             _hd5064651633_
                             _tl5064751636_
                             _e5064851639_
                             _hd5064951643_
                             _tl5065051646_
                             _e5065151649_
                             _hd5065251653_
                             _tl5065351656_)
                      (letrec ((_loop5063651659_
                                (lambda (_hd5063451663_ _exprs5064051666_)
                                  (if (gx#stx-pair? _hd5063451663_)
                                      (let ((_e5063751669_
                                             (gx#syntax-e _hd5063451663_)))
                                        (let ((_lp-tl5063951676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5063751669_)))
                                              (_lp-hd5063851673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5063751669_))))
                                          (_loop5063651659_
                                           _lp-tl5063951676_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5063851673_
                                                   _exprs5064051666_)))))
                                      (let ((_exprs5064151679_
                                             (reverse _exprs5064051666_)))
                                        (___kont5363453635_
                                         _hd5065251653_
                                         _hd5064951643_
                                         _exprs5064151679_
                                         _hd5063151607_
                                         _hd5062451583_))))))
                        (_loop5063651659_ _target5063351613_ '())))))
              (if (gx#stx-pair? ___stx5363153632_)
                  (let ((_e5062351579_ (gx#syntax-e ___stx5363153632_)))
                    (let ((_tl5062551586_
                           (let () (declare (not safe)) (##cdr _e5062351579_)))
                          (_hd5062451583_
                           (let ()
                             (declare (not safe))
                             (##car _e5062351579_))))
                      (if (gx#stx-pair? _tl5062551586_)
                          (let ((_e5062651589_ (gx#syntax-e _tl5062551586_)))
                            (let ((_tl5062851596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5062651589_)))
                                  (_hd5062751593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5062651589_))))
                              (if (gx#stx-datum? _hd5062751593_)
                                  (let ((_e5062951599_
                                         (gx#stx-e _hd5062751593_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5062951599_ '1))
                                        (if (gx#stx-pair? _tl5062851596_)
                                            (let ((_e5063051603_
                                                   (gx#syntax-e
                                                    _tl5062851596_)))
                                              (let ((_tl5063251610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5063051603_)))
                                                    (_hd5063151607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5063051603_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5063251610_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5063251610_)
                                                              '2)
                                                        (let ((___splice5363653637_
                                                               (gx#syntax-split-splice
                                                                _tl5063251610_
                                                                '2)))
                                                          (let ((_tl5063551616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5363653637_ '1)))
                        (_target5063351613_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5363653637_ '0))))
                    (if (gx#stx-pair? _tl5063551616_)
                        (let ((_e5064251619_ (gx#syntax-e _tl5063551616_)))
                          (let ((_tl5064451626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5064251619_)))
                                (_hd5064351623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5064251619_))))
                            (if (gx#stx-pair? _hd5064351623_)
                                (let ((_e5064551629_
                                       (gx#syntax-e _hd5064351623_)))
                                  (let ((_tl5064751636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5064551629_)))
                                        (_hd5064651633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5064551629_))))
                                    (if (gx#identifier? _hd5064651633_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g54419_|
                                             _hd5064651633_)
                                            (if (gx#stx-pair? _tl5064751636_)
                                                (let ((_e5064851639_
                                                       (gx#syntax-e
                                                        _tl5064751636_)))
                                                  (let ((_tl5065051646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5064851639_)))
                                                        (_hd5064951643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5064851639_))))
                                                    (if (gx#stx-null?
                                                         _tl5065051646_)
                                                        (if (gx#stx-pair?
                                                             _tl5064451626_)
                                                            (let ((_e5065151649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5064451626_)))
                      (let ((_tl5065351656_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5065151649_)))
                            (_hd5065251653_
                             (let ()
                               (declare (not safe))
                               (##car _e5065151649_))))
                        (if (gx#stx-null? _tl5065351656_)
                            (___match5372053721_
                             _e5062351579_
                             _hd5062451583_
                             _tl5062551586_
                             _e5062651589_
                             _hd5062751593_
                             _tl5062851596_
                             _e5062951599_
                             _e5063051603_
                             _hd5063151607_
                             _tl5063251610_
                             ___splice5363653637_
                             _target5063351613_
                             _tl5063551616_
                             _e5064251619_
                             _hd5064351623_
                             _tl5064451626_
                             _e5064551629_
                             _hd5064651633_
                             _tl5064751636_
                             _e5064851639_
                             _hd5064951643_
                             _tl5065051646_
                             _e5065151649_
                             _hd5065251653_
                             _tl5065351656_)
                            (if (fx>= (gx#stx-length _tl5063251610_) '1)
                                (let ((___splice5364053641_
                                       (gx#syntax-split-splice
                                        _tl5063251610_
                                        '1)))
                                  (let ((_tl5067051499_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5364053641_
                                            '1)))
                                        (_target5066851496_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5364053641_
                                            '0))))
                                    (if (gx#stx-pair? _tl5067051499_)
                                        (let ((_e5067751502_
                                               (gx#syntax-e _tl5067051499_)))
                                          (let ((_tl5067951509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5067751502_)))
                                                (_hd5067851506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5067751502_))))
                                            (if (gx#stx-null? _tl5067951509_)
                                                (___match5376053761_
                                                 _e5062351579_
                                                 _hd5062451583_
                                                 _tl5062551586_
                                                 _e5062651589_
                                                 _hd5062751593_
                                                 _tl5062851596_
                                                 _e5062951599_
                                                 _e5063051603_
                                                 _hd5063151607_
                                                 _tl5063251610_
                                                 ___splice5364053641_
                                                 _target5066851496_
                                                 _tl5067051499_
                                                 _e5067751502_
                                                 _hd5067851506_
                                                 _tl5067951509_)
                                                (if (gx#stx-null?
                                                     _tl5063251610_)
                                                    (___kont5364253643_
                                                     _hd5063151607_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5061650830_))))))
                                        (if (gx#stx-null? _tl5063251610_)
                                            (___kont5364253643_ _hd5063151607_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5061650830_))))))
                                (if (gx#stx-null? _tl5063251610_)
                                    (___kont5364253643_ _hd5063151607_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5061650830_)))))))
                    (if (fx>= (gx#stx-length _tl5063251610_) '1)
                        (let ((___splice5364053641_
                               (gx#syntax-split-splice _tl5063251610_ '1)))
                          (let ((_tl5067051499_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5364053641_ '1)))
                                (_target5066851496_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5364053641_ '0))))
                            (if (gx#stx-pair? _tl5067051499_)
                                (let ((_e5067751502_
                                       (gx#syntax-e _tl5067051499_)))
                                  (let ((_tl5067951509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5067751502_)))
                                        (_hd5067851506_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5067751502_))))
                                    (if (gx#stx-null? _tl5067951509_)
                                        (___match5376053761_
                                         _e5062351579_
                                         _hd5062451583_
                                         _tl5062551586_
                                         _e5062651589_
                                         _hd5062751593_
                                         _tl5062851596_
                                         _e5062951599_
                                         _e5063051603_
                                         _hd5063151607_
                                         _tl5063251610_
                                         ___splice5364053641_
                                         _target5066851496_
                                         _tl5067051499_
                                         _e5067751502_
                                         _hd5067851506_
                                         _tl5067951509_)
                                        (if (gx#stx-null? _tl5063251610_)
                                            (___kont5364253643_ _hd5063151607_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5061650830_))))))
                                (if (gx#stx-null? _tl5063251610_)
                                    (___kont5364253643_ _hd5063151607_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5061650830_))))))
                        (if (gx#stx-null? _tl5063251610_)
                            (___kont5364253643_ _hd5063151607_)
                            (let () (declare (not safe)) (_g5061650830_)))))
                (if (fx>= (gx#stx-length _tl5063251610_) '1)
                    (let ((___splice5364053641_
                           (gx#syntax-split-splice _tl5063251610_ '1)))
                      (let ((_tl5067051499_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5364053641_ '1)))
                            (_target5066851496_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5364053641_ '0))))
                        (if (gx#stx-pair? _tl5067051499_)
                            (let ((_e5067751502_ (gx#syntax-e _tl5067051499_)))
                              (let ((_tl5067951509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5067751502_)))
                                    (_hd5067851506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5067751502_))))
                                (if (gx#stx-null? _tl5067951509_)
                                    (___match5376053761_
                                     _e5062351579_
                                     _hd5062451583_
                                     _tl5062551586_
                                     _e5062651589_
                                     _hd5062751593_
                                     _tl5062851596_
                                     _e5062951599_
                                     _e5063051603_
                                     _hd5063151607_
                                     _tl5063251610_
                                     ___splice5364053641_
                                     _target5066851496_
                                     _tl5067051499_
                                     _e5067751502_
                                     _hd5067851506_
                                     _tl5067951509_)
                                    (if (gx#stx-null? _tl5063251610_)
                                        (___kont5364253643_ _hd5063151607_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_))))))
                            (if (gx#stx-null? _tl5063251610_)
                                (___kont5364253643_ _hd5063151607_)
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_))))))
                    (if (gx#stx-null? _tl5063251610_)
                        (___kont5364253643_ _hd5063151607_)
                        (let () (declare (not safe)) (_g5061650830_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5063251610_)
                                                          '1)
                                                    (let ((___splice5364053641_
                                                           (gx#syntax-split-splice
                                                            _tl5063251610_
                                                            '1)))
                                                      (let ((_tl5067051499_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5364053641_ '1)))
                    (_target5066851496_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5364053641_ '0))))
                (if (gx#stx-pair? _tl5067051499_)
                    (let ((_e5067751502_ (gx#syntax-e _tl5067051499_)))
                      (let ((_tl5067951509_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5067751502_)))
                            (_hd5067851506_
                             (let ()
                               (declare (not safe))
                               (##car _e5067751502_))))
                        (if (gx#stx-null? _tl5067951509_)
                            (___match5376053761_
                             _e5062351579_
                             _hd5062451583_
                             _tl5062551586_
                             _e5062651589_
                             _hd5062751593_
                             _tl5062851596_
                             _e5062951599_
                             _e5063051603_
                             _hd5063151607_
                             _tl5063251610_
                             ___splice5364053641_
                             _target5066851496_
                             _tl5067051499_
                             _e5067751502_
                             _hd5067851506_
                             _tl5067951509_)
                            (if (gx#stx-null? _tl5063251610_)
                                (___kont5364253643_ _hd5063151607_)
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_))))))
                    (if (gx#stx-null? _tl5063251610_)
                        (___kont5364253643_ _hd5063151607_)
                        (let () (declare (not safe)) (_g5061650830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5063251610_)
                                                        (___kont5364253643_
                                                         _hd5063151607_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5061650830_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5063251610_)
                                                      '1)
                                                (let ((___splice5364053641_
                                                       (gx#syntax-split-splice
                                                        _tl5063251610_
                                                        '1)))
                                                  (let ((_tl5067051499_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5364053641_
                                                            '1)))
                                                        (_target5066851496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5364053641_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5067051499_)
                                                        (let ((_e5067751502_
                                                               (gx#syntax-e
                                                                _tl5067051499_)))
                                                          (let ((_tl5067951509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5067751502_)))
                        (_hd5067851506_
                         (let () (declare (not safe)) (##car _e5067751502_))))
                    (if (gx#stx-null? _tl5067951509_)
                        (___match5376053761_
                         _e5062351579_
                         _hd5062451583_
                         _tl5062551586_
                         _e5062651589_
                         _hd5062751593_
                         _tl5062851596_
                         _e5062951599_
                         _e5063051603_
                         _hd5063151607_
                         _tl5063251610_
                         ___splice5364053641_
                         _target5066851496_
                         _tl5067051499_
                         _e5067751502_
                         _hd5067851506_
                         _tl5067951509_)
                        (if (gx#stx-null? _tl5063251610_)
                            (___kont5364253643_ _hd5063151607_)
                            (let () (declare (not safe)) (_g5061650830_))))))
                (if (gx#stx-null? _tl5063251610_)
                    (___kont5364253643_ _hd5063151607_)
                    (let () (declare (not safe)) (_g5061650830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5063251610_)
                                                    (___kont5364253643_
                                                     _hd5063151607_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5061650830_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5063251610_)
                                                  '1)
                                            (let ((___splice5364053641_
                                                   (gx#syntax-split-splice
                                                    _tl5063251610_
                                                    '1)))
                                              (let ((_tl5067051499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5364053641_
                                                        '1)))
                                                    (_target5066851496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5364053641_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5067051499_)
                                                    (let ((_e5067751502_
                                                           (gx#syntax-e
                                                            _tl5067051499_)))
                                                      (let ((_tl5067951509_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5067751502_)))
                    (_hd5067851506_
                     (let () (declare (not safe)) (##car _e5067751502_))))
                (if (gx#stx-null? _tl5067951509_)
                    (___match5376053761_
                     _e5062351579_
                     _hd5062451583_
                     _tl5062551586_
                     _e5062651589_
                     _hd5062751593_
                     _tl5062851596_
                     _e5062951599_
                     _e5063051603_
                     _hd5063151607_
                     _tl5063251610_
                     ___splice5364053641_
                     _target5066851496_
                     _tl5067051499_
                     _e5067751502_
                     _hd5067851506_
                     _tl5067951509_)
                    (if (gx#stx-null? _tl5063251610_)
                        (___kont5364253643_ _hd5063151607_)
                        (let () (declare (not safe)) (_g5061650830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5063251610_)
                                                        (___kont5364253643_
                                                         _hd5063151607_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5061650830_))))))
                                            (if (gx#stx-null? _tl5063251610_)
                                                (___kont5364253643_
                                                 _hd5063151607_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5061650830_)))))))
                                (if (fx>= (gx#stx-length _tl5063251610_) '1)
                                    (let ((___splice5364053641_
                                           (gx#syntax-split-splice
                                            _tl5063251610_
                                            '1)))
                                      (let ((_tl5067051499_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5364053641_
                                                '1)))
                                            (_target5066851496_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5364053641_
                                                '0))))
                                        (if (gx#stx-pair? _tl5067051499_)
                                            (let ((_e5067751502_
                                                   (gx#syntax-e
                                                    _tl5067051499_)))
                                              (let ((_tl5067951509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5067751502_)))
                                                    (_hd5067851506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5067751502_))))
                                                (if (gx#stx-null?
                                                     _tl5067951509_)
                                                    (___match5376053761_
                                                     _e5062351579_
                                                     _hd5062451583_
                                                     _tl5062551586_
                                                     _e5062651589_
                                                     _hd5062751593_
                                                     _tl5062851596_
                                                     _e5062951599_
                                                     _e5063051603_
                                                     _hd5063151607_
                                                     _tl5063251610_
                                                     ___splice5364053641_
                                                     _target5066851496_
                                                     _tl5067051499_
                                                     _e5067751502_
                                                     _hd5067851506_
                                                     _tl5067951509_)
                                                    (if (gx#stx-null?
                                                         _tl5063251610_)
                                                        (___kont5364253643_
                                                         _hd5063151607_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5061650830_))))))
                                            (if (gx#stx-null? _tl5063251610_)
                                                (___kont5364253643_
                                                 _hd5063151607_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5061650830_))))))
                                    (if (gx#stx-null? _tl5063251610_)
                                        (___kont5364253643_ _hd5063151607_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_)))))))
                        (if (fx>= (gx#stx-length _tl5063251610_) '1)
                            (let ((___splice5364053641_
                                   (gx#syntax-split-splice _tl5063251610_ '1)))
                              (let ((_tl5067051499_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5364053641_ '1)))
                                    (_target5066851496_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5364053641_
                                        '0))))
                                (if (gx#stx-pair? _tl5067051499_)
                                    (let ((_e5067751502_
                                           (gx#syntax-e _tl5067051499_)))
                                      (let ((_tl5067951509_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5067751502_)))
                                            (_hd5067851506_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5067751502_))))
                                        (if (gx#stx-null? _tl5067951509_)
                                            (___match5376053761_
                                             _e5062351579_
                                             _hd5062451583_
                                             _tl5062551586_
                                             _e5062651589_
                                             _hd5062751593_
                                             _tl5062851596_
                                             _e5062951599_
                                             _e5063051603_
                                             _hd5063151607_
                                             _tl5063251610_
                                             ___splice5364053641_
                                             _target5066851496_
                                             _tl5067051499_
                                             _e5067751502_
                                             _hd5067851506_
                                             _tl5067951509_)
                                            (if (gx#stx-null? _tl5063251610_)
                                                (___kont5364253643_
                                                 _hd5063151607_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5061650830_))))))
                                    (if (gx#stx-null? _tl5063251610_)
                                        (___kont5364253643_ _hd5063151607_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_))))))
                            (if (gx#stx-null? _tl5063251610_)
                                (___kont5364253643_ _hd5063151607_)
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_)))))))
                (if (fx>= (gx#stx-length _tl5063251610_) '1)
                    (let ((___splice5364053641_
                           (gx#syntax-split-splice _tl5063251610_ '1)))
                      (let ((_tl5067051499_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5364053641_ '1)))
                            (_target5066851496_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5364053641_ '0))))
                        (if (gx#stx-pair? _tl5067051499_)
                            (let ((_e5067751502_ (gx#syntax-e _tl5067051499_)))
                              (let ((_tl5067951509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5067751502_)))
                                    (_hd5067851506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5067751502_))))
                                (if (gx#stx-null? _tl5067951509_)
                                    (___match5376053761_
                                     _e5062351579_
                                     _hd5062451583_
                                     _tl5062551586_
                                     _e5062651589_
                                     _hd5062751593_
                                     _tl5062851596_
                                     _e5062951599_
                                     _e5063051603_
                                     _hd5063151607_
                                     _tl5063251610_
                                     ___splice5364053641_
                                     _target5066851496_
                                     _tl5067051499_
                                     _e5067751502_
                                     _hd5067851506_
                                     _tl5067951509_)
                                    (if (gx#stx-null? _tl5063251610_)
                                        (___kont5364253643_ _hd5063151607_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_))))))
                            (if (gx#stx-null? _tl5063251610_)
                                (___kont5364253643_ _hd5063151607_)
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_))))))
                    (if (gx#stx-null? _tl5063251610_)
                        (___kont5364253643_ _hd5063151607_)
                        (let () (declare (not safe)) (_g5061650830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5063251610_)
                                                        (___kont5364253643_
                                                         _hd5063151607_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5061650830_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5061650830_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5062951599_ '2))
                                            (if (gx#stx-pair? _tl5062851596_)
                                                (let ((_e5070451302_
                                                       (gx#syntax-e
                                                        _tl5062851596_)))
                                                  (let ((_tl5070651309_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5070451302_)))
                                                        (_hd5070551306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5070451302_))))
                                                    (if (gx#stx-pair?
                                                         _tl5070651309_)
                                                        (let ((_e5070751312_
                                                               (gx#syntax-e
                                                                _tl5070651309_)))
                                                          (let ((_tl5070951319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5070751312_)))
                        (_hd5070851316_
                         (let () (declare (not safe)) (##car _e5070751312_))))
                    (if (gx#stx-pair? _hd5070851316_)
                        (let ((_e5071051322_ (gx#syntax-e _hd5070851316_)))
                          (let ((_tl5071251329_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5071051322_)))
                                (_hd5071151326_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5071051322_))))
                            (if (gx#stx-pair? _hd5071151326_)
                                (let ((_e5071351332_
                                       (gx#syntax-e _hd5071151326_)))
                                  (let ((_tl5071551339_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5071351332_)))
                                        (_hd5071451336_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5071351332_))))
                                    (if (gx#identifier? _hd5071451336_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g54420_|
                                             _hd5071451336_)
                                            (if (gx#stx-pair? _tl5071551339_)
                                                (let ((_e5071651342_
                                                       (gx#syntax-e
                                                        _tl5071551339_)))
                                                  (let ((_tl5071851349_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5071651342_)))
                                                        (_hd5071751346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5071651342_))))
                                                    (if (gx#stx-null?
                                                         _tl5071851349_)
                                                        (if (gx#stx-pair?
                                                             _tl5071251329_)
                                                            (let ((_e5071951352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5071251329_)))
                      (let ((_tl5072151359_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5071951352_)))
                            (_hd5072051356_
                             (let ()
                               (declare (not safe))
                               (##car _e5071951352_))))
                        (___kont5364453645_
                         _tl5070951319_
                         _tl5072151359_
                         _hd5072051356_
                         _hd5071751346_
                         _hd5070551306_
                         _hd5062451583_)))
                    (___kont5364653647_
                     _tl5070951319_
                     _tl5071251329_
                     _hd5071151326_
                     _hd5070551306_
                     _hd5062451583_))
                (___kont5364653647_
                 _tl5070951319_
                 _tl5071251329_
                 _hd5071151326_
                 _hd5070551306_
                 _hd5062451583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5364653647_
                                                 _tl5070951319_
                                                 _tl5071251329_
                                                 _hd5071151326_
                                                 _hd5070551306_
                                                 _hd5062451583_))
                                            (___kont5364653647_
                                             _tl5070951319_
                                             _tl5071251329_
                                             _hd5071151326_
                                             _hd5070551306_
                                             _hd5062451583_))
                                        (___kont5364653647_
                                         _tl5070951319_
                                         _tl5071251329_
                                         _hd5071151326_
                                         _hd5070551306_
                                         _hd5062451583_))))
                                (___kont5364653647_
                                 _tl5070951319_
                                 _tl5071251329_
                                 _hd5071151326_
                                 _hd5070551306_
                                 _hd5062451583_))))
                        (if (gx#stx-null? _hd5070851316_)
                            (___kont5364853649_
                             _tl5070951319_
                             _hd5070551306_
                             _hd5062451583_)
                            (let () (declare (not safe)) (_g5061650830_))))))
                (let () (declare (not safe)) (_g5061650830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5061650830_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5062951599_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5062851596_)
                                                    (let ((_e5077151051_
                                                           (gx#syntax-e
                                                            _tl5062851596_)))
                                                      (let ((_tl5077351058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5077151051_)))
                    (_hd5077251055_
                     (let () (declare (not safe)) (##car _e5077151051_))))
                (if (gx#stx-pair? _tl5077351058_)
                    (let ((_e5077451061_ (gx#syntax-e _tl5077351058_)))
                      (let ((_tl5077651068_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5077451061_)))
                            (_hd5077551065_
                             (let ()
                               (declare (not safe))
                               (##car _e5077451061_))))
                        (if (gx#stx-pair? _hd5077551065_)
                            (let ((_e5077751071_ (gx#syntax-e _hd5077551065_)))
                              (let ((_tl5077951078_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5077751071_)))
                                    (_hd5077851075_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5077751071_))))
                                (___kont5365053651_
                                 _tl5077651068_
                                 _tl5077951078_
                                 _hd5077851075_
                                 _hd5077251055_
                                 _hd5062451583_)))
                            (if (gx#stx-pair/null? _hd5077251055_)
                                (let ((___splice5365453655_
                                       (gx#syntax-split-splice
                                        _hd5077251055_
                                        '0)))
                                  (let ((_tl5079850874_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5365453655_
                                            '1)))
                                        (_target5079650871_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5365453655_
                                            '0))))
                                    (if (gx#stx-null? _tl5079850874_)
                                        (___match5398253983_
                                         _e5062351579_
                                         _hd5062451583_
                                         _tl5062551586_
                                         _e5062651589_
                                         _hd5062751593_
                                         _tl5062851596_
                                         _e5062951599_
                                         _e5077151051_
                                         _hd5077251055_
                                         _tl5077351058_
                                         ___splice5365453655_
                                         _target5079650871_
                                         _tl5079850874_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5061650830_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_))))))
                    (if (gx#stx-pair/null? _hd5077251055_)
                        (let ((___splice5365453655_
                               (gx#syntax-split-splice _hd5077251055_ '0)))
                          (let ((_tl5079850874_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5365453655_ '1)))
                                (_target5079650871_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5365453655_ '0))))
                            (if (gx#stx-null? _tl5079850874_)
                                (___match5398253983_
                                 _e5062351579_
                                 _hd5062451583_
                                 _tl5062551586_
                                 _e5062651589_
                                 _hd5062751593_
                                 _tl5062851596_
                                 _e5062951599_
                                 _e5077151051_
                                 _hd5077251055_
                                 _tl5077351058_
                                 ___splice5365453655_
                                 _target5079650871_
                                 _tl5079850874_)
                                (let ()
                                  (declare (not safe))
                                  (_g5061650830_)))))
                        (let () (declare (not safe)) (_g5061650830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5061650830_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5061650830_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5061650830_)))))
                          (let () (declare (not safe)) (_g5061650830_)))))
                  (let () (declare (not safe)) (_g5061650830_))))))))))
