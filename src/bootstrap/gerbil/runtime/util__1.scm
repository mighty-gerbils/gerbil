(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64559_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64560_|
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
                                                 (let ((__tmp64320
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64272
                                                        (let ((__tmp64311
                                                               (let ((__tmp64312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64319 (gx#datum->syntax '#f 'key))
                                    (__tmp64313
                                     (let ((__tmp64318
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64314
                                            (let ((__tmp64315
                                                   (let ((__tmp64317
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64316
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64317
                                                           __tmp64316))))
                                              (declare (not safe))
                                              (cons __tmp64315 '()))))
                                       (declare (not safe))
                                       (cons __tmp64318 __tmp64314))))
                                (declare (not safe))
                                (cons __tmp64319 __tmp64313))))
                         (declare (not safe))
                         (cons _L55744_ __tmp64312)))
                      (__tmp64273
                       (let ((__tmp64274
                              (let ((__tmp64310 (gx#datum->syntax '#f 'cond))
                                    (__tmp64275
                                     (let ((__tmp64292
                                            (let ((__tmp64297
                                                   (let ((__tmp64309
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64298
                                                          (let ((__tmp64305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64308 (gx#datum->syntax '#f 'pair?))
                               (__tmp64306
                                (let ((__tmp64307 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64307 '()))))
                           (declare (not safe))
                           (cons __tmp64308 __tmp64306)))
                        (__tmp64299
                         (let ((__tmp64300
                                (let ((__tmp64301
                                       (let ((__tmp64304
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64302
                                              (let ((__tmp64303
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64303 '()))))
                                         (declare (not safe))
                                         (cons __tmp64304 __tmp64302))))
                                  (declare (not safe))
                                  (cons _L55742_ __tmp64301))))
                           (declare (not safe))
                           (cons __tmp64300 '()))))
                    (declare (not safe))
                    (cons __tmp64305 __tmp64299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64309
                                                           __tmp64298)))
                                                  (__tmp64293
                                                   (let ((__tmp64296
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64294
                                                          (let ((__tmp64295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64296
                                                           __tmp64294))))
                                              (declare (not safe))
                                              (cons __tmp64297 __tmp64293)))
                                           (__tmp64276
                                            (let ((__tmp64282
                                                   (let ((__tmp64288
                                                          (let ((__tmp64291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64289
                         (let ((__tmp64290 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64290 '()))))
                    (declare (not safe))
                    (cons __tmp64291 __tmp64289)))
                 (__tmp64283
                  (let ((__tmp64284
                         (let ((__tmp64287 (gx#datum->syntax '#f 'default))
                               (__tmp64285
                                (let ((__tmp64286 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64286 '()))))
                           (declare (not safe))
                           (cons __tmp64287 __tmp64285))))
                    (declare (not safe))
                    (cons __tmp64284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64288
                                                           __tmp64283)))
                                                  (__tmp64277
                                                   (let ((__tmp64278
                                                          (let ((__tmp64281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64279
                         (let ((__tmp64280 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64280 '()))))
                    (declare (not safe))
                    (cons __tmp64281 __tmp64279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64278 '()))))
                                              (declare (not safe))
                                              (cons __tmp64282 __tmp64277))))
                                       (declare (not safe))
                                       (cons __tmp64292 __tmp64276))))
                                (declare (not safe))
                                (cons __tmp64310 __tmp64275))))
                         (declare (not safe))
                         (cons __tmp64274 '()))))
                  (declare (not safe))
                  (cons __tmp64311 __tmp64273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64320
                                                         __tmp64272)))
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
                                                 (let ((__tmp64390
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64321
                                                        (let ((__tmp64381
                                                               (let ((__tmp64382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64389 (gx#datum->syntax '#f 'key))
                                    (__tmp64383
                                     (let ((__tmp64388
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64384
                                            (let ((__tmp64385
                                                   (let ((__tmp64387
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64386
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64387
                                                           __tmp64386))))
                                              (declare (not safe))
                                              (cons __tmp64385 '()))))
                                       (declare (not safe))
                                       (cons __tmp64388 __tmp64384))))
                                (declare (not safe))
                                (cons __tmp64389 __tmp64383))))
                         (declare (not safe))
                         (cons _L55826_ __tmp64382)))
                      (__tmp64322
                       (let ((__tmp64323
                              (let ((__tmp64380 (gx#datum->syntax '#f 'let))
                                    (__tmp64324
                                     (let ((__tmp64379
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64325
                                            (let ((__tmp64374
                                                   (let ((__tmp64375
                                                          (let ((__tmp64378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64376
                         (let ((__tmp64377 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64377 '()))))
                    (declare (not safe))
                    (cons __tmp64378 __tmp64376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64375 '())))
                                                  (__tmp64326
                                                   (let ((__tmp64327
                                                          (let ((__tmp64373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64328
                         (let ((__tmp64372 (gx#datum->syntax '#f 'rest))
                               (__tmp64329
                                (let ((__tmp64348
                                       (let ((__tmp64365
                                              (let ((__tmp64371
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64366
                                                     (let ((__tmp64370
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64367
                                                            (let ((__tmp64369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64368 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64369 __tmp64368))))
               (declare (not safe))
               (cons __tmp64370 __tmp64367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64371 __tmp64366)))
                                             (__tmp64349
                                              (let ((__tmp64350
                                                     (let ((__tmp64364
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64351
                                                            (let ((__tmp64359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64360
                                  (let ((__tmp64363 (gx#datum->syntax '#f 'k))
                                        (__tmp64361
                                         (let ((__tmp64362
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64362 '()))))
                                    (declare (not safe))
                                    (cons __tmp64363 __tmp64361))))
                             (declare (not safe))
                             (cons _L55824_ __tmp64360)))
                          (__tmp64352
                           (let ((__tmp64358 (gx#datum->syntax '#f 'v))
                                 (__tmp64353
                                  (let ((__tmp64354
                                         (let ((__tmp64357
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64355
                                                (let ((__tmp64356
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64356 '()))))
                                           (declare (not safe))
                                           (cons __tmp64357 __tmp64355))))
                                    (declare (not safe))
                                    (cons __tmp64354 '()))))
                             (declare (not safe))
                             (cons __tmp64358 __tmp64353))))
                      (declare (not safe))
                      (cons __tmp64359 __tmp64352))))
               (declare (not safe))
               (cons __tmp64364 __tmp64351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64350 '()))))
                                         (declare (not safe))
                                         (cons __tmp64365 __tmp64349)))
                                      (__tmp64330
                                       (let ((__tmp64331
                                              (let ((__tmp64347
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64332
                                                     (let ((__tmp64333
                                                            (let ((__tmp64346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64334
                           (let ((__tmp64342
                                  (let ((__tmp64345
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64343
                                         (let ((__tmp64344
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64344 '()))))
                                    (declare (not safe))
                                    (cons __tmp64345 __tmp64343)))
                                 (__tmp64335
                                  (let ((__tmp64338
                                         (let ((__tmp64341
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64339
                                                (let ((__tmp64340
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64340 '()))))
                                           (declare (not safe))
                                           (cons __tmp64341 __tmp64339)))
                                        (__tmp64336
                                         (let ((__tmp64337
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64337 '()))))
                                    (declare (not safe))
                                    (cons __tmp64338 __tmp64336))))
                             (declare (not safe))
                             (cons __tmp64342 __tmp64335))))
                      (declare (not safe))
                      (cons __tmp64346 __tmp64334))))
               (declare (not safe))
               (cons __tmp64333 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64347 __tmp64332))))
                                         (declare (not safe))
                                         (cons __tmp64331 '()))))
                                  (declare (not safe))
                                  (cons __tmp64348 __tmp64330))))
                           (declare (not safe))
                           (cons __tmp64372 __tmp64329))))
                    (declare (not safe))
                    (cons __tmp64373 __tmp64328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64327 '()))))
                                              (declare (not safe))
                                              (cons __tmp64374 __tmp64326))))
                                       (declare (not safe))
                                       (cons __tmp64379 __tmp64325))))
                                (declare (not safe))
                                (cons __tmp64380 __tmp64324))))
                         (declare (not safe))
                         (cons __tmp64323 '()))))
                  (declare (not safe))
                  (cons __tmp64381 __tmp64322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64390
                                                         __tmp64321)))
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
                                                 (let ((__tmp64461
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64391
                                                        (let ((__tmp64456
                                                               (let ((__tmp64457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64460 (gx#datum->syntax '#f 'el))
                                    (__tmp64458
                                     (let ((__tmp64459
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64459 '()))))
                                (declare (not safe))
                                (cons __tmp64460 __tmp64458))))
                         (declare (not safe))
                         (cons _L55907_ __tmp64457)))
                      (__tmp64392
                       (let ((__tmp64393
                              (let ((__tmp64455 (gx#datum->syntax '#f 'let))
                                    (__tmp64394
                                     (let ((__tmp64454
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64395
                                            (let ((__tmp64443
                                                   (let ((__tmp64450
                                                          (let ((__tmp64453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64451
                         (let ((__tmp64452 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64452 '()))))
                    (declare (not safe))
                    (cons __tmp64453 __tmp64451)))
                 (__tmp64444
                  (let ((__tmp64445
                         (let ((__tmp64449 (gx#datum->syntax '#f 'r))
                               (__tmp64446
                                (let ((__tmp64447
                                       (let ((__tmp64448
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64448 '()))))
                                  (declare (not safe))
                                  (cons __tmp64447 '()))))
                           (declare (not safe))
                           (cons __tmp64449 __tmp64446))))
                    (declare (not safe))
                    (cons __tmp64445 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64450
                                                           __tmp64444)))
                                                  (__tmp64396
                                                   (let ((__tmp64397
                                                          (let ((__tmp64442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64398
                         (let ((__tmp64441 (gx#datum->syntax '#f 'rest))
                               (__tmp64399
                                (let ((__tmp64405
                                       (let ((__tmp64436
                                              (let ((__tmp64440
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64437
                                                     (let ((__tmp64439
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64438
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64439
                                                             __tmp64438))))
                                                (declare (not safe))
                                                (cons __tmp64440 __tmp64437)))
                                             (__tmp64406
                                              (let ((__tmp64407
                                                     (let ((__tmp64435
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64408
                                                            (let ((__tmp64430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64431
                                  (let ((__tmp64434 (gx#datum->syntax '#f 'el))
                                        (__tmp64432
                                         (let ((__tmp64433
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64433 '()))))
                                    (declare (not safe))
                                    (cons __tmp64434 __tmp64432))))
                             (declare (not safe))
                             (cons _L55905_ __tmp64431)))
                          (__tmp64409
                           (let ((__tmp64422
                                  (let ((__tmp64429
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64423
                                         (let ((__tmp64428
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64424
                                                (let ((__tmp64427
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64425
                                                       (let ((__tmp64426
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64426
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64427
                                                        __tmp64425))))
                                           (declare (not safe))
                                           (cons __tmp64428 __tmp64424))))
                                    (declare (not safe))
                                    (cons __tmp64429 __tmp64423)))
                                 (__tmp64410
                                  (let ((__tmp64411
                                         (let ((__tmp64421
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64412
                                                (let ((__tmp64420
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64413
                                                       (let ((__tmp64414
                                                              (let ((__tmp64419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64415
                             (let ((__tmp64418 (gx#datum->syntax '#f 'hd))
                                   (__tmp64416
                                    (let ((__tmp64417
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64417 '()))))
                               (declare (not safe))
                               (cons __tmp64418 __tmp64416))))
                        (declare (not safe))
                        (cons __tmp64419 __tmp64415))))
                 (declare (not safe))
                 (cons __tmp64414 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64420
                                                        __tmp64413))))
                                           (declare (not safe))
                                           (cons __tmp64421 __tmp64412))))
                                    (declare (not safe))
                                    (cons __tmp64411 '()))))
                             (declare (not safe))
                             (cons __tmp64422 __tmp64410))))
                      (declare (not safe))
                      (cons __tmp64430 __tmp64409))))
               (declare (not safe))
               (cons __tmp64435 __tmp64408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64407 '()))))
                                         (declare (not safe))
                                         (cons __tmp64436 __tmp64406)))
                                      (__tmp64400
                                       (let ((__tmp64401
                                              (let ((__tmp64404
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64402
                                                     (let ((__tmp64403
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64403 '()))))
                                                (declare (not safe))
                                                (cons __tmp64404 __tmp64402))))
                                         (declare (not safe))
                                         (cons __tmp64401 '()))))
                                  (declare (not safe))
                                  (cons __tmp64405 __tmp64400))))
                           (declare (not safe))
                           (cons __tmp64441 __tmp64399))))
                    (declare (not safe))
                    (cons __tmp64442 __tmp64398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64397 '()))))
                                              (declare (not safe))
                                              (cons __tmp64443 __tmp64396))))
                                       (declare (not safe))
                                       (cons __tmp64454 __tmp64395))))
                                (declare (not safe))
                                (cons __tmp64455 __tmp64394))))
                         (declare (not safe))
                         (cons __tmp64393 '()))))
                  (declare (not safe))
                  (cons __tmp64456 __tmp64392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64461
                                                         __tmp64391)))
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
                             (let ((__tmp64463 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64462
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55959_))))
                               (declare (not safe))
                               (cons __tmp64463 __tmp64462)))
                           _tl5593455956_)))
                      (_g5593155942_ _g5593255946_)))))
          (_g5593055971_ _$stx55927_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55975_)
        (let* ((___stx6378663787_ _$stx55975_)
               (_g5598656200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6378663787_))))
          (let ((___kont6378963790_
                 (lambda (_L57053_ _L57055_ _L57056_ _L57057_ _L57058_)
                   (let ((__tmp64464
                          (let ((__tmp64465
                                 (let ((__tmp64466
                                        (let ((__tmp64470
                                               (let ((__tmp64471
                                                      (lambda (_g5708857091_
                                                               _g5708957094_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5708857091_
                                                                _g5708957094_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64471
                                                         '()
                                                         _L57056_)))
                                              (__tmp64467
                                               (let ((__tmp64468
                                                      (let ((__tmp64469
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L57053_ '()))))
                (declare (not safe))
                (cons _L57055_ __tmp64469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L57057_ __tmp64468))))
                                          (declare (not safe))
                                          (cons __tmp64470 __tmp64467))))
                                   (declare (not safe))
                                   (cons '() __tmp64466))))
                            (declare (not safe))
                            (cons '2 __tmp64465))))
                     (declare (not safe))
                     (cons _L57058_ __tmp64464))))
                (___kont6379363794_
                 (lambda (_L56906_ _L56908_ _L56909_ _L56910_)
                   (let ((__tmp64472
                          (let ((__tmp64473
                                 (let ((__tmp64474
                                        (let ((__tmp64478
                                               (let ((__tmp64479
                                                      (lambda (_g5693356936_
                                                               _g5693456939_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5693356936_
                                                                _g5693456939_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64479
                                                         '()
                                                         _L56908_)))
                                              (__tmp64475
                                               (let ((__tmp64476
                                                      (let ((__tmp64477
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56906_ '()))))
                (declare (not safe))
                (cons _L56906_ __tmp64477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56909_ __tmp64476))))
                                          (declare (not safe))
                                          (cons __tmp64478 __tmp64475))))
                                   (declare (not safe))
                                   (cons '() __tmp64474))))
                            (declare (not safe))
                            (cons '2 __tmp64473))))
                     (declare (not safe))
                     (cons _L56910_ __tmp64472))))
                (___kont6379763798_
                 (lambda (_L56809_)
                   (let ((__tmp64491 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64480
                          (let ((__tmp64481
                                 (let ((__tmp64488
                                        (let ((__tmp64490
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64489
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64490 __tmp64489)))
                                       (__tmp64482
                                        (let ((__tmp64485
                                               (let ((__tmp64487
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64486
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64487 __tmp64486)))
                                              (__tmp64483
                                               (let ((__tmp64484
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64484))))
                                          (declare (not safe))
                                          (cons __tmp64485 __tmp64483))))
                                   (declare (not safe))
                                   (cons __tmp64488 __tmp64482))))
                            (declare (not safe))
                            (cons _L56809_ __tmp64481))))
                     (declare (not safe))
                     (cons __tmp64491 __tmp64480))))
                (___kont6379963800_
                 (lambda (_L56732_
                          _L56734_
                          _L56735_
                          _L56736_
                          _L56737_
                          _L56738_)
                   (let ((__tmp64492
                          (let ((__tmp64493
                                 (let ((__tmp64495
                                        (let ((__tmp64496
                                               (let ((__tmp64497
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56735_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56736_ __tmp64497))))
                                          (declare (not safe))
                                          (cons __tmp64496 _L56737_)))
                                       (__tmp64494
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56734_ _L56732_))))
                                   (declare (not safe))
                                   (cons __tmp64495 __tmp64494))))
                            (declare (not safe))
                            (cons '2 __tmp64493))))
                     (declare (not safe))
                     (cons _L56738_ __tmp64492))))
                (___kont6380163802_
                 (lambda (_L56613_ _L56615_ _L56616_ _L56617_ _L56618_)
                   (let ((__tmp64498
                          (let ((__tmp64499
                                 (let ((__tmp64501
                                        (let ((__tmp64502
                                               (let ((__tmp64503
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56616_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56616_ __tmp64503))))
                                          (declare (not safe))
                                          (cons __tmp64502 _L56617_)))
                                       (__tmp64500
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56615_ _L56613_))))
                                   (declare (not safe))
                                   (cons __tmp64501 __tmp64500))))
                            (declare (not safe))
                            (cons '2 __tmp64499))))
                     (declare (not safe))
                     (cons _L56618_ __tmp64498))))
                (___kont6380363804_
                 (lambda (_L56530_ _L56532_ _L56533_)
                   (let ((__tmp64504
                          (let ((__tmp64505
                                 (let ((__tmp64506
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56532_ _L56530_))))
                                   (declare (not safe))
                                   (cons '() __tmp64506))))
                            (declare (not safe))
                            (cons '3 __tmp64505))))
                     (declare (not safe))
                     (cons _L56533_ __tmp64504))))
                (___kont6380563806_
                 (lambda (_L56451_ _L56453_ _L56454_ _L56455_ _L56456_)
                   (let ((__tmp64507
                          (let ((__tmp64508
                                 (let ((__tmp64510
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56454_ _L56455_)))
                                       (__tmp64509
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56453_ _L56451_))))
                                   (declare (not safe))
                                   (cons __tmp64510 __tmp64509))))
                            (declare (not safe))
                            (cons '3 __tmp64508))))
                     (declare (not safe))
                     (cons _L56456_ __tmp64507))))
                (___kont6380763808_
                 (lambda (_L56335_
                          _L56337_
                          _L56338_
                          _L56339_
                          _L56340_
                          _L56341_)
                   (let ((__tmp64558 (gx#datum->syntax '#f 'let))
                         (__tmp64511
                          (let ((__tmp64546
                                 (let ((__tmp64555
                                        (let ((__tmp64557
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64556
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56338_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64557 __tmp64556)))
                                       (__tmp64547
                                        (let ((__tmp64548
                                               (let ((__tmp64554
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64549
                                                      (let ((__tmp64550
                                                             (let ((__tmp64553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64551
                            (let ((__tmp64552
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56335_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64552))))
                       (declare (not safe))
                       (cons __tmp64553 __tmp64551))))
                (declare (not safe))
                (cons __tmp64550 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64554
                                                       __tmp64549))))
                                          (declare (not safe))
                                          (cons __tmp64548 '()))))
                                   (declare (not safe))
                                   (cons __tmp64555 __tmp64547)))
                                (__tmp64512
                                 (let ((__tmp64513
                                        (let ((__tmp64545
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64514
                                               (let ((__tmp64544
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64515
                                                      (let ((__tmp64519
                                                             (let ((__tmp64543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64520
                            (let ((__tmp64542 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64521
                                   (let ((__tmp64537
                                          (let ((__tmp64541
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64538
                                                 (let ((__tmp64539
                                                        (let ((__tmp64540
                                                               (lambda (_g5637556378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637656381_)
                         (let ()
                           (declare (not safe))
                           (cons _g5637556378_ _g5637656381_)))))
                  (declare (not safe))
                  (foldr1 __tmp64540 '() _L56340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64539 '()))))
                                            (declare (not safe))
                                            (cons __tmp64541 __tmp64538)))
                                         (__tmp64522
                                          (let ((__tmp64529
                                                 (let ((__tmp64536
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64530
                                                        (let ((__tmp64531
                                                               (lambda (_g5637356384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637456387_)
                         (let ((__tmp64532
                                (let ((__tmp64535
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64533
                                       (let ((__tmp64534
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5637356384_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64534))))
                                  (declare (not safe))
                                  (cons __tmp64535 __tmp64533))))
                           (declare (not safe))
                           (cons __tmp64532 _g5637456387_)))))
                  (declare (not safe))
                  (foldr1 __tmp64531 '() _L56339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64536
                                                         __tmp64530)))
                                                (__tmp64523
                                                 (let ((__tmp64526
                                                        (let ((__tmp64528
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64527
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56337_ '()))))
                  (declare (not safe))
                  (cons __tmp64528 __tmp64527)))
               (__tmp64524
                (let ((__tmp64525 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64525 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64526
                                                         __tmp64524))))
                                            (declare (not safe))
                                            (cons __tmp64529 __tmp64523))))
                                     (declare (not safe))
                                     (cons __tmp64537 __tmp64522))))
                              (declare (not safe))
                              (cons __tmp64542 __tmp64521))))
                       (declare (not safe))
                       (cons __tmp64543 __tmp64520)))
                    (__tmp64516
                     (let ((__tmp64517
                            (let ((__tmp64518 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64518 '()))))
                       (declare (not safe))
                       (cons __tmp64517 '()))))
                (declare (not safe))
                (cons __tmp64519 __tmp64516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64544
                                                       __tmp64515))))
                                          (declare (not safe))
                                          (cons __tmp64545 __tmp64514))))
                                   (declare (not safe))
                                   (cons __tmp64513 '()))))
                            (declare (not safe))
                            (cons __tmp64546 __tmp64512))))
                     (declare (not safe))
                     (cons __tmp64558 __tmp64511)))))
            (let* ((___match6413764138_
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
                             ___splice6380963810_
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
                                        (___kont6380763808_
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
                   (___match6391563916_
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
                             ___splice6379563796_
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
                                        (___kont6379363794_
                                         _hd5604856876_
                                         _exprs5604656902_
                                         _hd5603656860_
                                         _hd5602956836_))))))
                        (_loop5604156882_ _target5603856866_ '()))))
                   (___match6387563876_
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
                             ___splice6379163792_
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
                                        (___kont6378963790_
                                         _hd5602257023_
                                         _hd5601957013_
                                         _exprs5601157049_
                                         _hd5600156977_
                                         _hd5599456953_))))))
                        (_loop5600657029_ _target5600356983_ '())))))
              (if (gx#stx-pair? ___stx6378663787_)
                  (let ((_e5599556949_ (gx#syntax-e ___stx6378663787_)))
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
                                                        (let ((___splice6379163792_
                                                               (gx#syntax-split-splice
                                                                _tl5600056980_
                                                                '2)))
                                                          (let ((_tl5600556986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6379163792_ '1)))
                        (_target5600356983_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6379163792_ '0))))
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
                                             |[1]#_g64560_|
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
                            (___match6387563876_
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
                             ___splice6379163792_
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
                                (let ((___splice6379563796_
                                       (gx#syntax-split-splice
                                        _tl5600056980_
                                        '1)))
                                  (let ((_tl5604056869_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6379563796_
                                            '1)))
                                        (_target5603856866_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6379563796_
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
                                                (___match6391563916_
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
                                                 ___splice6379563796_
                                                 _target5603856866_
                                                 _tl5604056869_
                                                 _e5604956872_
                                                 _hd5604856876_
                                                 _tl5604756879_)
                                                (if (gx#stx-null?
                                                     _tl5600056980_)
                                                    (___kont6379763798_
                                                     _hd5600156977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_))))))
                                        (if (gx#stx-null? _tl5600056980_)
                                            (___kont6379763798_ _hd5600156977_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_))))))
                                (if (gx#stx-null? _tl5600056980_)
                                    (___kont6379763798_ _hd5600156977_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598656200_)))))))
                    (if (fx>= (gx#stx-length _tl5600056980_) '1)
                        (let ((___splice6379563796_
                               (gx#syntax-split-splice _tl5600056980_ '1)))
                          (let ((_tl5604056869_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6379563796_ '1)))
                                (_target5603856866_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6379563796_ '0))))
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
                                        (___match6391563916_
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
                                         ___splice6379563796_
                                         _target5603856866_
                                         _tl5604056869_
                                         _e5604956872_
                                         _hd5604856876_
                                         _tl5604756879_)
                                        (if (gx#stx-null? _tl5600056980_)
                                            (___kont6379763798_ _hd5600156977_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598656200_))))))
                                (if (gx#stx-null? _tl5600056980_)
                                    (___kont6379763798_ _hd5600156977_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598656200_))))))
                        (if (gx#stx-null? _tl5600056980_)
                            (___kont6379763798_ _hd5600156977_)
                            (let () (declare (not safe)) (_g5598656200_)))))
                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                    (let ((___splice6379563796_
                           (gx#syntax-split-splice _tl5600056980_ '1)))
                      (let ((_tl5604056869_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379563796_ '1)))
                            (_target5603856866_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379563796_ '0))))
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
                                    (___match6391563916_
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
                                     ___splice6379563796_
                                     _target5603856866_
                                     _tl5604056869_
                                     _e5604956872_
                                     _hd5604856876_
                                     _tl5604756879_)
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6379763798_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6379763798_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6379763798_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5600056980_)
                                                          '1)
                                                    (let ((___splice6379563796_
                                                           (gx#syntax-split-splice
                                                            _tl5600056980_
                                                            '1)))
                                                      (let ((_tl5604056869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6379563796_ '1)))
                    (_target5603856866_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6379563796_ '0))))
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
                            (___match6391563916_
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
                             ___splice6379563796_
                             _target5603856866_
                             _tl5604056869_
                             _e5604956872_
                             _hd5604856876_
                             _tl5604756879_)
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6379763798_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6379763798_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6379763798_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5600056980_)
                                                      '1)
                                                (let ((___splice6379563796_
                                                       (gx#syntax-split-splice
                                                        _tl5600056980_
                                                        '1)))
                                                  (let ((_tl5604056869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6379563796_
                                                            '1)))
                                                        (_target5603856866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6379563796_
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
                        (___match6391563916_
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
                         ___splice6379563796_
                         _target5603856866_
                         _tl5604056869_
                         _e5604956872_
                         _hd5604856876_
                         _tl5604756879_)
                        (if (gx#stx-null? _tl5600056980_)
                            (___kont6379763798_ _hd5600156977_)
                            (let () (declare (not safe)) (_g5598656200_))))))
                (if (gx#stx-null? _tl5600056980_)
                    (___kont6379763798_ _hd5600156977_)
                    (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5600056980_)
                                                    (___kont6379763798_
                                                     _hd5600156977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598656200_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5600056980_)
                                                  '1)
                                            (let ((___splice6379563796_
                                                   (gx#syntax-split-splice
                                                    _tl5600056980_
                                                    '1)))
                                              (let ((_tl5604056869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6379563796_
                                                        '1)))
                                                    (_target5603856866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6379563796_
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
                    (___match6391563916_
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
                     ___splice6379563796_
                     _target5603856866_
                     _tl5604056869_
                     _e5604956872_
                     _hd5604856876_
                     _tl5604756879_)
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6379763798_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6379763798_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_))))))
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6379763798_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_)))))))
                                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                                    (let ((___splice6379563796_
                                           (gx#syntax-split-splice
                                            _tl5600056980_
                                            '1)))
                                      (let ((_tl5604056869_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6379563796_
                                                '1)))
                                            (_target5603856866_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6379563796_
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
                                                    (___match6391563916_
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
                                                     ___splice6379563796_
                                                     _target5603856866_
                                                     _tl5604056869_
                                                     _e5604956872_
                                                     _hd5604856876_
                                                     _tl5604756879_)
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6379763798_
                                                         _hd5600156977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598656200_))))))
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6379763798_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_))))))
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6379763798_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_)))))))
                        (if (fx>= (gx#stx-length _tl5600056980_) '1)
                            (let ((___splice6379563796_
                                   (gx#syntax-split-splice _tl5600056980_ '1)))
                              (let ((_tl5604056869_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6379563796_ '1)))
                                    (_target5603856866_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6379563796_
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
                                            (___match6391563916_
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
                                             ___splice6379563796_
                                             _target5603856866_
                                             _tl5604056869_
                                             _e5604956872_
                                             _hd5604856876_
                                             _tl5604756879_)
                                            (if (gx#stx-null? _tl5600056980_)
                                                (___kont6379763798_
                                                 _hd5600156977_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598656200_))))))
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6379763798_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6379763798_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_)))))))
                (if (fx>= (gx#stx-length _tl5600056980_) '1)
                    (let ((___splice6379563796_
                           (gx#syntax-split-splice _tl5600056980_ '1)))
                      (let ((_tl5604056869_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379563796_ '1)))
                            (_target5603856866_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379563796_ '0))))
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
                                    (___match6391563916_
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
                                     ___splice6379563796_
                                     _target5603856866_
                                     _tl5604056869_
                                     _e5604956872_
                                     _hd5604856876_
                                     _tl5604756879_)
                                    (if (gx#stx-null? _tl5600056980_)
                                        (___kont6379763798_ _hd5600156977_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_))))))
                            (if (gx#stx-null? _tl5600056980_)
                                (___kont6379763798_ _hd5600156977_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-null? _tl5600056980_)
                        (___kont6379763798_ _hd5600156977_)
                        (let () (declare (not safe)) (_g5598656200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600056980_)
                                                        (___kont6379763798_
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
                                             |[1]#_g64559_|
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
                        (___kont6379963800_
                         _tl5607756689_
                         _tl5608956729_
                         _hd5609056726_
                         _hd5608756716_
                         _hd5607556676_
                         _hd5599456953_)))
                    (___kont6380163802_
                     _tl5607756689_
                     _tl5608056699_
                     _hd5608156696_
                     _hd5607556676_
                     _hd5599456953_))
                (___kont6380163802_
                 _tl5607756689_
                 _tl5608056699_
                 _hd5608156696_
                 _hd5607556676_
                 _hd5599456953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6380163802_
                                                 _tl5607756689_
                                                 _tl5608056699_
                                                 _hd5608156696_
                                                 _hd5607556676_
                                                 _hd5599456953_))
                                            (___kont6380163802_
                                             _tl5607756689_
                                             _tl5608056699_
                                             _hd5608156696_
                                             _hd5607556676_
                                             _hd5599456953_))
                                        (___kont6380163802_
                                         _tl5607756689_
                                         _tl5608056699_
                                         _hd5608156696_
                                         _hd5607556676_
                                         _hd5599456953_))))
                                (___kont6380163802_
                                 _tl5607756689_
                                 _tl5608056699_
                                 _hd5608156696_
                                 _hd5607556676_
                                 _hd5599456953_))))
                        (if (gx#stx-null? _hd5607856686_)
                            (___kont6380363804_
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
                                (___kont6380563806_
                                 _tl5614456438_
                                 _tl5614756448_
                                 _hd5614856445_
                                 _hd5614256425_
                                 _hd5599456953_)))
                            (if (gx#stx-pair/null? _hd5614256425_)
                                (let ((___splice6380963810_
                                       (gx#syntax-split-splice
                                        _hd5614256425_
                                        '0)))
                                  (let ((_tl5616856244_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6380963810_
                                            '1)))
                                        (_target5616656241_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6380963810_
                                            '0))))
                                    (if (gx#stx-null? _tl5616856244_)
                                        (___match6413764138_
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
                                         ___splice6380963810_
                                         _target5616656241_
                                         _tl5616856244_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598656200_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5598656200_))))))
                    (if (gx#stx-pair/null? _hd5614256425_)
                        (let ((___splice6380963810_
                               (gx#syntax-split-splice _hd5614256425_ '0)))
                          (let ((_tl5616856244_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6380963810_ '1)))
                                (_target5616656241_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6380963810_ '0))))
                            (if (gx#stx-null? _tl5616856244_)
                                (___match6413764138_
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
                                 ___splice6380963810_
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
