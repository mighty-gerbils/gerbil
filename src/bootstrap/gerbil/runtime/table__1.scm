(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx54717_)
      (let* ((_g5472154735_
              (lambda (_g5472254731_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5472254731_)))
             (_g5472054777_
              (lambda (_g5472254739_)
                (if (gx#stx-pair? _g5472254739_)
                    (let ((_e5472454742_ (gx#syntax-e _g5472254739_)))
                      (let ((_hd5472554746_
                             (let ()
                               (declare (not safe))
                               (##car _e5472454742_)))
                            (_tl5472654749_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5472454742_))))
                        (if (gx#stx-pair? _tl5472654749_)
                            (let ((_e5472754752_ (gx#syntax-e _tl5472654749_)))
                              (let ((_hd5472854756_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5472754752_)))
                                    (_tl5472954759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5472754752_))))
                                (if (gx#stx-null? _tl5472954759_)
                                    ((lambda (_L54762_)
                                       (let ((__tmp56933
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp56931
                                              (let ((__tmp56932
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L54762_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp56932))))
                                         (declare (not safe))
                                         (cons __tmp56933 __tmp56931)))
                                     _hd5472854756_)
                                    (_g5472154735_ _g5472254739_))))
                            (_g5472154735_ _g5472254739_))))
                    (_g5472154735_ _g5472254739_)))))
        (_g5472054777_ _$stx54717_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx54781_)
      (let* ((_g5478554831_
              (lambda (_g5478654827_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5478654827_)))
             (_g5478454984_
              (lambda (_g5478654835_)
                (if (gx#stx-pair? _g5478654835_)
                    (let ((_e5479654838_ (gx#syntax-e _g5478654835_)))
                      (let ((_hd5479754842_
                             (let ()
                               (declare (not safe))
                               (##car _e5479654838_)))
                            (_tl5479854845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5479654838_))))
                        (if (gx#stx-pair? _tl5479854845_)
                            (let ((_e5479954848_ (gx#syntax-e _tl5479854845_)))
                              (let ((_hd5480054852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5479954848_)))
                                    (_tl5480154855_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5479954848_))))
                                (if (gx#stx-pair? _tl5480154855_)
                                    (let ((_e5480254858_
                                           (gx#syntax-e _tl5480154855_)))
                                      (let ((_hd5480354862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5480254858_)))
                                            (_tl5480454865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5480254858_))))
                                        (if (gx#stx-pair? _tl5480454865_)
                                            (let ((_e5480554868_
                                                   (gx#syntax-e
                                                    _tl5480454865_)))
                                              (let ((_hd5480654872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5480554868_)))
                                                    (_tl5480754875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5480554868_))))
                                                (if (gx#stx-pair?
                                                     _tl5480754875_)
                                                    (let ((_e5480854878_
                                                           (gx#syntax-e
                                                            _tl5480754875_)))
                                                      (let ((_hd5480954882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5480854878_)))
                    (_tl5481054885_
                     (let () (declare (not safe)) (##cdr _e5480854878_))))
                (if (gx#stx-pair? _tl5481054885_)
                    (let ((_e5481154888_ (gx#syntax-e _tl5481054885_)))
                      (let ((_hd5481254892_
                             (let ()
                               (declare (not safe))
                               (##car _e5481154888_)))
                            (_tl5481354895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5481154888_))))
                        (if (gx#stx-pair? _tl5481354895_)
                            (let ((_e5481454898_ (gx#syntax-e _tl5481354895_)))
                              (let ((_hd5481554902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5481454898_)))
                                    (_tl5481654905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5481454898_))))
                                (if (gx#stx-pair? _tl5481654905_)
                                    (let ((_e5481754908_
                                           (gx#syntax-e _tl5481654905_)))
                                      (let ((_hd5481854912_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5481754908_)))
                                            (_tl5481954915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5481754908_))))
                                        (if (gx#stx-pair? _tl5481954915_)
                                            (let ((_e5482054918_
                                                   (gx#syntax-e
                                                    _tl5481954915_)))
                                              (let ((_hd5482154922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5482054918_)))
                                                    (_tl5482254925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5482054918_))))
                                                (if (gx#stx-pair?
                                                     _tl5482254925_)
                                                    (let ((_e5482354928_
                                                           (gx#syntax-e
                                                            _tl5482254925_)))
                                                      (let ((_hd5482454932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5482354928_)))
                    (_tl5482554935_
                     (let () (declare (not safe)) (##cdr _e5482354928_))))
                (if (gx#stx-null? _tl5482554935_)
                    ((lambda (_L54938_
                              _L54940_
                              _L54941_
                              _L54942_
                              _L54943_
                              _L54944_
                              _L54945_
                              _L54946_
                              _L54947_)
                       (let ((__tmp57365 (gx#datum->syntax '#f 'begin))
                             (__tmp56934
                              (let ((__tmp57344
                                     (let ((__tmp57364
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp57345
                                            (let ((__tmp57355
                                                   (let ((__tmp57356
                                                          (let ((__tmp57361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57363 (gx#datum->syntax '#f 'size-hint))
                               (__tmp57362
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp57363 __tmp57362)))
                        (__tmp57357
                         (let ((__tmp57358
                                (let ((__tmp57360 (gx#datum->syntax '#f 'seed))
                                      (__tmp57359
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp57360 __tmp57359))))
                           (declare (not safe))
                           (cons __tmp57358 '()))))
                    (declare (not safe))
                    (cons __tmp57361 __tmp57357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L54947_
                                                           __tmp57356)))
                                                  (__tmp57346
                                                   (let ((__tmp57347
                                                          (let ((__tmp57354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp57348
                         (let ((__tmp57353 (gx#datum->syntax '#f 'size-hint))
                               (__tmp57349
                                (let ((__tmp57350
                                       (let ((__tmp57351
                                              (let ((__tmp57352
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp57352 '()))))
                                         (declare (not safe))
                                         (cons _L54938_ __tmp57351))))
                                  (declare (not safe))
                                  (cons _L54940_ __tmp57350))))
                           (declare (not safe))
                           (cons __tmp57353 __tmp57349))))
                    (declare (not safe))
                    (cons __tmp57354 __tmp57348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57347 '()))))
                                              (declare (not safe))
                                              (cons __tmp57355 __tmp57346))))
                                       (declare (not safe))
                                       (cons __tmp57364 __tmp57345)))
                                    (__tmp56935
                                     (let ((__tmp57301
                                            (let ((__tmp57343
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp57302
                                                   (let ((__tmp57336
                                                          (let ((__tmp57337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57342 (gx#datum->syntax '#f 'tab))
                               (__tmp57338
                                (let ((__tmp57341 (gx#datum->syntax '#f 'key))
                                      (__tmp57339
                                       (let ((__tmp57340
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp57340 '()))))
                                  (declare (not safe))
                                  (cons __tmp57341 __tmp57339))))
                           (declare (not safe))
                           (cons __tmp57342 __tmp57338))))
                    (declare (not safe))
                    (cons _L54946_ __tmp57337)))
                 (__tmp57303
                  (let ((__tmp57304
                         (let ((__tmp57335 (gx#datum->syntax '#f 'let))
                               (__tmp57305
                                (let ((__tmp57319
                                       (let ((__tmp57328
                                              (let ((__tmp57334
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp57329
                                                     (let ((__tmp57330
                                                            (let ((__tmp57333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp57331
                           (let ((__tmp57332 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp57332 '()))))
                      (declare (not safe))
                      (cons __tmp57333 __tmp57331))))
               (declare (not safe))
               (cons __tmp57330 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57334 __tmp57329)))
                                             (__tmp57320
                                              (let ((__tmp57321
                                                     (let ((__tmp57327
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp57322
                                                            (let ((__tmp57323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57326
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp57324
                                  (let ((__tmp57325
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57325 '()))))
                             (declare (not safe))
                             (cons __tmp57326 __tmp57324))))
                      (declare (not safe))
                      (cons __tmp57323 '()))))
               (declare (not safe))
               (cons __tmp57327 __tmp57322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57321 '()))))
                                         (declare (not safe))
                                         (cons __tmp57328 __tmp57320)))
                                      (__tmp57306
                                       (let ((__tmp57307
                                              (let ((__tmp57318
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp57308
                                                     (let ((__tmp57317
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp57309
                                                            (let ((__tmp57316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp57310
                           (let ((__tmp57311
                                  (let ((__tmp57312
                                         (let ((__tmp57315
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp57313
                                                (let ((__tmp57314
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp57314 '()))))
                                           (declare (not safe))
                                           (cons __tmp57315 __tmp57313))))
                                    (declare (not safe))
                                    (cons _L54938_ __tmp57312))))
                             (declare (not safe))
                             (cons _L54940_ __tmp57311))))
                      (declare (not safe))
                      (cons __tmp57316 __tmp57310))))
               (declare (not safe))
               (cons __tmp57317 __tmp57309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57318 __tmp57308))))
                                         (declare (not safe))
                                         (cons __tmp57307 '()))))
                                  (declare (not safe))
                                  (cons __tmp57319 __tmp57306))))
                           (declare (not safe))
                           (cons __tmp57335 __tmp57305))))
                    (declare (not safe))
                    (cons __tmp57304 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57336
                                                           __tmp57303))))
                                              (declare (not safe))
                                              (cons __tmp57343 __tmp57302)))
                                           (__tmp56936
                                            (let ((__tmp57255
                                                   (let ((__tmp57300
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp57256
                                                          (let ((__tmp57293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57294
                                (let ((__tmp57299 (gx#datum->syntax '#f 'tab))
                                      (__tmp57295
                                       (let ((__tmp57298
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57296
                                              (let ((__tmp57297
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp57297 '()))))
                                         (declare (not safe))
                                         (cons __tmp57298 __tmp57296))))
                                  (declare (not safe))
                                  (cons __tmp57299 __tmp57295))))
                           (declare (not safe))
                           (cons _L54945_ __tmp57294)))
                        (__tmp57257
                         (let ((__tmp57266
                                (let ((__tmp57292 (gx#datum->syntax '#f 'when))
                                      (__tmp57267
                                       (let ((__tmp57273
                                              (let ((__tmp57291
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp57274
                                                     (let ((__tmp57287
                                                            (let ((__tmp57290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp57288
                           (let ((__tmp57289 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp57289 '()))))
                      (declare (not safe))
                      (cons __tmp57290 __tmp57288)))
                   (__tmp57275
                    (let ((__tmp57276
                           (let ((__tmp57286
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp57277
                                  (let ((__tmp57279
                                         (let ((__tmp57285
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp57280
                                                (let ((__tmp57281
                                                       (let ((__tmp57284
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp57282
                                                              (let ((__tmp57283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57283 '()))))
                 (declare (not safe))
                 (cons __tmp57284 __tmp57282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57281 '()))))
                                           (declare (not safe))
                                           (cons __tmp57285 __tmp57280)))
                                        (__tmp57278
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp57279 __tmp57278))))
                             (declare (not safe))
                             (cons __tmp57286 __tmp57277))))
                      (declare (not safe))
                      (cons __tmp57276 '()))))
               (declare (not safe))
               (cons __tmp57287 __tmp57275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57291 __tmp57274)))
                                             (__tmp57268
                                              (let ((__tmp57269
                                                     (let ((__tmp57272
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp57270
                                                            (let ((__tmp57271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp57271 '()))))
               (declare (not safe))
               (cons __tmp57272 __tmp57270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57269 '()))))
                                         (declare (not safe))
                                         (cons __tmp57273 __tmp57268))))
                                  (declare (not safe))
                                  (cons __tmp57292 __tmp57267)))
                               (__tmp57258
                                (let ((__tmp57259
                                       (let ((__tmp57260
                                              (let ((__tmp57265
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57261
                                                     (let ((__tmp57264
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp57262
                                                            (let ((__tmp57263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp57263 '()))))
               (declare (not safe))
               (cons __tmp57264 __tmp57262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57265 __tmp57261))))
                                         (declare (not safe))
                                         (cons _L54944_ __tmp57260))))
                                  (declare (not safe))
                                  (cons __tmp57259 '()))))
                           (declare (not safe))
                           (cons __tmp57266 __tmp57258))))
                    (declare (not safe))
                    (cons __tmp57293 __tmp57257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57300
                                                           __tmp57256)))
                                                  (__tmp56937
                                                   (let ((__tmp57153
                                                          (let ((__tmp57254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp57154
                         (let ((__tmp57247
                                (let ((__tmp57248
                                       (let ((__tmp57253
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp57249
                                              (let ((__tmp57252
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp57250
                                                     (let ((__tmp57251
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp57251 '()))))
                                                (declare (not safe))
                                                (cons __tmp57252 __tmp57250))))
                                         (declare (not safe))
                                         (cons __tmp57253 __tmp57249))))
                                  (declare (not safe))
                                  (cons _L54944_ __tmp57248)))
                               (__tmp57155
                                (let ((__tmp57156
                                       (let ((__tmp57246
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp57157
                                              (let ((__tmp57230
                                                     (let ((__tmp57239
                                                            (let ((__tmp57245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp57240
                           (let ((__tmp57241
                                  (let ((__tmp57244
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp57242
                                         (let ((__tmp57243
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57243 '()))))
                                    (declare (not safe))
                                    (cons __tmp57244 __tmp57242))))
                             (declare (not safe))
                             (cons __tmp57241 '()))))
                      (declare (not safe))
                      (cons __tmp57245 __tmp57240)))
                   (__tmp57231
                    (let ((__tmp57232
                           (let ((__tmp57238 (gx#datum->syntax '#f 'seed))
                                 (__tmp57233
                                  (let ((__tmp57234
                                         (let ((__tmp57237
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp57235
                                                (let ((__tmp57236
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp57236 '()))))
                                           (declare (not safe))
                                           (cons __tmp57237 __tmp57235))))
                                    (declare (not safe))
                                    (cons __tmp57234 '()))))
                             (declare (not safe))
                             (cons __tmp57238 __tmp57233))))
                      (declare (not safe))
                      (cons __tmp57232 '()))))
               (declare (not safe))
               (cons __tmp57239 __tmp57231)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57158
                                                     (let ((__tmp57159
                                                            (let ((__tmp57229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp57160
                           (let ((__tmp57228 (gx#datum->syntax '#f 'table))
                                 (__tmp57161
                                  (let ((__tmp57227
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp57162
                                         (let ((__tmp57163
                                                (let ((__tmp57164
                                                       (let ((__tmp57226
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp57165
                                                              (let ((__tmp57225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp57166
                             (let ((__tmp57188
                                    (let ((__tmp57224
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp57189
                                           (let ((__tmp57190
                                                  (let ((__tmp57208
                                                         (let ((__tmp57223
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp57209
                        (let ((__tmp57219
                               (let ((__tmp57222
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp57220
                                      (let ((__tmp57221
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp57221 '()))))
                                 (declare (not safe))
                                 (cons __tmp57222 __tmp57220)))
                              (__tmp57210
                               (let ((__tmp57211
                                      (let ((__tmp57218
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp57212
                                             (let ((__tmp57214
                                                    (let ((__tmp57217
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57215
                                                           (let ((__tmp57216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57216 '()))))
              (declare (not safe))
              (cons __tmp57217 __tmp57215)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57213
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp57214 __tmp57213))))
                                        (declare (not safe))
                                        (cons __tmp57218 __tmp57212))))
                                 (declare (not safe))
                                 (cons __tmp57211 '()))))
                          (declare (not safe))
                          (cons __tmp57219 __tmp57210))))
                   (declare (not safe))
                   (cons __tmp57223 __tmp57209)))
                (__tmp57191
                 (let ((__tmp57192
                        (let ((__tmp57207 (gx#datum->syntax '#f 'set!))
                              (__tmp57193
                               (let ((__tmp57203
                                      (let ((__tmp57206
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp57204
                                             (let ((__tmp57205
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp57205 '()))))
                                        (declare (not safe))
                                        (cons __tmp57206 __tmp57204)))
                                     (__tmp57194
                                      (let ((__tmp57195
                                             (let ((__tmp57202
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57196
                                                    (let ((__tmp57198
                                                           (let ((__tmp57201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57199
                          (let ((__tmp57200 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57200 '()))))
                     (declare (not safe))
                     (cons __tmp57201 __tmp57199)))
                  (__tmp57197 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp57198 __tmp57197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57202 __tmp57196))))
                                        (declare (not safe))
                                        (cons __tmp57195 '()))))
                                 (declare (not safe))
                                 (cons __tmp57203 __tmp57194))))
                          (declare (not safe))
                          (cons __tmp57207 __tmp57193))))
                   (declare (not safe))
                   (cons __tmp57192 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57208
                                                          __tmp57191))))
                                             (declare (not safe))
                                             (cons '() __tmp57190))))
                                      (declare (not safe))
                                      (cons __tmp57224 __tmp57189)))
                                   (__tmp57167
                                    (let ((__tmp57168
                                           (let ((__tmp57187
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp57169
                                                  (let ((__tmp57170
                                                         (let ((__tmp57171
                                                                (let ((__tmp57186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp57172
                               (let ((__tmp57182
                                      (let ((__tmp57185
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp57183
                                             (let ((__tmp57184
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp57184 '()))))
                                        (declare (not safe))
                                        (cons __tmp57185 __tmp57183)))
                                     (__tmp57173
                                      (let ((__tmp57174
                                             (let ((__tmp57181
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57175
                                                    (let ((__tmp57177
                                                           (let ((__tmp57180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57178
                          (let ((__tmp57179 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57179 '()))))
                     (declare (not safe))
                     (cons __tmp57180 __tmp57178)))
                  (__tmp57176 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp57177 __tmp57176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57181 __tmp57175))))
                                        (declare (not safe))
                                        (cons __tmp57174 '()))))
                                 (declare (not safe))
                                 (cons __tmp57182 __tmp57173))))
                          (declare (not safe))
                          (cons __tmp57186 __tmp57172))))
                   (declare (not safe))
                   (cons __tmp57171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp57170))))
                                             (declare (not safe))
                                             (cons __tmp57187 __tmp57169))))
                                      (declare (not safe))
                                      (cons __tmp57168 '()))))
                               (declare (not safe))
                               (cons __tmp57188 __tmp57167))))
                        (declare (not safe))
                        (cons __tmp57225 __tmp57166))))
                 (declare (not safe))
                 (cons __tmp57226 __tmp57165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L54938_ __tmp57164))))
                                           (declare (not safe))
                                           (cons _L54940_ __tmp57163))))
                                    (declare (not safe))
                                    (cons __tmp57227 __tmp57162))))
                             (declare (not safe))
                             (cons __tmp57228 __tmp57161))))
                      (declare (not safe))
                      (cons __tmp57229 __tmp57160))))
               (declare (not safe))
               (cons __tmp57159 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57230 __tmp57158))))
                                         (declare (not safe))
                                         (cons __tmp57246 __tmp57157))))
                                  (declare (not safe))
                                  (cons __tmp57156 '()))))
                           (declare (not safe))
                           (cons __tmp57247 __tmp57155))))
                    (declare (not safe))
                    (cons __tmp57254 __tmp57154)))
                 (__tmp56938
                  (let ((__tmp57105
                         (let ((__tmp57152 (gx#datum->syntax '#f 'def))
                               (__tmp57106
                                (let ((__tmp57144
                                       (let ((__tmp57145
                                              (let ((__tmp57151
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57146
                                                     (let ((__tmp57150
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp57147
                                                            (let ((__tmp57148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57149 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp57149 '()))))
                      (declare (not safe))
                      (cons _L54943_ __tmp57148))))
               (declare (not safe))
               (cons __tmp57150 __tmp57147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57151 __tmp57146))))
                                         (declare (not safe))
                                         (cons _L54943_ __tmp57145)))
                                      (__tmp57107
                                       (let ((__tmp57117
                                              (let ((__tmp57143
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp57118
                                                     (let ((__tmp57124
                                                            (let ((__tmp57142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp57125
                           (let ((__tmp57138
                                  (let ((__tmp57141
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp57139
                                         (let ((__tmp57140
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57140 '()))))
                                    (declare (not safe))
                                    (cons __tmp57141 __tmp57139)))
                                 (__tmp57126
                                  (let ((__tmp57127
                                         (let ((__tmp57137
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp57128
                                                (let ((__tmp57130
                                                       (let ((__tmp57136
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp57131
                                                              (let ((__tmp57132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57135
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp57133
                                    (let ((__tmp57134
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp57134 '()))))
                               (declare (not safe))
                               (cons __tmp57135 __tmp57133))))
                        (declare (not safe))
                        (cons __tmp57132 '()))))
                 (declare (not safe))
                 (cons __tmp57136 __tmp57131)))
              (__tmp57129 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57130
                                                        __tmp57129))))
                                           (declare (not safe))
                                           (cons __tmp57137 __tmp57128))))
                                    (declare (not safe))
                                    (cons __tmp57127 '()))))
                             (declare (not safe))
                             (cons __tmp57138 __tmp57126))))
                      (declare (not safe))
                      (cons __tmp57142 __tmp57125)))
                   (__tmp57119
                    (let ((__tmp57120
                           (let ((__tmp57123
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp57121
                                  (let ((__tmp57122
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57122 '()))))
                             (declare (not safe))
                             (cons __tmp57123 __tmp57121))))
                      (declare (not safe))
                      (cons __tmp57120 '()))))
               (declare (not safe))
               (cons __tmp57124 __tmp57119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57143 __tmp57118)))
                                             (__tmp57108
                                              (let ((__tmp57109
                                                     (let ((__tmp57110
                                                            (let ((__tmp57116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57111
                           (let ((__tmp57115 (gx#datum->syntax '#f 'key))
                                 (__tmp57112
                                  (let ((__tmp57113
                                         (let ((__tmp57114
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57114 '()))))
                                    (declare (not safe))
                                    (cons _L54943_ __tmp57113))))
                             (declare (not safe))
                             (cons __tmp57115 __tmp57112))))
                      (declare (not safe))
                      (cons __tmp57116 __tmp57111))))
               (declare (not safe))
               (cons _L54942_ __tmp57110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57109 '()))))
                                         (declare (not safe))
                                         (cons __tmp57117 __tmp57108))))
                                  (declare (not safe))
                                  (cons __tmp57144 __tmp57107))))
                           (declare (not safe))
                           (cons __tmp57152 __tmp57106)))
                        (__tmp56939
                         (let ((__tmp57001
                                (let ((__tmp57104 (gx#datum->syntax '#f 'def))
                                      (__tmp57002
                                       (let ((__tmp57096
                                              (let ((__tmp57097
                                                     (let ((__tmp57103
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp57098
                                                            (let ((__tmp57102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp57099
                           (let ((__tmp57100
                                  (let ((__tmp57101
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp57101 '()))))
                             (declare (not safe))
                             (cons _L54943_ __tmp57100))))
                      (declare (not safe))
                      (cons __tmp57102 __tmp57099))))
               (declare (not safe))
               (cons __tmp57103 __tmp57098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L54942_ __tmp57097)))
                                             (__tmp57003
                                              (let ((__tmp57004
                                                     (let ((__tmp57095
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp57005
                                                            (let ((__tmp57079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57088
                                  (let ((__tmp57094
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp57089
                                         (let ((__tmp57090
                                                (let ((__tmp57093
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp57091
                                                       (let ((__tmp57092
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp57092
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57093
                                                        __tmp57091))))
                                           (declare (not safe))
                                           (cons __tmp57090 '()))))
                                    (declare (not safe))
                                    (cons __tmp57094 __tmp57089)))
                                 (__tmp57080
                                  (let ((__tmp57081
                                         (let ((__tmp57087
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp57082
                                                (let ((__tmp57083
                                                       (let ((__tmp57086
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp57084
                                                              (let ((__tmp57085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57085 '()))))
                 (declare (not safe))
                 (cons __tmp57086 __tmp57084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57083 '()))))
                                           (declare (not safe))
                                           (cons __tmp57087 __tmp57082))))
                                    (declare (not safe))
                                    (cons __tmp57081 '()))))
                             (declare (not safe))
                             (cons __tmp57088 __tmp57080)))
                          (__tmp57006
                           (let ((__tmp57007
                                  (let ((__tmp57078
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp57008
                                         (let ((__tmp57077
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57009
                                                (let ((__tmp57076
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57010
                                                       (let ((__tmp57011
                                                              (let ((__tmp57012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57075 (gx#datum->syntax '#f 'key))
                                   (__tmp57013
                                    (let ((__tmp57014
                                           (let ((__tmp57074
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp57015
                                                  (let ((__tmp57037
                                                         (let ((__tmp57073
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp57038
                        (let ((__tmp57039
                               (let ((__tmp57057
                                      (let ((__tmp57072
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp57058
                                             (let ((__tmp57068
                                                    (let ((__tmp57071
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57069
                                                           (let ((__tmp57070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57070 '()))))
              (declare (not safe))
              (cons __tmp57071 __tmp57069)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57059
                                                    (let ((__tmp57060
                                                           (let ((__tmp57067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp57061
                          (let ((__tmp57063
                                 (let ((__tmp57066
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp57064
                                        (let ((__tmp57065
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp57065 '()))))
                                   (declare (not safe))
                                   (cons __tmp57066 __tmp57064)))
                                (__tmp57062
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57063 __tmp57062))))
                     (declare (not safe))
                     (cons __tmp57067 __tmp57061))))
              (declare (not safe))
              (cons __tmp57060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57068 __tmp57059))))
                                        (declare (not safe))
                                        (cons __tmp57072 __tmp57058)))
                                     (__tmp57040
                                      (let ((__tmp57041
                                             (let ((__tmp57056
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57042
                                                    (let ((__tmp57052
                                                           (let ((__tmp57055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57053
                          (let ((__tmp57054 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57054 '()))))
                     (declare (not safe))
                     (cons __tmp57055 __tmp57053)))
                  (__tmp57043
                   (let ((__tmp57044
                          (let ((__tmp57051 (gx#datum->syntax '#f 'fx+))
                                (__tmp57045
                                 (let ((__tmp57047
                                        (let ((__tmp57050
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57048
                                               (let ((__tmp57049
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57049 '()))))
                                          (declare (not safe))
                                          (cons __tmp57050 __tmp57048)))
                                       (__tmp57046
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57047 __tmp57046))))
                            (declare (not safe))
                            (cons __tmp57051 __tmp57045))))
                     (declare (not safe))
                     (cons __tmp57044 '()))))
              (declare (not safe))
              (cons __tmp57052 __tmp57043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57056 __tmp57042))))
                                        (declare (not safe))
                                        (cons __tmp57041 '()))))
                                 (declare (not safe))
                                 (cons __tmp57057 __tmp57040))))
                          (declare (not safe))
                          (cons '() __tmp57039))))
                   (declare (not safe))
                   (cons __tmp57073 __tmp57038)))
                (__tmp57016
                 (let ((__tmp57017
                        (let ((__tmp57036 (gx#datum->syntax '#f 'lambda))
                              (__tmp57018
                               (let ((__tmp57019
                                      (let ((__tmp57020
                                             (let ((__tmp57035
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57021
                                                    (let ((__tmp57031
                                                           (let ((__tmp57034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57032
                          (let ((__tmp57033 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57033 '()))))
                     (declare (not safe))
                     (cons __tmp57034 __tmp57032)))
                  (__tmp57022
                   (let ((__tmp57023
                          (let ((__tmp57030 (gx#datum->syntax '#f 'fx+))
                                (__tmp57024
                                 (let ((__tmp57026
                                        (let ((__tmp57029
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57027
                                               (let ((__tmp57028
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57028 '()))))
                                          (declare (not safe))
                                          (cons __tmp57029 __tmp57027)))
                                       (__tmp57025
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57026 __tmp57025))))
                            (declare (not safe))
                            (cons __tmp57030 __tmp57024))))
                     (declare (not safe))
                     (cons __tmp57023 '()))))
              (declare (not safe))
              (cons __tmp57031 __tmp57022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57035 __tmp57021))))
                                        (declare (not safe))
                                        (cons __tmp57020 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp57019))))
                          (declare (not safe))
                          (cons __tmp57036 __tmp57018))))
                   (declare (not safe))
                   (cons __tmp57017 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57037
                                                          __tmp57016))))
                                             (declare (not safe))
                                             (cons __tmp57074 __tmp57015))))
                                      (declare (not safe))
                                      (cons _L54943_ __tmp57014))))
                               (declare (not safe))
                               (cons __tmp57075 __tmp57013))))
                        (declare (not safe))
                        (cons _L54938_ __tmp57012))))
                 (declare (not safe))
                 (cons _L54940_ __tmp57011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57076
                                                        __tmp57010))))
                                           (declare (not safe))
                                           (cons __tmp57077 __tmp57009))))
                                    (declare (not safe))
                                    (cons __tmp57078 __tmp57008))))
                             (declare (not safe))
                             (cons __tmp57007 '()))))
                      (declare (not safe))
                      (cons __tmp57079 __tmp57006))))
               (declare (not safe))
               (cons __tmp57095 __tmp57005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57004 '()))))
                                         (declare (not safe))
                                         (cons __tmp57096 __tmp57003))))
                                  (declare (not safe))
                                  (cons __tmp57104 __tmp57002)))
                               (__tmp56940
                                (let ((__tmp56941
                                       (let ((__tmp57000
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp56942
                                              (let ((__tmp56995
                                                     (let ((__tmp56996
                                                            (let ((__tmp56999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp56997
                           (let ((__tmp56998 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp56998 '()))))
                      (declare (not safe))
                      (cons __tmp56999 __tmp56997))))
               (declare (not safe))
               (cons _L54941_ __tmp56996)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp56943
                                                     (let ((__tmp56944
                                                            (let ((__tmp56994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp56945
                           (let ((__tmp56978
                                  (let ((__tmp56987
                                         (let ((__tmp56993
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp56988
                                                (let ((__tmp56989
                                                       (let ((__tmp56992
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp56990
                                                              (let ((__tmp56991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp56991 '()))))
                 (declare (not safe))
                 (cons __tmp56992 __tmp56990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp56989 '()))))
                                           (declare (not safe))
                                           (cons __tmp56993 __tmp56988)))
                                        (__tmp56979
                                         (let ((__tmp56980
                                                (let ((__tmp56986
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp56981
                                                       (let ((__tmp56982
                                                              (let ((__tmp56985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp56983
                             (let ((__tmp56984 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp56984 '()))))
                        (declare (not safe))
                        (cons __tmp56985 __tmp56983))))
                 (declare (not safe))
                 (cons __tmp56982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp56986
                                                        __tmp56981))))
                                           (declare (not safe))
                                           (cons __tmp56980 '()))))
                                    (declare (not safe))
                                    (cons __tmp56987 __tmp56979)))
                                 (__tmp56946
                                  (let ((__tmp56947
                                         (let ((__tmp56977
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp56948
                                                (let ((__tmp56976
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp56949
                                                       (let ((__tmp56975
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp56950
                                                              (let ((__tmp56951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp56952
                                    (let ((__tmp56974
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp56953
                                           (let ((__tmp56954
                                                  (let ((__tmp56973
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp56955
                                                         (let ((__tmp56956
                                                                (let ((__tmp56957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp56972 (gx#datum->syntax '#f 'set!))
                                     (__tmp56958
                                      (let ((__tmp56968
                                             (let ((__tmp56971
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp56969
                                                    (let ((__tmp56970
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp56970 '()))))
                                               (declare (not safe))
                                               (cons __tmp56971 __tmp56969)))
                                            (__tmp56959
                                             (let ((__tmp56960
                                                    (let ((__tmp56967
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp56961
                                                           (let ((__tmp56963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp56966
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp56964
                                 (let ((__tmp56965
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp56965 '()))))
                            (declare (not safe))
                            (cons __tmp56966 __tmp56964)))
                         (__tmp56962
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp56963 __tmp56962))))
              (declare (not safe))
              (cons __tmp56967 __tmp56961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp56960 '()))))
                                        (declare (not safe))
                                        (cons __tmp56968 __tmp56959))))
                                 (declare (not safe))
                                 (cons __tmp56972 __tmp56958))))
                          (declare (not safe))
                          (cons __tmp56957 '()))))
                   (declare (not safe))
                   (cons '() __tmp56956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp56973
                                                          __tmp56955))))
                                             (declare (not safe))
                                             (cons __tmp56954 '()))))
                                      (declare (not safe))
                                      (cons __tmp56974 __tmp56953))))
                               (declare (not safe))
                               (cons _L54938_ __tmp56952))))
                        (declare (not safe))
                        (cons _L54940_ __tmp56951))))
                 (declare (not safe))
                 (cons __tmp56975 __tmp56950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp56976
                                                        __tmp56949))))
                                           (declare (not safe))
                                           (cons __tmp56977 __tmp56948))))
                                    (declare (not safe))
                                    (cons __tmp56947 '()))))
                             (declare (not safe))
                             (cons __tmp56978 __tmp56946))))
                      (declare (not safe))
                      (cons __tmp56994 __tmp56945))))
               (declare (not safe))
               (cons __tmp56944 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp56995 __tmp56943))))
                                         (declare (not safe))
                                         (cons __tmp57000 __tmp56942))))
                                  (declare (not safe))
                                  (cons __tmp56941 '()))))
                           (declare (not safe))
                           (cons __tmp57001 __tmp56940))))
                    (declare (not safe))
                    (cons __tmp57105 __tmp56939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57153
                                                           __tmp56938))))
                                              (declare (not safe))
                                              (cons __tmp57255 __tmp56937))))
                                       (declare (not safe))
                                       (cons __tmp57301 __tmp56936))))
                                (declare (not safe))
                                (cons __tmp57344 __tmp56935))))
                         (declare (not safe))
                         (cons __tmp57365 __tmp56934)))
                     _hd5482454932_
                     _hd5482154922_
                     _hd5481854912_
                     _hd5481554902_
                     _hd5481254892_
                     _hd5480954882_
                     _hd5480654872_
                     _hd5480354862_
                     _hd5480054852_)
                    (_g5478554831_ _g5478654835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5478554831_
                                                     _g5478654835_))))
                                            (_g5478554831_ _g5478654835_))))
                                    (_g5478554831_ _g5478654835_))))
                            (_g5478554831_ _g5478654835_))))
                    (_g5478554831_ _g5478654835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5478554831_
                                                     _g5478654835_))))
                                            (_g5478554831_ _g5478654835_))))
                                    (_g5478554831_ _g5478654835_))))
                            (_g5478554831_ _g5478654835_))))
                    (_g5478554831_ _g5478654835_)))))
        (_g5478454984_ _$stx54781_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx54988_)
      (let* ((_g5499255014_
              (lambda (_g5499355010_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5499355010_)))
             (_g5499155083_
              (lambda (_g5499355018_)
                (if (gx#stx-pair? _g5499355018_)
                    (let ((_e5499755021_ (gx#syntax-e _g5499355018_)))
                      (let ((_hd5499855025_
                             (let ()
                               (declare (not safe))
                               (##car _e5499755021_)))
                            (_tl5499955028_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5499755021_))))
                        (if (gx#stx-pair? _tl5499955028_)
                            (let ((_e5500055031_ (gx#syntax-e _tl5499955028_)))
                              (let ((_hd5500155035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5500055031_)))
                                    (_tl5500255038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5500055031_))))
                                (if (gx#stx-pair? _tl5500255038_)
                                    (let ((_e5500355041_
                                           (gx#syntax-e _tl5500255038_)))
                                      (let ((_hd5500455045_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5500355041_)))
                                            (_tl5500555048_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5500355041_))))
                                        (if (gx#stx-pair? _tl5500555048_)
                                            (let ((_e5500655051_
                                                   (gx#syntax-e
                                                    _tl5500555048_)))
                                              (let ((_hd5500755055_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5500655051_)))
                                                    (_tl5500855058_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5500655051_))))
                                                (if (gx#stx-null?
                                                     _tl5500855058_)
                                                    ((lambda (_L55061_
                                                              _L55063_
                                                              _L55064_)
                                                       (let ((__tmp57385
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp57366
                                                              (let ((__tmp57373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57384
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp57374
                                    (let ((__tmp57375
                                           (let ((__tmp57383
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57376
                                                  (let ((__tmp57377
                                                         (let ((__tmp57378
                                                                (let ((__tmp57379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57382 (gx#datum->syntax '#f 'fx*))
                                     (__tmp57380
                                      (let ((__tmp57381
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55063_ '()))))
                                        (declare (not safe))
                                        (cons _L55063_ __tmp57381))))
                                 (declare (not safe))
                                 (cons __tmp57382 __tmp57380))))
                          (declare (not safe))
                          (cons __tmp57379 '()))))
                   (declare (not safe))
                   (cons _L55063_ __tmp57378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55064_
                                                          __tmp57377))))
                                             (declare (not safe))
                                             (cons __tmp57383 __tmp57376))))
                                      (declare (not safe))
                                      (cons __tmp57375 '()))))
                               (declare (not safe))
                               (cons __tmp57384 __tmp57374)))
                            (__tmp57367
                             (let ((__tmp57368
                                    (let ((__tmp57372
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp57369
                                           (let ((__tmp57371
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp57370
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55061_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57371 __tmp57370))))
                                      (declare (not safe))
                                      (cons __tmp57372 __tmp57369))))
                               (declare (not safe))
                               (cons __tmp57368 '()))))
                        (declare (not safe))
                        (cons __tmp57373 __tmp57367))))
                 (declare (not safe))
                 (cons __tmp57385 __tmp57366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5500755055_
                                                     _hd5500455045_
                                                     _hd5500155035_)
                                                    (_g5499255014_
                                                     _g5499355018_))))
                                            (_g5499255014_ _g5499355018_))))
                                    (_g5499255014_ _g5499355018_))))
                            (_g5499255014_ _g5499355018_))))
                    (_g5499255014_ _g5499355018_)))))
        (_g5499155083_ _$stx54988_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx55087_)
      (let* ((_g5509155125_
              (lambda (_g5509255121_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5509255121_)))
             (_g5509055236_
              (lambda (_g5509255129_)
                (if (gx#stx-pair? _g5509255129_)
                    (let ((_e5509955132_ (gx#syntax-e _g5509255129_)))
                      (let ((_hd5510055136_
                             (let ()
                               (declare (not safe))
                               (##car _e5509955132_)))
                            (_tl5510155139_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5509955132_))))
                        (if (gx#stx-pair? _tl5510155139_)
                            (let ((_e5510255142_ (gx#syntax-e _tl5510155139_)))
                              (let ((_hd5510355146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5510255142_)))
                                    (_tl5510455149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5510255142_))))
                                (if (gx#stx-pair? _tl5510455149_)
                                    (let ((_e5510555152_
                                           (gx#syntax-e _tl5510455149_)))
                                      (let ((_hd5510655156_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5510555152_)))
                                            (_tl5510755159_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5510555152_))))
                                        (if (gx#stx-pair? _tl5510755159_)
                                            (let ((_e5510855162_
                                                   (gx#syntax-e
                                                    _tl5510755159_)))
                                              (let ((_hd5510955166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5510855162_)))
                                                    (_tl5511055169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5510855162_))))
                                                (if (gx#stx-pair?
                                                     _tl5511055169_)
                                                    (let ((_e5511155172_
                                                           (gx#syntax-e
                                                            _tl5511055169_)))
                                                      (let ((_hd5511255176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5511155172_)))
                    (_tl5511355179_
                     (let () (declare (not safe)) (##cdr _e5511155172_))))
                (if (gx#stx-pair? _tl5511355179_)
                    (let ((_e5511455182_ (gx#syntax-e _tl5511355179_)))
                      (let ((_hd5511555186_
                             (let ()
                               (declare (not safe))
                               (##car _e5511455182_)))
                            (_tl5511655189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5511455182_))))
                        (if (gx#stx-pair? _tl5511655189_)
                            (let ((_e5511755192_ (gx#syntax-e _tl5511655189_)))
                              (let ((_hd5511855196_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5511755192_)))
                                    (_tl5511955199_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5511755192_))))
                                (if (gx#stx-null? _tl5511955199_)
                                    ((lambda (_L55202_
                                              _L55204_
                                              _L55205_
                                              _L55206_
                                              _L55207_
                                              _L55208_)
                                       (let ((__tmp57544
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp57386
                                              (let ((__tmp57504
                                                     (let ((__tmp57535
                                                            (let ((__tmp57543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp57536
                           (let ((__tmp57537
                                  (let ((__tmp57542
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp57538
                                         (let ((__tmp57540
                                                (let ((__tmp57541
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L55204_ '()))))
                                                  (declare (not safe))
                                                  (cons _L55206_ __tmp57541)))
                                               (__tmp57539
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55207_ '()))))
                                           (declare (not safe))
                                           (cons __tmp57540 __tmp57539))))
                                    (declare (not safe))
                                    (cons __tmp57542 __tmp57538))))
                             (declare (not safe))
                             (cons __tmp57537 '()))))
                      (declare (not safe))
                      (cons __tmp57543 __tmp57536)))
                   (__tmp57505
                    (let ((__tmp57529
                           (let ((__tmp57534 (gx#datum->syntax '#f 'size))
                                 (__tmp57530
                                  (let ((__tmp57531
                                         (let ((__tmp57533
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp57532
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55208_ '()))))
                                           (declare (not safe))
                                           (cons __tmp57533 __tmp57532))))
                                    (declare (not safe))
                                    (cons __tmp57531 '()))))
                             (declare (not safe))
                             (cons __tmp57534 __tmp57530)))
                          (__tmp57506
                           (let ((__tmp57521
                                  (let ((__tmp57528
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp57522
                                         (let ((__tmp57523
                                                (let ((__tmp57527
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp57524
                                                       (let ((__tmp57526
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp57525
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp57526 __tmp57525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57527
                                                        __tmp57524))))
                                           (declare (not safe))
                                           (cons __tmp57523 '()))))
                                    (declare (not safe))
                                    (cons __tmp57528 __tmp57522)))
                                 (__tmp57507
                                  (let ((__tmp57508
                                         (let ((__tmp57520
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp57509
                                                (let ((__tmp57510
                                                       (let ((__tmp57519
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp57511
                                                              (let ((__tmp57513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57518
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp57514
                                    (let ((__tmp57517
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp57515
                                           (let ((__tmp57516
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp57516 '()))))
                                      (declare (not safe))
                                      (cons __tmp57517 __tmp57515))))
                               (declare (not safe))
                               (cons __tmp57518 __tmp57514)))
                            (__tmp57512
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp57513 __tmp57512))))
                 (declare (not safe))
                 (cons __tmp57519 __tmp57511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57510 '()))))
                                           (declare (not safe))
                                           (cons __tmp57520 __tmp57509))))
                                    (declare (not safe))
                                    (cons __tmp57508 '()))))
                             (declare (not safe))
                             (cons __tmp57521 __tmp57507))))
                      (declare (not safe))
                      (cons __tmp57529 __tmp57506))))
               (declare (not safe))
               (cons __tmp57535 __tmp57505)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57387
                                                     (let ((__tmp57388
                                                            (let ((__tmp57503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57389
                           (let ((__tmp57502 (gx#datum->syntax '#f 'loop))
                                 (__tmp57390
                                  (let ((__tmp57489
                                         (let ((__tmp57498
                                                (let ((__tmp57501
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp57499
                                                       (let ((__tmp57500
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp57500
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57501
                                                        __tmp57499)))
                                               (__tmp57490
                                                (let ((__tmp57495
                                                       (let ((__tmp57497
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp57496
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp57497 __tmp57496)))
              (__tmp57491
               (let ((__tmp57492
                      (let ((__tmp57494 (gx#datum->syntax '#f 'deleted))
                            (__tmp57493
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp57494 __tmp57493))))
                 (declare (not safe))
                 (cons __tmp57492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57495
                                                        __tmp57491))))
                                           (declare (not safe))
                                           (cons __tmp57498 __tmp57490)))
                                        (__tmp57391
                                         (let ((__tmp57392
                                                (let ((__tmp57488
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp57393
                                                       (let ((__tmp57480
                                                              (let ((__tmp57487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp57481
                             (let ((__tmp57482
                                    (let ((__tmp57486
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp57483
                                           (let ((__tmp57484
                                                  (let ((__tmp57485
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp57485 '()))))
                                             (declare (not safe))
                                             (cons _L55208_ __tmp57484))))
                                      (declare (not safe))
                                      (cons __tmp57486 __tmp57483))))
                               (declare (not safe))
                               (cons __tmp57482 '()))))
                        (declare (not safe))
                        (cons __tmp57487 __tmp57481)))
                     (__tmp57394
                      (let ((__tmp57395
                             (let ((__tmp57479 (gx#datum->syntax '#f 'cond))
                                   (__tmp57396
                                    (let ((__tmp57470
                                           (let ((__tmp57472
                                                  (let ((__tmp57478
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp57473
                                                         (let ((__tmp57477
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp57474
                        (let ((__tmp57475
                               (let ((__tmp57476
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp57476 '()))))
                          (declare (not safe))
                          (cons __tmp57475 '()))))
                   (declare (not safe))
                   (cons __tmp57477 __tmp57474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57478
                                                          __tmp57473)))
                                                 (__tmp57471
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55202_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57472 __tmp57471)))
                                          (__tmp57397
                                           (let ((__tmp57437
                                                  (let ((__tmp57463
                                                         (let ((__tmp57469
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp57464
                        (let ((__tmp57468 (gx#datum->syntax '#f 'k))
                              (__tmp57465
                               (let ((__tmp57466
                                      (let ((__tmp57467
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp57467 '()))))
                                 (declare (not safe))
                                 (cons __tmp57466 '()))))
                          (declare (not safe))
                          (cons __tmp57468 __tmp57465))))
                   (declare (not safe))
                   (cons __tmp57469 __tmp57464)))
                (__tmp57438
                 (let ((__tmp57439
                        (let ((__tmp57462 (gx#datum->syntax '#f 'loop))
                              (__tmp57440
                               (let ((__tmp57454
                                      (let ((__tmp57461
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp57455
                                             (let ((__tmp57460
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp57456
                                                    (let ((__tmp57459
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp57457
                                                           (let ((__tmp57458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp57458 '()))))
              (declare (not safe))
              (cons __tmp57459 __tmp57457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57460 __tmp57456))))
                                        (declare (not safe))
                                        (cons __tmp57461 __tmp57455)))
                                     (__tmp57441
                                      (let ((__tmp57449
                                             (let ((__tmp57453
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57450
                                                    (let ((__tmp57452
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp57451
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp57452
                                                            __tmp57451))))
                                               (declare (not safe))
                                               (cons __tmp57453 __tmp57450)))
                                            (__tmp57442
                                             (let ((__tmp57443
                                                    (let ((__tmp57448
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp57444
                                                           (let ((__tmp57447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp57445
                          (let ((__tmp57446 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp57446 '()))))
                     (declare (not safe))
                     (cons __tmp57447 __tmp57445))))
              (declare (not safe))
              (cons __tmp57448 __tmp57444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57443 '()))))
                                        (declare (not safe))
                                        (cons __tmp57449 __tmp57442))))
                                 (declare (not safe))
                                 (cons __tmp57454 __tmp57441))))
                          (declare (not safe))
                          (cons __tmp57462 __tmp57440))))
                   (declare (not safe))
                   (cons __tmp57439 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57463
                                                          __tmp57438)))
                                                 (__tmp57398
                                                  (let ((__tmp57422
                                                         (let ((__tmp57433
                                                                (let ((__tmp57434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57435
                                      (let ((__tmp57436
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp57436 '()))))
                                 (declare (not safe))
                                 (cons _L55204_ __tmp57435))))
                          (declare (not safe))
                          (cons _L55205_ __tmp57434)))
                       (__tmp57423
                        (let ((__tmp57424
                               (let ((__tmp57432
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp57425
                                      (let ((__tmp57426
                                             (let ((__tmp57427
                                                    (let ((__tmp57431
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp57428
                                                           (let ((__tmp57430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp57429
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp57430 __tmp57429))))
              (declare (not safe))
              (cons __tmp57431 __tmp57428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57427 '()))))
                                        (declare (not safe))
                                        (cons _L55208_ __tmp57426))))
                                 (declare (not safe))
                                 (cons __tmp57432 __tmp57425))))
                          (declare (not safe))
                          (cons __tmp57424 '()))))
                   (declare (not safe))
                   (cons __tmp57433 __tmp57423)))
                (__tmp57399
                 (let ((__tmp57400
                        (let ((__tmp57421 (gx#datum->syntax '#f 'else))
                              (__tmp57401
                               (let ((__tmp57402
                                      (let ((__tmp57420
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp57403
                                             (let ((__tmp57412
                                                    (let ((__tmp57419
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp57413
                                                           (let ((__tmp57418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp57414
                          (let ((__tmp57417 (gx#datum->syntax '#f 'i))
                                (__tmp57415
                                 (let ((__tmp57416
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp57416 '()))))
                            (declare (not safe))
                            (cons __tmp57417 __tmp57415))))
                     (declare (not safe))
                     (cons __tmp57418 __tmp57414))))
              (declare (not safe))
              (cons __tmp57419 __tmp57413)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57404
                                                    (let ((__tmp57407
                                                           (let ((__tmp57411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp57408
                          (let ((__tmp57410 (gx#datum->syntax '#f 'i))
                                (__tmp57409
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57410 __tmp57409))))
                     (declare (not safe))
                     (cons __tmp57411 __tmp57408)))
                  (__tmp57405
                   (let ((__tmp57406 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp57406 '()))))
              (declare (not safe))
              (cons __tmp57407 __tmp57405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57412 __tmp57404))))
                                        (declare (not safe))
                                        (cons __tmp57420 __tmp57403))))
                                 (declare (not safe))
                                 (cons __tmp57402 '()))))
                          (declare (not safe))
                          (cons __tmp57421 __tmp57401))))
                   (declare (not safe))
                   (cons __tmp57400 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57422
                                                          __tmp57399))))
                                             (declare (not safe))
                                             (cons __tmp57437 __tmp57398))))
                                      (declare (not safe))
                                      (cons __tmp57470 __tmp57397))))
                               (declare (not safe))
                               (cons __tmp57479 __tmp57396))))
                        (declare (not safe))
                        (cons __tmp57395 '()))))
                 (declare (not safe))
                 (cons __tmp57480 __tmp57394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57488
                                                        __tmp57393))))
                                           (declare (not safe))
                                           (cons __tmp57392 '()))))
                                    (declare (not safe))
                                    (cons __tmp57489 __tmp57391))))
                             (declare (not safe))
                             (cons __tmp57502 __tmp57390))))
                      (declare (not safe))
                      (cons __tmp57503 __tmp57389))))
               (declare (not safe))
               (cons __tmp57388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57504 __tmp57387))))
                                         (declare (not safe))
                                         (cons __tmp57544 __tmp57386)))
                                     _hd5511855196_
                                     _hd5511555186_
                                     _hd5511255176_
                                     _hd5510955166_
                                     _hd5510655156_
                                     _hd5510355146_)
                                    (_g5509155125_ _g5509255129_))))
                            (_g5509155125_ _g5509255129_))))
                    (_g5509155125_ _g5509255129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5509155125_
                                                     _g5509255129_))))
                                            (_g5509155125_ _g5509255129_))))
                                    (_g5509155125_ _g5509255129_))))
                            (_g5509155125_ _g5509255129_))))
                    (_g5509155125_ _g5509255129_)))))
        (_g5509055236_ _$stx55087_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx55240_)
      (let* ((_g5524455286_
              (lambda (_g5524555282_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5524555282_)))
             (_g5524355425_
              (lambda (_g5524555290_)
                (if (gx#stx-pair? _g5524555290_)
                    (let ((_e5525455293_ (gx#syntax-e _g5524555290_)))
                      (let ((_hd5525555297_
                             (let ()
                               (declare (not safe))
                               (##car _e5525455293_)))
                            (_tl5525655300_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5525455293_))))
                        (if (gx#stx-pair? _tl5525655300_)
                            (let ((_e5525755303_ (gx#syntax-e _tl5525655300_)))
                              (let ((_hd5525855307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5525755303_)))
                                    (_tl5525955310_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5525755303_))))
                                (if (gx#stx-pair? _tl5525955310_)
                                    (let ((_e5526055313_
                                           (gx#syntax-e _tl5525955310_)))
                                      (let ((_hd5526155317_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5526055313_)))
                                            (_tl5526255320_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5526055313_))))
                                        (if (gx#stx-pair? _tl5526255320_)
                                            (let ((_e5526355323_
                                                   (gx#syntax-e
                                                    _tl5526255320_)))
                                              (let ((_hd5526455327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5526355323_)))
                                                    (_tl5526555330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5526355323_))))
                                                (if (gx#stx-pair?
                                                     _tl5526555330_)
                                                    (let ((_e5526655333_
                                                           (gx#syntax-e
                                                            _tl5526555330_)))
                                                      (let ((_hd5526755337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5526655333_)))
                    (_tl5526855340_
                     (let () (declare (not safe)) (##cdr _e5526655333_))))
                (if (gx#stx-pair? _tl5526855340_)
                    (let ((_e5526955343_ (gx#syntax-e _tl5526855340_)))
                      (let ((_hd5527055347_
                             (let ()
                               (declare (not safe))
                               (##car _e5526955343_)))
                            (_tl5527155350_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5526955343_))))
                        (if (gx#stx-pair? _tl5527155350_)
                            (let ((_e5527255353_ (gx#syntax-e _tl5527155350_)))
                              (let ((_hd5527355357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5527255353_)))
                                    (_tl5527455360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5527255353_))))
                                (if (gx#stx-pair? _tl5527455360_)
                                    (let ((_e5527555363_
                                           (gx#syntax-e _tl5527455360_)))
                                      (let ((_hd5527655367_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5527555363_)))
                                            (_tl5527755370_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5527555363_))))
                                        (if (gx#stx-pair? _tl5527755370_)
                                            (let ((_e5527855373_
                                                   (gx#syntax-e
                                                    _tl5527755370_)))
                                              (let ((_hd5527955377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5527855373_)))
                                                    (_tl5528055380_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5527855373_))))
                                                (if (gx#stx-null?
                                                     _tl5528055380_)
                                                    ((lambda (_L55383_
                                                              _L55385_
                                                              _L55386_
                                                              _L55387_
                                                              _L55388_
                                                              _L55389_
                                                              _L55390_
                                                              _L55391_)
                                                       (let ((__tmp57761
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp57545
                                                              (let ((__tmp57721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57752
                                    (let ((__tmp57760
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp57753
                                           (let ((__tmp57754
                                                  (let ((__tmp57759
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp57755
                                                         (let ((__tmp57757
                                                                (let ((__tmp57758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L55387_ '()))))
                          (declare (not safe))
                          (cons _L55389_ __tmp57758)))
                       (__tmp57756
                        (let () (declare (not safe)) (cons _L55390_ '()))))
                   (declare (not safe))
                   (cons __tmp57757 __tmp57756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57759
                                                          __tmp57755))))
                                             (declare (not safe))
                                             (cons __tmp57754 '()))))
                                      (declare (not safe))
                                      (cons __tmp57760 __tmp57753)))
                                   (__tmp57722
                                    (let ((__tmp57746
                                           (let ((__tmp57751
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp57747
                                                  (let ((__tmp57748
                                                         (let ((__tmp57750
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp57749
                        (let () (declare (not safe)) (cons _L55391_ '()))))
                   (declare (not safe))
                   (cons __tmp57750 __tmp57749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57748 '()))))
                                             (declare (not safe))
                                             (cons __tmp57751 __tmp57747)))
                                          (__tmp57723
                                           (let ((__tmp57738
                                                  (let ((__tmp57745
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp57739
                                                         (let ((__tmp57740
                                                                (let ((__tmp57744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp57741
                               (let ((__tmp57743 (gx#datum->syntax '#f 'size))
                                     (__tmp57742
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp57743 __tmp57742))))
                          (declare (not safe))
                          (cons __tmp57744 __tmp57741))))
                   (declare (not safe))
                   (cons __tmp57740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57745
                                                          __tmp57739)))
                                                 (__tmp57724
                                                  (let ((__tmp57725
                                                         (let ((__tmp57737
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp57726
                        (let ((__tmp57727
                               (let ((__tmp57736
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp57728
                                      (let ((__tmp57730
                                             (let ((__tmp57735
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp57731
                                                    (let ((__tmp57734
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp57732
                                                           (let ((__tmp57733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp57733 '()))))
              (declare (not safe))
              (cons __tmp57734 __tmp57732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57735 __tmp57731)))
                                            (__tmp57729
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp57730 __tmp57729))))
                                 (declare (not safe))
                                 (cons __tmp57736 __tmp57728))))
                          (declare (not safe))
                          (cons __tmp57727 '()))))
                   (declare (not safe))
                   (cons __tmp57737 __tmp57726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57725 '()))))
                                             (declare (not safe))
                                             (cons __tmp57738 __tmp57724))))
                                      (declare (not safe))
                                      (cons __tmp57746 __tmp57723))))
                               (declare (not safe))
                               (cons __tmp57752 __tmp57722)))
                            (__tmp57546
                             (let ((__tmp57547
                                    (let ((__tmp57720
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp57548
                                           (let ((__tmp57719
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp57549
                                                  (let ((__tmp57706
                                                         (let ((__tmp57715
                                                                (let ((__tmp57718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp57716
                               (let ((__tmp57717
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp57717 '()))))
                          (declare (not safe))
                          (cons __tmp57718 __tmp57716)))
                       (__tmp57707
                        (let ((__tmp57712
                               (let ((__tmp57714 (gx#datum->syntax '#f 'i))
                                     (__tmp57713
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp57714 __tmp57713)))
                              (__tmp57708
                               (let ((__tmp57709
                                      (let ((__tmp57711
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp57710
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp57711 __tmp57710))))
                                 (declare (not safe))
                                 (cons __tmp57709 '()))))
                          (declare (not safe))
                          (cons __tmp57712 __tmp57708))))
                   (declare (not safe))
                   (cons __tmp57715 __tmp57707)))
                (__tmp57550
                 (let ((__tmp57551
                        (let ((__tmp57705 (gx#datum->syntax '#f 'let))
                              (__tmp57552
                               (let ((__tmp57697
                                      (let ((__tmp57704
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp57698
                                             (let ((__tmp57699
                                                    (let ((__tmp57703
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp57700
                                                           (let ((__tmp57701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57702 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp57702 '()))))
                     (declare (not safe))
                     (cons _L55391_ __tmp57701))))
              (declare (not safe))
              (cons __tmp57703 __tmp57700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57699 '()))))
                                        (declare (not safe))
                                        (cons __tmp57704 __tmp57698)))
                                     (__tmp57553
                                      (let ((__tmp57554
                                             (let ((__tmp57696
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp57555
                                                    (let ((__tmp57637
                                                           (let ((__tmp57689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57695 (gx#datum->syntax '#f 'eq?))
                                (__tmp57690
                                 (let ((__tmp57694 (gx#datum->syntax '#f 'k))
                                       (__tmp57691
                                        (let ((__tmp57692
                                               (let ((__tmp57693
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp57693 '()))))
                                          (declare (not safe))
                                          (cons __tmp57692 '()))))
                                   (declare (not safe))
                                   (cons __tmp57694 __tmp57691))))
                            (declare (not safe))
                            (cons __tmp57695 __tmp57690)))
                         (__tmp57638
                          (let ((__tmp57639
                                 (let ((__tmp57688 (gx#datum->syntax '#f 'if))
                                       (__tmp57640
                                        (let ((__tmp57687
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp57641
                                               (let ((__tmp57665
                                                      (let ((__tmp57686
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp57666
                                                             (let ((__tmp57680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57685
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp57681
                                   (let ((__tmp57682
                                          (let ((__tmp57684
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp57683
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55387_ '()))))
                                            (declare (not safe))
                                            (cons __tmp57684 __tmp57683))))
                                     (declare (not safe))
                                     (cons _L55391_ __tmp57682))))
                              (declare (not safe))
                              (cons __tmp57685 __tmp57681)))
                           (__tmp57667
                            (let ((__tmp57670
                                   (let ((__tmp57679
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp57671
                                          (let ((__tmp57672
                                                 (let ((__tmp57674
                                                        (let ((__tmp57678
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp57675
                                                               (let ((__tmp57677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp57676
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp57677 __tmp57676))))
                  (declare (not safe))
                  (cons __tmp57678 __tmp57675)))
               (__tmp57673 (let () (declare (not safe)) (cons _L55386_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57674
                                                         __tmp57673))))
                                            (declare (not safe))
                                            (cons _L55391_ __tmp57672))))
                                     (declare (not safe))
                                     (cons __tmp57679 __tmp57671)))
                                  (__tmp57668
                                   (let ((__tmp57669
                                          (let ()
                                            (declare (not safe))
                                            (cons _L55383_ '()))))
                                     (declare (not safe))
                                     (cons __tmp57669 '()))))
                              (declare (not safe))
                              (cons __tmp57670 __tmp57668))))
                       (declare (not safe))
                       (cons __tmp57680 __tmp57667))))
                (declare (not safe))
                (cons __tmp57686 __tmp57666)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp57642
                                                      (let ((__tmp57643
                                                             (let ((__tmp57664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp57644
                            (let ((__tmp57658
                                   (let ((__tmp57663
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp57659
                                          (let ((__tmp57660
                                                 (let ((__tmp57662
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp57661
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L55387_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp57662
                                                         __tmp57661))))
                                            (declare (not safe))
                                            (cons _L55391_ __tmp57660))))
                                     (declare (not safe))
                                     (cons __tmp57663 __tmp57659)))
                                  (__tmp57645
                                   (let ((__tmp57648
                                          (let ((__tmp57657
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp57649
                                                 (let ((__tmp57650
                                                        (let ((__tmp57652
                                                               (let ((__tmp57656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp57653
                              (let ((__tmp57655 (gx#datum->syntax '#f 'probe))
                                    (__tmp57654
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp57655 __tmp57654))))
                         (declare (not safe))
                         (cons __tmp57656 __tmp57653)))
                      (__tmp57651
                       (let () (declare (not safe)) (cons _L55386_ '()))))
                  (declare (not safe))
                  (cons __tmp57652 __tmp57651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L55391_
                                                         __tmp57650))))
                                            (declare (not safe))
                                            (cons __tmp57657 __tmp57649)))
                                         (__tmp57646
                                          (let ((__tmp57647
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55385_ '()))))
                                            (declare (not safe))
                                            (cons __tmp57647 '()))))
                                     (declare (not safe))
                                     (cons __tmp57648 __tmp57646))))
                              (declare (not safe))
                              (cons __tmp57658 __tmp57645))))
                       (declare (not safe))
                       (cons __tmp57664 __tmp57644))))
                (declare (not safe))
                (cons __tmp57643 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57665
                                                       __tmp57642))))
                                          (declare (not safe))
                                          (cons __tmp57687 __tmp57641))))
                                   (declare (not safe))
                                   (cons __tmp57688 __tmp57640))))
                            (declare (not safe))
                            (cons __tmp57639 '()))))
                     (declare (not safe))
                     (cons __tmp57689 __tmp57638)))
                  (__tmp57556
                   (let ((__tmp57604
                          (let ((__tmp57630
                                 (let ((__tmp57636 (gx#datum->syntax '#f 'eq?))
                                       (__tmp57631
                                        (let ((__tmp57635
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp57632
                                               (let ((__tmp57633
                                                      (let ((__tmp57634
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp57634
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57633 '()))))
                                          (declare (not safe))
                                          (cons __tmp57635 __tmp57632))))
                                   (declare (not safe))
                                   (cons __tmp57636 __tmp57631)))
                                (__tmp57605
                                 (let ((__tmp57606
                                        (let ((__tmp57629
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp57607
                                               (let ((__tmp57621
                                                      (let ((__tmp57628
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp57622
                                                             (let ((__tmp57627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp57623
                            (let ((__tmp57626 (gx#datum->syntax '#f 'i))
                                  (__tmp57624
                                   (let ((__tmp57625
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp57625 '()))))
                              (declare (not safe))
                              (cons __tmp57626 __tmp57624))))
                       (declare (not safe))
                       (cons __tmp57627 __tmp57623))))
                (declare (not safe))
                (cons __tmp57628 __tmp57622)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp57608
                                                      (let ((__tmp57616
                                                             (let ((__tmp57620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp57617
                            (let ((__tmp57619 (gx#datum->syntax '#f 'i))
                                  (__tmp57618
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp57619 __tmp57618))))
                       (declare (not safe))
                       (cons __tmp57620 __tmp57617)))
                    (__tmp57609
                     (let ((__tmp57610
                            (let ((__tmp57615 (gx#datum->syntax '#f 'or))
                                  (__tmp57611
                                   (let ((__tmp57614
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp57612
                                          (let ((__tmp57613
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp57613 '()))))
                                     (declare (not safe))
                                     (cons __tmp57614 __tmp57612))))
                              (declare (not safe))
                              (cons __tmp57615 __tmp57611))))
                       (declare (not safe))
                       (cons __tmp57610 '()))))
                (declare (not safe))
                (cons __tmp57616 __tmp57609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57621
                                                       __tmp57608))))
                                          (declare (not safe))
                                          (cons __tmp57629 __tmp57607))))
                                   (declare (not safe))
                                   (cons __tmp57606 '()))))
                            (declare (not safe))
                            (cons __tmp57630 __tmp57605)))
                         (__tmp57557
                          (let ((__tmp57581
                                 (let ((__tmp57600
                                        (let ((__tmp57601
                                               (let ((__tmp57602
                                                      (let ((__tmp57603
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp57603
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L55387_ __tmp57602))))
                                          (declare (not safe))
                                          (cons _L55388_ __tmp57601)))
                                       (__tmp57582
                                        (let ((__tmp57594
                                               (let ((__tmp57599
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp57595
                                                      (let ((__tmp57596
                                                             (let ((__tmp57598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp57597
                            (let () (declare (not safe)) (cons _L55387_ '()))))
                       (declare (not safe))
                       (cons __tmp57598 __tmp57597))))
                (declare (not safe))
                (cons _L55391_ __tmp57596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57599 __tmp57595)))
                                              (__tmp57583
                                               (let ((__tmp57584
                                                      (let ((__tmp57593
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp57585
                                                             (let ((__tmp57586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57588
                                   (let ((__tmp57592
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp57589
                                          (let ((__tmp57591
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp57590
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp57591 __tmp57590))))
                                     (declare (not safe))
                                     (cons __tmp57592 __tmp57589)))
                                  (__tmp57587
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55386_ '()))))
                              (declare (not safe))
                              (cons __tmp57588 __tmp57587))))
                       (declare (not safe))
                       (cons _L55391_ __tmp57586))))
                (declare (not safe))
                (cons __tmp57593 __tmp57585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57584 '()))))
                                          (declare (not safe))
                                          (cons __tmp57594 __tmp57583))))
                                   (declare (not safe))
                                   (cons __tmp57600 __tmp57582)))
                                (__tmp57558
                                 (let ((__tmp57559
                                        (let ((__tmp57580
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp57560
                                               (let ((__tmp57561
                                                      (let ((__tmp57579
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp57562
                                                             (let ((__tmp57571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57578
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp57572
                                   (let ((__tmp57577
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp57573
                                          (let ((__tmp57576
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp57574
                                                 (let ((__tmp57575
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp57575 '()))))
                                            (declare (not safe))
                                            (cons __tmp57576 __tmp57574))))
                                     (declare (not safe))
                                     (cons __tmp57577 __tmp57573))))
                              (declare (not safe))
                              (cons __tmp57578 __tmp57572)))
                           (__tmp57563
                            (let ((__tmp57566
                                   (let ((__tmp57570
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp57567
                                          (let ((__tmp57569
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp57568
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp57569 __tmp57568))))
                                     (declare (not safe))
                                     (cons __tmp57570 __tmp57567)))
                                  (__tmp57564
                                   (let ((__tmp57565
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp57565 '()))))
                              (declare (not safe))
                              (cons __tmp57566 __tmp57564))))
                       (declare (not safe))
                       (cons __tmp57571 __tmp57563))))
                (declare (not safe))
                (cons __tmp57579 __tmp57562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57561 '()))))
                                          (declare (not safe))
                                          (cons __tmp57580 __tmp57560))))
                                   (declare (not safe))
                                   (cons __tmp57559 '()))))
                            (declare (not safe))
                            (cons __tmp57581 __tmp57558))))
                     (declare (not safe))
                     (cons __tmp57604 __tmp57557))))
              (declare (not safe))
              (cons __tmp57637 __tmp57556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57696 __tmp57555))))
                                        (declare (not safe))
                                        (cons __tmp57554 '()))))
                                 (declare (not safe))
                                 (cons __tmp57697 __tmp57553))))
                          (declare (not safe))
                          (cons __tmp57705 __tmp57552))))
                   (declare (not safe))
                   (cons __tmp57551 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57706
                                                          __tmp57550))))
                                             (declare (not safe))
                                             (cons __tmp57719 __tmp57549))))
                                      (declare (not safe))
                                      (cons __tmp57720 __tmp57548))))
                               (declare (not safe))
                               (cons __tmp57547 '()))))
                        (declare (not safe))
                        (cons __tmp57721 __tmp57546))))
                 (declare (not safe))
                 (cons __tmp57761 __tmp57545)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5527955377_
                                                     _hd5527655367_
                                                     _hd5527355357_
                                                     _hd5527055347_
                                                     _hd5526755337_
                                                     _hd5526455327_
                                                     _hd5526155317_
                                                     _hd5525855307_)
                                                    (_g5524455286_
                                                     _g5524555290_))))
                                            (_g5524455286_ _g5524555290_))))
                                    (_g5524455286_ _g5524555290_))))
                            (_g5524455286_ _g5524555290_))))
                    (_g5524455286_ _g5524555290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5524455286_
                                                     _g5524555290_))))
                                            (_g5524455286_ _g5524555290_))))
                                    (_g5524455286_ _g5524555290_))))
                            (_g5524455286_ _g5524555290_))))
                    (_g5524455286_ _g5524555290_)))))
        (_g5524355425_ _$stx55240_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx55429_)
      (let* ((_g5543355479_
              (lambda (_g5543455475_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5543455475_)))
             (_g5543255632_
              (lambda (_g5543455483_)
                (if (gx#stx-pair? _g5543455483_)
                    (let ((_e5544455486_ (gx#syntax-e _g5543455483_)))
                      (let ((_hd5544555490_
                             (let ()
                               (declare (not safe))
                               (##car _e5544455486_)))
                            (_tl5544655493_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5544455486_))))
                        (if (gx#stx-pair? _tl5544655493_)
                            (let ((_e5544755496_ (gx#syntax-e _tl5544655493_)))
                              (let ((_hd5544855500_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5544755496_)))
                                    (_tl5544955503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5544755496_))))
                                (if (gx#stx-pair? _tl5544955503_)
                                    (let ((_e5545055506_
                                           (gx#syntax-e _tl5544955503_)))
                                      (let ((_hd5545155510_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5545055506_)))
                                            (_tl5545255513_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5545055506_))))
                                        (if (gx#stx-pair? _tl5545255513_)
                                            (let ((_e5545355516_
                                                   (gx#syntax-e
                                                    _tl5545255513_)))
                                              (let ((_hd5545455520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5545355516_)))
                                                    (_tl5545555523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5545355516_))))
                                                (if (gx#stx-pair?
                                                     _tl5545555523_)
                                                    (let ((_e5545655526_
                                                           (gx#syntax-e
                                                            _tl5545555523_)))
                                                      (let ((_hd5545755530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5545655526_)))
                    (_tl5545855533_
                     (let () (declare (not safe)) (##cdr _e5545655526_))))
                (if (gx#stx-pair? _tl5545855533_)
                    (let ((_e5545955536_ (gx#syntax-e _tl5545855533_)))
                      (let ((_hd5546055540_
                             (let ()
                               (declare (not safe))
                               (##car _e5545955536_)))
                            (_tl5546155543_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5545955536_))))
                        (if (gx#stx-pair? _tl5546155543_)
                            (let ((_e5546255546_ (gx#syntax-e _tl5546155543_)))
                              (let ((_hd5546355550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5546255546_)))
                                    (_tl5546455553_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5546255546_))))
                                (if (gx#stx-pair? _tl5546455553_)
                                    (let ((_e5546555556_
                                           (gx#syntax-e _tl5546455553_)))
                                      (let ((_hd5546655560_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5546555556_)))
                                            (_tl5546755563_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5546555556_))))
                                        (if (gx#stx-pair? _tl5546755563_)
                                            (let ((_e5546855566_
                                                   (gx#syntax-e
                                                    _tl5546755563_)))
                                              (let ((_hd5546955570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5546855566_)))
                                                    (_tl5547055573_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5546855566_))))
                                                (if (gx#stx-pair?
                                                     _tl5547055573_)
                                                    (let ((_e5547155576_
                                                           (gx#syntax-e
                                                            _tl5547055573_)))
                                                      (let ((_hd5547255580_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5547155576_)))
                    (_tl5547355583_
                     (let () (declare (not safe)) (##cdr _e5547155576_))))
                (if (gx#stx-null? _tl5547355583_)
                    ((lambda (_L55586_
                              _L55588_
                              _L55589_
                              _L55590_
                              _L55591_
                              _L55592_
                              _L55593_
                              _L55594_
                              _L55595_)
                       (let ((__tmp57993 (gx#datum->syntax '#f 'let*))
                             (__tmp57762
                              (let ((__tmp57953
                                     (let ((__tmp57984
                                            (let ((__tmp57992
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp57985
                                                   (let ((__tmp57986
                                                          (let ((__tmp57991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp57987
                         (let ((__tmp57989
                                (let ((__tmp57990
                                       (let ()
                                         (declare (not safe))
                                         (cons _L55591_ '()))))
                                  (declare (not safe))
                                  (cons _L55593_ __tmp57990)))
                               (__tmp57988
                                (let ()
                                  (declare (not safe))
                                  (cons _L55594_ '()))))
                           (declare (not safe))
                           (cons __tmp57989 __tmp57988))))
                    (declare (not safe))
                    (cons __tmp57991 __tmp57987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57986 '()))))
                                              (declare (not safe))
                                              (cons __tmp57992 __tmp57985)))
                                           (__tmp57954
                                            (let ((__tmp57978
                                                   (let ((__tmp57983
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp57979
                                                          (let ((__tmp57980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57982
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp57981
                                (let ()
                                  (declare (not safe))
                                  (cons _L55595_ '()))))
                           (declare (not safe))
                           (cons __tmp57982 __tmp57981))))
                    (declare (not safe))
                    (cons __tmp57980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57983
                                                           __tmp57979)))
                                                  (__tmp57955
                                                   (let ((__tmp57970
                                                          (let ((__tmp57977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp57971
                         (let ((__tmp57972
                                (let ((__tmp57976
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp57973
                                       (let ((__tmp57975
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp57974
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp57975 __tmp57974))))
                                  (declare (not safe))
                                  (cons __tmp57976 __tmp57973))))
                           (declare (not safe))
                           (cons __tmp57972 '()))))
                    (declare (not safe))
                    (cons __tmp57977 __tmp57971)))
                 (__tmp57956
                  (let ((__tmp57957
                         (let ((__tmp57969 (gx#datum->syntax '#f 'start))
                               (__tmp57958
                                (let ((__tmp57959
                                       (let ((__tmp57968
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp57960
                                              (let ((__tmp57962
                                                     (let ((__tmp57967
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp57963
                                                            (let ((__tmp57966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp57964
                           (let ((__tmp57965 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp57965 '()))))
                      (declare (not safe))
                      (cons __tmp57966 __tmp57964))))
               (declare (not safe))
               (cons __tmp57967 __tmp57963)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57961
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp57962 __tmp57961))))
                                         (declare (not safe))
                                         (cons __tmp57968 __tmp57960))))
                                  (declare (not safe))
                                  (cons __tmp57959 '()))))
                           (declare (not safe))
                           (cons __tmp57969 __tmp57958))))
                    (declare (not safe))
                    (cons __tmp57957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57970
                                                           __tmp57956))))
                                              (declare (not safe))
                                              (cons __tmp57978 __tmp57955))))
                                       (declare (not safe))
                                       (cons __tmp57984 __tmp57954)))
                                    (__tmp57763
                                     (let ((__tmp57764
                                            (let ((__tmp57952
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp57765
                                                   (let ((__tmp57951
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp57766
                                                          (let ((__tmp57938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57947
                                (let ((__tmp57950
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp57948
                                       (let ((__tmp57949
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp57949 '()))))
                                  (declare (not safe))
                                  (cons __tmp57950 __tmp57948)))
                               (__tmp57939
                                (let ((__tmp57944
                                       (let ((__tmp57946
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp57945
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp57946 __tmp57945)))
                                      (__tmp57940
                                       (let ((__tmp57941
                                              (let ((__tmp57943
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp57942
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp57943 __tmp57942))))
                                         (declare (not safe))
                                         (cons __tmp57941 '()))))
                                  (declare (not safe))
                                  (cons __tmp57944 __tmp57940))))
                           (declare (not safe))
                           (cons __tmp57947 __tmp57939)))
                        (__tmp57767
                         (let ((__tmp57768
                                (let ((__tmp57937 (gx#datum->syntax '#f 'let))
                                      (__tmp57769
                                       (let ((__tmp57929
                                              (let ((__tmp57936
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp57930
                                                     (let ((__tmp57931
                                                            (let ((__tmp57935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp57932
                           (let ((__tmp57933
                                  (let ((__tmp57934
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp57934 '()))))
                             (declare (not safe))
                             (cons _L55595_ __tmp57933))))
                      (declare (not safe))
                      (cons __tmp57935 __tmp57932))))
               (declare (not safe))
               (cons __tmp57931 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57936 __tmp57930)))
                                             (__tmp57770
                                              (let ((__tmp57771
                                                     (let ((__tmp57928
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp57772
                                                            (let ((__tmp57865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57921
                                  (let ((__tmp57927
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp57922
                                         (let ((__tmp57926
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp57923
                                                (let ((__tmp57924
                                                       (let ((__tmp57925
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp57925
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57924 '()))))
                                           (declare (not safe))
                                           (cons __tmp57926 __tmp57923))))
                                    (declare (not safe))
                                    (cons __tmp57927 __tmp57922)))
                                 (__tmp57866
                                  (let ((__tmp57867
                                         (let ((__tmp57920
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp57868
                                                (let ((__tmp57919
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp57869
                                                       (let ((__tmp57895
                                                              (let ((__tmp57918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp57896
                             (let ((__tmp57912
                                    (let ((__tmp57917
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp57913
                                           (let ((__tmp57914
                                                  (let ((__tmp57916
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp57915
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L55591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57916
                                                          __tmp57915))))
                                             (declare (not safe))
                                             (cons _L55595_ __tmp57914))))
                                      (declare (not safe))
                                      (cons __tmp57917 __tmp57913)))
                                   (__tmp57897
                                    (let ((__tmp57900
                                           (let ((__tmp57911
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp57901
                                                  (let ((__tmp57902
                                                         (let ((__tmp57906
                                                                (let ((__tmp57910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp57907
                               (let ((__tmp57909
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp57908
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp57909 __tmp57908))))
                          (declare (not safe))
                          (cons __tmp57910 __tmp57907)))
                       (__tmp57903
                        (let ((__tmp57904
                               (let ((__tmp57905
                                      (let ()
                                        (declare (not safe))
                                        (cons _L55589_ '()))))
                                 (declare (not safe))
                                 (cons _L55590_ __tmp57905))))
                          (declare (not safe))
                          (cons __tmp57904 '()))))
                   (declare (not safe))
                   (cons __tmp57906 __tmp57903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55595_
                                                          __tmp57902))))
                                             (declare (not safe))
                                             (cons __tmp57911 __tmp57901)))
                                          (__tmp57898
                                           (let ((__tmp57899
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55586_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57899 '()))))
                                      (declare (not safe))
                                      (cons __tmp57900 __tmp57898))))
                               (declare (not safe))
                               (cons __tmp57912 __tmp57897))))
                        (declare (not safe))
                        (cons __tmp57918 __tmp57896)))
                     (__tmp57870
                      (let ((__tmp57871
                             (let ((__tmp57894 (gx#datum->syntax '#f 'begin))
                                   (__tmp57872
                                    (let ((__tmp57888
                                           (let ((__tmp57893
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp57889
                                                  (let ((__tmp57890
                                                         (let ((__tmp57892
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp57891
                        (let () (declare (not safe)) (cons _L55591_ '()))))
                   (declare (not safe))
                   (cons __tmp57892 __tmp57891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55595_
                                                          __tmp57890))))
                                             (declare (not safe))
                                             (cons __tmp57893 __tmp57889)))
                                          (__tmp57873
                                           (let ((__tmp57876
                                                  (let ((__tmp57887
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp57877
                                                         (let ((__tmp57878
                                                                (let ((__tmp57882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57886 (gx#datum->syntax '#f 'fx+))
                                     (__tmp57883
                                      (let ((__tmp57885
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp57884
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp57885 __tmp57884))))
                                 (declare (not safe))
                                 (cons __tmp57886 __tmp57883)))
                              (__tmp57879
                               (let ((__tmp57880
                                      (let ((__tmp57881
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55589_ '()))))
                                        (declare (not safe))
                                        (cons _L55590_ __tmp57881))))
                                 (declare (not safe))
                                 (cons __tmp57880 '()))))
                          (declare (not safe))
                          (cons __tmp57882 __tmp57879))))
                   (declare (not safe))
                   (cons _L55595_ __tmp57878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57887
                                                          __tmp57877)))
                                                 (__tmp57874
                                                  (let ((__tmp57875
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L55588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57875 '()))))
                                             (declare (not safe))
                                             (cons __tmp57876 __tmp57874))))
                                      (declare (not safe))
                                      (cons __tmp57888 __tmp57873))))
                               (declare (not safe))
                               (cons __tmp57894 __tmp57872))))
                        (declare (not safe))
                        (cons __tmp57871 '()))))
                 (declare (not safe))
                 (cons __tmp57895 __tmp57870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57919
                                                        __tmp57869))))
                                           (declare (not safe))
                                           (cons __tmp57920 __tmp57868))))
                                    (declare (not safe))
                                    (cons __tmp57867 '()))))
                             (declare (not safe))
                             (cons __tmp57921 __tmp57866)))
                          (__tmp57773
                           (let ((__tmp57832
                                  (let ((__tmp57858
                                         (let ((__tmp57864
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp57859
                                                (let ((__tmp57863
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp57860
                                                       (let ((__tmp57861
                                                              (let ((__tmp57862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp57862 '()))))
                 (declare (not safe))
                 (cons __tmp57861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57863
                                                        __tmp57860))))
                                           (declare (not safe))
                                           (cons __tmp57864 __tmp57859)))
                                        (__tmp57833
                                         (let ((__tmp57834
                                                (let ((__tmp57857
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp57835
                                                       (let ((__tmp57849
                                                              (let ((__tmp57856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp57850
                             (let ((__tmp57855 (gx#datum->syntax '#f 'start))
                                   (__tmp57851
                                    (let ((__tmp57854
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp57852
                                           (let ((__tmp57853
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp57853 '()))))
                                      (declare (not safe))
                                      (cons __tmp57854 __tmp57852))))
                               (declare (not safe))
                               (cons __tmp57855 __tmp57851))))
                        (declare (not safe))
                        (cons __tmp57856 __tmp57850)))
                     (__tmp57836
                      (let ((__tmp57844
                             (let ((__tmp57848 (gx#datum->syntax '#f 'fx+))
                                   (__tmp57845
                                    (let ((__tmp57847
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp57846
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp57847 __tmp57846))))
                               (declare (not safe))
                               (cons __tmp57848 __tmp57845)))
                            (__tmp57837
                             (let ((__tmp57838
                                    (let ((__tmp57843
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp57839
                                           (let ((__tmp57842
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp57840
                                                  (let ((__tmp57841
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp57841 '()))))
                                             (declare (not safe))
                                             (cons __tmp57842 __tmp57840))))
                                      (declare (not safe))
                                      (cons __tmp57843 __tmp57839))))
                               (declare (not safe))
                               (cons __tmp57838 '()))))
                        (declare (not safe))
                        (cons __tmp57844 __tmp57837))))
                 (declare (not safe))
                 (cons __tmp57849 __tmp57836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57857
                                                        __tmp57835))))
                                           (declare (not safe))
                                           (cons __tmp57834 '()))))
                                    (declare (not safe))
                                    (cons __tmp57858 __tmp57833)))
                                 (__tmp57774
                                  (let ((__tmp57798
                                         (let ((__tmp57828
                                                (let ((__tmp57829
                                                       (let ((__tmp57830
                                                              (let ((__tmp57831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp57831 '()))))
                 (declare (not safe))
                 (cons _L55591_ __tmp57830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L55592_ __tmp57829)))
                                               (__tmp57799
                                                (let ((__tmp57822
                                                       (let ((__tmp57827
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp57823
                                                              (let ((__tmp57824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57826 (gx#datum->syntax '#f 'probe))
                                   (__tmp57825
                                    (let ()
                                      (declare (not safe))
                                      (cons _L55591_ '()))))
                               (declare (not safe))
                               (cons __tmp57826 __tmp57825))))
                        (declare (not safe))
                        (cons _L55595_ __tmp57824))))
                 (declare (not safe))
                 (cons __tmp57827 __tmp57823)))
              (__tmp57800
               (let ((__tmp57801
                      (let ((__tmp57821 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp57802
                             (let ((__tmp57803
                                    (let ((__tmp57816
                                           (let ((__tmp57820
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57817
                                                  (let ((__tmp57819
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp57818
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp57819
                                                          __tmp57818))))
                                             (declare (not safe))
                                             (cons __tmp57820 __tmp57817)))
                                          (__tmp57804
                                           (let ((__tmp57805
                                                  (let ((__tmp57806
                                                         (let ((__tmp57807
                                                                (let ((__tmp57815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp57808
                               (let ((__tmp57809
                                      (let ((__tmp57810
                                             (let ((__tmp57814
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57811
                                                    (let ((__tmp57813
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp57812
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp57813
                                                            __tmp57812))))
                                               (declare (not safe))
                                               (cons __tmp57814 __tmp57811))))
                                        (declare (not safe))
                                        (cons __tmp57810 '()))))
                                 (declare (not safe))
                                 (cons _L55595_ __tmp57809))))
                          (declare (not safe))
                          (cons __tmp57815 __tmp57808))))
                   (declare (not safe))
                   (cons __tmp57807 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55590_
                                                          __tmp57806))))
                                             (declare (not safe))
                                             (cons __tmp57805 '()))))
                                      (declare (not safe))
                                      (cons __tmp57816 __tmp57804))))
                               (declare (not safe))
                               (cons _L55595_ __tmp57803))))
                        (declare (not safe))
                        (cons __tmp57821 __tmp57802))))
                 (declare (not safe))
                 (cons __tmp57801 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57822
                                                        __tmp57800))))
                                           (declare (not safe))
                                           (cons __tmp57828 __tmp57799)))
                                        (__tmp57775
                                         (let ((__tmp57776
                                                (let ((__tmp57797
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp57777
                                                       (let ((__tmp57778
                                                              (let ((__tmp57796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp57779
                             (let ((__tmp57788
                                    (let ((__tmp57795
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp57789
                                           (let ((__tmp57794
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp57790
                                                  (let ((__tmp57793
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp57791
                                                         (let ((__tmp57792
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp57792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57793
                                                          __tmp57791))))
                                             (declare (not safe))
                                             (cons __tmp57794 __tmp57790))))
                                      (declare (not safe))
                                      (cons __tmp57795 __tmp57789)))
                                   (__tmp57780
                                    (let ((__tmp57783
                                           (let ((__tmp57787
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57784
                                                  (let ((__tmp57786
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp57785
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp57786
                                                          __tmp57785))))
                                             (declare (not safe))
                                             (cons __tmp57787 __tmp57784)))
                                          (__tmp57781
                                           (let ((__tmp57782
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp57782 '()))))
                                      (declare (not safe))
                                      (cons __tmp57783 __tmp57781))))
                               (declare (not safe))
                               (cons __tmp57788 __tmp57780))))
                        (declare (not safe))
                        (cons __tmp57796 __tmp57779))))
                 (declare (not safe))
                 (cons __tmp57778 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57797
                                                        __tmp57777))))
                                           (declare (not safe))
                                           (cons __tmp57776 '()))))
                                    (declare (not safe))
                                    (cons __tmp57798 __tmp57775))))
                             (declare (not safe))
                             (cons __tmp57832 __tmp57774))))
                      (declare (not safe))
                      (cons __tmp57865 __tmp57773))))
               (declare (not safe))
               (cons __tmp57928 __tmp57772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57771 '()))))
                                         (declare (not safe))
                                         (cons __tmp57929 __tmp57770))))
                                  (declare (not safe))
                                  (cons __tmp57937 __tmp57769))))
                           (declare (not safe))
                           (cons __tmp57768 '()))))
                    (declare (not safe))
                    (cons __tmp57938 __tmp57767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57951
                                                           __tmp57766))))
                                              (declare (not safe))
                                              (cons __tmp57952 __tmp57765))))
                                       (declare (not safe))
                                       (cons __tmp57764 '()))))
                                (declare (not safe))
                                (cons __tmp57953 __tmp57763))))
                         (declare (not safe))
                         (cons __tmp57993 __tmp57762)))
                     _hd5547255580_
                     _hd5546955570_
                     _hd5546655560_
                     _hd5546355550_
                     _hd5546055540_
                     _hd5545755530_
                     _hd5545455520_
                     _hd5545155510_
                     _hd5544855500_)
                    (_g5543355479_ _g5543455483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5543355479_
                                                     _g5543455483_))))
                                            (_g5543355479_ _g5543455483_))))
                                    (_g5543355479_ _g5543455483_))))
                            (_g5543355479_ _g5543455483_))))
                    (_g5543355479_ _g5543455483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5543355479_
                                                     _g5543455483_))))
                                            (_g5543355479_ _g5543455483_))))
                                    (_g5543355479_ _g5543455483_))))
                            (_g5543355479_ _g5543455483_))))
                    (_g5543355479_ _g5543455483_)))))
        (_g5543255632_ _$stx55429_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx55636_)
      (let* ((_g5564055674_
              (lambda (_g5564155670_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5564155670_)))
             (_g5563955785_
              (lambda (_g5564155678_)
                (if (gx#stx-pair? _g5564155678_)
                    (let ((_e5564855681_ (gx#syntax-e _g5564155678_)))
                      (let ((_hd5564955685_
                             (let ()
                               (declare (not safe))
                               (##car _e5564855681_)))
                            (_tl5565055688_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5564855681_))))
                        (if (gx#stx-pair? _tl5565055688_)
                            (let ((_e5565155691_ (gx#syntax-e _tl5565055688_)))
                              (let ((_hd5565255695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5565155691_)))
                                    (_tl5565355698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5565155691_))))
                                (if (gx#stx-pair? _tl5565355698_)
                                    (let ((_e5565455701_
                                           (gx#syntax-e _tl5565355698_)))
                                      (let ((_hd5565555705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5565455701_)))
                                            (_tl5565655708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5565455701_))))
                                        (if (gx#stx-pair? _tl5565655708_)
                                            (let ((_e5565755711_
                                                   (gx#syntax-e
                                                    _tl5565655708_)))
                                              (let ((_hd5565855715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5565755711_)))
                                                    (_tl5565955718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5565755711_))))
                                                (if (gx#stx-pair?
                                                     _tl5565955718_)
                                                    (let ((_e5566055721_
                                                           (gx#syntax-e
                                                            _tl5565955718_)))
                                                      (let ((_hd5566155725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5566055721_)))
                    (_tl5566255728_
                     (let () (declare (not safe)) (##cdr _e5566055721_))))
                (if (gx#stx-pair? _tl5566255728_)
                    (let ((_e5566355731_ (gx#syntax-e _tl5566255728_)))
                      (let ((_hd5566455735_
                             (let ()
                               (declare (not safe))
                               (##car _e5566355731_)))
                            (_tl5566555738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5566355731_))))
                        (if (gx#stx-pair? _tl5566555738_)
                            (let ((_e5566655741_ (gx#syntax-e _tl5566555738_)))
                              (let ((_hd5566755745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5566655741_)))
                                    (_tl5566855748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5566655741_))))
                                (if (gx#stx-null? _tl5566855748_)
                                    ((lambda (_L55751_
                                              _L55753_
                                              _L55754_
                                              _L55755_
                                              _L55756_
                                              _L55757_)
                                       (let ((__tmp58155
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp57994
                                              (let ((__tmp58115
                                                     (let ((__tmp58146
                                                            (let ((__tmp58154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58147
                           (let ((__tmp58148
                                  (let ((__tmp58153
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp58149
                                         (let ((__tmp58151
                                                (let ((__tmp58152
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L55753_ '()))))
                                                  (declare (not safe))
                                                  (cons _L55755_ __tmp58152)))
                                               (__tmp58150
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55756_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58151 __tmp58150))))
                                    (declare (not safe))
                                    (cons __tmp58153 __tmp58149))))
                             (declare (not safe))
                             (cons __tmp58148 '()))))
                      (declare (not safe))
                      (cons __tmp58154 __tmp58147)))
                   (__tmp58116
                    (let ((__tmp58140
                           (let ((__tmp58145 (gx#datum->syntax '#f 'size))
                                 (__tmp58141
                                  (let ((__tmp58142
                                         (let ((__tmp58144
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58143
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55757_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58144 __tmp58143))))
                                    (declare (not safe))
                                    (cons __tmp58142 '()))))
                             (declare (not safe))
                             (cons __tmp58145 __tmp58141)))
                          (__tmp58117
                           (let ((__tmp58132
                                  (let ((__tmp58139
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58133
                                         (let ((__tmp58134
                                                (let ((__tmp58138
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58135
                                                       (let ((__tmp58137
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58136
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58137 __tmp58136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58138
                                                        __tmp58135))))
                                           (declare (not safe))
                                           (cons __tmp58134 '()))))
                                    (declare (not safe))
                                    (cons __tmp58139 __tmp58133)))
                                 (__tmp58118
                                  (let ((__tmp58119
                                         (let ((__tmp58131
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58120
                                                (let ((__tmp58121
                                                       (let ((__tmp58130
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58122
                                                              (let ((__tmp58124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58129
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58125
                                    (let ((__tmp58128
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58126
                                           (let ((__tmp58127
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58127 '()))))
                                      (declare (not safe))
                                      (cons __tmp58128 __tmp58126))))
                               (declare (not safe))
                               (cons __tmp58129 __tmp58125)))
                            (__tmp58123
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58124 __tmp58123))))
                 (declare (not safe))
                 (cons __tmp58130 __tmp58122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58121 '()))))
                                           (declare (not safe))
                                           (cons __tmp58131 __tmp58120))))
                                    (declare (not safe))
                                    (cons __tmp58119 '()))))
                             (declare (not safe))
                             (cons __tmp58132 __tmp58118))))
                      (declare (not safe))
                      (cons __tmp58140 __tmp58117))))
               (declare (not safe))
               (cons __tmp58146 __tmp58116)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57995
                                                     (let ((__tmp57996
                                                            (let ((__tmp58114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57997
                           (let ((__tmp58113 (gx#datum->syntax '#f 'loop))
                                 (__tmp57998
                                  (let ((__tmp58104
                                         (let ((__tmp58109
                                                (let ((__tmp58112
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58110
                                                       (let ((__tmp58111
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58111
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58112
                                                        __tmp58110)))
                                               (__tmp58105
                                                (let ((__tmp58106
                                                       (let ((__tmp58108
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58107
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58108 __tmp58107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58106 '()))))
                                           (declare (not safe))
                                           (cons __tmp58109 __tmp58105)))
                                        (__tmp57999
                                         (let ((__tmp58000
                                                (let ((__tmp58103
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58001
                                                       (let ((__tmp58095
                                                              (let ((__tmp58102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58096
                             (let ((__tmp58097
                                    (let ((__tmp58101
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58098
                                           (let ((__tmp58099
                                                  (let ((__tmp58100
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58100 '()))))
                                             (declare (not safe))
                                             (cons _L55757_ __tmp58099))))
                                      (declare (not safe))
                                      (cons __tmp58101 __tmp58098))))
                               (declare (not safe))
                               (cons __tmp58097 '()))))
                        (declare (not safe))
                        (cons __tmp58102 __tmp58096)))
                     (__tmp58002
                      (let ((__tmp58003
                             (let ((__tmp58094 (gx#datum->syntax '#f 'cond))
                                   (__tmp58004
                                    (let ((__tmp58083
                                           (let ((__tmp58087
                                                  (let ((__tmp58093
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58088
                                                         (let ((__tmp58092
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58089
                        (let ((__tmp58090
                               (let ((__tmp58091
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58091 '()))))
                          (declare (not safe))
                          (cons __tmp58090 '()))))
                   (declare (not safe))
                   (cons __tmp58092 __tmp58089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58093
                                                          __tmp58088)))
                                                 (__tmp58084
                                                  (let ((__tmp58085
                                                         (let ((__tmp58086
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp58086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58085 '()))))
                                             (declare (not safe))
                                             (cons __tmp58087 __tmp58084)))
                                          (__tmp58005
                                           (let ((__tmp58057
                                                  (let ((__tmp58076
                                                         (let ((__tmp58082
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58077
                        (let ((__tmp58081 (gx#datum->syntax '#f 'k))
                              (__tmp58078
                               (let ((__tmp58079
                                      (let ((__tmp58080
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58080 '()))))
                                 (declare (not safe))
                                 (cons __tmp58079 '()))))
                          (declare (not safe))
                          (cons __tmp58081 __tmp58078))))
                   (declare (not safe))
                   (cons __tmp58082 __tmp58077)))
                (__tmp58058
                 (let ((__tmp58059
                        (let ((__tmp58075 (gx#datum->syntax '#f 'loop))
                              (__tmp58060
                               (let ((__tmp58067
                                      (let ((__tmp58074
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58068
                                             (let ((__tmp58073
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58069
                                                    (let ((__tmp58072
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58070
                                                           (let ((__tmp58071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58071 '()))))
              (declare (not safe))
              (cons __tmp58072 __tmp58070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58073 __tmp58069))))
                                        (declare (not safe))
                                        (cons __tmp58074 __tmp58068)))
                                     (__tmp58061
                                      (let ((__tmp58062
                                             (let ((__tmp58066
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58063
                                                    (let ((__tmp58065
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58064
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58065
                                                            __tmp58064))))
                                               (declare (not safe))
                                               (cons __tmp58066 __tmp58063))))
                                        (declare (not safe))
                                        (cons __tmp58062 '()))))
                                 (declare (not safe))
                                 (cons __tmp58067 __tmp58061))))
                          (declare (not safe))
                          (cons __tmp58075 __tmp58060))))
                   (declare (not safe))
                   (cons __tmp58059 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58076
                                                          __tmp58058)))
                                                 (__tmp58006
                                                  (let ((__tmp58028
                                                         (let ((__tmp58053
                                                                (let ((__tmp58054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58055
                                      (let ((__tmp58056
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58056 '()))))
                                 (declare (not safe))
                                 (cons _L55753_ __tmp58055))))
                          (declare (not safe))
                          (cons _L55754_ __tmp58054)))
                       (__tmp58029
                        (let ((__tmp58045
                               (let ((__tmp58052
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp58046
                                      (let ((__tmp58047
                                             (let ((__tmp58051
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp58048
                                                    (let ((__tmp58049
                                                           (let ((__tmp58050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp58050 '()))))
              (declare (not safe))
              (cons __tmp58049 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58051 __tmp58048))))
                                        (declare (not safe))
                                        (cons _L55757_ __tmp58047))))
                                 (declare (not safe))
                                 (cons __tmp58052 __tmp58046)))
                              (__tmp58030
                               (let ((__tmp58033
                                      (let ((__tmp58044
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp58034
                                             (let ((__tmp58035
                                                    (let ((__tmp58039
                                                           (let ((__tmp58043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58040
                          (let ((__tmp58042 (gx#datum->syntax '#f 'probe))
                                (__tmp58041
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58042 __tmp58041))))
                     (declare (not safe))
                     (cons __tmp58043 __tmp58040)))
                  (__tmp58036
                   (let ((__tmp58037
                          (let ((__tmp58038
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp58038 '()))))
                     (declare (not safe))
                     (cons __tmp58037 '()))))
              (declare (not safe))
              (cons __tmp58039 __tmp58036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L55757_ __tmp58035))))
                                        (declare (not safe))
                                        (cons __tmp58044 __tmp58034)))
                                     (__tmp58031
                                      (let ((__tmp58032
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55751_ '()))))
                                        (declare (not safe))
                                        (cons __tmp58032 '()))))
                                 (declare (not safe))
                                 (cons __tmp58033 __tmp58031))))
                          (declare (not safe))
                          (cons __tmp58045 __tmp58030))))
                   (declare (not safe))
                   (cons __tmp58053 __tmp58029)))
                (__tmp58007
                 (let ((__tmp58008
                        (let ((__tmp58027 (gx#datum->syntax '#f 'else))
                              (__tmp58009
                               (let ((__tmp58010
                                      (let ((__tmp58026
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58011
                                             (let ((__tmp58018
                                                    (let ((__tmp58025
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58019
                                                           (let ((__tmp58024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58020
                          (let ((__tmp58023 (gx#datum->syntax '#f 'i))
                                (__tmp58021
                                 (let ((__tmp58022
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58022 '()))))
                            (declare (not safe))
                            (cons __tmp58023 __tmp58021))))
                     (declare (not safe))
                     (cons __tmp58024 __tmp58020))))
              (declare (not safe))
              (cons __tmp58025 __tmp58019)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58012
                                                    (let ((__tmp58013
                                                           (let ((__tmp58017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58014
                          (let ((__tmp58016 (gx#datum->syntax '#f 'i))
                                (__tmp58015
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58016 __tmp58015))))
                     (declare (not safe))
                     (cons __tmp58017 __tmp58014))))
              (declare (not safe))
              (cons __tmp58013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58018 __tmp58012))))
                                        (declare (not safe))
                                        (cons __tmp58026 __tmp58011))))
                                 (declare (not safe))
                                 (cons __tmp58010 '()))))
                          (declare (not safe))
                          (cons __tmp58027 __tmp58009))))
                   (declare (not safe))
                   (cons __tmp58008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58028
                                                          __tmp58007))))
                                             (declare (not safe))
                                             (cons __tmp58057 __tmp58006))))
                                      (declare (not safe))
                                      (cons __tmp58083 __tmp58005))))
                               (declare (not safe))
                               (cons __tmp58094 __tmp58004))))
                        (declare (not safe))
                        (cons __tmp58003 '()))))
                 (declare (not safe))
                 (cons __tmp58095 __tmp58002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58103
                                                        __tmp58001))))
                                           (declare (not safe))
                                           (cons __tmp58000 '()))))
                                    (declare (not safe))
                                    (cons __tmp58104 __tmp57999))))
                             (declare (not safe))
                             (cons __tmp58113 __tmp57998))))
                      (declare (not safe))
                      (cons __tmp58114 __tmp57997))))
               (declare (not safe))
               (cons __tmp57996 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58115 __tmp57995))))
                                         (declare (not safe))
                                         (cons __tmp58155 __tmp57994)))
                                     _hd5566755745_
                                     _hd5566455735_
                                     _hd5566155725_
                                     _hd5565855715_
                                     _hd5565555705_
                                     _hd5565255695_)
                                    (_g5564055674_ _g5564155678_))))
                            (_g5564055674_ _g5564155678_))))
                    (_g5564055674_ _g5564155678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5564055674_
                                                     _g5564155678_))))
                                            (_g5564055674_ _g5564155678_))))
                                    (_g5564055674_ _g5564155678_))))
                            (_g5564055674_ _g5564155678_))))
                    (_g5564055674_ _g5564155678_)))))
        (_g5563955785_ _$stx55636_)))))
