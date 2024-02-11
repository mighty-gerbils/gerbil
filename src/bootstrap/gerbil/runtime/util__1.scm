(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64562_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64563_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55684_)
        (let* ((_g5568855706_
                (lambda (_g5568955702_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5568955702_)))
               (_g5568755762_
                (lambda (_g5568955710_)
                  (if (gx#stx-pair? _g5568955710_)
                      (let ((_e5569455713_ (gx#syntax-e _g5568955710_)))
                        (let ((_hd5569355717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5569455713_)))
                              (_tl5569255720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5569455713_))))
                          (if (gx#stx-pair? _tl5569255720_)
                              (let ((_e5569755723_
                                     (gx#syntax-e _tl5569255720_)))
                                (let ((_hd5569655727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5569755723_)))
                                      (_tl5569555730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5569755723_))))
                                  (if (gx#stx-pair? _tl5569555730_)
                                      (let ((_e5570055733_
                                             (gx#syntax-e _tl5569555730_)))
                                        (let ((_hd5569955737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5570055733_)))
                                              (_tl5569855740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5570055733_))))
                                          (if (gx#stx-null? _tl5569855740_)
                                              ((lambda (_L55743_ _L55745_)
                                                 (let ((__tmp64323
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64275
                                                        (let ((__tmp64314
                                                               (let ((__tmp64315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64322 (gx#datum->syntax '#f 'key))
                                    (__tmp64316
                                     (let ((__tmp64321
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64317
                                            (let ((__tmp64318
                                                   (let ((__tmp64320
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64319
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64320
                                                           __tmp64319))))
                                              (declare (not safe))
                                              (cons __tmp64318 '()))))
                                       (declare (not safe))
                                       (cons __tmp64321 __tmp64317))))
                                (declare (not safe))
                                (cons __tmp64322 __tmp64316))))
                         (declare (not safe))
                         (cons _L55745_ __tmp64315)))
                      (__tmp64276
                       (let ((__tmp64277
                              (let ((__tmp64313 (gx#datum->syntax '#f 'cond))
                                    (__tmp64278
                                     (let ((__tmp64295
                                            (let ((__tmp64300
                                                   (let ((__tmp64312
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64301
                                                          (let ((__tmp64308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64311 (gx#datum->syntax '#f 'pair?))
                               (__tmp64309
                                (let ((__tmp64310 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64310 '()))))
                           (declare (not safe))
                           (cons __tmp64311 __tmp64309)))
                        (__tmp64302
                         (let ((__tmp64303
                                (let ((__tmp64304
                                       (let ((__tmp64307
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64305
                                              (let ((__tmp64306
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64306 '()))))
                                         (declare (not safe))
                                         (cons __tmp64307 __tmp64305))))
                                  (declare (not safe))
                                  (cons _L55743_ __tmp64304))))
                           (declare (not safe))
                           (cons __tmp64303 '()))))
                    (declare (not safe))
                    (cons __tmp64308 __tmp64302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64312
                                                           __tmp64301)))
                                                  (__tmp64296
                                                   (let ((__tmp64299
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64297
                                                          (let ((__tmp64298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64298 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64299
                                                           __tmp64297))))
                                              (declare (not safe))
                                              (cons __tmp64300 __tmp64296)))
                                           (__tmp64279
                                            (let ((__tmp64285
                                                   (let ((__tmp64291
                                                          (let ((__tmp64294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64292
                         (let ((__tmp64293 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64293 '()))))
                    (declare (not safe))
                    (cons __tmp64294 __tmp64292)))
                 (__tmp64286
                  (let ((__tmp64287
                         (let ((__tmp64290 (gx#datum->syntax '#f 'default))
                               (__tmp64288
                                (let ((__tmp64289 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64289 '()))))
                           (declare (not safe))
                           (cons __tmp64290 __tmp64288))))
                    (declare (not safe))
                    (cons __tmp64287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64291
                                                           __tmp64286)))
                                                  (__tmp64280
                                                   (let ((__tmp64281
                                                          (let ((__tmp64284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64282
                         (let ((__tmp64283 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64283 '()))))
                    (declare (not safe))
                    (cons __tmp64284 __tmp64282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64281 '()))))
                                              (declare (not safe))
                                              (cons __tmp64285 __tmp64280))))
                                       (declare (not safe))
                                       (cons __tmp64295 __tmp64279))))
                                (declare (not safe))
                                (cons __tmp64313 __tmp64278))))
                         (declare (not safe))
                         (cons __tmp64277 '()))))
                  (declare (not safe))
                  (cons __tmp64314 __tmp64276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64323
                                                         __tmp64275)))
                                               _hd5569955737_
                                               _hd5569655727_)
                                              (_g5568855706_ _g5568955710_))))
                                      (_g5568855706_ _g5568955710_))))
                              (_g5568855706_ _g5568955710_))))
                      (_g5568855706_ _g5568955710_)))))
          (_g5568755762_ _$stx55684_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55766_)
        (let* ((_g5577055788_
                (lambda (_g5577155784_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5577155784_)))
               (_g5576955843_
                (lambda (_g5577155792_)
                  (if (gx#stx-pair? _g5577155792_)
                      (let ((_e5577655795_ (gx#syntax-e _g5577155792_)))
                        (let ((_hd5577555799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5577655795_)))
                              (_tl5577455802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5577655795_))))
                          (if (gx#stx-pair? _tl5577455802_)
                              (let ((_e5577955805_
                                     (gx#syntax-e _tl5577455802_)))
                                (let ((_hd5577855809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5577955805_)))
                                      (_tl5577755812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5577955805_))))
                                  (if (gx#stx-pair? _tl5577755812_)
                                      (let ((_e5578255815_
                                             (gx#syntax-e _tl5577755812_)))
                                        (let ((_hd5578155819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5578255815_)))
                                              (_tl5578055822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5578255815_))))
                                          (if (gx#stx-null? _tl5578055822_)
                                              ((lambda (_L55825_ _L55827_)
                                                 (let ((__tmp64393
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64324
                                                        (let ((__tmp64384
                                                               (let ((__tmp64385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64392 (gx#datum->syntax '#f 'key))
                                    (__tmp64386
                                     (let ((__tmp64391
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64387
                                            (let ((__tmp64388
                                                   (let ((__tmp64390
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64389
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64390
                                                           __tmp64389))))
                                              (declare (not safe))
                                              (cons __tmp64388 '()))))
                                       (declare (not safe))
                                       (cons __tmp64391 __tmp64387))))
                                (declare (not safe))
                                (cons __tmp64392 __tmp64386))))
                         (declare (not safe))
                         (cons _L55827_ __tmp64385)))
                      (__tmp64325
                       (let ((__tmp64326
                              (let ((__tmp64383 (gx#datum->syntax '#f 'let))
                                    (__tmp64327
                                     (let ((__tmp64382
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64328
                                            (let ((__tmp64377
                                                   (let ((__tmp64378
                                                          (let ((__tmp64381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64379
                         (let ((__tmp64380 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64380 '()))))
                    (declare (not safe))
                    (cons __tmp64381 __tmp64379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64378 '())))
                                                  (__tmp64329
                                                   (let ((__tmp64330
                                                          (let ((__tmp64376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64331
                         (let ((__tmp64375 (gx#datum->syntax '#f 'rest))
                               (__tmp64332
                                (let ((__tmp64351
                                       (let ((__tmp64368
                                              (let ((__tmp64374
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64369
                                                     (let ((__tmp64373
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64370
                                                            (let ((__tmp64372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64371 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64372 __tmp64371))))
               (declare (not safe))
               (cons __tmp64373 __tmp64370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64374 __tmp64369)))
                                             (__tmp64352
                                              (let ((__tmp64353
                                                     (let ((__tmp64367
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64354
                                                            (let ((__tmp64362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64363
                                  (let ((__tmp64366 (gx#datum->syntax '#f 'k))
                                        (__tmp64364
                                         (let ((__tmp64365
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64365 '()))))
                                    (declare (not safe))
                                    (cons __tmp64366 __tmp64364))))
                             (declare (not safe))
                             (cons _L55825_ __tmp64363)))
                          (__tmp64355
                           (let ((__tmp64361 (gx#datum->syntax '#f 'v))
                                 (__tmp64356
                                  (let ((__tmp64357
                                         (let ((__tmp64360
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64358
                                                (let ((__tmp64359
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64359 '()))))
                                           (declare (not safe))
                                           (cons __tmp64360 __tmp64358))))
                                    (declare (not safe))
                                    (cons __tmp64357 '()))))
                             (declare (not safe))
                             (cons __tmp64361 __tmp64356))))
                      (declare (not safe))
                      (cons __tmp64362 __tmp64355))))
               (declare (not safe))
               (cons __tmp64367 __tmp64354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64353 '()))))
                                         (declare (not safe))
                                         (cons __tmp64368 __tmp64352)))
                                      (__tmp64333
                                       (let ((__tmp64334
                                              (let ((__tmp64350
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64335
                                                     (let ((__tmp64336
                                                            (let ((__tmp64349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64337
                           (let ((__tmp64345
                                  (let ((__tmp64348
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64346
                                         (let ((__tmp64347
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64347 '()))))
                                    (declare (not safe))
                                    (cons __tmp64348 __tmp64346)))
                                 (__tmp64338
                                  (let ((__tmp64341
                                         (let ((__tmp64344
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64342
                                                (let ((__tmp64343
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64343 '()))))
                                           (declare (not safe))
                                           (cons __tmp64344 __tmp64342)))
                                        (__tmp64339
                                         (let ((__tmp64340
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64340 '()))))
                                    (declare (not safe))
                                    (cons __tmp64341 __tmp64339))))
                             (declare (not safe))
                             (cons __tmp64345 __tmp64338))))
                      (declare (not safe))
                      (cons __tmp64349 __tmp64337))))
               (declare (not safe))
               (cons __tmp64336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64350 __tmp64335))))
                                         (declare (not safe))
                                         (cons __tmp64334 '()))))
                                  (declare (not safe))
                                  (cons __tmp64351 __tmp64333))))
                           (declare (not safe))
                           (cons __tmp64375 __tmp64332))))
                    (declare (not safe))
                    (cons __tmp64376 __tmp64331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64330 '()))))
                                              (declare (not safe))
                                              (cons __tmp64377 __tmp64329))))
                                       (declare (not safe))
                                       (cons __tmp64382 __tmp64328))))
                                (declare (not safe))
                                (cons __tmp64383 __tmp64327))))
                         (declare (not safe))
                         (cons __tmp64326 '()))))
                  (declare (not safe))
                  (cons __tmp64384 __tmp64325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64393
                                                         __tmp64324)))
                                               _hd5578155819_
                                               _hd5577855809_)
                                              (_g5577055788_ _g5577155792_))))
                                      (_g5577055788_ _g5577155792_))))
                              (_g5577055788_ _g5577155792_))))
                      (_g5577055788_ _g5577155792_)))))
          (_g5576955843_ _$stx55766_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55847_)
        (let* ((_g5585155869_
                (lambda (_g5585255865_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5585255865_)))
               (_g5585055924_
                (lambda (_g5585255873_)
                  (if (gx#stx-pair? _g5585255873_)
                      (let ((_e5585755876_ (gx#syntax-e _g5585255873_)))
                        (let ((_hd5585655880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5585755876_)))
                              (_tl5585555883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5585755876_))))
                          (if (gx#stx-pair? _tl5585555883_)
                              (let ((_e5586055886_
                                     (gx#syntax-e _tl5585555883_)))
                                (let ((_hd5585955890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5586055886_)))
                                      (_tl5585855893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5586055886_))))
                                  (if (gx#stx-pair? _tl5585855893_)
                                      (let ((_e5586355896_
                                             (gx#syntax-e _tl5585855893_)))
                                        (let ((_hd5586255900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5586355896_)))
                                              (_tl5586155903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5586355896_))))
                                          (if (gx#stx-null? _tl5586155903_)
                                              ((lambda (_L55906_ _L55908_)
                                                 (let ((__tmp64464
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64394
                                                        (let ((__tmp64459
                                                               (let ((__tmp64460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64463 (gx#datum->syntax '#f 'el))
                                    (__tmp64461
                                     (let ((__tmp64462
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64462 '()))))
                                (declare (not safe))
                                (cons __tmp64463 __tmp64461))))
                         (declare (not safe))
                         (cons _L55908_ __tmp64460)))
                      (__tmp64395
                       (let ((__tmp64396
                              (let ((__tmp64458 (gx#datum->syntax '#f 'let))
                                    (__tmp64397
                                     (let ((__tmp64457
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64398
                                            (let ((__tmp64446
                                                   (let ((__tmp64453
                                                          (let ((__tmp64456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64454
                         (let ((__tmp64455 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64455 '()))))
                    (declare (not safe))
                    (cons __tmp64456 __tmp64454)))
                 (__tmp64447
                  (let ((__tmp64448
                         (let ((__tmp64452 (gx#datum->syntax '#f 'r))
                               (__tmp64449
                                (let ((__tmp64450
                                       (let ((__tmp64451
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64451 '()))))
                                  (declare (not safe))
                                  (cons __tmp64450 '()))))
                           (declare (not safe))
                           (cons __tmp64452 __tmp64449))))
                    (declare (not safe))
                    (cons __tmp64448 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64453
                                                           __tmp64447)))
                                                  (__tmp64399
                                                   (let ((__tmp64400
                                                          (let ((__tmp64445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64401
                         (let ((__tmp64444 (gx#datum->syntax '#f 'rest))
                               (__tmp64402
                                (let ((__tmp64408
                                       (let ((__tmp64439
                                              (let ((__tmp64443
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64440
                                                     (let ((__tmp64442
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64441
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64442
                                                             __tmp64441))))
                                                (declare (not safe))
                                                (cons __tmp64443 __tmp64440)))
                                             (__tmp64409
                                              (let ((__tmp64410
                                                     (let ((__tmp64438
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64411
                                                            (let ((__tmp64433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64434
                                  (let ((__tmp64437 (gx#datum->syntax '#f 'el))
                                        (__tmp64435
                                         (let ((__tmp64436
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64436 '()))))
                                    (declare (not safe))
                                    (cons __tmp64437 __tmp64435))))
                             (declare (not safe))
                             (cons _L55906_ __tmp64434)))
                          (__tmp64412
                           (let ((__tmp64425
                                  (let ((__tmp64432
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64426
                                         (let ((__tmp64431
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64427
                                                (let ((__tmp64430
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64428
                                                       (let ((__tmp64429
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64429
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64430
                                                        __tmp64428))))
                                           (declare (not safe))
                                           (cons __tmp64431 __tmp64427))))
                                    (declare (not safe))
                                    (cons __tmp64432 __tmp64426)))
                                 (__tmp64413
                                  (let ((__tmp64414
                                         (let ((__tmp64424
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64415
                                                (let ((__tmp64423
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64416
                                                       (let ((__tmp64417
                                                              (let ((__tmp64422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64418
                             (let ((__tmp64421 (gx#datum->syntax '#f 'hd))
                                   (__tmp64419
                                    (let ((__tmp64420
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64420 '()))))
                               (declare (not safe))
                               (cons __tmp64421 __tmp64419))))
                        (declare (not safe))
                        (cons __tmp64422 __tmp64418))))
                 (declare (not safe))
                 (cons __tmp64417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64423
                                                        __tmp64416))))
                                           (declare (not safe))
                                           (cons __tmp64424 __tmp64415))))
                                    (declare (not safe))
                                    (cons __tmp64414 '()))))
                             (declare (not safe))
                             (cons __tmp64425 __tmp64413))))
                      (declare (not safe))
                      (cons __tmp64433 __tmp64412))))
               (declare (not safe))
               (cons __tmp64438 __tmp64411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64410 '()))))
                                         (declare (not safe))
                                         (cons __tmp64439 __tmp64409)))
                                      (__tmp64403
                                       (let ((__tmp64404
                                              (let ((__tmp64407
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64405
                                                     (let ((__tmp64406
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64406 '()))))
                                                (declare (not safe))
                                                (cons __tmp64407 __tmp64405))))
                                         (declare (not safe))
                                         (cons __tmp64404 '()))))
                                  (declare (not safe))
                                  (cons __tmp64408 __tmp64403))))
                           (declare (not safe))
                           (cons __tmp64444 __tmp64402))))
                    (declare (not safe))
                    (cons __tmp64445 __tmp64401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64400 '()))))
                                              (declare (not safe))
                                              (cons __tmp64446 __tmp64399))))
                                       (declare (not safe))
                                       (cons __tmp64457 __tmp64398))))
                                (declare (not safe))
                                (cons __tmp64458 __tmp64397))))
                         (declare (not safe))
                         (cons __tmp64396 '()))))
                  (declare (not safe))
                  (cons __tmp64459 __tmp64395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64464
                                                         __tmp64394)))
                                               _hd5586255900_
                                               _hd5585955890_)
                                              (_g5585155869_ _g5585255873_))))
                                      (_g5585155869_ _g5585255873_))))
                              (_g5585155869_ _g5585255873_))))
                      (_g5585155869_ _g5585255873_)))))
          (_g5585055924_ _$stx55847_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55928_)
        (let* ((_g5593255943_
                (lambda (_g5593355939_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5593355939_)))
               (_g5593155972_
                (lambda (_g5593355947_)
                  (if (gx#stx-pair? _g5593355947_)
                      (let ((_e5593755950_ (gx#syntax-e _g5593355947_)))
                        (let ((_hd5593655954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5593755950_)))
                              (_tl5593555957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5593755950_))))
                          ((lambda (_L55960_)
                             (let ((__tmp64466 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64465
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55960_))))
                               (declare (not safe))
                               (cons __tmp64466 __tmp64465)))
                           _tl5593555957_)))
                      (_g5593255943_ _g5593355947_)))))
          (_g5593155972_ _$stx55928_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55976_)
        (let* ((___stx6378963790_ _$stx55976_)
               (_g5598756201_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6378963790_))))
          (let ((___kont6379263793_
                 (lambda (_L57054_ _L57056_ _L57057_ _L57058_ _L57059_)
                   (let ((__tmp64467
                          (let ((__tmp64468
                                 (let ((__tmp64469
                                        (let ((__tmp64473
                                               (let ((__tmp64474
                                                      (lambda (_g5708957092_
                                                               _g5709057095_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5708957092_
                                                                _g5709057095_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64474
                                                         '()
                                                         _L57057_)))
                                              (__tmp64470
                                               (let ((__tmp64471
                                                      (let ((__tmp64472
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L57054_ '()))))
                (declare (not safe))
                (cons _L57056_ __tmp64472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L57058_ __tmp64471))))
                                          (declare (not safe))
                                          (cons __tmp64473 __tmp64470))))
                                   (declare (not safe))
                                   (cons '() __tmp64469))))
                            (declare (not safe))
                            (cons '2 __tmp64468))))
                     (declare (not safe))
                     (cons _L57059_ __tmp64467))))
                (___kont6379663797_
                 (lambda (_L56907_ _L56909_ _L56910_ _L56911_)
                   (let ((__tmp64475
                          (let ((__tmp64476
                                 (let ((__tmp64477
                                        (let ((__tmp64481
                                               (let ((__tmp64482
                                                      (lambda (_g5693456937_
                                                               _g5693556940_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5693456937_
                                                                _g5693556940_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64482
                                                         '()
                                                         _L56909_)))
                                              (__tmp64478
                                               (let ((__tmp64479
                                                      (let ((__tmp64480
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56907_ '()))))
                (declare (not safe))
                (cons _L56907_ __tmp64480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56910_ __tmp64479))))
                                          (declare (not safe))
                                          (cons __tmp64481 __tmp64478))))
                                   (declare (not safe))
                                   (cons '() __tmp64477))))
                            (declare (not safe))
                            (cons '2 __tmp64476))))
                     (declare (not safe))
                     (cons _L56911_ __tmp64475))))
                (___kont6380063801_
                 (lambda (_L56810_)
                   (let ((__tmp64494 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64483
                          (let ((__tmp64484
                                 (let ((__tmp64491
                                        (let ((__tmp64493
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64493 __tmp64492)))
                                       (__tmp64485
                                        (let ((__tmp64488
                                               (let ((__tmp64490
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64489
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64490 __tmp64489)))
                                              (__tmp64486
                                               (let ((__tmp64487
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64487))))
                                          (declare (not safe))
                                          (cons __tmp64488 __tmp64486))))
                                   (declare (not safe))
                                   (cons __tmp64491 __tmp64485))))
                            (declare (not safe))
                            (cons _L56810_ __tmp64484))))
                     (declare (not safe))
                     (cons __tmp64494 __tmp64483))))
                (___kont6380263803_
                 (lambda (_L56733_
                          _L56735_
                          _L56736_
                          _L56737_
                          _L56738_
                          _L56739_)
                   (let ((__tmp64495
                          (let ((__tmp64496
                                 (let ((__tmp64498
                                        (let ((__tmp64499
                                               (let ((__tmp64500
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56736_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56737_ __tmp64500))))
                                          (declare (not safe))
                                          (cons __tmp64499 _L56738_)))
                                       (__tmp64497
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56735_ _L56733_))))
                                   (declare (not safe))
                                   (cons __tmp64498 __tmp64497))))
                            (declare (not safe))
                            (cons '2 __tmp64496))))
                     (declare (not safe))
                     (cons _L56739_ __tmp64495))))
                (___kont6380463805_
                 (lambda (_L56614_ _L56616_ _L56617_ _L56618_ _L56619_)
                   (let ((__tmp64501
                          (let ((__tmp64502
                                 (let ((__tmp64504
                                        (let ((__tmp64505
                                               (let ((__tmp64506
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56617_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56617_ __tmp64506))))
                                          (declare (not safe))
                                          (cons __tmp64505 _L56618_)))
                                       (__tmp64503
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56616_ _L56614_))))
                                   (declare (not safe))
                                   (cons __tmp64504 __tmp64503))))
                            (declare (not safe))
                            (cons '2 __tmp64502))))
                     (declare (not safe))
                     (cons _L56619_ __tmp64501))))
                (___kont6380663807_
                 (lambda (_L56531_ _L56533_ _L56534_)
                   (let ((__tmp64507
                          (let ((__tmp64508
                                 (let ((__tmp64509
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56533_ _L56531_))))
                                   (declare (not safe))
                                   (cons '() __tmp64509))))
                            (declare (not safe))
                            (cons '3 __tmp64508))))
                     (declare (not safe))
                     (cons _L56534_ __tmp64507))))
                (___kont6380863809_
                 (lambda (_L56452_ _L56454_ _L56455_ _L56456_ _L56457_)
                   (let ((__tmp64510
                          (let ((__tmp64511
                                 (let ((__tmp64513
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56455_ _L56456_)))
                                       (__tmp64512
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56454_ _L56452_))))
                                   (declare (not safe))
                                   (cons __tmp64513 __tmp64512))))
                            (declare (not safe))
                            (cons '3 __tmp64511))))
                     (declare (not safe))
                     (cons _L56457_ __tmp64510))))
                (___kont6381063811_
                 (lambda (_L56336_
                          _L56338_
                          _L56339_
                          _L56340_
                          _L56341_
                          _L56342_)
                   (let ((__tmp64561 (gx#datum->syntax '#f 'let))
                         (__tmp64514
                          (let ((__tmp64549
                                 (let ((__tmp64558
                                        (let ((__tmp64560
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64559
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56339_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64560 __tmp64559)))
                                       (__tmp64550
                                        (let ((__tmp64551
                                               (let ((__tmp64557
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64552
                                                      (let ((__tmp64553
                                                             (let ((__tmp64556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64554
                            (let ((__tmp64555
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56336_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64555))))
                       (declare (not safe))
                       (cons __tmp64556 __tmp64554))))
                (declare (not safe))
                (cons __tmp64553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64557
                                                       __tmp64552))))
                                          (declare (not safe))
                                          (cons __tmp64551 '()))))
                                   (declare (not safe))
                                   (cons __tmp64558 __tmp64550)))
                                (__tmp64515
                                 (let ((__tmp64516
                                        (let ((__tmp64548
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64517
                                               (let ((__tmp64547
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64518
                                                      (let ((__tmp64522
                                                             (let ((__tmp64546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64523
                            (let ((__tmp64545 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64524
                                   (let ((__tmp64540
                                          (let ((__tmp64544
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64541
                                                 (let ((__tmp64542
                                                        (let ((__tmp64543
                                                               (lambda (_g5637656379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637756382_)
                         (let ()
                           (declare (not safe))
                           (cons _g5637656379_ _g5637756382_)))))
                  (declare (not safe))
                  (foldr1 __tmp64543 '() _L56341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64542 '()))))
                                            (declare (not safe))
                                            (cons __tmp64544 __tmp64541)))
                                         (__tmp64525
                                          (let ((__tmp64532
                                                 (let ((__tmp64539
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64533
                                                        (let ((__tmp64534
                                                               (lambda (_g5637456385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5637556388_)
                         (let ((__tmp64535
                                (let ((__tmp64538
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64536
                                       (let ((__tmp64537
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5637456385_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64537))))
                                  (declare (not safe))
                                  (cons __tmp64538 __tmp64536))))
                           (declare (not safe))
                           (cons __tmp64535 _g5637556388_)))))
                  (declare (not safe))
                  (foldr1 __tmp64534 '() _L56340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64539
                                                         __tmp64533)))
                                                (__tmp64526
                                                 (let ((__tmp64529
                                                        (let ((__tmp64531
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64530
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56338_ '()))))
                  (declare (not safe))
                  (cons __tmp64531 __tmp64530)))
               (__tmp64527
                (let ((__tmp64528 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64529
                                                         __tmp64527))))
                                            (declare (not safe))
                                            (cons __tmp64532 __tmp64526))))
                                     (declare (not safe))
                                     (cons __tmp64540 __tmp64525))))
                              (declare (not safe))
                              (cons __tmp64545 __tmp64524))))
                       (declare (not safe))
                       (cons __tmp64546 __tmp64523)))
                    (__tmp64519
                     (let ((__tmp64520
                            (let ((__tmp64521 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64521 '()))))
                       (declare (not safe))
                       (cons __tmp64520 '()))))
                (declare (not safe))
                (cons __tmp64522 __tmp64519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64547
                                                       __tmp64518))))
                                          (declare (not safe))
                                          (cons __tmp64548 __tmp64517))))
                                   (declare (not safe))
                                   (cons __tmp64516 '()))))
                            (declare (not safe))
                            (cons __tmp64549 __tmp64515))))
                     (declare (not safe))
                     (cons __tmp64561 __tmp64514)))))
            (let* ((___match6414064141_
                    (lambda (_e5615956208_
                             _hd5615856212_
                             _tl5615756215_
                             _e5616256218_
                             _hd5616156222_
                             _tl5616056225_
                             _e5616356228_
                             _e5616656232_
                             _hd5616556236_
                             _tl5616456239_
                             ___splice6381263813_
                             _target5616756242_
                             _tl5616956245_)
                      (letrec ((_loop5617056248_
                                (lambda (_hd5616856252_
                                         _exprs5617456255_
                                         _names5617556257_)
                                  (if (gx#stx-pair? _hd5616856252_)
                                      (let ((_e5617156260_
                                             (gx#syntax-e _hd5616856252_)))
                                        (let ((_lp-tl5617356267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5617156260_)))
                                              (_lp-hd5617256264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5617156260_))))
                                          (if (gx#stx-pair? _lp-hd5617256264_)
                                              (let ((_e5618056270_
                                                     (gx#syntax-e
                                                      _lp-hd5617256264_)))
                                                (let ((_tl5617856277_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5618056270_)))
                                                      (_hd5617956274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5618056270_))))
                                                  (if (gx#stx-pair?
                                                       _tl5617856277_)
                                                      (let ((_e5618356280_
                                                             (gx#syntax-e
                                                              _tl5617856277_)))
                                                        (let ((_tl5618156287_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5618356280_)))
                      (_hd5618256284_
                       (let () (declare (not safe)) (##car _e5618356280_))))
                  (if (gx#stx-null? _tl5618156287_)
                      (_loop5617056248_
                       _lp-tl5617356267_
                       (let ()
                         (declare (not safe))
                         (cons _hd5618256284_ _exprs5617456255_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5617956274_ _names5617556257_)))
                      (let () (declare (not safe)) (_g5598756201_)))))
              (let () (declare (not safe)) (_g5598756201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5598756201_)))))
                                      (let ((_names5617756293_
                                             (reverse _names5617556257_))
                                            (_exprs5617656290_
                                             (reverse _exprs5617456255_)))
                                        (if (gx#stx-pair? _tl5616456239_)
                                            (let ((_e5618656296_
                                                   (gx#syntax-e
                                                    _tl5616456239_)))
                                              (let ((_tl5618456303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5618656296_)))
                                                    (_hd5618556300_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5618656296_))))
                                                (if (gx#stx-null?
                                                     _hd5618556300_)
                                                    (if (gx#stx-pair?
                                                         _tl5618456303_)
                                                        (let ((_e5618956306_
                                                               (gx#syntax-e
                                                                _tl5618456303_)))
                                                          (let ((_tl5618756313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5618956306_)))
                        (_hd5618856310_
                         (let () (declare (not safe)) (##car _e5618956306_))))
                    (if (gx#stx-pair? _tl5618756313_)
                        (let ((_e5619256316_ (gx#syntax-e _tl5618756313_)))
                          (let ((_tl5619056323_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5619256316_)))
                                (_hd5619156320_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5619256316_))))
                            (if (gx#stx-pair? _tl5619056323_)
                                (let ((_e5619556326_
                                       (gx#syntax-e _tl5619056323_)))
                                  (let ((_tl5619356333_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5619556326_)))
                                        (_hd5619456330_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5619556326_))))
                                    (if (gx#stx-null? _tl5619356333_)
                                        (___kont6381063811_
                                         _hd5619456330_
                                         _hd5619156320_
                                         _hd5618856310_
                                         _exprs5617656290_
                                         _names5617756293_
                                         _hd5615856212_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_)))))
                        (let () (declare (not safe)) (_g5598756201_)))))
                (let () (declare (not safe)) (_g5598756201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598756201_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5598756201_))))))))
                        (_loop5617056248_ _target5616756242_ '() '()))))
                   (___match6391863919_
                    (lambda (_e5603156833_
                             _hd5603056837_
                             _tl5602956840_
                             _e5603456843_
                             _hd5603356847_
                             _tl5603256850_
                             _e5603556853_
                             _e5603856857_
                             _hd5603756861_
                             _tl5603656864_
                             ___splice6379863799_
                             _target5603956867_
                             _tl5604156870_
                             _e5605056873_
                             _hd5604956877_
                             _tl5604856880_)
                      (letrec ((_loop5604256883_
                                (lambda (_hd5604056887_ _exprs5604656890_)
                                  (if (gx#stx-pair? _hd5604056887_)
                                      (let ((_e5604356893_
                                             (gx#syntax-e _hd5604056887_)))
                                        (let ((_lp-tl5604556900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5604356893_)))
                                              (_lp-hd5604456897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5604356893_))))
                                          (_loop5604256883_
                                           _lp-tl5604556900_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5604456897_
                                                   _exprs5604656890_)))))
                                      (let ((_exprs5604756903_
                                             (reverse _exprs5604656890_)))
                                        (___kont6379663797_
                                         _hd5604956877_
                                         _exprs5604756903_
                                         _hd5603756861_
                                         _hd5603056837_))))))
                        (_loop5604256883_ _target5603956867_ '()))))
                   (___match6387863879_
                    (lambda (_e5599656950_
                             _hd5599556954_
                             _tl5599456957_
                             _e5599956960_
                             _hd5599856964_
                             _tl5599756967_
                             _e5600056970_
                             _e5600356974_
                             _hd5600256978_
                             _tl5600156981_
                             ___splice6379463795_
                             _target5600456984_
                             _tl5600656987_
                             _e5601556990_
                             _hd5601456994_
                             _tl5601356997_
                             _e5601857000_
                             _hd5601757004_
                             _tl5601657007_
                             _e5602157010_
                             _hd5602057014_
                             _tl5601957017_
                             _e5602457020_
                             _hd5602357024_
                             _tl5602257027_)
                      (letrec ((_loop5600757030_
                                (lambda (_hd5600557034_ _exprs5601157037_)
                                  (if (gx#stx-pair? _hd5600557034_)
                                      (let ((_e5600857040_
                                             (gx#syntax-e _hd5600557034_)))
                                        (let ((_lp-tl5601057047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5600857040_)))
                                              (_lp-hd5600957044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5600857040_))))
                                          (_loop5600757030_
                                           _lp-tl5601057047_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5600957044_
                                                   _exprs5601157037_)))))
                                      (let ((_exprs5601257050_
                                             (reverse _exprs5601157037_)))
                                        (___kont6379263793_
                                         _hd5602357024_
                                         _hd5602057014_
                                         _exprs5601257050_
                                         _hd5600256978_
                                         _hd5599556954_))))))
                        (_loop5600757030_ _target5600456984_ '())))))
              (if (gx#stx-pair? ___stx6378963790_)
                  (let ((_e5599656950_ (gx#syntax-e ___stx6378963790_)))
                    (let ((_tl5599456957_
                           (let () (declare (not safe)) (##cdr _e5599656950_)))
                          (_hd5599556954_
                           (let ()
                             (declare (not safe))
                             (##car _e5599656950_))))
                      (if (gx#stx-pair? _tl5599456957_)
                          (let ((_e5599956960_ (gx#syntax-e _tl5599456957_)))
                            (let ((_tl5599756967_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5599956960_)))
                                  (_hd5599856964_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5599956960_))))
                              (if (gx#stx-datum? _hd5599856964_)
                                  (let ((_e5600056970_
                                         (gx#stx-e _hd5599856964_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5600056970_ '1))
                                        (if (gx#stx-pair? _tl5599756967_)
                                            (let ((_e5600356974_
                                                   (gx#syntax-e
                                                    _tl5599756967_)))
                                              (let ((_tl5600156981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5600356974_)))
                                                    (_hd5600256978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5600356974_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5600156981_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5600156981_)
                                                              '2)
                                                        (let ((___splice6379463795_
                                                               (gx#syntax-split-splice
                                                                _tl5600156981_
                                                                '2)))
                                                          (let ((_tl5600656987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6379463795_ '1)))
                        (_target5600456984_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6379463795_ '0))))
                    (if (gx#stx-pair? _tl5600656987_)
                        (let ((_e5601556990_ (gx#syntax-e _tl5600656987_)))
                          (let ((_tl5601356997_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5601556990_)))
                                (_hd5601456994_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5601556990_))))
                            (if (gx#stx-pair? _hd5601456994_)
                                (let ((_e5601857000_
                                       (gx#syntax-e _hd5601456994_)))
                                  (let ((_tl5601657007_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5601857000_)))
                                        (_hd5601757004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5601857000_))))
                                    (if (gx#identifier? _hd5601757004_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64563_|
                                             _hd5601757004_)
                                            (if (gx#stx-pair? _tl5601657007_)
                                                (let ((_e5602157010_
                                                       (gx#syntax-e
                                                        _tl5601657007_)))
                                                  (let ((_tl5601957017_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5602157010_)))
                                                        (_hd5602057014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5602157010_))))
                                                    (if (gx#stx-null?
                                                         _tl5601957017_)
                                                        (if (gx#stx-pair?
                                                             _tl5601356997_)
                                                            (let ((_e5602457020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5601356997_)))
                      (let ((_tl5602257027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5602457020_)))
                            (_hd5602357024_
                             (let ()
                               (declare (not safe))
                               (##car _e5602457020_))))
                        (if (gx#stx-null? _tl5602257027_)
                            (___match6387863879_
                             _e5599656950_
                             _hd5599556954_
                             _tl5599456957_
                             _e5599956960_
                             _hd5599856964_
                             _tl5599756967_
                             _e5600056970_
                             _e5600356974_
                             _hd5600256978_
                             _tl5600156981_
                             ___splice6379463795_
                             _target5600456984_
                             _tl5600656987_
                             _e5601556990_
                             _hd5601456994_
                             _tl5601356997_
                             _e5601857000_
                             _hd5601757004_
                             _tl5601657007_
                             _e5602157010_
                             _hd5602057014_
                             _tl5601957017_
                             _e5602457020_
                             _hd5602357024_
                             _tl5602257027_)
                            (if (fx>= (gx#stx-length _tl5600156981_) '1)
                                (let ((___splice6379863799_
                                       (gx#syntax-split-splice
                                        _tl5600156981_
                                        '1)))
                                  (let ((_tl5604156870_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6379863799_
                                            '1)))
                                        (_target5603956867_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6379863799_
                                            '0))))
                                    (if (gx#stx-pair? _tl5604156870_)
                                        (let ((_e5605056873_
                                               (gx#syntax-e _tl5604156870_)))
                                          (let ((_tl5604856880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5605056873_)))
                                                (_hd5604956877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5605056873_))))
                                            (if (gx#stx-null? _tl5604856880_)
                                                (___match6391863919_
                                                 _e5599656950_
                                                 _hd5599556954_
                                                 _tl5599456957_
                                                 _e5599956960_
                                                 _hd5599856964_
                                                 _tl5599756967_
                                                 _e5600056970_
                                                 _e5600356974_
                                                 _hd5600256978_
                                                 _tl5600156981_
                                                 ___splice6379863799_
                                                 _target5603956867_
                                                 _tl5604156870_
                                                 _e5605056873_
                                                 _hd5604956877_
                                                 _tl5604856880_)
                                                (if (gx#stx-null?
                                                     _tl5600156981_)
                                                    (___kont6380063801_
                                                     _hd5600256978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598756201_))))))
                                        (if (gx#stx-null? _tl5600156981_)
                                            (___kont6380063801_ _hd5600256978_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598756201_))))))
                                (if (gx#stx-null? _tl5600156981_)
                                    (___kont6380063801_ _hd5600256978_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598756201_)))))))
                    (if (fx>= (gx#stx-length _tl5600156981_) '1)
                        (let ((___splice6379863799_
                               (gx#syntax-split-splice _tl5600156981_ '1)))
                          (let ((_tl5604156870_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6379863799_ '1)))
                                (_target5603956867_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6379863799_ '0))))
                            (if (gx#stx-pair? _tl5604156870_)
                                (let ((_e5605056873_
                                       (gx#syntax-e _tl5604156870_)))
                                  (let ((_tl5604856880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5605056873_)))
                                        (_hd5604956877_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5605056873_))))
                                    (if (gx#stx-null? _tl5604856880_)
                                        (___match6391863919_
                                         _e5599656950_
                                         _hd5599556954_
                                         _tl5599456957_
                                         _e5599956960_
                                         _hd5599856964_
                                         _tl5599756967_
                                         _e5600056970_
                                         _e5600356974_
                                         _hd5600256978_
                                         _tl5600156981_
                                         ___splice6379863799_
                                         _target5603956867_
                                         _tl5604156870_
                                         _e5605056873_
                                         _hd5604956877_
                                         _tl5604856880_)
                                        (if (gx#stx-null? _tl5600156981_)
                                            (___kont6380063801_ _hd5600256978_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5598756201_))))))
                                (if (gx#stx-null? _tl5600156981_)
                                    (___kont6380063801_ _hd5600256978_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5598756201_))))))
                        (if (gx#stx-null? _tl5600156981_)
                            (___kont6380063801_ _hd5600256978_)
                            (let () (declare (not safe)) (_g5598756201_)))))
                (if (fx>= (gx#stx-length _tl5600156981_) '1)
                    (let ((___splice6379863799_
                           (gx#syntax-split-splice _tl5600156981_ '1)))
                      (let ((_tl5604156870_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379863799_ '1)))
                            (_target5603956867_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379863799_ '0))))
                        (if (gx#stx-pair? _tl5604156870_)
                            (let ((_e5605056873_ (gx#syntax-e _tl5604156870_)))
                              (let ((_tl5604856880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5605056873_)))
                                    (_hd5604956877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5605056873_))))
                                (if (gx#stx-null? _tl5604856880_)
                                    (___match6391863919_
                                     _e5599656950_
                                     _hd5599556954_
                                     _tl5599456957_
                                     _e5599956960_
                                     _hd5599856964_
                                     _tl5599756967_
                                     _e5600056970_
                                     _e5600356974_
                                     _hd5600256978_
                                     _tl5600156981_
                                     ___splice6379863799_
                                     _target5603956867_
                                     _tl5604156870_
                                     _e5605056873_
                                     _hd5604956877_
                                     _tl5604856880_)
                                    (if (gx#stx-null? _tl5600156981_)
                                        (___kont6380063801_ _hd5600256978_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_))))))
                            (if (gx#stx-null? _tl5600156981_)
                                (___kont6380063801_ _hd5600256978_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_))))))
                    (if (gx#stx-null? _tl5600156981_)
                        (___kont6380063801_ _hd5600256978_)
                        (let () (declare (not safe)) (_g5598756201_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5600156981_)
                                                          '1)
                                                    (let ((___splice6379863799_
                                                           (gx#syntax-split-splice
                                                            _tl5600156981_
                                                            '1)))
                                                      (let ((_tl5604156870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6379863799_ '1)))
                    (_target5603956867_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6379863799_ '0))))
                (if (gx#stx-pair? _tl5604156870_)
                    (let ((_e5605056873_ (gx#syntax-e _tl5604156870_)))
                      (let ((_tl5604856880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5605056873_)))
                            (_hd5604956877_
                             (let ()
                               (declare (not safe))
                               (##car _e5605056873_))))
                        (if (gx#stx-null? _tl5604856880_)
                            (___match6391863919_
                             _e5599656950_
                             _hd5599556954_
                             _tl5599456957_
                             _e5599956960_
                             _hd5599856964_
                             _tl5599756967_
                             _e5600056970_
                             _e5600356974_
                             _hd5600256978_
                             _tl5600156981_
                             ___splice6379863799_
                             _target5603956867_
                             _tl5604156870_
                             _e5605056873_
                             _hd5604956877_
                             _tl5604856880_)
                            (if (gx#stx-null? _tl5600156981_)
                                (___kont6380063801_ _hd5600256978_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_))))))
                    (if (gx#stx-null? _tl5600156981_)
                        (___kont6380063801_ _hd5600256978_)
                        (let () (declare (not safe)) (_g5598756201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600156981_)
                                                        (___kont6380063801_
                                                         _hd5600256978_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598756201_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5600156981_)
                                                      '1)
                                                (let ((___splice6379863799_
                                                       (gx#syntax-split-splice
                                                        _tl5600156981_
                                                        '1)))
                                                  (let ((_tl5604156870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6379863799_
                                                            '1)))
                                                        (_target5603956867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6379863799_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5604156870_)
                                                        (let ((_e5605056873_
                                                               (gx#syntax-e
                                                                _tl5604156870_)))
                                                          (let ((_tl5604856880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5605056873_)))
                        (_hd5604956877_
                         (let () (declare (not safe)) (##car _e5605056873_))))
                    (if (gx#stx-null? _tl5604856880_)
                        (___match6391863919_
                         _e5599656950_
                         _hd5599556954_
                         _tl5599456957_
                         _e5599956960_
                         _hd5599856964_
                         _tl5599756967_
                         _e5600056970_
                         _e5600356974_
                         _hd5600256978_
                         _tl5600156981_
                         ___splice6379863799_
                         _target5603956867_
                         _tl5604156870_
                         _e5605056873_
                         _hd5604956877_
                         _tl5604856880_)
                        (if (gx#stx-null? _tl5600156981_)
                            (___kont6380063801_ _hd5600256978_)
                            (let () (declare (not safe)) (_g5598756201_))))))
                (if (gx#stx-null? _tl5600156981_)
                    (___kont6380063801_ _hd5600256978_)
                    (let () (declare (not safe)) (_g5598756201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5600156981_)
                                                    (___kont6380063801_
                                                     _hd5600256978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598756201_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5600156981_)
                                                  '1)
                                            (let ((___splice6379863799_
                                                   (gx#syntax-split-splice
                                                    _tl5600156981_
                                                    '1)))
                                              (let ((_tl5604156870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6379863799_
                                                        '1)))
                                                    (_target5603956867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6379863799_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5604156870_)
                                                    (let ((_e5605056873_
                                                           (gx#syntax-e
                                                            _tl5604156870_)))
                                                      (let ((_tl5604856880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5605056873_)))
                    (_hd5604956877_
                     (let () (declare (not safe)) (##car _e5605056873_))))
                (if (gx#stx-null? _tl5604856880_)
                    (___match6391863919_
                     _e5599656950_
                     _hd5599556954_
                     _tl5599456957_
                     _e5599956960_
                     _hd5599856964_
                     _tl5599756967_
                     _e5600056970_
                     _e5600356974_
                     _hd5600256978_
                     _tl5600156981_
                     ___splice6379863799_
                     _target5603956867_
                     _tl5604156870_
                     _e5605056873_
                     _hd5604956877_
                     _tl5604856880_)
                    (if (gx#stx-null? _tl5600156981_)
                        (___kont6380063801_ _hd5600256978_)
                        (let () (declare (not safe)) (_g5598756201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600156981_)
                                                        (___kont6380063801_
                                                         _hd5600256978_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598756201_))))))
                                            (if (gx#stx-null? _tl5600156981_)
                                                (___kont6380063801_
                                                 _hd5600256978_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598756201_)))))))
                                (if (fx>= (gx#stx-length _tl5600156981_) '1)
                                    (let ((___splice6379863799_
                                           (gx#syntax-split-splice
                                            _tl5600156981_
                                            '1)))
                                      (let ((_tl5604156870_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6379863799_
                                                '1)))
                                            (_target5603956867_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6379863799_
                                                '0))))
                                        (if (gx#stx-pair? _tl5604156870_)
                                            (let ((_e5605056873_
                                                   (gx#syntax-e
                                                    _tl5604156870_)))
                                              (let ((_tl5604856880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5605056873_)))
                                                    (_hd5604956877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5605056873_))))
                                                (if (gx#stx-null?
                                                     _tl5604856880_)
                                                    (___match6391863919_
                                                     _e5599656950_
                                                     _hd5599556954_
                                                     _tl5599456957_
                                                     _e5599956960_
                                                     _hd5599856964_
                                                     _tl5599756967_
                                                     _e5600056970_
                                                     _e5600356974_
                                                     _hd5600256978_
                                                     _tl5600156981_
                                                     ___splice6379863799_
                                                     _target5603956867_
                                                     _tl5604156870_
                                                     _e5605056873_
                                                     _hd5604956877_
                                                     _tl5604856880_)
                                                    (if (gx#stx-null?
                                                         _tl5600156981_)
                                                        (___kont6380063801_
                                                         _hd5600256978_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598756201_))))))
                                            (if (gx#stx-null? _tl5600156981_)
                                                (___kont6380063801_
                                                 _hd5600256978_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598756201_))))))
                                    (if (gx#stx-null? _tl5600156981_)
                                        (___kont6380063801_ _hd5600256978_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_)))))))
                        (if (fx>= (gx#stx-length _tl5600156981_) '1)
                            (let ((___splice6379863799_
                                   (gx#syntax-split-splice _tl5600156981_ '1)))
                              (let ((_tl5604156870_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6379863799_ '1)))
                                    (_target5603956867_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6379863799_
                                        '0))))
                                (if (gx#stx-pair? _tl5604156870_)
                                    (let ((_e5605056873_
                                           (gx#syntax-e _tl5604156870_)))
                                      (let ((_tl5604856880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5605056873_)))
                                            (_hd5604956877_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5605056873_))))
                                        (if (gx#stx-null? _tl5604856880_)
                                            (___match6391863919_
                                             _e5599656950_
                                             _hd5599556954_
                                             _tl5599456957_
                                             _e5599956960_
                                             _hd5599856964_
                                             _tl5599756967_
                                             _e5600056970_
                                             _e5600356974_
                                             _hd5600256978_
                                             _tl5600156981_
                                             ___splice6379863799_
                                             _target5603956867_
                                             _tl5604156870_
                                             _e5605056873_
                                             _hd5604956877_
                                             _tl5604856880_)
                                            (if (gx#stx-null? _tl5600156981_)
                                                (___kont6380063801_
                                                 _hd5600256978_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598756201_))))))
                                    (if (gx#stx-null? _tl5600156981_)
                                        (___kont6380063801_ _hd5600256978_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_))))))
                            (if (gx#stx-null? _tl5600156981_)
                                (___kont6380063801_ _hd5600256978_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_)))))))
                (if (fx>= (gx#stx-length _tl5600156981_) '1)
                    (let ((___splice6379863799_
                           (gx#syntax-split-splice _tl5600156981_ '1)))
                      (let ((_tl5604156870_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379863799_ '1)))
                            (_target5603956867_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6379863799_ '0))))
                        (if (gx#stx-pair? _tl5604156870_)
                            (let ((_e5605056873_ (gx#syntax-e _tl5604156870_)))
                              (let ((_tl5604856880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5605056873_)))
                                    (_hd5604956877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5605056873_))))
                                (if (gx#stx-null? _tl5604856880_)
                                    (___match6391863919_
                                     _e5599656950_
                                     _hd5599556954_
                                     _tl5599456957_
                                     _e5599956960_
                                     _hd5599856964_
                                     _tl5599756967_
                                     _e5600056970_
                                     _e5600356974_
                                     _hd5600256978_
                                     _tl5600156981_
                                     ___splice6379863799_
                                     _target5603956867_
                                     _tl5604156870_
                                     _e5605056873_
                                     _hd5604956877_
                                     _tl5604856880_)
                                    (if (gx#stx-null? _tl5600156981_)
                                        (___kont6380063801_ _hd5600256978_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_))))))
                            (if (gx#stx-null? _tl5600156981_)
                                (___kont6380063801_ _hd5600256978_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_))))))
                    (if (gx#stx-null? _tl5600156981_)
                        (___kont6380063801_ _hd5600256978_)
                        (let () (declare (not safe)) (_g5598756201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5600156981_)
                                                        (___kont6380063801_
                                                         _hd5600256978_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5598756201_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5598756201_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5600056970_ '2))
                                            (if (gx#stx-pair? _tl5599756967_)
                                                (let ((_e5607756673_
                                                       (gx#syntax-e
                                                        _tl5599756967_)))
                                                  (let ((_tl5607556680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5607756673_)))
                                                        (_hd5607656677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5607756673_))))
                                                    (if (gx#stx-pair?
                                                         _tl5607556680_)
                                                        (let ((_e5608056683_
                                                               (gx#syntax-e
                                                                _tl5607556680_)))
                                                          (let ((_tl5607856690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5608056683_)))
                        (_hd5607956687_
                         (let () (declare (not safe)) (##car _e5608056683_))))
                    (if (gx#stx-pair? _hd5607956687_)
                        (let ((_e5608356693_ (gx#syntax-e _hd5607956687_)))
                          (let ((_tl5608156700_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5608356693_)))
                                (_hd5608256697_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5608356693_))))
                            (if (gx#stx-pair? _hd5608256697_)
                                (let ((_e5608656703_
                                       (gx#syntax-e _hd5608256697_)))
                                  (let ((_tl5608456710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5608656703_)))
                                        (_hd5608556707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5608656703_))))
                                    (if (gx#identifier? _hd5608556707_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64562_|
                                             _hd5608556707_)
                                            (if (gx#stx-pair? _tl5608456710_)
                                                (let ((_e5608956713_
                                                       (gx#syntax-e
                                                        _tl5608456710_)))
                                                  (let ((_tl5608756720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5608956713_)))
                                                        (_hd5608856717_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5608956713_))))
                                                    (if (gx#stx-null?
                                                         _tl5608756720_)
                                                        (if (gx#stx-pair?
                                                             _tl5608156700_)
                                                            (let ((_e5609256723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5608156700_)))
                      (let ((_tl5609056730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5609256723_)))
                            (_hd5609156727_
                             (let ()
                               (declare (not safe))
                               (##car _e5609256723_))))
                        (___kont6380263803_
                         _tl5607856690_
                         _tl5609056730_
                         _hd5609156727_
                         _hd5608856717_
                         _hd5607656677_
                         _hd5599556954_)))
                    (___kont6380463805_
                     _tl5607856690_
                     _tl5608156700_
                     _hd5608256697_
                     _hd5607656677_
                     _hd5599556954_))
                (___kont6380463805_
                 _tl5607856690_
                 _tl5608156700_
                 _hd5608256697_
                 _hd5607656677_
                 _hd5599556954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6380463805_
                                                 _tl5607856690_
                                                 _tl5608156700_
                                                 _hd5608256697_
                                                 _hd5607656677_
                                                 _hd5599556954_))
                                            (___kont6380463805_
                                             _tl5607856690_
                                             _tl5608156700_
                                             _hd5608256697_
                                             _hd5607656677_
                                             _hd5599556954_))
                                        (___kont6380463805_
                                         _tl5607856690_
                                         _tl5608156700_
                                         _hd5608256697_
                                         _hd5607656677_
                                         _hd5599556954_))))
                                (___kont6380463805_
                                 _tl5607856690_
                                 _tl5608156700_
                                 _hd5608256697_
                                 _hd5607656677_
                                 _hd5599556954_))))
                        (if (gx#stx-null? _hd5607956687_)
                            (___kont6380663807_
                             _tl5607856690_
                             _hd5607656677_
                             _hd5599556954_)
                            (let () (declare (not safe)) (_g5598756201_))))))
                (let () (declare (not safe)) (_g5598756201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598756201_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5600056970_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5599756967_)
                                                    (let ((_e5614456422_
                                                           (gx#syntax-e
                                                            _tl5599756967_)))
                                                      (let ((_tl5614256429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5614456422_)))
                    (_hd5614356426_
                     (let () (declare (not safe)) (##car _e5614456422_))))
                (if (gx#stx-pair? _tl5614256429_)
                    (let ((_e5614756432_ (gx#syntax-e _tl5614256429_)))
                      (let ((_tl5614556439_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5614756432_)))
                            (_hd5614656436_
                             (let ()
                               (declare (not safe))
                               (##car _e5614756432_))))
                        (if (gx#stx-pair? _hd5614656436_)
                            (let ((_e5615056442_ (gx#syntax-e _hd5614656436_)))
                              (let ((_tl5614856449_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5615056442_)))
                                    (_hd5614956446_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5615056442_))))
                                (___kont6380863809_
                                 _tl5614556439_
                                 _tl5614856449_
                                 _hd5614956446_
                                 _hd5614356426_
                                 _hd5599556954_)))
                            (if (gx#stx-pair/null? _hd5614356426_)
                                (let ((___splice6381263813_
                                       (gx#syntax-split-splice
                                        _hd5614356426_
                                        '0)))
                                  (let ((_tl5616956245_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6381263813_
                                            '1)))
                                        (_target5616756242_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6381263813_
                                            '0))))
                                    (if (gx#stx-null? _tl5616956245_)
                                        (___match6414064141_
                                         _e5599656950_
                                         _hd5599556954_
                                         _tl5599456957_
                                         _e5599956960_
                                         _hd5599856964_
                                         _tl5599756967_
                                         _e5600056970_
                                         _e5614456422_
                                         _hd5614356426_
                                         _tl5614256429_
                                         ___splice6381263813_
                                         _target5616756242_
                                         _tl5616956245_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5598756201_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_))))))
                    (if (gx#stx-pair/null? _hd5614356426_)
                        (let ((___splice6381263813_
                               (gx#syntax-split-splice _hd5614356426_ '0)))
                          (let ((_tl5616956245_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6381263813_ '1)))
                                (_target5616756242_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6381263813_ '0))))
                            (if (gx#stx-null? _tl5616956245_)
                                (___match6414064141_
                                 _e5599656950_
                                 _hd5599556954_
                                 _tl5599456957_
                                 _e5599956960_
                                 _hd5599856964_
                                 _tl5599756967_
                                 _e5600056970_
                                 _e5614456422_
                                 _hd5614356426_
                                 _tl5614256429_
                                 ___splice6381263813_
                                 _target5616756242_
                                 _tl5616956245_)
                                (let ()
                                  (declare (not safe))
                                  (_g5598756201_)))))
                        (let () (declare (not safe)) (_g5598756201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5598756201_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5598756201_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5598756201_)))))
                          (let () (declare (not safe)) (_g5598756201_)))))
                  (let () (declare (not safe)) (_g5598756201_))))))))))
