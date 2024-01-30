(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g8604_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g8605_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx4251_)
        (let* ((_g42554273_
                (lambda (_g42564269_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g42564269_)))
               (_g42544329_
                (lambda (_g42564277_)
                  (if (gx#stx-pair? _g42564277_)
                      (let ((_e42614280_ (gx#syntax-e _g42564277_)))
                        (let ((_hd42604284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42614280_)))
                              (_tl42594287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42614280_))))
                          (if (gx#stx-pair? _tl42594287_)
                              (let ((_e42644290_ (gx#syntax-e _tl42594287_)))
                                (let ((_hd42634294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42644290_)))
                                      (_tl42624297_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42644290_))))
                                  (if (gx#stx-pair? _tl42624297_)
                                      (let ((_e42674300_
                                             (gx#syntax-e _tl42624297_)))
                                        (let ((_hd42664304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e42674300_)))
                                              (_tl42654307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e42674300_))))
                                          (if (gx#stx-null? _tl42654307_)
                                              ((lambda (_L4310_ _L4312_)
                                                 (let ((__tmp8365
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8317
                                                        (let ((__tmp8356
                                                               (let ((__tmp8357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8364 (gx#datum->syntax '#f 'key))
                                    (__tmp8358
                                     (let ((__tmp8363
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp8359
                                            (let ((__tmp8360
                                                   (let ((__tmp8362
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp8361
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp8362
                                                           __tmp8361))))
                                              (declare (not safe))
                                              (cons __tmp8360 '()))))
                                       (declare (not safe))
                                       (cons __tmp8363 __tmp8359))))
                                (declare (not safe))
                                (cons __tmp8364 __tmp8358))))
                         (declare (not safe))
                         (cons _L4312_ __tmp8357)))
                      (__tmp8318
                       (let ((__tmp8319
                              (let ((__tmp8355 (gx#datum->syntax '#f 'cond))
                                    (__tmp8320
                                     (let ((__tmp8337
                                            (let ((__tmp8342
                                                   (let ((__tmp8354
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp8343
                                                          (let ((__tmp8350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8353 (gx#datum->syntax '#f 'pair?))
                               (__tmp8351
                                (let ((__tmp8352 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp8352 '()))))
                           (declare (not safe))
                           (cons __tmp8353 __tmp8351)))
                        (__tmp8344
                         (let ((__tmp8345
                                (let ((__tmp8346
                                       (let ((__tmp8349
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp8347
                                              (let ((__tmp8348
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp8348 '()))))
                                         (declare (not safe))
                                         (cons __tmp8349 __tmp8347))))
                                  (declare (not safe))
                                  (cons _L4310_ __tmp8346))))
                           (declare (not safe))
                           (cons __tmp8345 '()))))
                    (declare (not safe))
                    (cons __tmp8350 __tmp8344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8354
                                                           __tmp8343)))
                                                  (__tmp8338
                                                   (let ((__tmp8341
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp8339
                                                          (let ((__tmp8340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp8340 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8341
                                                           __tmp8339))))
                                              (declare (not safe))
                                              (cons __tmp8342 __tmp8338)))
                                           (__tmp8321
                                            (let ((__tmp8327
                                                   (let ((__tmp8333
                                                          (let ((__tmp8336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp8334
                         (let ((__tmp8335 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp8335 '()))))
                    (declare (not safe))
                    (cons __tmp8336 __tmp8334)))
                 (__tmp8328
                  (let ((__tmp8329
                         (let ((__tmp8332 (gx#datum->syntax '#f 'default))
                               (__tmp8330
                                (let ((__tmp8331 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp8331 '()))))
                           (declare (not safe))
                           (cons __tmp8332 __tmp8330))))
                    (declare (not safe))
                    (cons __tmp8329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8333
                                                           __tmp8328)))
                                                  (__tmp8322
                                                   (let ((__tmp8323
                                                          (let ((__tmp8326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp8324
                         (let ((__tmp8325 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp8325 '()))))
                    (declare (not safe))
                    (cons __tmp8326 __tmp8324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8323 '()))))
                                              (declare (not safe))
                                              (cons __tmp8327 __tmp8322))))
                                       (declare (not safe))
                                       (cons __tmp8337 __tmp8321))))
                                (declare (not safe))
                                (cons __tmp8355 __tmp8320))))
                         (declare (not safe))
                         (cons __tmp8319 '()))))
                  (declare (not safe))
                  (cons __tmp8356 __tmp8318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8365 __tmp8317)))
                                               _hd42664304_
                                               _hd42634294_)
                                              (_g42554273_ _g42564277_))))
                                      (_g42554273_ _g42564277_))))
                              (_g42554273_ _g42564277_))))
                      (_g42554273_ _g42564277_)))))
          (_g42544329_ _$stx4251_))))
    (define |[:0:]#defpget|
      (lambda (_$stx4333_)
        (let* ((_g43374355_
                (lambda (_g43384351_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g43384351_)))
               (_g43364410_
                (lambda (_g43384359_)
                  (if (gx#stx-pair? _g43384359_)
                      (let ((_e43434362_ (gx#syntax-e _g43384359_)))
                        (let ((_hd43424366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43434362_)))
                              (_tl43414369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43434362_))))
                          (if (gx#stx-pair? _tl43414369_)
                              (let ((_e43464372_ (gx#syntax-e _tl43414369_)))
                                (let ((_hd43454376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43464372_)))
                                      (_tl43444379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43464372_))))
                                  (if (gx#stx-pair? _tl43444379_)
                                      (let ((_e43494382_
                                             (gx#syntax-e _tl43444379_)))
                                        (let ((_hd43484386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e43494382_)))
                                              (_tl43474389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e43494382_))))
                                          (if (gx#stx-null? _tl43474389_)
                                              ((lambda (_L4392_ _L4394_)
                                                 (let ((__tmp8435
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8366
                                                        (let ((__tmp8426
                                                               (let ((__tmp8427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8434 (gx#datum->syntax '#f 'key))
                                    (__tmp8428
                                     (let ((__tmp8433
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp8429
                                            (let ((__tmp8430
                                                   (let ((__tmp8432
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp8431
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp8432
                                                           __tmp8431))))
                                              (declare (not safe))
                                              (cons __tmp8430 '()))))
                                       (declare (not safe))
                                       (cons __tmp8433 __tmp8429))))
                                (declare (not safe))
                                (cons __tmp8434 __tmp8428))))
                         (declare (not safe))
                         (cons _L4394_ __tmp8427)))
                      (__tmp8367
                       (let ((__tmp8368
                              (let ((__tmp8425 (gx#datum->syntax '#f 'let))
                                    (__tmp8369
                                     (let ((__tmp8424
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp8370
                                            (let ((__tmp8419
                                                   (let ((__tmp8420
                                                          (let ((__tmp8423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp8421
                         (let ((__tmp8422 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp8422 '()))))
                    (declare (not safe))
                    (cons __tmp8423 __tmp8421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8420 '())))
                                                  (__tmp8371
                                                   (let ((__tmp8372
                                                          (let ((__tmp8418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp8373
                         (let ((__tmp8417 (gx#datum->syntax '#f 'rest))
                               (__tmp8374
                                (let ((__tmp8393
                                       (let ((__tmp8410
                                              (let ((__tmp8416
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp8411
                                                     (let ((__tmp8415
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp8412
                                                            (let ((__tmp8414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp8413 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp8414 __tmp8413))))
               (declare (not safe))
               (cons __tmp8415 __tmp8412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8416 __tmp8411)))
                                             (__tmp8394
                                              (let ((__tmp8395
                                                     (let ((__tmp8409
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp8396
                                                            (let ((__tmp8404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp8405
                                  (let ((__tmp8408 (gx#datum->syntax '#f 'k))
                                        (__tmp8406
                                         (let ((__tmp8407
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp8407 '()))))
                                    (declare (not safe))
                                    (cons __tmp8408 __tmp8406))))
                             (declare (not safe))
                             (cons _L4392_ __tmp8405)))
                          (__tmp8397
                           (let ((__tmp8403 (gx#datum->syntax '#f 'v))
                                 (__tmp8398
                                  (let ((__tmp8399
                                         (let ((__tmp8402
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp8400
                                                (let ((__tmp8401
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp8401 '()))))
                                           (declare (not safe))
                                           (cons __tmp8402 __tmp8400))))
                                    (declare (not safe))
                                    (cons __tmp8399 '()))))
                             (declare (not safe))
                             (cons __tmp8403 __tmp8398))))
                      (declare (not safe))
                      (cons __tmp8404 __tmp8397))))
               (declare (not safe))
               (cons __tmp8409 __tmp8396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8395 '()))))
                                         (declare (not safe))
                                         (cons __tmp8410 __tmp8394)))
                                      (__tmp8375
                                       (let ((__tmp8376
                                              (let ((__tmp8392
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp8377
                                                     (let ((__tmp8378
                                                            (let ((__tmp8391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp8379
                           (let ((__tmp8387
                                  (let ((__tmp8390
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp8388
                                         (let ((__tmp8389
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp8389 '()))))
                                    (declare (not safe))
                                    (cons __tmp8390 __tmp8388)))
                                 (__tmp8380
                                  (let ((__tmp8383
                                         (let ((__tmp8386
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp8384
                                                (let ((__tmp8385
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp8385 '()))))
                                           (declare (not safe))
                                           (cons __tmp8386 __tmp8384)))
                                        (__tmp8381
                                         (let ((__tmp8382
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp8382 '()))))
                                    (declare (not safe))
                                    (cons __tmp8383 __tmp8381))))
                             (declare (not safe))
                             (cons __tmp8387 __tmp8380))))
                      (declare (not safe))
                      (cons __tmp8391 __tmp8379))))
               (declare (not safe))
               (cons __tmp8378 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8392 __tmp8377))))
                                         (declare (not safe))
                                         (cons __tmp8376 '()))))
                                  (declare (not safe))
                                  (cons __tmp8393 __tmp8375))))
                           (declare (not safe))
                           (cons __tmp8417 __tmp8374))))
                    (declare (not safe))
                    (cons __tmp8418 __tmp8373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8372 '()))))
                                              (declare (not safe))
                                              (cons __tmp8419 __tmp8371))))
                                       (declare (not safe))
                                       (cons __tmp8424 __tmp8370))))
                                (declare (not safe))
                                (cons __tmp8425 __tmp8369))))
                         (declare (not safe))
                         (cons __tmp8368 '()))))
                  (declare (not safe))
                  (cons __tmp8426 __tmp8367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8435 __tmp8366)))
                                               _hd43484386_
                                               _hd43454376_)
                                              (_g43374355_ _g43384359_))))
                                      (_g43374355_ _g43384359_))))
                              (_g43374355_ _g43384359_))))
                      (_g43374355_ _g43384359_)))))
          (_g43364410_ _$stx4333_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx4414_)
        (let* ((_g44184436_
                (lambda (_g44194432_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g44194432_)))
               (_g44174491_
                (lambda (_g44194440_)
                  (if (gx#stx-pair? _g44194440_)
                      (let ((_e44244443_ (gx#syntax-e _g44194440_)))
                        (let ((_hd44234447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44244443_)))
                              (_tl44224450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44244443_))))
                          (if (gx#stx-pair? _tl44224450_)
                              (let ((_e44274453_ (gx#syntax-e _tl44224450_)))
                                (let ((_hd44264457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44274453_)))
                                      (_tl44254460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44274453_))))
                                  (if (gx#stx-pair? _tl44254460_)
                                      (let ((_e44304463_
                                             (gx#syntax-e _tl44254460_)))
                                        (let ((_hd44294467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44304463_)))
                                              (_tl44284470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44304463_))))
                                          (if (gx#stx-null? _tl44284470_)
                                              ((lambda (_L4473_ _L4475_)
                                                 (let ((__tmp8506
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp8436
                                                        (let ((__tmp8501
                                                               (let ((__tmp8502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp8505 (gx#datum->syntax '#f 'el))
                                    (__tmp8503
                                     (let ((__tmp8504
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp8504 '()))))
                                (declare (not safe))
                                (cons __tmp8505 __tmp8503))))
                         (declare (not safe))
                         (cons _L4475_ __tmp8502)))
                      (__tmp8437
                       (let ((__tmp8438
                              (let ((__tmp8500 (gx#datum->syntax '#f 'let))
                                    (__tmp8439
                                     (let ((__tmp8499
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp8440
                                            (let ((__tmp8488
                                                   (let ((__tmp8495
                                                          (let ((__tmp8498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp8496
                         (let ((__tmp8497 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp8497 '()))))
                    (declare (not safe))
                    (cons __tmp8498 __tmp8496)))
                 (__tmp8489
                  (let ((__tmp8490
                         (let ((__tmp8494 (gx#datum->syntax '#f 'r))
                               (__tmp8491
                                (let ((__tmp8492
                                       (let ((__tmp8493
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp8493 '()))))
                                  (declare (not safe))
                                  (cons __tmp8492 '()))))
                           (declare (not safe))
                           (cons __tmp8494 __tmp8491))))
                    (declare (not safe))
                    (cons __tmp8490 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8495
                                                           __tmp8489)))
                                                  (__tmp8441
                                                   (let ((__tmp8442
                                                          (let ((__tmp8487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp8443
                         (let ((__tmp8486 (gx#datum->syntax '#f 'rest))
                               (__tmp8444
                                (let ((__tmp8450
                                       (let ((__tmp8481
                                              (let ((__tmp8485
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp8482
                                                     (let ((__tmp8484
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp8483
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp8484
                                                             __tmp8483))))
                                                (declare (not safe))
                                                (cons __tmp8485 __tmp8482)))
                                             (__tmp8451
                                              (let ((__tmp8452
                                                     (let ((__tmp8480
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp8453
                                                            (let ((__tmp8475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp8476
                                  (let ((__tmp8479 (gx#datum->syntax '#f 'el))
                                        (__tmp8477
                                         (let ((__tmp8478
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp8478 '()))))
                                    (declare (not safe))
                                    (cons __tmp8479 __tmp8477))))
                             (declare (not safe))
                             (cons _L4473_ __tmp8476)))
                          (__tmp8454
                           (let ((__tmp8467
                                  (let ((__tmp8474
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp8468
                                         (let ((__tmp8473
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp8469
                                                (let ((__tmp8472
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp8470
                                                       (let ((__tmp8471
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp8471
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp8472 __tmp8470))))
                                           (declare (not safe))
                                           (cons __tmp8473 __tmp8469))))
                                    (declare (not safe))
                                    (cons __tmp8474 __tmp8468)))
                                 (__tmp8455
                                  (let ((__tmp8456
                                         (let ((__tmp8466
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp8457
                                                (let ((__tmp8465
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp8458
                                                       (let ((__tmp8459
                                                              (let ((__tmp8464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp8460
                             (let ((__tmp8463 (gx#datum->syntax '#f 'hd))
                                   (__tmp8461
                                    (let ((__tmp8462
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp8462 '()))))
                               (declare (not safe))
                               (cons __tmp8463 __tmp8461))))
                        (declare (not safe))
                        (cons __tmp8464 __tmp8460))))
                 (declare (not safe))
                 (cons __tmp8459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp8465 __tmp8458))))
                                           (declare (not safe))
                                           (cons __tmp8466 __tmp8457))))
                                    (declare (not safe))
                                    (cons __tmp8456 '()))))
                             (declare (not safe))
                             (cons __tmp8467 __tmp8455))))
                      (declare (not safe))
                      (cons __tmp8475 __tmp8454))))
               (declare (not safe))
               (cons __tmp8480 __tmp8453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8452 '()))))
                                         (declare (not safe))
                                         (cons __tmp8481 __tmp8451)))
                                      (__tmp8445
                                       (let ((__tmp8446
                                              (let ((__tmp8449
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp8447
                                                     (let ((__tmp8448
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp8448 '()))))
                                                (declare (not safe))
                                                (cons __tmp8449 __tmp8447))))
                                         (declare (not safe))
                                         (cons __tmp8446 '()))))
                                  (declare (not safe))
                                  (cons __tmp8450 __tmp8445))))
                           (declare (not safe))
                           (cons __tmp8486 __tmp8444))))
                    (declare (not safe))
                    (cons __tmp8487 __tmp8443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8442 '()))))
                                              (declare (not safe))
                                              (cons __tmp8488 __tmp8441))))
                                       (declare (not safe))
                                       (cons __tmp8499 __tmp8440))))
                                (declare (not safe))
                                (cons __tmp8500 __tmp8439))))
                         (declare (not safe))
                         (cons __tmp8438 '()))))
                  (declare (not safe))
                  (cons __tmp8501 __tmp8437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8506 __tmp8436)))
                                               _hd44294467_
                                               _hd44264457_)
                                              (_g44184436_ _g44194440_))))
                                      (_g44184436_ _g44194440_))))
                              (_g44184436_ _g44194440_))))
                      (_g44184436_ _g44194440_)))))
          (_g44174491_ _$stx4414_))))
    (define |[:0:]#DBG|
      (lambda (_$stx4495_)
        (let* ((_g44994510_
                (lambda (_g45004506_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g45004506_)))
               (_g44984539_
                (lambda (_g45004514_)
                  (if (gx#stx-pair? _g45004514_)
                      (let ((_e45044517_ (gx#syntax-e _g45004514_)))
                        (let ((_hd45034521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45044517_)))
                              (_tl45024524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45044517_))))
                          ((lambda (_L4527_)
                             (let ((__tmp8508 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp8507
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L4527_))))
                               (declare (not safe))
                               (cons __tmp8508 __tmp8507)))
                           _tl45024524_)))
                      (_g44994510_ _g45004514_)))))
          (_g44984539_ _$stx4495_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx4543_)
        (let* ((___stx78327833_ _$stx4543_)
               (_g45544768_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx78327833_))))
          (let ((___kont78357836_
                 (lambda (_L5621_ _L5623_ _L5624_ _L5625_ _L5626_)
                   (let ((__tmp8509
                          (let ((__tmp8510
                                 (let ((__tmp8511
                                        (let ((__tmp8515
                                               (let ((__tmp8516
                                                      (lambda (_g56565659_
                                                               _g56575662_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g56565659_
                                                                _g56575662_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp8516
                                                         '()
                                                         _L5624_)))
                                              (__tmp8512
                                               (let ((__tmp8513
                                                      (let ((__tmp8514
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5621_ '()))))
                (declare (not safe))
                (cons _L5623_ __tmp8514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5625_ __tmp8513))))
                                          (declare (not safe))
                                          (cons __tmp8515 __tmp8512))))
                                   (declare (not safe))
                                   (cons '() __tmp8511))))
                            (declare (not safe))
                            (cons '2 __tmp8510))))
                     (declare (not safe))
                     (cons _L5626_ __tmp8509))))
                (___kont78397840_
                 (lambda (_L5474_ _L5476_ _L5477_ _L5478_)
                   (let ((__tmp8517
                          (let ((__tmp8518
                                 (let ((__tmp8519
                                        (let ((__tmp8523
                                               (let ((__tmp8524
                                                      (lambda (_g55015504_
                                                               _g55025507_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g55015504_
                                                                _g55025507_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp8524
                                                         '()
                                                         _L5476_)))
                                              (__tmp8520
                                               (let ((__tmp8521
                                                      (let ((__tmp8522
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L5474_ '()))))
                (declare (not safe))
                (cons _L5474_ __tmp8522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5477_ __tmp8521))))
                                          (declare (not safe))
                                          (cons __tmp8523 __tmp8520))))
                                   (declare (not safe))
                                   (cons '() __tmp8519))))
                            (declare (not safe))
                            (cons '2 __tmp8518))))
                     (declare (not safe))
                     (cons _L5478_ __tmp8517))))
                (___kont78437844_
                 (lambda (_L5377_)
                   (let ((__tmp8536 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp8525
                          (let ((__tmp8526
                                 (let ((__tmp8533
                                        (let ((__tmp8535
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp8534
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp8535 __tmp8534)))
                                       (__tmp8527
                                        (let ((__tmp8530
                                               (let ((__tmp8532
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp8531
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp8532 __tmp8531)))
                                              (__tmp8528
                                               (let ((__tmp8529
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp8529))))
                                          (declare (not safe))
                                          (cons __tmp8530 __tmp8528))))
                                   (declare (not safe))
                                   (cons __tmp8533 __tmp8527))))
                            (declare (not safe))
                            (cons _L5377_ __tmp8526))))
                     (declare (not safe))
                     (cons __tmp8536 __tmp8525))))
                (___kont78457846_
                 (lambda (_L5300_ _L5302_ _L5303_ _L5304_ _L5305_ _L5306_)
                   (let ((__tmp8537
                          (let ((__tmp8538
                                 (let ((__tmp8540
                                        (let ((__tmp8541
                                               (let ((__tmp8542
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5303_ '()))))
                                                 (declare (not safe))
                                                 (cons _L5304_ __tmp8542))))
                                          (declare (not safe))
                                          (cons __tmp8541 _L5305_)))
                                       (__tmp8539
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5302_ _L5300_))))
                                   (declare (not safe))
                                   (cons __tmp8540 __tmp8539))))
                            (declare (not safe))
                            (cons '2 __tmp8538))))
                     (declare (not safe))
                     (cons _L5306_ __tmp8537))))
                (___kont78477848_
                 (lambda (_L5181_ _L5183_ _L5184_ _L5185_ _L5186_)
                   (let ((__tmp8543
                          (let ((__tmp8544
                                 (let ((__tmp8546
                                        (let ((__tmp8547
                                               (let ((__tmp8548
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5184_ '()))))
                                                 (declare (not safe))
                                                 (cons _L5184_ __tmp8548))))
                                          (declare (not safe))
                                          (cons __tmp8547 _L5185_)))
                                       (__tmp8545
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5183_ _L5181_))))
                                   (declare (not safe))
                                   (cons __tmp8546 __tmp8545))))
                            (declare (not safe))
                            (cons '2 __tmp8544))))
                     (declare (not safe))
                     (cons _L5186_ __tmp8543))))
                (___kont78497850_
                 (lambda (_L5098_ _L5100_ _L5101_)
                   (let ((__tmp8549
                          (let ((__tmp8550
                                 (let ((__tmp8551
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5100_ _L5098_))))
                                   (declare (not safe))
                                   (cons '() __tmp8551))))
                            (declare (not safe))
                            (cons '3 __tmp8550))))
                     (declare (not safe))
                     (cons _L5101_ __tmp8549))))
                (___kont78517852_
                 (lambda (_L5019_ _L5021_ _L5022_ _L5023_ _L5024_)
                   (let ((__tmp8552
                          (let ((__tmp8553
                                 (let ((__tmp8555
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5022_ _L5023_)))
                                       (__tmp8554
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5021_ _L5019_))))
                                   (declare (not safe))
                                   (cons __tmp8555 __tmp8554))))
                            (declare (not safe))
                            (cons '3 __tmp8553))))
                     (declare (not safe))
                     (cons _L5024_ __tmp8552))))
                (___kont78537854_
                 (lambda (_L4903_ _L4905_ _L4906_ _L4907_ _L4908_ _L4909_)
                   (let ((__tmp8603 (gx#datum->syntax '#f 'let))
                         (__tmp8556
                          (let ((__tmp8591
                                 (let ((__tmp8600
                                        (let ((__tmp8602
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp8601
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L4906_ '()))))
                                          (declare (not safe))
                                          (cons __tmp8602 __tmp8601)))
                                       (__tmp8592
                                        (let ((__tmp8593
                                               (let ((__tmp8599
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp8594
                                                      (let ((__tmp8595
                                                             (let ((__tmp8598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp8596
                            (let ((__tmp8597
                                   (let ()
                                     (declare (not safe))
                                     (cons _L4903_ '()))))
                              (declare (not safe))
                              (cons '() __tmp8597))))
                       (declare (not safe))
                       (cons __tmp8598 __tmp8596))))
                (declare (not safe))
                (cons __tmp8595 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8599 __tmp8594))))
                                          (declare (not safe))
                                          (cons __tmp8593 '()))))
                                   (declare (not safe))
                                   (cons __tmp8600 __tmp8592)))
                                (__tmp8557
                                 (let ((__tmp8558
                                        (let ((__tmp8590
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp8559
                                               (let ((__tmp8589
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp8560
                                                      (let ((__tmp8564
                                                             (let ((__tmp8588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp8565
                            (let ((__tmp8587 (gx#datum->syntax '#f 'tagval))
                                  (__tmp8566
                                   (let ((__tmp8582
                                          (let ((__tmp8586
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp8583
                                                 (let ((__tmp8584
                                                        (let ((__tmp8585
                                                               (lambda (_g49434946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g49444949_)
                         (let ()
                           (declare (not safe))
                           (cons _g49434946_ _g49444949_)))))
                  (declare (not safe))
                  (foldr1 __tmp8585 '() _L4908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8584 '()))))
                                            (declare (not safe))
                                            (cons __tmp8586 __tmp8583)))
                                         (__tmp8567
                                          (let ((__tmp8574
                                                 (let ((__tmp8581
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp8575
                                                        (let ((__tmp8576
                                                               (lambda (_g49414952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g49424955_)
                         (let ((__tmp8577
                                (let ((__tmp8580
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp8578
                                       (let ((__tmp8579
                                              (let ()
                                                (declare (not safe))
                                                (cons _g49414952_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp8579))))
                                  (declare (not safe))
                                  (cons __tmp8580 __tmp8578))))
                           (declare (not safe))
                           (cons __tmp8577 _g49424955_)))))
                  (declare (not safe))
                  (foldr1 __tmp8576 '() _L4907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8581 __tmp8575)))
                                                (__tmp8568
                                                 (let ((__tmp8571
                                                        (let ((__tmp8573
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp8572
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L4905_ '()))))
                  (declare (not safe))
                  (cons __tmp8573 __tmp8572)))
               (__tmp8569
                (let ((__tmp8570 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp8570 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8571
                                                         __tmp8569))))
                                            (declare (not safe))
                                            (cons __tmp8574 __tmp8568))))
                                     (declare (not safe))
                                     (cons __tmp8582 __tmp8567))))
                              (declare (not safe))
                              (cons __tmp8587 __tmp8566))))
                       (declare (not safe))
                       (cons __tmp8588 __tmp8565)))
                    (__tmp8561
                     (let ((__tmp8562
                            (let ((__tmp8563 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp8563 '()))))
                       (declare (not safe))
                       (cons __tmp8562 '()))))
                (declare (not safe))
                (cons __tmp8564 __tmp8561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8589 __tmp8560))))
                                          (declare (not safe))
                                          (cons __tmp8590 __tmp8559))))
                                   (declare (not safe))
                                   (cons __tmp8558 '()))))
                            (declare (not safe))
                            (cons __tmp8591 __tmp8557))))
                     (declare (not safe))
                     (cons __tmp8603 __tmp8556)))))
            (let* ((___match81838184_
                    (lambda (_e47264775_
                             _hd47254779_
                             _tl47244782_
                             _e47294785_
                             _hd47284789_
                             _tl47274792_
                             _e47304795_
                             _e47334799_
                             _hd47324803_
                             _tl47314806_
                             ___splice78557856_
                             _target47344809_
                             _tl47364812_)
                      (letrec ((_loop47374815_
                                (lambda (_hd47354819_
                                         _exprs47414822_
                                         _names47424824_)
                                  (if (gx#stx-pair? _hd47354819_)
                                      (let ((_e47384827_
                                             (gx#syntax-e _hd47354819_)))
                                        (let ((_lp-tl47404834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e47384827_)))
                                              (_lp-hd47394831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e47384827_))))
                                          (if (gx#stx-pair? _lp-hd47394831_)
                                              (let ((_e47474837_
                                                     (gx#syntax-e
                                                      _lp-hd47394831_)))
                                                (let ((_tl47454844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e47474837_)))
                                                      (_hd47464841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e47474837_))))
                                                  (if (gx#stx-pair?
                                                       _tl47454844_)
                                                      (let ((_e47504847_
                                                             (gx#syntax-e
                                                              _tl47454844_)))
                                                        (let ((_tl47484854_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e47504847_)))
                      (_hd47494851_
                       (let () (declare (not safe)) (##car _e47504847_))))
                  (if (gx#stx-null? _tl47484854_)
                      (_loop47374815_
                       _lp-tl47404834_
                       (let ()
                         (declare (not safe))
                         (cons _hd47494851_ _exprs47414822_))
                       (let ()
                         (declare (not safe))
                         (cons _hd47464841_ _names47424824_)))
                      (let () (declare (not safe)) (_g45544768_)))))
              (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g45544768_)))))
                                      (let ((_names47444860_
                                             (reverse _names47424824_))
                                            (_exprs47434857_
                                             (reverse _exprs47414822_)))
                                        (if (gx#stx-pair? _tl47314806_)
                                            (let ((_e47534863_
                                                   (gx#syntax-e _tl47314806_)))
                                              (let ((_tl47514870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e47534863_)))
                                                    (_hd47524867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e47534863_))))
                                                (if (gx#stx-null? _hd47524867_)
                                                    (if (gx#stx-pair?
                                                         _tl47514870_)
                                                        (let ((_e47564873_
                                                               (gx#syntax-e
                                                                _tl47514870_)))
                                                          (let ((_tl47544880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e47564873_)))
                        (_hd47554877_
                         (let () (declare (not safe)) (##car _e47564873_))))
                    (if (gx#stx-pair? _tl47544880_)
                        (let ((_e47594883_ (gx#syntax-e _tl47544880_)))
                          (let ((_tl47574890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e47594883_)))
                                (_hd47584887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e47594883_))))
                            (if (gx#stx-pair? _tl47574890_)
                                (let ((_e47624893_ (gx#syntax-e _tl47574890_)))
                                  (let ((_tl47604900_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e47624893_)))
                                        (_hd47614897_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e47624893_))))
                                    (if (gx#stx-null? _tl47604900_)
                                        (___kont78537854_
                                         _hd47614897_
                                         _hd47584887_
                                         _hd47554877_
                                         _exprs47434857_
                                         _names47444860_
                                         _hd47254779_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))
                                (let () (declare (not safe)) (_g45544768_)))))
                        (let () (declare (not safe)) (_g45544768_)))))
                (let () (declare (not safe)) (_g45544768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))))
                        (_loop47374815_ _target47344809_ '() '()))))
                   (___match79617962_
                    (lambda (_e45985400_
                             _hd45975404_
                             _tl45965407_
                             _e46015410_
                             _hd46005414_
                             _tl45995417_
                             _e46025420_
                             _e46055424_
                             _hd46045428_
                             _tl46035431_
                             ___splice78417842_
                             _target46065434_
                             _tl46085437_
                             _e46175440_
                             _hd46165444_
                             _tl46155447_)
                      (letrec ((_loop46095450_
                                (lambda (_hd46075454_ _exprs46135457_)
                                  (if (gx#stx-pair? _hd46075454_)
                                      (let ((_e46105460_
                                             (gx#syntax-e _hd46075454_)))
                                        (let ((_lp-tl46125467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e46105460_)))
                                              (_lp-hd46115464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e46105460_))))
                                          (_loop46095450_
                                           _lp-tl46125467_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd46115464_
                                                   _exprs46135457_)))))
                                      (let ((_exprs46145470_
                                             (reverse _exprs46135457_)))
                                        (___kont78397840_
                                         _hd46165444_
                                         _exprs46145470_
                                         _hd46045428_
                                         _hd45975404_))))))
                        (_loop46095450_ _target46065434_ '()))))
                   (___match79217922_
                    (lambda (_e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice78377838_
                             _target45715551_
                             _tl45735554_
                             _e45825557_
                             _hd45815561_
                             _tl45805564_
                             _e45855567_
                             _hd45845571_
                             _tl45835574_
                             _e45885577_
                             _hd45875581_
                             _tl45865584_
                             _e45915587_
                             _hd45905591_
                             _tl45895594_)
                      (letrec ((_loop45745597_
                                (lambda (_hd45725601_ _exprs45785604_)
                                  (if (gx#stx-pair? _hd45725601_)
                                      (let ((_e45755607_
                                             (gx#syntax-e _hd45725601_)))
                                        (let ((_lp-tl45775614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45755607_)))
                                              (_lp-hd45765611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45755607_))))
                                          (_loop45745597_
                                           _lp-tl45775614_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd45765611_
                                                   _exprs45785604_)))))
                                      (let ((_exprs45795617_
                                             (reverse _exprs45785604_)))
                                        (___kont78357836_
                                         _hd45905591_
                                         _hd45875581_
                                         _exprs45795617_
                                         _hd45695545_
                                         _hd45625521_))))))
                        (_loop45745597_ _target45715551_ '())))))
              (if (gx#stx-pair? ___stx78327833_)
                  (let ((_e45635517_ (gx#syntax-e ___stx78327833_)))
                    (let ((_tl45615524_
                           (let () (declare (not safe)) (##cdr _e45635517_)))
                          (_hd45625521_
                           (let () (declare (not safe)) (##car _e45635517_))))
                      (if (gx#stx-pair? _tl45615524_)
                          (let ((_e45665527_ (gx#syntax-e _tl45615524_)))
                            (let ((_tl45645534_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e45665527_)))
                                  (_hd45655531_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e45665527_))))
                              (if (gx#stx-datum? _hd45655531_)
                                  (let ((_e45675537_ (gx#stx-e _hd45655531_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e45675537_ '1))
                                        (if (gx#stx-pair? _tl45645534_)
                                            (let ((_e45705541_
                                                   (gx#syntax-e _tl45645534_)))
                                              (let ((_tl45685548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e45705541_)))
                                                    (_hd45695545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e45705541_))))
                                                (if (gx#stx-pair/null?
                                                     _tl45685548_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl45685548_)
                                                              '2)
                                                        (let ((___splice78377838_
                                                               (gx#syntax-split-splice
                                                                _tl45685548_
                                                                '2)))
                                                          (let ((_tl45735554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice78377838_ '1)))
                        (_target45715551_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice78377838_ '0))))
                    (if (gx#stx-pair? _tl45735554_)
                        (let ((_e45825557_ (gx#syntax-e _tl45735554_)))
                          (let ((_tl45805564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e45825557_)))
                                (_hd45815561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e45825557_))))
                            (if (gx#stx-pair? _hd45815561_)
                                (let ((_e45855567_ (gx#syntax-e _hd45815561_)))
                                  (let ((_tl45835574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e45855567_)))
                                        (_hd45845571_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e45855567_))))
                                    (if (gx#identifier? _hd45845571_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g8605_|
                                             _hd45845571_)
                                            (if (gx#stx-pair? _tl45835574_)
                                                (let ((_e45885577_
                                                       (gx#syntax-e
                                                        _tl45835574_)))
                                                  (let ((_tl45865584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e45885577_)))
                                                        (_hd45875581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e45885577_))))
                                                    (if (gx#stx-null?
                                                         _tl45865584_)
                                                        (if (gx#stx-pair?
                                                             _tl45805564_)
                                                            (let ((_e45915587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl45805564_)))
                      (let ((_tl45895594_
                             (let () (declare (not safe)) (##cdr _e45915587_)))
                            (_hd45905591_
                             (let ()
                               (declare (not safe))
                               (##car _e45915587_))))
                        (if (gx#stx-null? _tl45895594_)
                            (___match79217922_
                             _e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice78377838_
                             _target45715551_
                             _tl45735554_
                             _e45825557_
                             _hd45815561_
                             _tl45805564_
                             _e45855567_
                             _hd45845571_
                             _tl45835574_
                             _e45885577_
                             _hd45875581_
                             _tl45865584_
                             _e45915587_
                             _hd45905591_
                             _tl45895594_)
                            (if (fx>= (gx#stx-length _tl45685548_) '1)
                                (let ((___splice78417842_
                                       (gx#syntax-split-splice
                                        _tl45685548_
                                        '1)))
                                  (let ((_tl46085437_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice78417842_
                                            '1)))
                                        (_target46065434_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice78417842_
                                            '0))))
                                    (if (gx#stx-pair? _tl46085437_)
                                        (let ((_e46175440_
                                               (gx#syntax-e _tl46085437_)))
                                          (let ((_tl46155447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e46175440_)))
                                                (_hd46165444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e46175440_))))
                                            (if (gx#stx-null? _tl46155447_)
                                                (___match79617962_
                                                 _e45635517_
                                                 _hd45625521_
                                                 _tl45615524_
                                                 _e45665527_
                                                 _hd45655531_
                                                 _tl45645534_
                                                 _e45675537_
                                                 _e45705541_
                                                 _hd45695545_
                                                 _tl45685548_
                                                 ___splice78417842_
                                                 _target46065434_
                                                 _tl46085437_
                                                 _e46175440_
                                                 _hd46165444_
                                                 _tl46155447_)
                                                (if (gx#stx-null? _tl45685548_)
                                                    (___kont78437844_
                                                     _hd45695545_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_))))))
                                        (if (gx#stx-null? _tl45685548_)
                                            (___kont78437844_ _hd45695545_)
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))
                                (if (gx#stx-null? _tl45685548_)
                                    (___kont78437844_ _hd45695545_)
                                    (let ()
                                      (declare (not safe))
                                      (_g45544768_)))))))
                    (if (fx>= (gx#stx-length _tl45685548_) '1)
                        (let ((___splice78417842_
                               (gx#syntax-split-splice _tl45685548_ '1)))
                          (let ((_tl46085437_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice78417842_ '1)))
                                (_target46065434_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice78417842_ '0))))
                            (if (gx#stx-pair? _tl46085437_)
                                (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                                  (let ((_tl46155447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e46175440_)))
                                        (_hd46165444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e46175440_))))
                                    (if (gx#stx-null? _tl46155447_)
                                        (___match79617962_
                                         _e45635517_
                                         _hd45625521_
                                         _tl45615524_
                                         _e45665527_
                                         _hd45655531_
                                         _tl45645534_
                                         _e45675537_
                                         _e45705541_
                                         _hd45695545_
                                         _tl45685548_
                                         ___splice78417842_
                                         _target46065434_
                                         _tl46085437_
                                         _e46175440_
                                         _hd46165444_
                                         _tl46155447_)
                                        (if (gx#stx-null? _tl45685548_)
                                            (___kont78437844_ _hd45695545_)
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_))))))
                                (if (gx#stx-null? _tl45685548_)
                                    (___kont78437844_ _hd45695545_)
                                    (let ()
                                      (declare (not safe))
                                      (_g45544768_))))))
                        (if (gx#stx-null? _tl45685548_)
                            (___kont78437844_ _hd45695545_)
                            (let () (declare (not safe)) (_g45544768_)))))
                (if (fx>= (gx#stx-length _tl45685548_) '1)
                    (let ((___splice78417842_
                           (gx#syntax-split-splice _tl45685548_ '1)))
                      (let ((_tl46085437_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice78417842_ '1)))
                            (_target46065434_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice78417842_ '0))))
                        (if (gx#stx-pair? _tl46085437_)
                            (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                              (let ((_tl46155447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46175440_)))
                                    (_hd46165444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46175440_))))
                                (if (gx#stx-null? _tl46155447_)
                                    (___match79617962_
                                     _e45635517_
                                     _hd45625521_
                                     _tl45615524_
                                     _e45665527_
                                     _hd45655531_
                                     _tl45645534_
                                     _e45675537_
                                     _e45705541_
                                     _hd45695545_
                                     _tl45685548_
                                     ___splice78417842_
                                     _target46065434_
                                     _tl46085437_
                                     _e46175440_
                                     _hd46165444_
                                     _tl46155447_)
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont78437844_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont78437844_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont78437844_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl45685548_)
                                                          '1)
                                                    (let ((___splice78417842_
                                                           (gx#syntax-split-splice
                                                            _tl45685548_
                                                            '1)))
                                                      (let ((_tl46085437_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice78417842_ '1)))
                    (_target46065434_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice78417842_ '0))))
                (if (gx#stx-pair? _tl46085437_)
                    (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                      (let ((_tl46155447_
                             (let () (declare (not safe)) (##cdr _e46175440_)))
                            (_hd46165444_
                             (let ()
                               (declare (not safe))
                               (##car _e46175440_))))
                        (if (gx#stx-null? _tl46155447_)
                            (___match79617962_
                             _e45635517_
                             _hd45625521_
                             _tl45615524_
                             _e45665527_
                             _hd45655531_
                             _tl45645534_
                             _e45675537_
                             _e45705541_
                             _hd45695545_
                             _tl45685548_
                             ___splice78417842_
                             _target46065434_
                             _tl46085437_
                             _e46175440_
                             _hd46165444_
                             _tl46155447_)
                            (if (gx#stx-null? _tl45685548_)
                                (___kont78437844_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont78437844_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont78437844_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl45685548_)
                                                      '1)
                                                (let ((___splice78417842_
                                                       (gx#syntax-split-splice
                                                        _tl45685548_
                                                        '1)))
                                                  (let ((_tl46085437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice78417842_
                                                            '1)))
                                                        (_target46065434_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice78417842_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl46085437_)
                                                        (let ((_e46175440_
                                                               (gx#syntax-e
                                                                _tl46085437_)))
                                                          (let ((_tl46155447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e46175440_)))
                        (_hd46165444_
                         (let () (declare (not safe)) (##car _e46175440_))))
                    (if (gx#stx-null? _tl46155447_)
                        (___match79617962_
                         _e45635517_
                         _hd45625521_
                         _tl45615524_
                         _e45665527_
                         _hd45655531_
                         _tl45645534_
                         _e45675537_
                         _e45705541_
                         _hd45695545_
                         _tl45685548_
                         ___splice78417842_
                         _target46065434_
                         _tl46085437_
                         _e46175440_
                         _hd46165444_
                         _tl46155447_)
                        (if (gx#stx-null? _tl45685548_)
                            (___kont78437844_ _hd45695545_)
                            (let () (declare (not safe)) (_g45544768_))))))
                (if (gx#stx-null? _tl45685548_)
                    (___kont78437844_ _hd45695545_)
                    (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null? _tl45685548_)
                                                    (___kont78437844_
                                                     _hd45695545_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))))
                                        (if (fx>= (gx#stx-length _tl45685548_)
                                                  '1)
                                            (let ((___splice78417842_
                                                   (gx#syntax-split-splice
                                                    _tl45685548_
                                                    '1)))
                                              (let ((_tl46085437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice78417842_
                                                        '1)))
                                                    (_target46065434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice78417842_
                                                        '0))))
                                                (if (gx#stx-pair? _tl46085437_)
                                                    (let ((_e46175440_
                                                           (gx#syntax-e
                                                            _tl46085437_)))
                                                      (let ((_tl46155447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e46175440_)))
                    (_hd46165444_
                     (let () (declare (not safe)) (##car _e46175440_))))
                (if (gx#stx-null? _tl46155447_)
                    (___match79617962_
                     _e45635517_
                     _hd45625521_
                     _tl45615524_
                     _e45665527_
                     _hd45655531_
                     _tl45645534_
                     _e45675537_
                     _e45705541_
                     _hd45695545_
                     _tl45685548_
                     ___splice78417842_
                     _target46065434_
                     _tl46085437_
                     _e46175440_
                     _hd46165444_
                     _tl46155447_)
                    (if (gx#stx-null? _tl45685548_)
                        (___kont78437844_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont78437844_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont78437844_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_)))))))
                                (if (fx>= (gx#stx-length _tl45685548_) '1)
                                    (let ((___splice78417842_
                                           (gx#syntax-split-splice
                                            _tl45685548_
                                            '1)))
                                      (let ((_tl46085437_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice78417842_
                                                '1)))
                                            (_target46065434_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice78417842_
                                                '0))))
                                        (if (gx#stx-pair? _tl46085437_)
                                            (let ((_e46175440_
                                                   (gx#syntax-e _tl46085437_)))
                                              (let ((_tl46155447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e46175440_)))
                                                    (_hd46165444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e46175440_))))
                                                (if (gx#stx-null? _tl46155447_)
                                                    (___match79617962_
                                                     _e45635517_
                                                     _hd45625521_
                                                     _tl45615524_
                                                     _e45665527_
                                                     _hd45655531_
                                                     _tl45645534_
                                                     _e45675537_
                                                     _e45705541_
                                                     _hd45695545_
                                                     _tl45685548_
                                                     ___splice78417842_
                                                     _target46065434_
                                                     _tl46085437_
                                                     _e46175440_
                                                     _hd46165444_
                                                     _tl46155447_)
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont78437844_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont78437844_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont78437844_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))))
                        (if (fx>= (gx#stx-length _tl45685548_) '1)
                            (let ((___splice78417842_
                                   (gx#syntax-split-splice _tl45685548_ '1)))
                              (let ((_tl46085437_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice78417842_ '1)))
                                    (_target46065434_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice78417842_ '0))))
                                (if (gx#stx-pair? _tl46085437_)
                                    (let ((_e46175440_
                                           (gx#syntax-e _tl46085437_)))
                                      (let ((_tl46155447_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e46175440_)))
                                            (_hd46165444_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e46175440_))))
                                        (if (gx#stx-null? _tl46155447_)
                                            (___match79617962_
                                             _e45635517_
                                             _hd45625521_
                                             _tl45615524_
                                             _e45665527_
                                             _hd45655531_
                                             _tl45645534_
                                             _e45675537_
                                             _e45705541_
                                             _hd45695545_
                                             _tl45685548_
                                             ___splice78417842_
                                             _target46065434_
                                             _tl46085437_
                                             _e46175440_
                                             _hd46165444_
                                             _tl46155447_)
                                            (if (gx#stx-null? _tl45685548_)
                                                (___kont78437844_ _hd45695545_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont78437844_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont78437844_ _hd45695545_)
                                (let ()
                                  (declare (not safe))
                                  (_g45544768_)))))))
                (if (fx>= (gx#stx-length _tl45685548_) '1)
                    (let ((___splice78417842_
                           (gx#syntax-split-splice _tl45685548_ '1)))
                      (let ((_tl46085437_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice78417842_ '1)))
                            (_target46065434_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice78417842_ '0))))
                        (if (gx#stx-pair? _tl46085437_)
                            (let ((_e46175440_ (gx#syntax-e _tl46085437_)))
                              (let ((_tl46155447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46175440_)))
                                    (_hd46165444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46175440_))))
                                (if (gx#stx-null? _tl46155447_)
                                    (___match79617962_
                                     _e45635517_
                                     _hd45625521_
                                     _tl45615524_
                                     _e45665527_
                                     _hd45655531_
                                     _tl45645534_
                                     _e45675537_
                                     _e45705541_
                                     _hd45695545_
                                     _tl45685548_
                                     ___splice78417842_
                                     _target46065434_
                                     _tl46085437_
                                     _e46175440_
                                     _hd46165444_
                                     _tl46155447_)
                                    (if (gx#stx-null? _tl45685548_)
                                        (___kont78437844_ _hd45695545_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_))))))
                            (if (gx#stx-null? _tl45685548_)
                                (___kont78437844_ _hd45695545_)
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-null? _tl45685548_)
                        (___kont78437844_ _hd45695545_)
                        (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl45685548_)
                                                        (___kont78437844_
                                                         _hd45695545_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g45544768_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g45544768_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e45675537_ '2))
                                            (if (gx#stx-pair? _tl45645534_)
                                                (let ((_e46445240_
                                                       (gx#syntax-e
                                                        _tl45645534_)))
                                                  (let ((_tl46425247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e46445240_)))
                                                        (_hd46435244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e46445240_))))
                                                    (if (gx#stx-pair?
                                                         _tl46425247_)
                                                        (let ((_e46475250_
                                                               (gx#syntax-e
                                                                _tl46425247_)))
                                                          (let ((_tl46455257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e46475250_)))
                        (_hd46465254_
                         (let () (declare (not safe)) (##car _e46475250_))))
                    (if (gx#stx-pair? _hd46465254_)
                        (let ((_e46505260_ (gx#syntax-e _hd46465254_)))
                          (let ((_tl46485267_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e46505260_)))
                                (_hd46495264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e46505260_))))
                            (if (gx#stx-pair? _hd46495264_)
                                (let ((_e46535270_ (gx#syntax-e _hd46495264_)))
                                  (let ((_tl46515277_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e46535270_)))
                                        (_hd46525274_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e46535270_))))
                                    (if (gx#identifier? _hd46525274_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g8604_|
                                             _hd46525274_)
                                            (if (gx#stx-pair? _tl46515277_)
                                                (let ((_e46565280_
                                                       (gx#syntax-e
                                                        _tl46515277_)))
                                                  (let ((_tl46545287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e46565280_)))
                                                        (_hd46555284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e46565280_))))
                                                    (if (gx#stx-null?
                                                         _tl46545287_)
                                                        (if (gx#stx-pair?
                                                             _tl46485267_)
                                                            (let ((_e46595290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl46485267_)))
                      (let ((_tl46575297_
                             (let () (declare (not safe)) (##cdr _e46595290_)))
                            (_hd46585294_
                             (let ()
                               (declare (not safe))
                               (##car _e46595290_))))
                        (___kont78457846_
                         _tl46455257_
                         _tl46575297_
                         _hd46585294_
                         _hd46555284_
                         _hd46435244_
                         _hd45625521_)))
                    (___kont78477848_
                     _tl46455257_
                     _tl46485267_
                     _hd46495264_
                     _hd46435244_
                     _hd45625521_))
                (___kont78477848_
                 _tl46455257_
                 _tl46485267_
                 _hd46495264_
                 _hd46435244_
                 _hd45625521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont78477848_
                                                 _tl46455257_
                                                 _tl46485267_
                                                 _hd46495264_
                                                 _hd46435244_
                                                 _hd45625521_))
                                            (___kont78477848_
                                             _tl46455257_
                                             _tl46485267_
                                             _hd46495264_
                                             _hd46435244_
                                             _hd45625521_))
                                        (___kont78477848_
                                         _tl46455257_
                                         _tl46485267_
                                         _hd46495264_
                                         _hd46435244_
                                         _hd45625521_))))
                                (___kont78477848_
                                 _tl46455257_
                                 _tl46485267_
                                 _hd46495264_
                                 _hd46435244_
                                 _hd45625521_))))
                        (if (gx#stx-null? _hd46465254_)
                            (___kont78497850_
                             _tl46455257_
                             _hd46435244_
                             _hd45625521_)
                            (let () (declare (not safe)) (_g45544768_))))))
                (let () (declare (not safe)) (_g45544768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e45675537_ '3))
                                                (if (gx#stx-pair? _tl45645534_)
                                                    (let ((_e47114989_
                                                           (gx#syntax-e
                                                            _tl45645534_)))
                                                      (let ((_tl47094996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e47114989_)))
                    (_hd47104993_
                     (let () (declare (not safe)) (##car _e47114989_))))
                (if (gx#stx-pair? _tl47094996_)
                    (let ((_e47144999_ (gx#syntax-e _tl47094996_)))
                      (let ((_tl47125006_
                             (let () (declare (not safe)) (##cdr _e47144999_)))
                            (_hd47135003_
                             (let ()
                               (declare (not safe))
                               (##car _e47144999_))))
                        (if (gx#stx-pair? _hd47135003_)
                            (let ((_e47175009_ (gx#syntax-e _hd47135003_)))
                              (let ((_tl47155016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e47175009_)))
                                    (_hd47165013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e47175009_))))
                                (___kont78517852_
                                 _tl47125006_
                                 _tl47155016_
                                 _hd47165013_
                                 _hd47104993_
                                 _hd45625521_)))
                            (if (gx#stx-pair/null? _hd47104993_)
                                (let ((___splice78557856_
                                       (gx#syntax-split-splice
                                        _hd47104993_
                                        '0)))
                                  (let ((_tl47364812_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice78557856_
                                            '1)))
                                        (_target47344809_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice78557856_
                                            '0))))
                                    (if (gx#stx-null? _tl47364812_)
                                        (___match81838184_
                                         _e45635517_
                                         _hd45625521_
                                         _tl45615524_
                                         _e45665527_
                                         _hd45655531_
                                         _tl45645534_
                                         _e45675537_
                                         _e47114989_
                                         _hd47104993_
                                         _tl47094996_
                                         ___splice78557856_
                                         _target47344809_
                                         _tl47364812_)
                                        (let ()
                                          (declare (not safe))
                                          (_g45544768_)))))
                                (let () (declare (not safe)) (_g45544768_))))))
                    (if (gx#stx-pair/null? _hd47104993_)
                        (let ((___splice78557856_
                               (gx#syntax-split-splice _hd47104993_ '0)))
                          (let ((_tl47364812_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice78557856_ '1)))
                                (_target47344809_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice78557856_ '0))))
                            (if (gx#stx-null? _tl47364812_)
                                (___match81838184_
                                 _e45635517_
                                 _hd45625521_
                                 _tl45615524_
                                 _e45665527_
                                 _hd45655531_
                                 _tl45645534_
                                 _e45675537_
                                 _e47114989_
                                 _hd47104993_
                                 _tl47094996_
                                 ___splice78557856_
                                 _target47344809_
                                 _tl47364812_)
                                (let () (declare (not safe)) (_g45544768_)))))
                        (let () (declare (not safe)) (_g45544768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g45544768_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g45544768_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g45544768_)))))
                          (let () (declare (not safe)) (_g45544768_)))))
                  (let () (declare (not safe)) (_g45544768_))))))))))
