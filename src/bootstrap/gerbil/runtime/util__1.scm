(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64504_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64505_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55683_)
        (let* ((_g5568755705_
                (lambda (_g5568855701_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5568855701_)))
               (_g5568655761_
                (lambda (_g5568855709_)
                  (if (gx#stx-pair? _g5568855709_)
                      (let ((_e5569355712_ (gx#syntax-e _g5568855709_)))
                        (let ((_hd5569255716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5569355712_)))
                              (_tl5569155719_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5569355712_))))
                          (if (gx#stx-pair? _tl5569155719_)
                              (let ((_e5569655722_
                                     (gx#syntax-e _tl5569155719_)))
                                (let ((_hd5569555726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5569655722_)))
                                      (_tl5569455729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5569655722_))))
                                  (if (gx#stx-pair? _tl5569455729_)
                                      (let ((_e5569955732_
                                             (gx#syntax-e _tl5569455729_)))
                                        (let ((_hd5569855736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5569955732_)))
                                              (_tl5569755739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5569955732_))))
                                          (if (gx#stx-null? _tl5569755739_)
                                              ((lambda (_L55742_ _L55744_)
                                                 (let ((__tmp64265
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64217
                                                        (let ((__tmp64256
                                                               (let ((__tmp64257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64264 (gx#datum->syntax '#f 'key))
                                    (__tmp64258
                                     (let ((__tmp64263
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64259
                                            (let ((__tmp64260
                                                   (let ((__tmp64262
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64261
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64262
                                                           __tmp64261))))
                                              (declare (not safe))
                                              (cons __tmp64260 '()))))
                                       (declare (not safe))
                                       (cons __tmp64263 __tmp64259))))
                                (declare (not safe))
                                (cons __tmp64264 __tmp64258))))
                         (declare (not safe))
                         (cons _L55744_ __tmp64257)))
                      (__tmp64218
                       (let ((__tmp64219
                              (let ((__tmp64255 (gx#datum->syntax '#f 'cond))
                                    (__tmp64220
                                     (let ((__tmp64237
                                            (let ((__tmp64242
                                                   (let ((__tmp64254
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64243
                                                          (let ((__tmp64250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64253 (gx#datum->syntax '#f 'pair?))
                               (__tmp64251
                                (let ((__tmp64252 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64252 '()))))
                           (declare (not safe))
                           (cons __tmp64253 __tmp64251)))
                        (__tmp64244
                         (let ((__tmp64245
                                (let ((__tmp64246
                                       (let ((__tmp64249
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64247
                                              (let ((__tmp64248
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64248 '()))))
                                         (declare (not safe))
                                         (cons __tmp64249 __tmp64247))))
                                  (declare (not safe))
                                  (cons _L55742_ __tmp64246))))
                           (declare (not safe))
                           (cons __tmp64245 '()))))
                    (declare (not safe))
                    (cons __tmp64250 __tmp64244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64254
                                                           __tmp64243)))
                                                  (__tmp64238
                                                   (let ((__tmp64241
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64239
                                                          (let ((__tmp64240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64240 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64241
                                                           __tmp64239))))
                                              (declare (not safe))
                                              (cons __tmp64242 __tmp64238)))
                                           (__tmp64221
                                            (let ((__tmp64227
                                                   (let ((__tmp64233
                                                          (let ((__tmp64236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64234
                         (let ((__tmp64235 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64235 '()))))
                    (declare (not safe))
                    (cons __tmp64236 __tmp64234)))
                 (__tmp64228
                  (let ((__tmp64229
                         (let ((__tmp64232 (gx#datum->syntax '#f 'default))
                               (__tmp64230
                                (let ((__tmp64231 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64231 '()))))
                           (declare (not safe))
                           (cons __tmp64232 __tmp64230))))
                    (declare (not safe))
                    (cons __tmp64229 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64233
                                                           __tmp64228)))
                                                  (__tmp64222
                                                   (let ((__tmp64223
                                                          (let ((__tmp64226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64224
                         (let ((__tmp64225 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64225 '()))))
                    (declare (not safe))
                    (cons __tmp64226 __tmp64224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64223 '()))))
                                              (declare (not safe))
                                              (cons __tmp64227 __tmp64222))))
                                       (declare (not safe))
                                       (cons __tmp64237 __tmp64221))))
                                (declare (not safe))
                                (cons __tmp64255 __tmp64220))))
                         (declare (not safe))
                         (cons __tmp64219 '()))))
                  (declare (not safe))
                  (cons __tmp64256 __tmp64218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64265
                                                         __tmp64217)))
                                               _hd5569855736_
                                               _hd5569555726_)
                                              (_g5568755705_ _g5568855709_))))
                                      (_g5568755705_ _g5568855709_))))
                              (_g5568755705_ _g5568855709_))))
                      (_g5568755705_ _g5568855709_)))))
          (_g5568655761_ _$stx55683_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55765_)
        (let* ((_g5576955787_
                (lambda (_g5577055783_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5577055783_)))
               (_g5576855842_
                (lambda (_g5577055791_)
                  (if (gx#stx-pair? _g5577055791_)
                      (let ((_e5577555794_ (gx#syntax-e _g5577055791_)))
                        (let ((_hd5577455798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5577555794_)))
                              (_tl5577355801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5577555794_))))
                          (if (gx#stx-pair? _tl5577355801_)
                              (let ((_e5577855804_
                                     (gx#syntax-e _tl5577355801_)))
                                (let ((_hd5577755808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5577855804_)))
                                      (_tl5577655811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5577855804_))))
                                  (if (gx#stx-pair? _tl5577655811_)
                                      (let ((_e5578155814_
                                             (gx#syntax-e _tl5577655811_)))
                                        (let ((_hd5578055818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5578155814_)))
                                              (_tl5577955821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5578155814_))))
                                          (if (gx#stx-null? _tl5577955821_)
                                              ((lambda (_L55824_ _L55826_)
                                                 (let ((__tmp64335
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64266
                                                        (let ((__tmp64326
                                                               (let ((__tmp64327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64334 (gx#datum->syntax '#f 'key))
                                    (__tmp64328
                                     (let ((__tmp64333
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64329
                                            (let ((__tmp64330
                                                   (let ((__tmp64332
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64331
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64332
                                                           __tmp64331))))
                                              (declare (not safe))
                                              (cons __tmp64330 '()))))
                                       (declare (not safe))
                                       (cons __tmp64333 __tmp64329))))
                                (declare (not safe))
                                (cons __tmp64334 __tmp64328))))
                         (declare (not safe))
                         (cons _L55826_ __tmp64327)))
                      (__tmp64267
                       (let ((__tmp64268
                              (let ((__tmp64325 (gx#datum->syntax '#f 'let))
                                    (__tmp64269
                                     (let ((__tmp64324
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64270
                                            (let ((__tmp64319
                                                   (let ((__tmp64320
                                                          (let ((__tmp64323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64321
                         (let ((__tmp64322 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64322 '()))))
                    (declare (not safe))
                    (cons __tmp64323 __tmp64321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64320 '())))
                                                  (__tmp64271
                                                   (let ((__tmp64272
                                                          (let ((__tmp64318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64273
                         (let ((__tmp64317 (gx#datum->syntax '#f 'rest))
                               (__tmp64274
                                (let ((__tmp64293
                                       (let ((__tmp64310
                                              (let ((__tmp64316
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64311
                                                     (let ((__tmp64315
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64312
                                                            (let ((__tmp64314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64313 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64314 __tmp64313))))
               (declare (not safe))
               (cons __tmp64315 __tmp64312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64316 __tmp64311)))
                                             (__tmp64294
                                              (let ((__tmp64295
                                                     (let ((__tmp64309
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64296
                                                            (let ((__tmp64304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64305
                                  (let ((__tmp64308 (gx#datum->syntax '#f 'k))
                                        (__tmp64306
                                         (let ((__tmp64307
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64307 '()))))
                                    (declare (not safe))
                                    (cons __tmp64308 __tmp64306))))
                             (declare (not safe))
                             (cons _L55824_ __tmp64305)))
                          (__tmp64297
                           (let ((__tmp64303 (gx#datum->syntax '#f 'v))
                                 (__tmp64298
                                  (let ((__tmp64299
                                         (let ((__tmp64302
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64300
                                                (let ((__tmp64301
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64301 '()))))
                                           (declare (not safe))
                                           (cons __tmp64302 __tmp64300))))
                                    (declare (not safe))
                                    (cons __tmp64299 '()))))
                             (declare (not safe))
                             (cons __tmp64303 __tmp64298))))
                      (declare (not safe))
                      (cons __tmp64304 __tmp64297))))
               (declare (not safe))
               (cons __tmp64309 __tmp64296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64295 '()))))
                                         (declare (not safe))
                                         (cons __tmp64310 __tmp64294)))
                                      (__tmp64275
                                       (let ((__tmp64276
                                              (let ((__tmp64292
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64277
                                                     (let ((__tmp64278
                                                            (let ((__tmp64291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64279
                           (let ((__tmp64287
                                  (let ((__tmp64290
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64288
                                         (let ((__tmp64289
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64289 '()))))
                                    (declare (not safe))
                                    (cons __tmp64290 __tmp64288)))
                                 (__tmp64280
                                  (let ((__tmp64283
                                         (let ((__tmp64286
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64284
                                                (let ((__tmp64285
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64285 '()))))
                                           (declare (not safe))
                                           (cons __tmp64286 __tmp64284)))
                                        (__tmp64281
                                         (let ((__tmp64282
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64282 '()))))
                                    (declare (not safe))
                                    (cons __tmp64283 __tmp64281))))
                             (declare (not safe))
                             (cons __tmp64287 __tmp64280))))
                      (declare (not safe))
                      (cons __tmp64291 __tmp64279))))
               (declare (not safe))
               (cons __tmp64278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64292 __tmp64277))))
                                         (declare (not safe))
                                         (cons __tmp64276 '()))))
                                  (declare (not safe))
                                  (cons __tmp64293 __tmp64275))))
                           (declare (not safe))
                           (cons __tmp64317 __tmp64274))))
                    (declare (not safe))
                    (cons __tmp64318 __tmp64273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64272 '()))))
                                              (declare (not safe))
                                              (cons __tmp64319 __tmp64271))))
                                       (declare (not safe))
                                       (cons __tmp64324 __tmp64270))))
                                (declare (not safe))
                                (cons __tmp64325 __tmp64269))))
                         (declare (not safe))
                         (cons __tmp64268 '()))))
                  (declare (not safe))
                  (cons __tmp64326 __tmp64267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64335
                                                         __tmp64266)))
                                               _hd5578055818_
                                               _hd5577755808_)
                                              (_g5576955787_ _g5577055791_))))
                                      (_g5576955787_ _g5577055791_))))
                              (_g5576955787_ _g5577055791_))))
                      (_g5576955787_ _g5577055791_)))))
          (_g5576855842_ _$stx55765_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55846_)
        (let* ((_g5585055868_
                (lambda (_g5585155864_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5585155864_)))
               (_g5584955923_
                (lambda (_g5585155872_)
                  (if (gx#stx-pair? _g5585155872_)
                      (let ((_e5585655875_ (gx#syntax-e _g5585155872_)))
                        (let ((_hd5585555879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5585655875_)))
                              (_tl5585455882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5585655875_))))
                          (if (gx#stx-pair? _tl5585455882_)
                              (let ((_e5585955885_
                                     (gx#syntax-e _tl5585455882_)))
                                (let ((_hd5585855889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5585955885_)))
                                      (_tl5585755892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5585955885_))))
                                  (if (gx#stx-pair? _tl5585755892_)
                                      (let ((_e5586255895_
                                             (gx#syntax-e _tl5585755892_)))
                                        (let ((_hd5586155899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5586255895_)))
                                              (_tl5586055902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5586255895_))))
                                          (if (gx#stx-null? _tl5586055902_)
                                              ((lambda (_L55905_ _L55907_)
                                                 (let ((__tmp64406
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64336
                                                        (let ((__tmp64401
                                                               (let ((__tmp64402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64405 (gx#datum->syntax '#f 'el))
                                    (__tmp64403
                                     (let ((__tmp64404
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64404 '()))))
                                (declare (not safe))
                                (cons __tmp64405 __tmp64403))))
                         (declare (not safe))
                         (cons _L55907_ __tmp64402)))
                      (__tmp64337
                       (let ((__tmp64338
                              (let ((__tmp64400 (gx#datum->syntax '#f 'let))
                                    (__tmp64339
                                     (let ((__tmp64399
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64340
                                            (let ((__tmp64388
                                                   (let ((__tmp64395
                                                          (let ((__tmp64398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64396
                         (let ((__tmp64397 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64397 '()))))
                    (declare (not safe))
                    (cons __tmp64398 __tmp64396)))
                 (__tmp64389
                  (let ((__tmp64390
                         (let ((__tmp64394 (gx#datum->syntax '#f 'r))
                               (__tmp64391
                                (let ((__tmp64392
                                       (let ((__tmp64393
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64393 '()))))
                                  (declare (not safe))
                                  (cons __tmp64392 '()))))
                           (declare (not safe))
                           (cons __tmp64394 __tmp64391))))
                    (declare (not safe))
                    (cons __tmp64390 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64395
                                                           __tmp64389)))
                                                  (__tmp64341
                                                   (let ((__tmp64342
                                                          (let ((__tmp64387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64343
                         (let ((__tmp64386 (gx#datum->syntax '#f 'rest))
                               (__tmp64344
                                (let ((__tmp64350
                                       (let ((__tmp64381
                                              (let ((__tmp64385
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64382
                                                     (let ((__tmp64384
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64383
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64384
                                                             __tmp64383))))
                                                (declare (not safe))
                                                (cons __tmp64385 __tmp64382)))
                                             (__tmp64351
                                              (let ((__tmp64352
                                                     (let ((__tmp64380
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64353
                                                            (let ((__tmp64375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64376
                                  (let ((__tmp64379 (gx#datum->syntax '#f 'el))
                                        (__tmp64377
                                         (let ((__tmp64378
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64378 '()))))
                                    (declare (not safe))
                                    (cons __tmp64379 __tmp64377))))
                             (declare (not safe))
                             (cons _L55905_ __tmp64376)))
                          (__tmp64354
                           (let ((__tmp64367
                                  (let ((__tmp64374
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64368
                                         (let ((__tmp64373
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64369
                                                (let ((__tmp64372
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64370
                                                       (let ((__tmp64371
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64371
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64372
                                                        __tmp64370))))
                                           (declare (not safe))
                                           (cons __tmp64373 __tmp64369))))
                                    (declare (not safe))
                                    (cons __tmp64374 __tmp64368)))
                                 (__tmp64355
                                  (let ((__tmp64356
                                         (let ((__tmp64366
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64357
                                                (let ((__tmp64365
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64358
                                                       (let ((__tmp64359
                                                              (let ((__tmp64364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64360
                             (let ((__tmp64363 (gx#datum->syntax '#f 'hd))
                                   (__tmp64361
                                    (let ((__tmp64362
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64362 '()))))
                               (declare (not safe))
                               (cons __tmp64363 __tmp64361))))
                        (declare (not safe))
                        (cons __tmp64364 __tmp64360))))
                 (declare (not safe))
                 (cons __tmp64359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64365
                                                        __tmp64358))))
                                           (declare (not safe))
                                           (cons __tmp64366 __tmp64357))))
                                    (declare (not safe))
                                    (cons __tmp64356 '()))))
                             (declare (not safe))
                             (cons __tmp64367 __tmp64355))))
                      (declare (not safe))
                      (cons __tmp64375 __tmp64354))))
               (declare (not safe))
               (cons __tmp64380 __tmp64353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64352 '()))))
                                         (declare (not safe))
                                         (cons __tmp64381 __tmp64351)))
                                      (__tmp64345
                                       (let ((__tmp64346
                                              (let ((__tmp64349
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64347
                                                     (let ((__tmp64348
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64348 '()))))
                                                (declare (not safe))
                                                (cons __tmp64349 __tmp64347))))
                                         (declare (not safe))
                                         (cons __tmp64346 '()))))
                                  (declare (not safe))
                                  (cons __tmp64350 __tmp64345))))
                           (declare (not safe))
                           (cons __tmp64386 __tmp64344))))
                    (declare (not safe))
                    (cons __tmp64387 __tmp64343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64342 '()))))
                                              (declare (not safe))
                                              (cons __tmp64388 __tmp64341))))
                                       (declare (not safe))
                                       (cons __tmp64399 __tmp64340))))
                                (declare (not safe))
                                (cons __tmp64400 __tmp64339))))
                         (declare (not safe))
                         (cons __tmp64338 '()))))
                  (declare (not safe))
                  (cons __tmp64401 __tmp64337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64406
                                                         __tmp64336)))
                                               _hd5586155899_
                                               _hd5585855889_)
                                              (_g5585055868_ _g5585155872_))))
                                      (_g5585055868_ _g5585155872_))))
                              (_g5585055868_ _g5585155872_))))
                      (_g5585055868_ _g5585155872_)))))
          (_g5584955923_ _$stx55846_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55927_)
        (let* ((_g5593155942_
                (lambda (_g5593255938_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5593255938_)))
               (_g5593055971_
                (lambda (_g5593255946_)
                  (if (gx#stx-pair? _g5593255946_)
                      (let ((_e5593655949_ (gx#syntax-e _g5593255946_)))
                        (let ((_hd5593555953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5593655949_)))
                              (_tl5593455956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5593655949_))))
                          ((lambda (_L55959_)
                             (let ((__tmp64408 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64407
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55959_))))
                               (declare (not safe))
                               (cons __tmp64408 __tmp64407)))
                           _tl5593455956_)))
                      (_g5593155942_ _g5593255946_)))))
          (_g5593055971_ _$stx55927_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55975_)
        (let* ((___stx6373263733_ _$stx55975_)
               (_g5598656200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6373263733_))))
          (let ((___kont6373563736_
                 (lambda (_L57053_ _L57055_ _L57056_ _L57057_ _L57058_)
                   (let ((__tmp64409
                          (let ((__tmp64410
                                 (let ((__tmp64411
                                        (let ((__tmp64415
                                               (let ((__tmp64416
                                                      (lambda (_g5708857091_
                                                               _g5708957094_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5708857091_
                                                                _g5708957094_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64416
                                                         '()
                                                         _L57056_)))
                                              (__tmp64412
                                               (let ((__tmp64413
                                                      (let ((__tmp64414
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L57053_ '()))))
                (declare (not safe))
                (cons _L57055_ __tmp64414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L57057_ __tmp64413))))
                                          (declare (not safe))
                                          (cons __tmp64415 __tmp64412))))
                                   (declare (not safe))
                                   (cons '() __tmp64411))))
                            (declare (not safe))
                            (cons '2 __tmp64410))))
                     (declare (not safe))
                     (cons _L57058_ __tmp64409))))
                (___kont6373963740_
                 (lambda (_L56906_ _L56908_ _L56909_ _L56910_)
                   (let ((__tmp64417
                          (let ((__tmp64418
                                 (let ((__tmp64419
                                        (let ((__tmp64423
                                               (let ((__tmp64424
                                                      (lambda (_g5693356936_
                                                               _g5693456939_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5693356936_
                                                                _g5693456939_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64424
                                                         '()
                                                         _L56908_)))
                                              (__tmp64420
                                               (let ((__tmp64421
                                                      (let ((__tmp64422
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56906_ '()))))
                (declare (not safe))
                (cons _L56906_ __tmp64422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56909_ __tmp64421))))
                                          (declare (not safe))
                                          (cons __tmp64423 __tmp64420))))
                                   (declare (not safe))
                                   (cons '() __tmp64419))))
                            (declare (not safe))
                            (cons '2 __tmp64418))))
                     (declare (not safe))
                     (cons _L56910_ __tmp64417))))
                (___kont6374363744_
                 (lambda (_L56809_)
                   (let ((__tmp64436 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64425
                          (let ((__tmp64426
                                 (let ((__tmp64433
                                        (let ((__tmp64435
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64434
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64435 __tmp64434)))
                                       (__tmp64427
                                        (let ((__tmp64430
                                               (let ((__tmp64432
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64431
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64432 __tmp64431)))
                                              (__tmp64428
                                               (let ((__tmp64429
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64429))))
                                          (declare (not safe))
                                          (cons __tmp64430 __tmp64428))))
                                   (declare (not safe))
                                   (cons __tmp64433 __tmp64427))))
                            (declare (not safe))
                            (cons _L56809_ __tmp64426))))
                     (declare (not safe))
                     (cons __tmp64436 __tmp64425))))
                (___kont6374563746_
                 (lambda (_L56732_
                          _L56734_
                          _L56735_
                          _L56736_
                          _L56737_
                          _L56738_)
                   (let ((__tmp64437
                          (let ((__tmp64438
                                 (let ((__tmp64440
                                        (let ((__tmp64441
                                               (let ((__tmp64442
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56735_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56736_ __tmp64442))))
                                          (declare (not safe))
                                          (cons __tmp64441 _L56737_)))
                                       (__tmp64439
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56734_ _L56732_))))
                                   (declare (not safe))
                                   (cons __tmp64440 __tmp64439))))
                            (declare (not safe))
                            (cons '2 __tmp64438))))
                     (declare (not safe))
                     (cons _L56738_ __tmp64437))))
                (___kont6374763748_
                 (lambda (_L56613_ _L56615_ _L56616_ _L56617_ _L56618_)
                   (let ((__tmp64443
                          (let ((__tmp64444
                                 (let ((__tmp64446
                                        (let ((__tmp64447
                                               (let ((__tmp64448
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56616_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56616_ __tmp64448))))
                                          (declare (not safe))
                                          (cons __tmp64447 _L56617_)))
                                       (__tmp64445
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56615_ _L56613_))))
                                   (declare (not safe))
                                   (cons __tmp64446 __tmp64445))))
                            (declare (not safe))
                            (cons '2 __tmp64444))))
                     (declare (not safe))
                     (cons _L56618_ __tmp64443))))
                (___kont6374963750_
                 (lambda (_L56530_ _L56532_ _L56533_)
                   (let ((__tmp64449
                          (let ((__tmp64450
                                 (let ((__tmp64451
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56532_ _L56530_))))
                                   (declare (not safe))
                                   (cons '() __tmp64451))))
                            (declare (not safe))
                            (cons '3 __tmp64450))))
                     (declare (not safe))
                     (cons _L56533_ __tmp64449))))
                (___kont6375163752_
                 (lambda (_L56451_ _L56453_ _L56454_ _L56455_ _L56456_)
                   (let ((__tmp64452
                          (let ((__tmp64453
                                 (let ((__tmp64455
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56454_ _L56455_)))
                                       (__tmp64454
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56453_ _L56451_))))
                                   (declare (not safe))
                                   (cons __tmp64455 __tmp64454))))
                            (declare (not safe))
                            (cons '3 __tmp64453))))
                     (declare (not safe))
                     (cons _L56456_ __tmp64452))))
                (___kont6375363754_
                 (lambda (_L56335_
                          _L56337_
                          _L56338_
                          _L56339_
                          _L56340_
                          _L56341_)
                   (let ((__tmp64503 (gx#datum->syntax '#f 'let))
                         (__tmp64456
                          (let ((__tmp64491
                                 (let ((__tmp64500
                                        (let ((__tmp64502
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64501
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56338_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64502 __tmp64501)))
                                       (__tmp64492
                                        (let ((__tmp64493
                                               (let ((__tmp64499
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64494
                                                      (let ((__tmp64495
                                                             (let ((__tmp64498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64496
                            (let ((__tmp64497
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56335_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64497))))
                       (declare (not safe))
                       (cons __tmp64498 __tmp64496))))
                (declare (not safe))
                (cons __tmp64495 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64499
                                                       __tmp64494))))
                                          (declare (not safe))
                                          (cons __tmp64493 '()))))
                                   (declare (not safe))
                                   (cons __tmp64500 __tmp64492)))
                                (__tmp64457
                                 (let ((__tmp64458
                                        (let ((__tmp64490
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64459
                                               (let ((__tmp64489
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64460
                                                      (let ((__tmp64464
                                                             (let ((__tmp64488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64465
                            (let ((__tmp64487 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64466
                                   (let ((__tmp64482
                                          (let ((__tmp64486
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64483
                                                 (let ((__tmp64484
                                                        (let ((__tmp64485
                                                               (lambda (_g5637556378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637656381_)
                         (let ()
                           (declare (not safe))
                           (cons _g5637556378_ _g5637656381_)))))
                  (declare (not safe))
                  (foldr1 __tmp64485 '() _L56340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64484 '()))))
                                            (declare (not safe))
                                            (cons __tmp64486 __tmp64483)))
                                         (__tmp64467
                                          (let ((__tmp64474
                                                 (let ((__tmp64481
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64475
                                                        (let ((__tmp64476
                                                               (lambda (_g5637356384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637456387_)
                         (let ((__tmp64477
                                (let ((__tmp64480
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64478
                                       (let ((__tmp64479
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5637356384_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64479))))
                                  (declare (not safe))
                                  (cons __tmp64480 __tmp64478))))
                           (declare (not safe))
                           (cons __tmp64477 _g5637456387_)))))
                  (declare (not safe))
                  (foldr1 __tmp64476 '() _L56339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64481
                                                         __tmp64475)))
                                                (__tmp64468
                                                 (let ((__tmp64471
                                                        (let ((__tmp64473
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64472
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56337_ '()))))
                  (declare (not safe))
                  (cons __tmp64473 __tmp64472)))
               (__tmp64469
                (let ((__tmp64470 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64470 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64471
                                                         __tmp64469))))
                                            (declare (not safe))
                                            (cons __tmp64474 __tmp64468))))
                                     (declare (not safe))
                                     (cons __tmp64482 __tmp64467))))
                              (declare (not safe))
                              (cons __tmp64487 __tmp64466))))
                       (declare (not safe))
                       (cons __tmp64488 __tmp64465)))
                    (__tmp64461
                     (let ((__tmp64462
                            (let ((__tmp64463 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64463 '()))))
                       (declare (not safe))
                       (cons __tmp64462 '()))))
                (declare (not safe))
                (cons __tmp64464 __tmp64461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64489
                                                       __tmp64460))))
                                          (declare (not safe))
                                          (cons __tmp64490 __tmp64459))))
                                   (declare (not safe))
                                   (cons __tmp64458 '()))))
                            (declare (not safe))
                            (cons __tmp64491 __tmp64457))))
                     (declare (not safe))
                     (cons __tmp64503 __tmp64456)))))
            (let* ((___match6408364084_
                    (lambda (_e5615856207_
                             _hd5615756211_
                             _tl5615656214_
                             _e5616156217_
                             _hd5616056221_
                             _tl5615956224_
                             _e5616256227_
                             _e5616556231_
                             _hd5616456235_
                             _tl5616356238_
                             ___splice6375563756_
                             _target5616656241_
                             _tl5616856244_)
                      (letrec ((_loop5616956247_
                                (lambda (_hd5616756251_
                                         _exprs5617356254_
                                         _names5617456256_)
                                  (if (gx#stx-pair? _hd5616756251_)
                                      (let ((_e5617056259_
                                             (gx#syntax-e _hd5616756251_)))
                                        (let ((_lp-tl5617256266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5617056259_)))
                                              (_lp-hd5617156263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5617056259_))))
                                          (if (gx#stx-pair? _lp-hd5617156263_)
                                              (let ((_e5617956269_
                                                     (gx#syntax-e
                                                      _lp-hd5617156263_)))
                                                (let ((_tl5617756276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5617956269_)))
                                                      (_hd5617856273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5617956269_))))
                                                  (if (gx#stx-pair?
                                                       _tl5617756276_)
                                                      (let ((_e5618256279_
                                                             (gx#syntax-e
                                                              _tl5617756276_)))
                                                        (let ((_tl5618056286_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5618256279_)))
                      (_hd5618156283_
                       (let () (declare (not safe)) (##car _e5618256279_))))
                  (if (gx#stx-null? _tl5618056286_)
                      (_loop5616956247_
                       _lp-tl5617256266_
                       (let ()
                         (declare (not safe))
                         (cons _hd5618156283_ _exprs5617356254_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5617856273_ _names5617456256_)))
                      (let () (declare (not safe)) (_g5598656200_)))))
              (let () (declare (not safe)) (_g5598656200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5598656200_)))))
                                      (let ((_names5617656292_
                                             (reverse _names5617456256_))
                                            (_exprs5617556289_
                                             (reverse _exprs5617356254_)))
                                        (if (gx#stx-pair? _tl5616356238_)
                                            (let ((_e5618556295_
                                                   (gx#syntax-e
                                                    _tl5616356238_)))
                                              (let ((_tl5618356302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5618556295_)))
                                                    (_hd5618456299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5618556295_))))
                                                (if (gx#stx-null?
                                                     _hd5618456299_)
                                                    (if (gx#stx-pair?
                                                         _tl5618356302_)
                                                        (let ((_e5618856305_
                                                               (gx#syntax-e
                                                                _tl5618356302_)))
                                                          (let ((_tl5618656312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5618856305_)))
                        (_hd5618756309_
                         (let () (declare (not safe)) (##car _e5618856305_))))
                    (if (gx#stx-pair? _tl5618656312_)
                        (let ((_e5619156315_ (gx#syntax-e _tl5618656312_)))
                          (let ((_tl5618956322_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5619156315_)))
                                (_hd5619056319_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5619156315_))))
                            (if (gx#stx-pair? _tl5618956322_)
                                (let ((_e5619456325_
                                       (gx#syntax-e _tl5618956322_)))
                                  (let ((_tl5619256332_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5619456325_)))
                                        (_hd5619356329_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5619456325_))))
                                    (if (gx#stx-null? _tl5619256332_)
                                        (___kont6375363754_
                                         _hd5619356329_
                                         _hd5619056319_
                                         _hd5618756309_
                                         _exprs5617556289_
                                         _names5617656292_
                                         _hd5615756211_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_)))))
                        (let () (declare (not safe)) (_g5598656200_)))))
                (let () (declare (not safe)) (_g5598656200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_))))))))
                        (_loop5616956247_ _target5616656241_ '() '()))))
                   (___match6386163862_
                    (lambda (_e5603056832_
                             _hd5602956836_
                             _tl5602856839_
                             _e5603356842_
                             _hd5603256846_
                             _tl5603156849_
                             _e5603456852_
                             _e5603756856_
                             _hd5603656860_
                             _tl5603556863_
                             ___splice6374163742_
                             _target5603856866_
                             _tl5604056869_
                             _e5604956872_
                             _hd5604856876_
                             _tl5604756879_)
                      (letrec ((_loop5604156882_
                                (lambda (_hd5603956886_ _exprs5604556889_)
                                  (if (gx#stx-pair? _hd5603956886_)
                                      (let ((_e5604256892_
                                             (gx#syntax-e _hd5603956886_)))
                                        (let ((_lp-tl5604456899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5604256892_)))
                                              (_lp-hd5604356896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5604256892_))))
                                          (_loop5604156882_
                                           _lp-tl5604456899_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5604356896_
                                                   _exprs5604556889_)))))
                                      (let ((_exprs5604656902_
                                             (reverse _exprs5604556889_)))
                                        (___kont6373963740_
                                         _hd5604856876_
                                         _exprs5604656902_
                                         _hd5603656860_
                                         _hd5602956836_))))))
                        (_loop5604156882_ _target5603856866_ '()))))
                   (___match6382163822_
                    (lambda (_e5599556949_
                             _hd5599456953_
                             _tl5599356956_
                             _e5599856959_
                             _hd5599756963_
                             _tl5599656966_
                             _e5599956969_
                             _e5600256973_
                             _hd5600156977_
                             _tl5600056980_
                             ___splice6373763738_
                             _target5600356983_
                             _tl5600556986_
                             _e5601456989_
                             _hd5601356993_
                             _tl5601256996_
                             _e5601756999_
                             _hd5601657003_
                             _tl5601557006_
                             _e5602057009_
                             _hd5601957013_
                             _tl5601857016_
                             _e5602357019_
                             _hd5602257023_
                             _tl5602157026_)
                      (letrec ((_loop5600657029_
                                (lambda (_hd5600457033_ _exprs5601057036_)
                                  (if (gx#stx-pair? _hd5600457033_)
                                      (let ((_e5600757039_
                                             (gx#syntax-e _hd5600457033_)))
                                        (let ((_lp-tl5600957046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5600757039_)))
                                              (_lp-hd5600857043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5600757039_))))
                                          (_loop5600657029_
                                           _lp-tl5600957046_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5600857043_
                                                   _exprs5601057036_)))))
                                      (let ((_exprs5601157049_
                                             (reverse _exprs5601057036_)))
                                        (___kont6373563736_
                                         _hd5602257023_
                                         _hd5601957013_
                                         _exprs5601157049_
                                         _hd5600156977_
                                         _hd5599456953_))))))
                        (_loop5600657029_ _target5600356983_ '())))))
              (if (gx#stx-pair? ___stx6373263733_)
                  (let ((_e5599556949_ (gx#syntax-e ___stx6373263733_)))
                    (let ((_tl5599356956_
                           (let () (declare (not safe)) (##cdr _e5599556949_)))
                          (_hd5599456953_
                           (let ()
                             (declare (not safe))
                             (##car _e5599556949_))))
                      (if (gx#stx-pair? _tl5599356956_)
                          (let ((_e5599856959_ (gx#syntax-e _tl5599356956_)))
                            (let ((_tl5599656966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5599856959_)))
                                  (_hd5599756963_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5599856959_))))
                              (if (gx#stx-datum? _hd5599756963_)
                                  (let ((_e5599956969_
                                         (gx#stx-e _hd5599756963_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5599956969_ '1))
                                        (if (gx#stx-pair? _tl5599656966_)
                                            (let ((_e5600256973_
                                                   (gx#syntax-e
                                                    _tl5599656966_)))
                                              (let ((_tl5600056980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5600256973_)))
                                                    (_hd5600156977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5600256973_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5600056980_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5600056980_)
                                                              '2)
                                                        (let ((___splice6373763738_
                                                               (gx#syntax-split-splice
                                                                _tl5600056980_
                                                                '2)))
                                                          (let ((_tl5600556986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6373763738_ '1)))
                        (_target5600356983_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6373763738_ '0))))
                    (if (gx#stx-pair? _tl5600556986_)
                        (let ((_e5601456989_ (gx#syntax-e _tl5600556986_)))
                          (let ((_tl5601256996_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5601456989_)))
                                (_hd5601356993_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5601456989_))))
                            (if (gx#stx-pair? _hd5601356993_)
                                (let ((_e5601756999_
                                       (gx#syntax-e _hd5601356993_)))
                                  (let ((_tl5601557006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5601756999_)))
                                        (_hd5601657003_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5601756999_))))
                                    (if (gx#identifier? _hd5601657003_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64505_|
                                             _hd5601657003_)
                                            (if (gx#stx-pair? _tl5601557006_)
                                                (let ((_e5602057009_
                                                       (gx#syntax-e
                                                        _tl5601557006_)))
                                                  (let ((_tl5601857016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5602057009_)))
                                                        (_hd5601957013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5602057009_))))
                                                    (if (gx#stx-null?
                                                         _tl5601857016_)
                                                        (if (gx#stx-pair?
                                                             _tl5601256996_)
                                                            (let ((_e5602357019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5601256996_)))
                      (let ((_tl5602157026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5602357019_)))
                            (_hd5602257023_
                             (let ()
                               (declare (not safe))
                               (##car _e5602357019_))))
                        (if (gx#stx-null? _tl5602157026_)
                            (___match6382163822_
                             _e5599556949_
                             _hd5599456953_
                             _tl5599356956_
                             _e5599856959_
                             _hd5599756963_
                             _tl5599656966_
                             _e5599956969_
                             _e5600256973_
                             _hd5600156977_
                             _tl5600056980_
                             ___splice6373763738_
                             _target5600356983_
                             _tl5600556986_
                             _e5601456989_
                             _hd5601356993_
                             _tl5601256996_
                             _e5601756999_
                             _hd5601657003_
                             _tl5601557006_
                             _e5602057009_
                             _hd5601957013_
                             _tl5601857016_
                             _e5602357019_
                             _hd5602257023_
                             _tl5602157026_)
                            (if (fx>= (gx#stx-length _tl5600056980_) '1)
                                (let ((___splice6374163742_
                                       (gx#syntax-split-splice
                                        _tl5600056980_
                                        '1)))
                                  (let ((_tl5604056869_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6374163742_
                                            '1)))
                                        (_target5603856866_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6374163742_
                                            '0))))
                                    (if (gx#stx-pair? _tl5604056869_)
                                        (let ((_e5604956872_
                                               (gx#syntax-e _tl5604056869_)))
                                          (let ((_tl5604756879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5604956872_)))
                                                (_hd5604856876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5604956872_))))
                                            (if (gx#stx-null? _tl5604756879_)
                                                (___match6386163862_
                                                 _e5599556949_
                                                 _hd5599456953_
                                                 _tl5599356956_
                                                 _e5599856959_
                                                 _hd5599756963_
                                                 _tl5599656966_
                                                 _e5599956969_
                                                 _e5600256973_
                                                 _hd5600156977_
                                                 _tl5600056980_
                                                 ___splice6374163742_
                                                 _target5603856866_
                                                 _tl5604056869_
                                                 _e5604956872_
                                                 _hd5604856876_
                                                 _tl5604756879_)
                                                (if (gx#stx-null?
                                                     _tl5600056980_)
                                                    (___kont6374363744_
                                                     _hd5600156977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_))))))
                                        (if (gx#stx-null? _tl5600056980_)
                                            (___kont6374363744_ _hd5600156977_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_))))))
                                (if (gx#stx-null? _tl5600056980_)
                                    (___kont6374363744_ _hd5600156977_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598656200_)))))))
                    (if (fx>= (gx#stx-length _tl5600056980_) '1)
                        (let ((___splice6374163742_
                               (gx#syntax-split-splice _tl5600056980_ '1)))
                          (let ((_tl5604056869_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6374163742_ '1)))
                                (_target5603856866_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6374163742_ '0))))
                            (if (gx#stx-pair? _tl5604056869_)
                                (let ((_e5604956872_
                                       (gx#syntax-e _tl5604056869_)))
                                  (let ((_tl5604756879_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5604956872_)))
                                        (_hd5604856876_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5604956872_))))
                                    (if (gx#stx-null? _tl5604756879_)
                                        (___match6386163862_
                                         _e5599556949_
                                         _hd5599456953_
                                         _tl5599356956_
                                         _e5599856959_
                                         _hd5599756963_
                                         _tl5599656966_
                                         _e5599956969_
                                         _e5600256973_
                                         _hd5600156977_
                                         _tl5600056980_
                                         ___splice6374163742_
                                         _target5603856866_
                                         _tl5604056869_
                                         _e5604956872_
                                         _hd5604856876_
                                         _tl5604756879_)
                                        (if (gx#stx-null? _tl5600056980_)
                                            (___kont6374363744_ _hd5600156977_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_))))))
                                (if (gx#stx-null? _tl5600056980_)
                                    (___kont6374363744_ _hd5600156977_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598656200_))))))
                        (if (gx#stx-null? _tl5600056980_)
                            (___kont6374363744_ _hd5600156977_)
                            (let () (declare (not safe)) (_g5598656200_)))))
                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                    (let ((___splice6374163742_
                           (gx#syntax-split-splice _tl5600056980_ '1)))
                      (let ((_tl5604056869_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6374163742_ '1)))
                            (_target5603856866_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6374163742_ '0))))
                        (if (gx#stx-pair? _tl5604056869_)
                            (let ((_e5604956872_ (gx#syntax-e _tl5604056869_)))
                              (let ((_tl5604756879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5604956872_)))
                                    (_hd5604856876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5604956872_))))
                                (if (gx#stx-null? _tl5604756879_)
                                    (___match6386163862_
                                     _e5599556949_
                                     _hd5599456953_
                                     _tl5599356956_
                                     _e5599856959_
                                     _hd5599756963_
                                     _tl5599656966_
                                     _e5599956969_
                                     _e5600256973_
                                     _hd5600156977_
                                     _tl5600056980_
                                     ___splice6374163742_
                                     _target5603856866_
                                     _tl5604056869_
                                     _e5604956872_
                                     _hd5604856876_
                                     _tl5604756879_)
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6374363744_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6374363744_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6374363744_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5600056980_)
                                                          '1)
                                                    (let ((___splice6374163742_
                                                           (gx#syntax-split-splice
                                                            _tl5600056980_
                                                            '1)))
                                                      (let ((_tl5604056869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6374163742_ '1)))
                    (_target5603856866_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6374163742_ '0))))
                (if (gx#stx-pair? _tl5604056869_)
                    (let ((_e5604956872_ (gx#syntax-e _tl5604056869_)))
                      (let ((_tl5604756879_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5604956872_)))
                            (_hd5604856876_
                             (let ()
                               (declare (not safe))
                               (##car _e5604956872_))))
                        (if (gx#stx-null? _tl5604756879_)
                            (___match6386163862_
                             _e5599556949_
                             _hd5599456953_
                             _tl5599356956_
                             _e5599856959_
                             _hd5599756963_
                             _tl5599656966_
                             _e5599956969_
                             _e5600256973_
                             _hd5600156977_
                             _tl5600056980_
                             ___splice6374163742_
                             _target5603856866_
                             _tl5604056869_
                             _e5604956872_
                             _hd5604856876_
                             _tl5604756879_)
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6374363744_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6374363744_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6374363744_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5600056980_)
                                                      '1)
                                                (let ((___splice6374163742_
                                                       (gx#syntax-split-splice
                                                        _tl5600056980_
                                                        '1)))
                                                  (let ((_tl5604056869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6374163742_
                                                            '1)))
                                                        (_target5603856866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6374163742_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5604056869_)
                                                        (let ((_e5604956872_
                                                               (gx#syntax-e
                                                                _tl5604056869_)))
                                                          (let ((_tl5604756879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5604956872_)))
                        (_hd5604856876_
                         (let () (declare (not safe)) (##car _e5604956872_))))
                    (if (gx#stx-null? _tl5604756879_)
                        (___match6386163862_
                         _e5599556949_
                         _hd5599456953_
                         _tl5599356956_
                         _e5599856959_
                         _hd5599756963_
                         _tl5599656966_
                         _e5599956969_
                         _e5600256973_
                         _hd5600156977_
                         _tl5600056980_
                         ___splice6374163742_
                         _target5603856866_
                         _tl5604056869_
                         _e5604956872_
                         _hd5604856876_
                         _tl5604756879_)
                        (if (gx#stx-null? _tl5600056980_)
                            (___kont6374363744_ _hd5600156977_)
                            (let () (declare (not safe)) (_g5598656200_))))))
                (if (gx#stx-null? _tl5600056980_)
                    (___kont6374363744_ _hd5600156977_)
                    (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5600056980_)
                                                    (___kont6374363744_
                                                     _hd5600156977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5600056980_)
                                                  '1)
                                            (let ((___splice6374163742_
                                                   (gx#syntax-split-splice
                                                    _tl5600056980_
                                                    '1)))
                                              (let ((_tl5604056869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6374163742_
                                                        '1)))
                                                    (_target5603856866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6374163742_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5604056869_)
                                                    (let ((_e5604956872_
                                                           (gx#syntax-e
                                                            _tl5604056869_)))
                                                      (let ((_tl5604756879_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5604956872_)))
                    (_hd5604856876_
                     (let () (declare (not safe)) (##car _e5604956872_))))
                (if (gx#stx-null? _tl5604756879_)
                    (___match6386163862_
                     _e5599556949_
                     _hd5599456953_
                     _tl5599356956_
                     _e5599856959_
                     _hd5599756963_
                     _tl5599656966_
                     _e5599956969_
                     _e5600256973_
                     _hd5600156977_
                     _tl5600056980_
                     ___splice6374163742_
                     _target5603856866_
                     _tl5604056869_
                     _e5604956872_
                     _hd5604856876_
                     _tl5604756879_)
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6374363744_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6374363744_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_))))))
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6374363744_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_)))))))
                                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                                    (let ((___splice6374163742_
                                           (gx#syntax-split-splice
                                            _tl5600056980_
                                            '1)))
                                      (let ((_tl5604056869_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6374163742_
                                                '1)))
                                            (_target5603856866_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6374163742_
                                                '0))))
                                        (if (gx#stx-pair? _tl5604056869_)
                                            (let ((_e5604956872_
                                                   (gx#syntax-e
                                                    _tl5604056869_)))
                                              (let ((_tl5604756879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5604956872_)))
                                                    (_hd5604856876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5604956872_))))
                                                (if (gx#stx-null?
                                                     _tl5604756879_)
                                                    (___match6386163862_
                                                     _e5599556949_
                                                     _hd5599456953_
                                                     _tl5599356956_
                                                     _e5599856959_
                                                     _hd5599756963_
                                                     _tl5599656966_
                                                     _e5599956969_
                                                     _e5600256973_
                                                     _hd5600156977_
                                                     _tl5600056980_
                                                     ___splice6374163742_
                                                     _target5603856866_
                                                     _tl5604056869_
                                                     _e5604956872_
                                                     _hd5604856876_
                                                     _tl5604756879_)
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6374363744_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_))))))
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6374363744_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_))))))
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6374363744_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_)))))))
                        (if (fx>= (gx#stx-length _tl5600056980_) '1)
                            (let ((___splice6374163742_
                                   (gx#syntax-split-splice _tl5600056980_ '1)))
                              (let ((_tl5604056869_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6374163742_ '1)))
                                    (_target5603856866_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6374163742_
                                        '0))))
                                (if (gx#stx-pair? _tl5604056869_)
                                    (let ((_e5604956872_
                                           (gx#syntax-e _tl5604056869_)))
                                      (let ((_tl5604756879_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5604956872_)))
                                            (_hd5604856876_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5604956872_))))
                                        (if (gx#stx-null? _tl5604756879_)
                                            (___match6386163862_
                                             _e5599556949_
                                             _hd5599456953_
                                             _tl5599356956_
                                             _e5599856959_
                                             _hd5599756963_
                                             _tl5599656966_
                                             _e5599956969_
                                             _e5600256973_
                                             _hd5600156977_
                                             _tl5600056980_
                                             ___splice6374163742_
                                             _target5603856866_
                                             _tl5604056869_
                                             _e5604956872_
                                             _hd5604856876_
                                             _tl5604756879_)
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6374363744_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_))))))
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6374363744_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6374363744_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_)))))))
                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                    (let ((___splice6374163742_
                           (gx#syntax-split-splice _tl5600056980_ '1)))
                      (let ((_tl5604056869_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6374163742_ '1)))
                            (_target5603856866_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6374163742_ '0))))
                        (if (gx#stx-pair? _tl5604056869_)
                            (let ((_e5604956872_ (gx#syntax-e _tl5604056869_)))
                              (let ((_tl5604756879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5604956872_)))
                                    (_hd5604856876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5604956872_))))
                                (if (gx#stx-null? _tl5604756879_)
                                    (___match6386163862_
                                     _e5599556949_
                                     _hd5599456953_
                                     _tl5599356956_
                                     _e5599856959_
                                     _hd5599756963_
                                     _tl5599656966_
                                     _e5599956969_
                                     _e5600256973_
                                     _hd5600156977_
                                     _tl5600056980_
                                     ___splice6374163742_
                                     _target5603856866_
                                     _tl5604056869_
                                     _e5604956872_
                                     _hd5604856876_
                                     _tl5604756879_)
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6374363744_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6374363744_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6374363744_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6374363744_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5599956969_ '2))
                                            (if (gx#stx-pair? _tl5599656966_)
                                                (let ((_e5607656672_
                                                       (gx#syntax-e
                                                        _tl5599656966_)))
                                                  (let ((_tl5607456679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5607656672_)))
                                                        (_hd5607556676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5607656672_))))
                                                    (if (gx#stx-pair?
                                                         _tl5607456679_)
                                                        (let ((_e5607956682_
                                                               (gx#syntax-e
                                                                _tl5607456679_)))
                                                          (let ((_tl5607756689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5607956682_)))
                        (_hd5607856686_
                         (let () (declare (not safe)) (##car _e5607956682_))))
                    (if (gx#stx-pair? _hd5607856686_)
                        (let ((_e5608256692_ (gx#syntax-e _hd5607856686_)))
                          (let ((_tl5608056699_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5608256692_)))
                                (_hd5608156696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5608256692_))))
                            (if (gx#stx-pair? _hd5608156696_)
                                (let ((_e5608556702_
                                       (gx#syntax-e _hd5608156696_)))
                                  (let ((_tl5608356709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5608556702_)))
                                        (_hd5608456706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5608556702_))))
                                    (if (gx#identifier? _hd5608456706_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64504_|
                                             _hd5608456706_)
                                            (if (gx#stx-pair? _tl5608356709_)
                                                (let ((_e5608856712_
                                                       (gx#syntax-e
                                                        _tl5608356709_)))
                                                  (let ((_tl5608656719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5608856712_)))
                                                        (_hd5608756716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5608856712_))))
                                                    (if (gx#stx-null?
                                                         _tl5608656719_)
                                                        (if (gx#stx-pair?
                                                             _tl5608056699_)
                                                            (let ((_e5609156722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5608056699_)))
                      (let ((_tl5608956729_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5609156722_)))
                            (_hd5609056726_
                             (let ()
                               (declare (not safe))
                               (##car _e5609156722_))))
                        (___kont6374563746_
                         _tl5607756689_
                         _tl5608956729_
                         _hd5609056726_
                         _hd5608756716_
                         _hd5607556676_
                         _hd5599456953_)))
                    (___kont6374763748_
                     _tl5607756689_
                     _tl5608056699_
                     _hd5608156696_
                     _hd5607556676_
                     _hd5599456953_))
                (___kont6374763748_
                 _tl5607756689_
                 _tl5608056699_
                 _hd5608156696_
                 _hd5607556676_
                 _hd5599456953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6374763748_
                                                 _tl5607756689_
                                                 _tl5608056699_
                                                 _hd5608156696_
                                                 _hd5607556676_
                                                 _hd5599456953_))
                                            (___kont6374763748_
                                             _tl5607756689_
                                             _tl5608056699_
                                             _hd5608156696_
                                             _hd5607556676_
                                             _hd5599456953_))
                                        (___kont6374763748_
                                         _tl5607756689_
                                         _tl5608056699_
                                         _hd5608156696_
                                         _hd5607556676_
                                         _hd5599456953_))))
                                (___kont6374763748_
                                 _tl5607756689_
                                 _tl5608056699_
                                 _hd5608156696_
                                 _hd5607556676_
                                 _hd5599456953_))))
                        (if (gx#stx-null? _hd5607856686_)
                            (___kont6374963750_
                             _tl5607756689_
                             _hd5607556676_
                             _hd5599456953_)
                            (let () (declare (not safe)) (_g5598656200_))))))
                (let () (declare (not safe)) (_g5598656200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5599956969_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5599656966_)
                                                    (let ((_e5614356421_
                                                           (gx#syntax-e
                                                            _tl5599656966_)))
                                                      (let ((_tl5614156428_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5614356421_)))
                    (_hd5614256425_
                     (let () (declare (not safe)) (##car _e5614356421_))))
                (if (gx#stx-pair? _tl5614156428_)
                    (let ((_e5614656431_ (gx#syntax-e _tl5614156428_)))
                      (let ((_tl5614456438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5614656431_)))
                            (_hd5614556435_
                             (let ()
                               (declare (not safe))
                               (##car _e5614656431_))))
                        (if (gx#stx-pair? _hd5614556435_)
                            (let ((_e5614956441_ (gx#syntax-e _hd5614556435_)))
                              (let ((_tl5614756448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5614956441_)))
                                    (_hd5614856445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5614956441_))))
                                (___kont6375163752_
                                 _tl5614456438_
                                 _tl5614756448_
                                 _hd5614856445_
                                 _hd5614256425_
                                 _hd5599456953_)))
                            (if (gx#stx-pair/null? _hd5614256425_)
                                (let ((___splice6375563756_
                                       (gx#syntax-split-splice
                                        _hd5614256425_
                                        '0)))
                                  (let ((_tl5616856244_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6375563756_
                                            '1)))
                                        (_target5616656241_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6375563756_
                                            '0))))
                                    (if (gx#stx-null? _tl5616856244_)
                                        (___match6408364084_
                                         _e5599556949_
                                         _hd5599456953_
                                         _tl5599356956_
                                         _e5599856959_
                                         _hd5599756963_
                                         _tl5599656966_
                                         _e5599956969_
                                         _e5614356421_
                                         _hd5614256425_
                                         _tl5614156428_
                                         ___splice6375563756_
                                         _target5616656241_
                                         _tl5616856244_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-pair/null? _hd5614256425_)
                        (let ((___splice6375563756_
                               (gx#syntax-split-splice _hd5614256425_ '0)))
                          (let ((_tl5616856244_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6375563756_ '1)))
                                (_target5616656241_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6375563756_ '0))))
                            (if (gx#stx-null? _tl5616856244_)
                                (___match6408364084_
                                 _e5599556949_
                                 _hd5599456953_
                                 _tl5599356956_
                                 _e5599856959_
                                 _hd5599756963_
                                 _tl5599656966_
                                 _e5599956969_
                                 _e5614356421_
                                 _hd5614256425_
                                 _tl5614156428_
                                 ___splice6375563756_
                                 _target5616656241_
                                 _tl5616856244_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_)))))
                        (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5598656200_)))))
                          (let () (declare (not safe)) (_g5598656200_)))))
                  (let () (declare (not safe)) (_g5598656200_))))))))))
