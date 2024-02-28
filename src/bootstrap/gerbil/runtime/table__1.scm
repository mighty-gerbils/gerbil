(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57459_)
      (let* ((_g5746357477_
              (lambda (_g5746457473_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5746457473_)))
             (_g5746257519_
              (lambda (_g5746457481_)
                (if (gx#stx-pair? _g5746457481_)
                    (let ((_e5746857484_ (gx#syntax-e _g5746457481_)))
                      (let ((_hd5746757488_
                             (let ()
                               (declare (not safe))
                               (##car _e5746857484_)))
                            (_tl5746657491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5746857484_))))
                        (if (gx#stx-pair? _tl5746657491_)
                            (let ((_e5747157494_ (gx#syntax-e _tl5746657491_)))
                              (let ((_hd5747057498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5747157494_)))
                                    (_tl5746957501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5747157494_))))
                                (if (gx#stx-null? _tl5746957501_)
                                    ((lambda (_L57504_)
                                       (let ((__tmp60044
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60042
                                              (let ((__tmp60043
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60043))))
                                         (declare (not safe))
                                         (cons __tmp60044 __tmp60042)))
                                     _hd5747057498_)
                                    (_g5746357477_ _g5746457481_))))
                            (_g5746357477_ _g5746457481_))))
                    (_g5746357477_ _g5746457481_)))))
        (_g5746257519_ _$stx57459_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57523_)
      (let* ((_g5752757573_
              (lambda (_g5752857569_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5752857569_)))
             (_g5752657726_
              (lambda (_g5752857577_)
                (if (gx#stx-pair? _g5752857577_)
                    (let ((_e5754057580_ (gx#syntax-e _g5752857577_)))
                      (let ((_hd5753957584_
                             (let ()
                               (declare (not safe))
                               (##car _e5754057580_)))
                            (_tl5753857587_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5754057580_))))
                        (if (gx#stx-pair? _tl5753857587_)
                            (let ((_e5754357590_ (gx#syntax-e _tl5753857587_)))
                              (let ((_hd5754257594_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5754357590_)))
                                    (_tl5754157597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5754357590_))))
                                (if (gx#stx-pair? _tl5754157597_)
                                    (let ((_e5754657600_
                                           (gx#syntax-e _tl5754157597_)))
                                      (let ((_hd5754557604_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5754657600_)))
                                            (_tl5754457607_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5754657600_))))
                                        (if (gx#stx-pair? _tl5754457607_)
                                            (let ((_e5754957610_
                                                   (gx#syntax-e
                                                    _tl5754457607_)))
                                              (let ((_hd5754857614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5754957610_)))
                                                    (_tl5754757617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5754957610_))))
                                                (if (gx#stx-pair?
                                                     _tl5754757617_)
                                                    (let ((_e5755257620_
                                                           (gx#syntax-e
                                                            _tl5754757617_)))
                                                      (let ((_hd5755157624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5755257620_)))
                    (_tl5755057627_
                     (let () (declare (not safe)) (##cdr _e5755257620_))))
                (if (gx#stx-pair? _tl5755057627_)
                    (let ((_e5755557630_ (gx#syntax-e _tl5755057627_)))
                      (let ((_hd5755457634_
                             (let ()
                               (declare (not safe))
                               (##car _e5755557630_)))
                            (_tl5755357637_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5755557630_))))
                        (if (gx#stx-pair? _tl5755357637_)
                            (let ((_e5755857640_ (gx#syntax-e _tl5755357637_)))
                              (let ((_hd5755757644_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5755857640_)))
                                    (_tl5755657647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5755857640_))))
                                (if (gx#stx-pair? _tl5755657647_)
                                    (let ((_e5756157650_
                                           (gx#syntax-e _tl5755657647_)))
                                      (let ((_hd5756057654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5756157650_)))
                                            (_tl5755957657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5756157650_))))
                                        (if (gx#stx-pair? _tl5755957657_)
                                            (let ((_e5756457660_
                                                   (gx#syntax-e
                                                    _tl5755957657_)))
                                              (let ((_hd5756357664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5756457660_)))
                                                    (_tl5756257667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5756457660_))))
                                                (if (gx#stx-pair?
                                                     _tl5756257667_)
                                                    (let ((_e5756757670_
                                                           (gx#syntax-e
                                                            _tl5756257667_)))
                                                      (let ((_hd5756657674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5756757670_)))
                    (_tl5756557677_
                     (let () (declare (not safe)) (##cdr _e5756757670_))))
                (if (gx#stx-null? _tl5756557677_)
                    ((lambda (_L57680_
                              _L57682_
                              _L57683_
                              _L57684_
                              _L57685_
                              _L57686_
                              _L57687_
                              _L57688_
                              _L57689_)
                       (let ((__tmp60476 (gx#datum->syntax '#f 'begin))
                             (__tmp60045
                              (let ((__tmp60455
                                     (let ((__tmp60475
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60456
                                            (let ((__tmp60466
                                                   (let ((__tmp60467
                                                          (let ((__tmp60472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60474 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60473
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60474 __tmp60473)))
                        (__tmp60468
                         (let ((__tmp60469
                                (let ((__tmp60471 (gx#datum->syntax '#f 'seed))
                                      (__tmp60470
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60471 __tmp60470))))
                           (declare (not safe))
                           (cons __tmp60469 '()))))
                    (declare (not safe))
                    (cons __tmp60472 __tmp60468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60467)))
                                                  (__tmp60457
                                                   (let ((__tmp60458
                                                          (let ((__tmp60465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60459
                         (let ((__tmp60464 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60460
                                (let ((__tmp60461
                                       (let ((__tmp60462
                                              (let ((__tmp60463
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60463 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60462))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60461))))
                           (declare (not safe))
                           (cons __tmp60464 __tmp60460))))
                    (declare (not safe))
                    (cons __tmp60465 __tmp60459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60458 '()))))
                                              (declare (not safe))
                                              (cons __tmp60466 __tmp60457))))
                                       (declare (not safe))
                                       (cons __tmp60475 __tmp60456)))
                                    (__tmp60046
                                     (let ((__tmp60412
                                            (let ((__tmp60454
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60413
                                                   (let ((__tmp60447
                                                          (let ((__tmp60448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60453 (gx#datum->syntax '#f 'tab))
                               (__tmp60449
                                (let ((__tmp60452 (gx#datum->syntax '#f 'key))
                                      (__tmp60450
                                       (let ((__tmp60451
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60451 '()))))
                                  (declare (not safe))
                                  (cons __tmp60452 __tmp60450))))
                           (declare (not safe))
                           (cons __tmp60453 __tmp60449))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60448)))
                 (__tmp60414
                  (let ((__tmp60415
                         (let ((__tmp60446 (gx#datum->syntax '#f 'let))
                               (__tmp60416
                                (let ((__tmp60430
                                       (let ((__tmp60439
                                              (let ((__tmp60445
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60440
                                                     (let ((__tmp60441
                                                            (let ((__tmp60444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60442
                           (let ((__tmp60443 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60443 '()))))
                      (declare (not safe))
                      (cons __tmp60444 __tmp60442))))
               (declare (not safe))
               (cons __tmp60441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60445 __tmp60440)))
                                             (__tmp60431
                                              (let ((__tmp60432
                                                     (let ((__tmp60438
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60433
                                                            (let ((__tmp60434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60437
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60435
                                  (let ((__tmp60436
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60436 '()))))
                             (declare (not safe))
                             (cons __tmp60437 __tmp60435))))
                      (declare (not safe))
                      (cons __tmp60434 '()))))
               (declare (not safe))
               (cons __tmp60438 __tmp60433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60432 '()))))
                                         (declare (not safe))
                                         (cons __tmp60439 __tmp60431)))
                                      (__tmp60417
                                       (let ((__tmp60418
                                              (let ((__tmp60429
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60419
                                                     (let ((__tmp60428
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60420
                                                            (let ((__tmp60427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60421
                           (let ((__tmp60422
                                  (let ((__tmp60423
                                         (let ((__tmp60426
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60424
                                                (let ((__tmp60425
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60425 '()))))
                                           (declare (not safe))
                                           (cons __tmp60426 __tmp60424))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60423))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60422))))
                      (declare (not safe))
                      (cons __tmp60427 __tmp60421))))
               (declare (not safe))
               (cons __tmp60428 __tmp60420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60429 __tmp60419))))
                                         (declare (not safe))
                                         (cons __tmp60418 '()))))
                                  (declare (not safe))
                                  (cons __tmp60430 __tmp60417))))
                           (declare (not safe))
                           (cons __tmp60446 __tmp60416))))
                    (declare (not safe))
                    (cons __tmp60415 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60447
                                                           __tmp60414))))
                                              (declare (not safe))
                                              (cons __tmp60454 __tmp60413)))
                                           (__tmp60047
                                            (let ((__tmp60366
                                                   (let ((__tmp60411
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60367
                                                          (let ((__tmp60404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60405
                                (let ((__tmp60410 (gx#datum->syntax '#f 'tab))
                                      (__tmp60406
                                       (let ((__tmp60409
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60407
                                              (let ((__tmp60408
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60408 '()))))
                                         (declare (not safe))
                                         (cons __tmp60409 __tmp60407))))
                                  (declare (not safe))
                                  (cons __tmp60410 __tmp60406))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60405)))
                        (__tmp60368
                         (let ((__tmp60377
                                (let ((__tmp60403 (gx#datum->syntax '#f 'when))
                                      (__tmp60378
                                       (let ((__tmp60384
                                              (let ((__tmp60402
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60385
                                                     (let ((__tmp60398
                                                            (let ((__tmp60401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60399
                           (let ((__tmp60400 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60400 '()))))
                      (declare (not safe))
                      (cons __tmp60401 __tmp60399)))
                   (__tmp60386
                    (let ((__tmp60387
                           (let ((__tmp60397
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60388
                                  (let ((__tmp60390
                                         (let ((__tmp60396
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60391
                                                (let ((__tmp60392
                                                       (let ((__tmp60395
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60393
                                                              (let ((__tmp60394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60394 '()))))
                 (declare (not safe))
                 (cons __tmp60395 __tmp60393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60392 '()))))
                                           (declare (not safe))
                                           (cons __tmp60396 __tmp60391)))
                                        (__tmp60389
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60390 __tmp60389))))
                             (declare (not safe))
                             (cons __tmp60397 __tmp60388))))
                      (declare (not safe))
                      (cons __tmp60387 '()))))
               (declare (not safe))
               (cons __tmp60398 __tmp60386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60402 __tmp60385)))
                                             (__tmp60379
                                              (let ((__tmp60380
                                                     (let ((__tmp60383
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60381
                                                            (let ((__tmp60382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60382 '()))))
               (declare (not safe))
               (cons __tmp60383 __tmp60381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60380 '()))))
                                         (declare (not safe))
                                         (cons __tmp60384 __tmp60379))))
                                  (declare (not safe))
                                  (cons __tmp60403 __tmp60378)))
                               (__tmp60369
                                (let ((__tmp60370
                                       (let ((__tmp60371
                                              (let ((__tmp60376
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60372
                                                     (let ((__tmp60375
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60373
                                                            (let ((__tmp60374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60374 '()))))
               (declare (not safe))
               (cons __tmp60375 __tmp60373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60376 __tmp60372))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60371))))
                                  (declare (not safe))
                                  (cons __tmp60370 '()))))
                           (declare (not safe))
                           (cons __tmp60377 __tmp60369))))
                    (declare (not safe))
                    (cons __tmp60404 __tmp60368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60411
                                                           __tmp60367)))
                                                  (__tmp60048
                                                   (let ((__tmp60264
                                                          (let ((__tmp60365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60265
                         (let ((__tmp60358
                                (let ((__tmp60359
                                       (let ((__tmp60364
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60360
                                              (let ((__tmp60363
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60361
                                                     (let ((__tmp60362
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60362 '()))))
                                                (declare (not safe))
                                                (cons __tmp60363 __tmp60361))))
                                         (declare (not safe))
                                         (cons __tmp60364 __tmp60360))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp60359)))
                               (__tmp60266
                                (let ((__tmp60267
                                       (let ((__tmp60357
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60268
                                              (let ((__tmp60341
                                                     (let ((__tmp60350
                                                            (let ((__tmp60356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60351
                           (let ((__tmp60352
                                  (let ((__tmp60355
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60353
                                         (let ((__tmp60354
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60354 '()))))
                                    (declare (not safe))
                                    (cons __tmp60355 __tmp60353))))
                             (declare (not safe))
                             (cons __tmp60352 '()))))
                      (declare (not safe))
                      (cons __tmp60356 __tmp60351)))
                   (__tmp60342
                    (let ((__tmp60343
                           (let ((__tmp60349 (gx#datum->syntax '#f 'seed))
                                 (__tmp60344
                                  (let ((__tmp60345
                                         (let ((__tmp60348
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60346
                                                (let ((__tmp60347
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60347 '()))))
                                           (declare (not safe))
                                           (cons __tmp60348 __tmp60346))))
                                    (declare (not safe))
                                    (cons __tmp60345 '()))))
                             (declare (not safe))
                             (cons __tmp60349 __tmp60344))))
                      (declare (not safe))
                      (cons __tmp60343 '()))))
               (declare (not safe))
               (cons __tmp60350 __tmp60342)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60269
                                                     (let ((__tmp60270
                                                            (let ((__tmp60340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60271
                           (let ((__tmp60339 (gx#datum->syntax '#f 'table))
                                 (__tmp60272
                                  (let ((__tmp60338
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60273
                                         (let ((__tmp60274
                                                (let ((__tmp60275
                                                       (let ((__tmp60337
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60276
                                                              (let ((__tmp60336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60277
                             (let ((__tmp60299
                                    (let ((__tmp60335
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60300
                                           (let ((__tmp60301
                                                  (let ((__tmp60319
                                                         (let ((__tmp60334
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60320
                        (let ((__tmp60330
                               (let ((__tmp60333
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60331
                                      (let ((__tmp60332
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60332 '()))))
                                 (declare (not safe))
                                 (cons __tmp60333 __tmp60331)))
                              (__tmp60321
                               (let ((__tmp60322
                                      (let ((__tmp60329
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60323
                                             (let ((__tmp60325
                                                    (let ((__tmp60328
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60326
                                                           (let ((__tmp60327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60327 '()))))
              (declare (not safe))
              (cons __tmp60328 __tmp60326)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60324
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60325 __tmp60324))))
                                        (declare (not safe))
                                        (cons __tmp60329 __tmp60323))))
                                 (declare (not safe))
                                 (cons __tmp60322 '()))))
                          (declare (not safe))
                          (cons __tmp60330 __tmp60321))))
                   (declare (not safe))
                   (cons __tmp60334 __tmp60320)))
                (__tmp60302
                 (let ((__tmp60303
                        (let ((__tmp60318 (gx#datum->syntax '#f 'set!))
                              (__tmp60304
                               (let ((__tmp60314
                                      (let ((__tmp60317
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60315
                                             (let ((__tmp60316
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60316 '()))))
                                        (declare (not safe))
                                        (cons __tmp60317 __tmp60315)))
                                     (__tmp60305
                                      (let ((__tmp60306
                                             (let ((__tmp60313
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60307
                                                    (let ((__tmp60309
                                                           (let ((__tmp60312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60310
                          (let ((__tmp60311 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60311 '()))))
                     (declare (not safe))
                     (cons __tmp60312 __tmp60310)))
                  (__tmp60308 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60309 __tmp60308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60313 __tmp60307))))
                                        (declare (not safe))
                                        (cons __tmp60306 '()))))
                                 (declare (not safe))
                                 (cons __tmp60314 __tmp60305))))
                          (declare (not safe))
                          (cons __tmp60318 __tmp60304))))
                   (declare (not safe))
                   (cons __tmp60303 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60319
                                                          __tmp60302))))
                                             (declare (not safe))
                                             (cons '() __tmp60301))))
                                      (declare (not safe))
                                      (cons __tmp60335 __tmp60300)))
                                   (__tmp60278
                                    (let ((__tmp60279
                                           (let ((__tmp60298
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60280
                                                  (let ((__tmp60281
                                                         (let ((__tmp60282
                                                                (let ((__tmp60297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60283
                               (let ((__tmp60293
                                      (let ((__tmp60296
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60294
                                             (let ((__tmp60295
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60295 '()))))
                                        (declare (not safe))
                                        (cons __tmp60296 __tmp60294)))
                                     (__tmp60284
                                      (let ((__tmp60285
                                             (let ((__tmp60292
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60286
                                                    (let ((__tmp60288
                                                           (let ((__tmp60291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60289
                          (let ((__tmp60290 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60290 '()))))
                     (declare (not safe))
                     (cons __tmp60291 __tmp60289)))
                  (__tmp60287 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60288 __tmp60287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60292 __tmp60286))))
                                        (declare (not safe))
                                        (cons __tmp60285 '()))))
                                 (declare (not safe))
                                 (cons __tmp60293 __tmp60284))))
                          (declare (not safe))
                          (cons __tmp60297 __tmp60283))))
                   (declare (not safe))
                   (cons __tmp60282 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60281))))
                                             (declare (not safe))
                                             (cons __tmp60298 __tmp60280))))
                                      (declare (not safe))
                                      (cons __tmp60279 '()))))
                               (declare (not safe))
                               (cons __tmp60299 __tmp60278))))
                        (declare (not safe))
                        (cons __tmp60336 __tmp60277))))
                 (declare (not safe))
                 (cons __tmp60337 __tmp60276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp60275))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp60274))))
                                    (declare (not safe))
                                    (cons __tmp60338 __tmp60273))))
                             (declare (not safe))
                             (cons __tmp60339 __tmp60272))))
                      (declare (not safe))
                      (cons __tmp60340 __tmp60271))))
               (declare (not safe))
               (cons __tmp60270 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60341 __tmp60269))))
                                         (declare (not safe))
                                         (cons __tmp60357 __tmp60268))))
                                  (declare (not safe))
                                  (cons __tmp60267 '()))))
                           (declare (not safe))
                           (cons __tmp60358 __tmp60266))))
                    (declare (not safe))
                    (cons __tmp60365 __tmp60265)))
                 (__tmp60049
                  (let ((__tmp60216
                         (let ((__tmp60263 (gx#datum->syntax '#f 'def))
                               (__tmp60217
                                (let ((__tmp60255
                                       (let ((__tmp60256
                                              (let ((__tmp60262
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60257
                                                     (let ((__tmp60261
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60258
                                                            (let ((__tmp60259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60260 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60260 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp60259))))
               (declare (not safe))
               (cons __tmp60261 __tmp60258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60262 __tmp60257))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp60256)))
                                      (__tmp60218
                                       (let ((__tmp60228
                                              (let ((__tmp60254
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60229
                                                     (let ((__tmp60235
                                                            (let ((__tmp60253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60236
                           (let ((__tmp60249
                                  (let ((__tmp60252
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60250
                                         (let ((__tmp60251
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60251 '()))))
                                    (declare (not safe))
                                    (cons __tmp60252 __tmp60250)))
                                 (__tmp60237
                                  (let ((__tmp60238
                                         (let ((__tmp60248
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60239
                                                (let ((__tmp60241
                                                       (let ((__tmp60247
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60242
                                                              (let ((__tmp60243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60246
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60244
                                    (let ((__tmp60245
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60245 '()))))
                               (declare (not safe))
                               (cons __tmp60246 __tmp60244))))
                        (declare (not safe))
                        (cons __tmp60243 '()))))
                 (declare (not safe))
                 (cons __tmp60247 __tmp60242)))
              (__tmp60240 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60241
                                                        __tmp60240))))
                                           (declare (not safe))
                                           (cons __tmp60248 __tmp60239))))
                                    (declare (not safe))
                                    (cons __tmp60238 '()))))
                             (declare (not safe))
                             (cons __tmp60249 __tmp60237))))
                      (declare (not safe))
                      (cons __tmp60253 __tmp60236)))
                   (__tmp60230
                    (let ((__tmp60231
                           (let ((__tmp60234
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60232
                                  (let ((__tmp60233
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60233 '()))))
                             (declare (not safe))
                             (cons __tmp60234 __tmp60232))))
                      (declare (not safe))
                      (cons __tmp60231 '()))))
               (declare (not safe))
               (cons __tmp60235 __tmp60230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60254 __tmp60229)))
                                             (__tmp60219
                                              (let ((__tmp60220
                                                     (let ((__tmp60221
                                                            (let ((__tmp60227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60222
                           (let ((__tmp60226 (gx#datum->syntax '#f 'key))
                                 (__tmp60223
                                  (let ((__tmp60224
                                         (let ((__tmp60225
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60225 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp60224))))
                             (declare (not safe))
                             (cons __tmp60226 __tmp60223))))
                      (declare (not safe))
                      (cons __tmp60227 __tmp60222))))
               (declare (not safe))
               (cons _L57684_ __tmp60221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60220 '()))))
                                         (declare (not safe))
                                         (cons __tmp60228 __tmp60219))))
                                  (declare (not safe))
                                  (cons __tmp60255 __tmp60218))))
                           (declare (not safe))
                           (cons __tmp60263 __tmp60217)))
                        (__tmp60050
                         (let ((__tmp60112
                                (let ((__tmp60215 (gx#datum->syntax '#f 'def))
                                      (__tmp60113
                                       (let ((__tmp60207
                                              (let ((__tmp60208
                                                     (let ((__tmp60214
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60209
                                                            (let ((__tmp60213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60210
                           (let ((__tmp60211
                                  (let ((__tmp60212
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60212 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp60211))))
                      (declare (not safe))
                      (cons __tmp60213 __tmp60210))))
               (declare (not safe))
               (cons __tmp60214 __tmp60209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp60208)))
                                             (__tmp60114
                                              (let ((__tmp60115
                                                     (let ((__tmp60206
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60116
                                                            (let ((__tmp60190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60199
                                  (let ((__tmp60205
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60200
                                         (let ((__tmp60201
                                                (let ((__tmp60204
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60202
                                                       (let ((__tmp60203
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60203
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60204
                                                        __tmp60202))))
                                           (declare (not safe))
                                           (cons __tmp60201 '()))))
                                    (declare (not safe))
                                    (cons __tmp60205 __tmp60200)))
                                 (__tmp60191
                                  (let ((__tmp60192
                                         (let ((__tmp60198
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60193
                                                (let ((__tmp60194
                                                       (let ((__tmp60197
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60195
                                                              (let ((__tmp60196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60196 '()))))
                 (declare (not safe))
                 (cons __tmp60197 __tmp60195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60194 '()))))
                                           (declare (not safe))
                                           (cons __tmp60198 __tmp60193))))
                                    (declare (not safe))
                                    (cons __tmp60192 '()))))
                             (declare (not safe))
                             (cons __tmp60199 __tmp60191)))
                          (__tmp60117
                           (let ((__tmp60118
                                  (let ((__tmp60189
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60119
                                         (let ((__tmp60188
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60120
                                                (let ((__tmp60187
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60121
                                                       (let ((__tmp60122
                                                              (let ((__tmp60123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60186 (gx#datum->syntax '#f 'key))
                                   (__tmp60124
                                    (let ((__tmp60125
                                           (let ((__tmp60185
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60126
                                                  (let ((__tmp60148
                                                         (let ((__tmp60184
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60149
                        (let ((__tmp60150
                               (let ((__tmp60168
                                      (let ((__tmp60183
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60169
                                             (let ((__tmp60179
                                                    (let ((__tmp60182
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60180
                                                           (let ((__tmp60181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60181 '()))))
              (declare (not safe))
              (cons __tmp60182 __tmp60180)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60170
                                                    (let ((__tmp60171
                                                           (let ((__tmp60178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60172
                          (let ((__tmp60174
                                 (let ((__tmp60177
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60175
                                        (let ((__tmp60176
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60176 '()))))
                                   (declare (not safe))
                                   (cons __tmp60177 __tmp60175)))
                                (__tmp60173
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60174 __tmp60173))))
                     (declare (not safe))
                     (cons __tmp60178 __tmp60172))))
              (declare (not safe))
              (cons __tmp60171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60179 __tmp60170))))
                                        (declare (not safe))
                                        (cons __tmp60183 __tmp60169)))
                                     (__tmp60151
                                      (let ((__tmp60152
                                             (let ((__tmp60167
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60153
                                                    (let ((__tmp60163
                                                           (let ((__tmp60166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60164
                          (let ((__tmp60165 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60165 '()))))
                     (declare (not safe))
                     (cons __tmp60166 __tmp60164)))
                  (__tmp60154
                   (let ((__tmp60155
                          (let ((__tmp60162 (gx#datum->syntax '#f 'fx+))
                                (__tmp60156
                                 (let ((__tmp60158
                                        (let ((__tmp60161
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60159
                                               (let ((__tmp60160
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60160 '()))))
                                          (declare (not safe))
                                          (cons __tmp60161 __tmp60159)))
                                       (__tmp60157
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60158 __tmp60157))))
                            (declare (not safe))
                            (cons __tmp60162 __tmp60156))))
                     (declare (not safe))
                     (cons __tmp60155 '()))))
              (declare (not safe))
              (cons __tmp60163 __tmp60154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60167 __tmp60153))))
                                        (declare (not safe))
                                        (cons __tmp60152 '()))))
                                 (declare (not safe))
                                 (cons __tmp60168 __tmp60151))))
                          (declare (not safe))
                          (cons '() __tmp60150))))
                   (declare (not safe))
                   (cons __tmp60184 __tmp60149)))
                (__tmp60127
                 (let ((__tmp60128
                        (let ((__tmp60147 (gx#datum->syntax '#f 'lambda))
                              (__tmp60129
                               (let ((__tmp60130
                                      (let ((__tmp60131
                                             (let ((__tmp60146
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60132
                                                    (let ((__tmp60142
                                                           (let ((__tmp60145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60143
                          (let ((__tmp60144 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60144 '()))))
                     (declare (not safe))
                     (cons __tmp60145 __tmp60143)))
                  (__tmp60133
                   (let ((__tmp60134
                          (let ((__tmp60141 (gx#datum->syntax '#f 'fx+))
                                (__tmp60135
                                 (let ((__tmp60137
                                        (let ((__tmp60140
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60138
                                               (let ((__tmp60139
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60139 '()))))
                                          (declare (not safe))
                                          (cons __tmp60140 __tmp60138)))
                                       (__tmp60136
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60137 __tmp60136))))
                            (declare (not safe))
                            (cons __tmp60141 __tmp60135))))
                     (declare (not safe))
                     (cons __tmp60134 '()))))
              (declare (not safe))
              (cons __tmp60142 __tmp60133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60146 __tmp60132))))
                                        (declare (not safe))
                                        (cons __tmp60131 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60130))))
                          (declare (not safe))
                          (cons __tmp60147 __tmp60129))))
                   (declare (not safe))
                   (cons __tmp60128 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60148
                                                          __tmp60127))))
                                             (declare (not safe))
                                             (cons __tmp60185 __tmp60126))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp60125))))
                               (declare (not safe))
                               (cons __tmp60186 __tmp60124))))
                        (declare (not safe))
                        (cons _L57680_ __tmp60123))))
                 (declare (not safe))
                 (cons _L57682_ __tmp60122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60187
                                                        __tmp60121))))
                                           (declare (not safe))
                                           (cons __tmp60188 __tmp60120))))
                                    (declare (not safe))
                                    (cons __tmp60189 __tmp60119))))
                             (declare (not safe))
                             (cons __tmp60118 '()))))
                      (declare (not safe))
                      (cons __tmp60190 __tmp60117))))
               (declare (not safe))
               (cons __tmp60206 __tmp60116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60115 '()))))
                                         (declare (not safe))
                                         (cons __tmp60207 __tmp60114))))
                                  (declare (not safe))
                                  (cons __tmp60215 __tmp60113)))
                               (__tmp60051
                                (let ((__tmp60052
                                       (let ((__tmp60111
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60053
                                              (let ((__tmp60106
                                                     (let ((__tmp60107
                                                            (let ((__tmp60110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60108
                           (let ((__tmp60109 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60109 '()))))
                      (declare (not safe))
                      (cons __tmp60110 __tmp60108))))
               (declare (not safe))
               (cons _L57683_ __tmp60107)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60054
                                                     (let ((__tmp60055
                                                            (let ((__tmp60105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60056
                           (let ((__tmp60089
                                  (let ((__tmp60098
                                         (let ((__tmp60104
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60099
                                                (let ((__tmp60100
                                                       (let ((__tmp60103
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60101
                                                              (let ((__tmp60102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60102 '()))))
                 (declare (not safe))
                 (cons __tmp60103 __tmp60101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60100 '()))))
                                           (declare (not safe))
                                           (cons __tmp60104 __tmp60099)))
                                        (__tmp60090
                                         (let ((__tmp60091
                                                (let ((__tmp60097
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60092
                                                       (let ((__tmp60093
                                                              (let ((__tmp60096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60094
                             (let ((__tmp60095 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60095 '()))))
                        (declare (not safe))
                        (cons __tmp60096 __tmp60094))))
                 (declare (not safe))
                 (cons __tmp60093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60097
                                                        __tmp60092))))
                                           (declare (not safe))
                                           (cons __tmp60091 '()))))
                                    (declare (not safe))
                                    (cons __tmp60098 __tmp60090)))
                                 (__tmp60057
                                  (let ((__tmp60058
                                         (let ((__tmp60088
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60059
                                                (let ((__tmp60087
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60060
                                                       (let ((__tmp60086
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60061
                                                              (let ((__tmp60062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60063
                                    (let ((__tmp60085
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60064
                                           (let ((__tmp60065
                                                  (let ((__tmp60084
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60066
                                                         (let ((__tmp60067
                                                                (let ((__tmp60068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60083 (gx#datum->syntax '#f 'set!))
                                     (__tmp60069
                                      (let ((__tmp60079
                                             (let ((__tmp60082
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60080
                                                    (let ((__tmp60081
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60081 '()))))
                                               (declare (not safe))
                                               (cons __tmp60082 __tmp60080)))
                                            (__tmp60070
                                             (let ((__tmp60071
                                                    (let ((__tmp60078
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60072
                                                           (let ((__tmp60074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60077
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60075
                                 (let ((__tmp60076
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60076 '()))))
                            (declare (not safe))
                            (cons __tmp60077 __tmp60075)))
                         (__tmp60073
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60074 __tmp60073))))
              (declare (not safe))
              (cons __tmp60078 __tmp60072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60071 '()))))
                                        (declare (not safe))
                                        (cons __tmp60079 __tmp60070))))
                                 (declare (not safe))
                                 (cons __tmp60083 __tmp60069))))
                          (declare (not safe))
                          (cons __tmp60068 '()))))
                   (declare (not safe))
                   (cons '() __tmp60067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60084
                                                          __tmp60066))))
                                             (declare (not safe))
                                             (cons __tmp60065 '()))))
                                      (declare (not safe))
                                      (cons __tmp60085 __tmp60064))))
                               (declare (not safe))
                               (cons _L57680_ __tmp60063))))
                        (declare (not safe))
                        (cons _L57682_ __tmp60062))))
                 (declare (not safe))
                 (cons __tmp60086 __tmp60061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60087
                                                        __tmp60060))))
                                           (declare (not safe))
                                           (cons __tmp60088 __tmp60059))))
                                    (declare (not safe))
                                    (cons __tmp60058 '()))))
                             (declare (not safe))
                             (cons __tmp60089 __tmp60057))))
                      (declare (not safe))
                      (cons __tmp60105 __tmp60056))))
               (declare (not safe))
               (cons __tmp60055 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60106 __tmp60054))))
                                         (declare (not safe))
                                         (cons __tmp60111 __tmp60053))))
                                  (declare (not safe))
                                  (cons __tmp60052 '()))))
                           (declare (not safe))
                           (cons __tmp60112 __tmp60051))))
                    (declare (not safe))
                    (cons __tmp60216 __tmp60050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60264
                                                           __tmp60049))))
                                              (declare (not safe))
                                              (cons __tmp60366 __tmp60048))))
                                       (declare (not safe))
                                       (cons __tmp60412 __tmp60047))))
                                (declare (not safe))
                                (cons __tmp60455 __tmp60046))))
                         (declare (not safe))
                         (cons __tmp60476 __tmp60045)))
                     _hd5756657674_
                     _hd5756357664_
                     _hd5756057654_
                     _hd5755757644_
                     _hd5755457634_
                     _hd5755157624_
                     _hd5754857614_
                     _hd5754557604_
                     _hd5754257594_)
                    (_g5752757573_ _g5752857577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5752757573_
                                                     _g5752857577_))))
                                            (_g5752757573_ _g5752857577_))))
                                    (_g5752757573_ _g5752857577_))))
                            (_g5752757573_ _g5752857577_))))
                    (_g5752757573_ _g5752857577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5752757573_
                                                     _g5752857577_))))
                                            (_g5752757573_ _g5752857577_))))
                                    (_g5752757573_ _g5752857577_))))
                            (_g5752757573_ _g5752857577_))))
                    (_g5752757573_ _g5752857577_)))))
        (_g5752657726_ _$stx57523_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57730_)
      (let* ((_g5773457756_
              (lambda (_g5773557752_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5773557752_)))
             (_g5773357825_
              (lambda (_g5773557760_)
                (if (gx#stx-pair? _g5773557760_)
                    (let ((_e5774157763_ (gx#syntax-e _g5773557760_)))
                      (let ((_hd5774057767_
                             (let ()
                               (declare (not safe))
                               (##car _e5774157763_)))
                            (_tl5773957770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5774157763_))))
                        (if (gx#stx-pair? _tl5773957770_)
                            (let ((_e5774457773_ (gx#syntax-e _tl5773957770_)))
                              (let ((_hd5774357777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5774457773_)))
                                    (_tl5774257780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5774457773_))))
                                (if (gx#stx-pair? _tl5774257780_)
                                    (let ((_e5774757783_
                                           (gx#syntax-e _tl5774257780_)))
                                      (let ((_hd5774657787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5774757783_)))
                                            (_tl5774557790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5774757783_))))
                                        (if (gx#stx-pair? _tl5774557790_)
                                            (let ((_e5775057793_
                                                   (gx#syntax-e
                                                    _tl5774557790_)))
                                              (let ((_hd5774957797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5775057793_)))
                                                    (_tl5774857800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5775057793_))))
                                                (if (gx#stx-null?
                                                     _tl5774857800_)
                                                    ((lambda (_L57803_
                                                              _L57805_
                                                              _L57806_)
                                                       (let ((__tmp60496
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60477
                                                              (let ((__tmp60484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60495
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60485
                                    (let ((__tmp60486
                                           (let ((__tmp60494
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60487
                                                  (let ((__tmp60488
                                                         (let ((__tmp60489
                                                                (let ((__tmp60490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60493 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60491
                                      (let ((__tmp60492
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60492))))
                                 (declare (not safe))
                                 (cons __tmp60493 __tmp60491))))
                          (declare (not safe))
                          (cons __tmp60490 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60488))))
                                             (declare (not safe))
                                             (cons __tmp60494 __tmp60487))))
                                      (declare (not safe))
                                      (cons __tmp60486 '()))))
                               (declare (not safe))
                               (cons __tmp60495 __tmp60485)))
                            (__tmp60478
                             (let ((__tmp60479
                                    (let ((__tmp60483
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60480
                                           (let ((__tmp60482
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60481
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60482 __tmp60481))))
                                      (declare (not safe))
                                      (cons __tmp60483 __tmp60480))))
                               (declare (not safe))
                               (cons __tmp60479 '()))))
                        (declare (not safe))
                        (cons __tmp60484 __tmp60478))))
                 (declare (not safe))
                 (cons __tmp60496 __tmp60477)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5774957797_
                                                     _hd5774657787_
                                                     _hd5774357777_)
                                                    (_g5773457756_
                                                     _g5773557760_))))
                                            (_g5773457756_ _g5773557760_))))
                                    (_g5773457756_ _g5773557760_))))
                            (_g5773457756_ _g5773557760_))))
                    (_g5773457756_ _g5773557760_)))))
        (_g5773357825_ _$stx57730_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx57829_)
      (let* ((_g5783357867_
              (lambda (_g5783457863_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5783457863_)))
             (_g5783257978_
              (lambda (_g5783457871_)
                (if (gx#stx-pair? _g5783457871_)
                    (let ((_e5784357874_ (gx#syntax-e _g5783457871_)))
                      (let ((_hd5784257878_
                             (let ()
                               (declare (not safe))
                               (##car _e5784357874_)))
                            (_tl5784157881_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5784357874_))))
                        (if (gx#stx-pair? _tl5784157881_)
                            (let ((_e5784657884_ (gx#syntax-e _tl5784157881_)))
                              (let ((_hd5784557888_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5784657884_)))
                                    (_tl5784457891_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5784657884_))))
                                (if (gx#stx-pair? _tl5784457891_)
                                    (let ((_e5784957894_
                                           (gx#syntax-e _tl5784457891_)))
                                      (let ((_hd5784857898_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5784957894_)))
                                            (_tl5784757901_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5784957894_))))
                                        (if (gx#stx-pair? _tl5784757901_)
                                            (let ((_e5785257904_
                                                   (gx#syntax-e
                                                    _tl5784757901_)))
                                              (let ((_hd5785157908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5785257904_)))
                                                    (_tl5785057911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5785257904_))))
                                                (if (gx#stx-pair?
                                                     _tl5785057911_)
                                                    (let ((_e5785557914_
                                                           (gx#syntax-e
                                                            _tl5785057911_)))
                                                      (let ((_hd5785457918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5785557914_)))
                    (_tl5785357921_
                     (let () (declare (not safe)) (##cdr _e5785557914_))))
                (if (gx#stx-pair? _tl5785357921_)
                    (let ((_e5785857924_ (gx#syntax-e _tl5785357921_)))
                      (let ((_hd5785757928_
                             (let ()
                               (declare (not safe))
                               (##car _e5785857924_)))
                            (_tl5785657931_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5785857924_))))
                        (if (gx#stx-pair? _tl5785657931_)
                            (let ((_e5786157934_ (gx#syntax-e _tl5785657931_)))
                              (let ((_hd5786057938_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5786157934_)))
                                    (_tl5785957941_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5786157934_))))
                                (if (gx#stx-null? _tl5785957941_)
                                    ((lambda (_L57944_
                                              _L57946_
                                              _L57947_
                                              _L57948_
                                              _L57949_
                                              _L57950_)
                                       (let ((__tmp60655
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60497
                                              (let ((__tmp60615
                                                     (let ((__tmp60646
                                                            (let ((__tmp60654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60647
                           (let ((__tmp60648
                                  (let ((__tmp60653
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60649
                                         (let ((__tmp60651
                                                (let ((__tmp60652
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60652)))
                                               (__tmp60650
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60651 __tmp60650))))
                                    (declare (not safe))
                                    (cons __tmp60653 __tmp60649))))
                             (declare (not safe))
                             (cons __tmp60648 '()))))
                      (declare (not safe))
                      (cons __tmp60654 __tmp60647)))
                   (__tmp60616
                    (let ((__tmp60640
                           (let ((__tmp60645 (gx#datum->syntax '#f 'size))
                                 (__tmp60641
                                  (let ((__tmp60642
                                         (let ((__tmp60644
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60643
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60644 __tmp60643))))
                                    (declare (not safe))
                                    (cons __tmp60642 '()))))
                             (declare (not safe))
                             (cons __tmp60645 __tmp60641)))
                          (__tmp60617
                           (let ((__tmp60632
                                  (let ((__tmp60639
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60633
                                         (let ((__tmp60634
                                                (let ((__tmp60638
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60635
                                                       (let ((__tmp60637
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60636
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60637 __tmp60636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60638
                                                        __tmp60635))))
                                           (declare (not safe))
                                           (cons __tmp60634 '()))))
                                    (declare (not safe))
                                    (cons __tmp60639 __tmp60633)))
                                 (__tmp60618
                                  (let ((__tmp60619
                                         (let ((__tmp60631
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60620
                                                (let ((__tmp60621
                                                       (let ((__tmp60630
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60622
                                                              (let ((__tmp60624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60629
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60625
                                    (let ((__tmp60628
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60626
                                           (let ((__tmp60627
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60627 '()))))
                                      (declare (not safe))
                                      (cons __tmp60628 __tmp60626))))
                               (declare (not safe))
                               (cons __tmp60629 __tmp60625)))
                            (__tmp60623
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60624 __tmp60623))))
                 (declare (not safe))
                 (cons __tmp60630 __tmp60622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60621 '()))))
                                           (declare (not safe))
                                           (cons __tmp60631 __tmp60620))))
                                    (declare (not safe))
                                    (cons __tmp60619 '()))))
                             (declare (not safe))
                             (cons __tmp60632 __tmp60618))))
                      (declare (not safe))
                      (cons __tmp60640 __tmp60617))))
               (declare (not safe))
               (cons __tmp60646 __tmp60616)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60498
                                                     (let ((__tmp60499
                                                            (let ((__tmp60614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60500
                           (let ((__tmp60613 (gx#datum->syntax '#f 'loop))
                                 (__tmp60501
                                  (let ((__tmp60600
                                         (let ((__tmp60609
                                                (let ((__tmp60612
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60610
                                                       (let ((__tmp60611
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60611
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60612
                                                        __tmp60610)))
                                               (__tmp60601
                                                (let ((__tmp60606
                                                       (let ((__tmp60608
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60607
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60608 __tmp60607)))
              (__tmp60602
               (let ((__tmp60603
                      (let ((__tmp60605 (gx#datum->syntax '#f 'deleted))
                            (__tmp60604
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60605 __tmp60604))))
                 (declare (not safe))
                 (cons __tmp60603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60606
                                                        __tmp60602))))
                                           (declare (not safe))
                                           (cons __tmp60609 __tmp60601)))
                                        (__tmp60502
                                         (let ((__tmp60503
                                                (let ((__tmp60599
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60504
                                                       (let ((__tmp60591
                                                              (let ((__tmp60598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60592
                             (let ((__tmp60593
                                    (let ((__tmp60597
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60594
                                           (let ((__tmp60595
                                                  (let ((__tmp60596
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60596 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60595))))
                                      (declare (not safe))
                                      (cons __tmp60597 __tmp60594))))
                               (declare (not safe))
                               (cons __tmp60593 '()))))
                        (declare (not safe))
                        (cons __tmp60598 __tmp60592)))
                     (__tmp60505
                      (let ((__tmp60506
                             (let ((__tmp60590 (gx#datum->syntax '#f 'cond))
                                   (__tmp60507
                                    (let ((__tmp60581
                                           (let ((__tmp60583
                                                  (let ((__tmp60589
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60584
                                                         (let ((__tmp60588
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60585
                        (let ((__tmp60586
                               (let ((__tmp60587
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60587 '()))))
                          (declare (not safe))
                          (cons __tmp60586 '()))))
                   (declare (not safe))
                   (cons __tmp60588 __tmp60585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60589
                                                          __tmp60584)))
                                                 (__tmp60582
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60583 __tmp60582)))
                                          (__tmp60508
                                           (let ((__tmp60548
                                                  (let ((__tmp60574
                                                         (let ((__tmp60580
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60575
                        (let ((__tmp60579 (gx#datum->syntax '#f 'k))
                              (__tmp60576
                               (let ((__tmp60577
                                      (let ((__tmp60578
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60578 '()))))
                                 (declare (not safe))
                                 (cons __tmp60577 '()))))
                          (declare (not safe))
                          (cons __tmp60579 __tmp60576))))
                   (declare (not safe))
                   (cons __tmp60580 __tmp60575)))
                (__tmp60549
                 (let ((__tmp60550
                        (let ((__tmp60573 (gx#datum->syntax '#f 'loop))
                              (__tmp60551
                               (let ((__tmp60565
                                      (let ((__tmp60572
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60566
                                             (let ((__tmp60571
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60567
                                                    (let ((__tmp60570
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60568
                                                           (let ((__tmp60569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60569 '()))))
              (declare (not safe))
              (cons __tmp60570 __tmp60568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60571 __tmp60567))))
                                        (declare (not safe))
                                        (cons __tmp60572 __tmp60566)))
                                     (__tmp60552
                                      (let ((__tmp60560
                                             (let ((__tmp60564
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60561
                                                    (let ((__tmp60563
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60562
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60563
                                                            __tmp60562))))
                                               (declare (not safe))
                                               (cons __tmp60564 __tmp60561)))
                                            (__tmp60553
                                             (let ((__tmp60554
                                                    (let ((__tmp60559
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60555
                                                           (let ((__tmp60558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60556
                          (let ((__tmp60557 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60557 '()))))
                     (declare (not safe))
                     (cons __tmp60558 __tmp60556))))
              (declare (not safe))
              (cons __tmp60559 __tmp60555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60554 '()))))
                                        (declare (not safe))
                                        (cons __tmp60560 __tmp60553))))
                                 (declare (not safe))
                                 (cons __tmp60565 __tmp60552))))
                          (declare (not safe))
                          (cons __tmp60573 __tmp60551))))
                   (declare (not safe))
                   (cons __tmp60550 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60574
                                                          __tmp60549)))
                                                 (__tmp60509
                                                  (let ((__tmp60533
                                                         (let ((__tmp60544
                                                                (let ((__tmp60545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60546
                                      (let ((__tmp60547
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60547 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60546))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60545)))
                       (__tmp60534
                        (let ((__tmp60535
                               (let ((__tmp60543
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60536
                                      (let ((__tmp60537
                                             (let ((__tmp60538
                                                    (let ((__tmp60542
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60539
                                                           (let ((__tmp60541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60540
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60541 __tmp60540))))
              (declare (not safe))
              (cons __tmp60542 __tmp60539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60538 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60537))))
                                 (declare (not safe))
                                 (cons __tmp60543 __tmp60536))))
                          (declare (not safe))
                          (cons __tmp60535 '()))))
                   (declare (not safe))
                   (cons __tmp60544 __tmp60534)))
                (__tmp60510
                 (let ((__tmp60511
                        (let ((__tmp60532 (gx#datum->syntax '#f 'else))
                              (__tmp60512
                               (let ((__tmp60513
                                      (let ((__tmp60531
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60514
                                             (let ((__tmp60523
                                                    (let ((__tmp60530
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60524
                                                           (let ((__tmp60529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60525
                          (let ((__tmp60528 (gx#datum->syntax '#f 'i))
                                (__tmp60526
                                 (let ((__tmp60527
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60527 '()))))
                            (declare (not safe))
                            (cons __tmp60528 __tmp60526))))
                     (declare (not safe))
                     (cons __tmp60529 __tmp60525))))
              (declare (not safe))
              (cons __tmp60530 __tmp60524)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60515
                                                    (let ((__tmp60518
                                                           (let ((__tmp60522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60519
                          (let ((__tmp60521 (gx#datum->syntax '#f 'i))
                                (__tmp60520
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60521 __tmp60520))))
                     (declare (not safe))
                     (cons __tmp60522 __tmp60519)))
                  (__tmp60516
                   (let ((__tmp60517 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60517 '()))))
              (declare (not safe))
              (cons __tmp60518 __tmp60516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60523 __tmp60515))))
                                        (declare (not safe))
                                        (cons __tmp60531 __tmp60514))))
                                 (declare (not safe))
                                 (cons __tmp60513 '()))))
                          (declare (not safe))
                          (cons __tmp60532 __tmp60512))))
                   (declare (not safe))
                   (cons __tmp60511 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60533
                                                          __tmp60510))))
                                             (declare (not safe))
                                             (cons __tmp60548 __tmp60509))))
                                      (declare (not safe))
                                      (cons __tmp60581 __tmp60508))))
                               (declare (not safe))
                               (cons __tmp60590 __tmp60507))))
                        (declare (not safe))
                        (cons __tmp60506 '()))))
                 (declare (not safe))
                 (cons __tmp60591 __tmp60505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60599
                                                        __tmp60504))))
                                           (declare (not safe))
                                           (cons __tmp60503 '()))))
                                    (declare (not safe))
                                    (cons __tmp60600 __tmp60502))))
                             (declare (not safe))
                             (cons __tmp60613 __tmp60501))))
                      (declare (not safe))
                      (cons __tmp60614 __tmp60500))))
               (declare (not safe))
               (cons __tmp60499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60615 __tmp60498))))
                                         (declare (not safe))
                                         (cons __tmp60655 __tmp60497)))
                                     _hd5786057938_
                                     _hd5785757928_
                                     _hd5785457918_
                                     _hd5785157908_
                                     _hd5784857898_
                                     _hd5784557888_)
                                    (_g5783357867_ _g5783457871_))))
                            (_g5783357867_ _g5783457871_))))
                    (_g5783357867_ _g5783457871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5783357867_
                                                     _g5783457871_))))
                                            (_g5783357867_ _g5783457871_))))
                                    (_g5783357867_ _g5783457871_))))
                            (_g5783357867_ _g5783457871_))))
                    (_g5783357867_ _g5783457871_)))))
        (_g5783257978_ _$stx57829_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx57982_)
      (let* ((_g5798658028_
              (lambda (_g5798758024_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5798758024_)))
             (_g5798558167_
              (lambda (_g5798758032_)
                (if (gx#stx-pair? _g5798758032_)
                    (let ((_e5799858035_ (gx#syntax-e _g5798758032_)))
                      (let ((_hd5799758039_
                             (let ()
                               (declare (not safe))
                               (##car _e5799858035_)))
                            (_tl5799658042_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5799858035_))))
                        (if (gx#stx-pair? _tl5799658042_)
                            (let ((_e5800158045_ (gx#syntax-e _tl5799658042_)))
                              (let ((_hd5800058049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5800158045_)))
                                    (_tl5799958052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5800158045_))))
                                (if (gx#stx-pair? _tl5799958052_)
                                    (let ((_e5800458055_
                                           (gx#syntax-e _tl5799958052_)))
                                      (let ((_hd5800358059_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5800458055_)))
                                            (_tl5800258062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5800458055_))))
                                        (if (gx#stx-pair? _tl5800258062_)
                                            (let ((_e5800758065_
                                                   (gx#syntax-e
                                                    _tl5800258062_)))
                                              (let ((_hd5800658069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5800758065_)))
                                                    (_tl5800558072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5800758065_))))
                                                (if (gx#stx-pair?
                                                     _tl5800558072_)
                                                    (let ((_e5801058075_
                                                           (gx#syntax-e
                                                            _tl5800558072_)))
                                                      (let ((_hd5800958079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5801058075_)))
                    (_tl5800858082_
                     (let () (declare (not safe)) (##cdr _e5801058075_))))
                (if (gx#stx-pair? _tl5800858082_)
                    (let ((_e5801358085_ (gx#syntax-e _tl5800858082_)))
                      (let ((_hd5801258089_
                             (let ()
                               (declare (not safe))
                               (##car _e5801358085_)))
                            (_tl5801158092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5801358085_))))
                        (if (gx#stx-pair? _tl5801158092_)
                            (let ((_e5801658095_ (gx#syntax-e _tl5801158092_)))
                              (let ((_hd5801558099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5801658095_)))
                                    (_tl5801458102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5801658095_))))
                                (if (gx#stx-pair? _tl5801458102_)
                                    (let ((_e5801958105_
                                           (gx#syntax-e _tl5801458102_)))
                                      (let ((_hd5801858109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5801958105_)))
                                            (_tl5801758112_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5801958105_))))
                                        (if (gx#stx-pair? _tl5801758112_)
                                            (let ((_e5802258115_
                                                   (gx#syntax-e
                                                    _tl5801758112_)))
                                              (let ((_hd5802158119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5802258115_)))
                                                    (_tl5802058122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5802258115_))))
                                                (if (gx#stx-null?
                                                     _tl5802058122_)
                                                    ((lambda (_L58125_
                                                              _L58127_
                                                              _L58128_
                                                              _L58129_
                                                              _L58130_
                                                              _L58131_
                                                              _L58132_
                                                              _L58133_)
                                                       (let ((__tmp60872
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60656
                                                              (let ((__tmp60832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60863
                                    (let ((__tmp60871
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60864
                                           (let ((__tmp60865
                                                  (let ((__tmp60870
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60866
                                                         (let ((__tmp60868
                                                                (let ((__tmp60869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60869)))
                       (__tmp60867
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60868 __tmp60867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60870
                                                          __tmp60866))))
                                             (declare (not safe))
                                             (cons __tmp60865 '()))))
                                      (declare (not safe))
                                      (cons __tmp60871 __tmp60864)))
                                   (__tmp60833
                                    (let ((__tmp60857
                                           (let ((__tmp60862
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60858
                                                  (let ((__tmp60859
                                                         (let ((__tmp60861
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60860
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60861 __tmp60860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60859 '()))))
                                             (declare (not safe))
                                             (cons __tmp60862 __tmp60858)))
                                          (__tmp60834
                                           (let ((__tmp60849
                                                  (let ((__tmp60856
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60850
                                                         (let ((__tmp60851
                                                                (let ((__tmp60855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60852
                               (let ((__tmp60854 (gx#datum->syntax '#f 'size))
                                     (__tmp60853
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60854 __tmp60853))))
                          (declare (not safe))
                          (cons __tmp60855 __tmp60852))))
                   (declare (not safe))
                   (cons __tmp60851 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60856
                                                          __tmp60850)))
                                                 (__tmp60835
                                                  (let ((__tmp60836
                                                         (let ((__tmp60848
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60837
                        (let ((__tmp60838
                               (let ((__tmp60847
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60839
                                      (let ((__tmp60841
                                             (let ((__tmp60846
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60842
                                                    (let ((__tmp60845
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60843
                                                           (let ((__tmp60844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60844 '()))))
              (declare (not safe))
              (cons __tmp60845 __tmp60843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60846 __tmp60842)))
                                            (__tmp60840
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60841 __tmp60840))))
                                 (declare (not safe))
                                 (cons __tmp60847 __tmp60839))))
                          (declare (not safe))
                          (cons __tmp60838 '()))))
                   (declare (not safe))
                   (cons __tmp60848 __tmp60837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60836 '()))))
                                             (declare (not safe))
                                             (cons __tmp60849 __tmp60835))))
                                      (declare (not safe))
                                      (cons __tmp60857 __tmp60834))))
                               (declare (not safe))
                               (cons __tmp60863 __tmp60833)))
                            (__tmp60657
                             (let ((__tmp60658
                                    (let ((__tmp60831
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60659
                                           (let ((__tmp60830
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60660
                                                  (let ((__tmp60817
                                                         (let ((__tmp60826
                                                                (let ((__tmp60829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60827
                               (let ((__tmp60828
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60828 '()))))
                          (declare (not safe))
                          (cons __tmp60829 __tmp60827)))
                       (__tmp60818
                        (let ((__tmp60823
                               (let ((__tmp60825 (gx#datum->syntax '#f 'i))
                                     (__tmp60824
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60825 __tmp60824)))
                              (__tmp60819
                               (let ((__tmp60820
                                      (let ((__tmp60822
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60821
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60822 __tmp60821))))
                                 (declare (not safe))
                                 (cons __tmp60820 '()))))
                          (declare (not safe))
                          (cons __tmp60823 __tmp60819))))
                   (declare (not safe))
                   (cons __tmp60826 __tmp60818)))
                (__tmp60661
                 (let ((__tmp60662
                        (let ((__tmp60816 (gx#datum->syntax '#f 'let))
                              (__tmp60663
                               (let ((__tmp60808
                                      (let ((__tmp60815
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60809
                                             (let ((__tmp60810
                                                    (let ((__tmp60814
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60811
                                                           (let ((__tmp60812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60813 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60813 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60812))))
              (declare (not safe))
              (cons __tmp60814 __tmp60811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60810 '()))))
                                        (declare (not safe))
                                        (cons __tmp60815 __tmp60809)))
                                     (__tmp60664
                                      (let ((__tmp60665
                                             (let ((__tmp60807
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60666
                                                    (let ((__tmp60748
                                                           (let ((__tmp60800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60806 (gx#datum->syntax '#f 'eq?))
                                (__tmp60801
                                 (let ((__tmp60805 (gx#datum->syntax '#f 'k))
                                       (__tmp60802
                                        (let ((__tmp60803
                                               (let ((__tmp60804
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60804 '()))))
                                          (declare (not safe))
                                          (cons __tmp60803 '()))))
                                   (declare (not safe))
                                   (cons __tmp60805 __tmp60802))))
                            (declare (not safe))
                            (cons __tmp60806 __tmp60801)))
                         (__tmp60749
                          (let ((__tmp60750
                                 (let ((__tmp60799 (gx#datum->syntax '#f 'if))
                                       (__tmp60751
                                        (let ((__tmp60798
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60752
                                               (let ((__tmp60776
                                                      (let ((__tmp60797
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60777
                                                             (let ((__tmp60791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60796
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60792
                                   (let ((__tmp60793
                                          (let ((__tmp60795
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60794
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60795 __tmp60794))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60793))))
                              (declare (not safe))
                              (cons __tmp60796 __tmp60792)))
                           (__tmp60778
                            (let ((__tmp60781
                                   (let ((__tmp60790
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60782
                                          (let ((__tmp60783
                                                 (let ((__tmp60785
                                                        (let ((__tmp60789
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60786
                                                               (let ((__tmp60788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60787
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60788 __tmp60787))))
                  (declare (not safe))
                  (cons __tmp60789 __tmp60786)))
               (__tmp60784 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60785
                                                         __tmp60784))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60783))))
                                     (declare (not safe))
                                     (cons __tmp60790 __tmp60782)))
                                  (__tmp60779
                                   (let ((__tmp60780
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60780 '()))))
                              (declare (not safe))
                              (cons __tmp60781 __tmp60779))))
                       (declare (not safe))
                       (cons __tmp60791 __tmp60778))))
                (declare (not safe))
                (cons __tmp60797 __tmp60777)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60753
                                                      (let ((__tmp60754
                                                             (let ((__tmp60775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60755
                            (let ((__tmp60769
                                   (let ((__tmp60774
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60770
                                          (let ((__tmp60771
                                                 (let ((__tmp60773
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60772
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60773
                                                         __tmp60772))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60771))))
                                     (declare (not safe))
                                     (cons __tmp60774 __tmp60770)))
                                  (__tmp60756
                                   (let ((__tmp60759
                                          (let ((__tmp60768
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60760
                                                 (let ((__tmp60761
                                                        (let ((__tmp60763
                                                               (let ((__tmp60767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60764
                              (let ((__tmp60766 (gx#datum->syntax '#f 'probe))
                                    (__tmp60765
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60766 __tmp60765))))
                         (declare (not safe))
                         (cons __tmp60767 __tmp60764)))
                      (__tmp60762
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60763 __tmp60762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60761))))
                                            (declare (not safe))
                                            (cons __tmp60768 __tmp60760)))
                                         (__tmp60757
                                          (let ((__tmp60758
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60758 '()))))
                                     (declare (not safe))
                                     (cons __tmp60759 __tmp60757))))
                              (declare (not safe))
                              (cons __tmp60769 __tmp60756))))
                       (declare (not safe))
                       (cons __tmp60775 __tmp60755))))
                (declare (not safe))
                (cons __tmp60754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60776
                                                       __tmp60753))))
                                          (declare (not safe))
                                          (cons __tmp60798 __tmp60752))))
                                   (declare (not safe))
                                   (cons __tmp60799 __tmp60751))))
                            (declare (not safe))
                            (cons __tmp60750 '()))))
                     (declare (not safe))
                     (cons __tmp60800 __tmp60749)))
                  (__tmp60667
                   (let ((__tmp60715
                          (let ((__tmp60741
                                 (let ((__tmp60747 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60742
                                        (let ((__tmp60746
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60743
                                               (let ((__tmp60744
                                                      (let ((__tmp60745
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60745
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60744 '()))))
                                          (declare (not safe))
                                          (cons __tmp60746 __tmp60743))))
                                   (declare (not safe))
                                   (cons __tmp60747 __tmp60742)))
                                (__tmp60716
                                 (let ((__tmp60717
                                        (let ((__tmp60740
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60718
                                               (let ((__tmp60732
                                                      (let ((__tmp60739
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60733
                                                             (let ((__tmp60738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60734
                            (let ((__tmp60737 (gx#datum->syntax '#f 'i))
                                  (__tmp60735
                                   (let ((__tmp60736
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60736 '()))))
                              (declare (not safe))
                              (cons __tmp60737 __tmp60735))))
                       (declare (not safe))
                       (cons __tmp60738 __tmp60734))))
                (declare (not safe))
                (cons __tmp60739 __tmp60733)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60719
                                                      (let ((__tmp60727
                                                             (let ((__tmp60731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60728
                            (let ((__tmp60730 (gx#datum->syntax '#f 'i))
                                  (__tmp60729
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60730 __tmp60729))))
                       (declare (not safe))
                       (cons __tmp60731 __tmp60728)))
                    (__tmp60720
                     (let ((__tmp60721
                            (let ((__tmp60726 (gx#datum->syntax '#f 'or))
                                  (__tmp60722
                                   (let ((__tmp60725
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60723
                                          (let ((__tmp60724
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60724 '()))))
                                     (declare (not safe))
                                     (cons __tmp60725 __tmp60723))))
                              (declare (not safe))
                              (cons __tmp60726 __tmp60722))))
                       (declare (not safe))
                       (cons __tmp60721 '()))))
                (declare (not safe))
                (cons __tmp60727 __tmp60720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60732
                                                       __tmp60719))))
                                          (declare (not safe))
                                          (cons __tmp60740 __tmp60718))))
                                   (declare (not safe))
                                   (cons __tmp60717 '()))))
                            (declare (not safe))
                            (cons __tmp60741 __tmp60716)))
                         (__tmp60668
                          (let ((__tmp60692
                                 (let ((__tmp60711
                                        (let ((__tmp60712
                                               (let ((__tmp60713
                                                      (let ((__tmp60714
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60714
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60713))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60712)))
                                       (__tmp60693
                                        (let ((__tmp60705
                                               (let ((__tmp60710
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60706
                                                      (let ((__tmp60707
                                                             (let ((__tmp60709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60708
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60709 __tmp60708))))
                (declare (not safe))
                (cons _L58133_ __tmp60707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60710 __tmp60706)))
                                              (__tmp60694
                                               (let ((__tmp60695
                                                      (let ((__tmp60704
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60696
                                                             (let ((__tmp60697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60699
                                   (let ((__tmp60703
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60700
                                          (let ((__tmp60702
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60701
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60702 __tmp60701))))
                                     (declare (not safe))
                                     (cons __tmp60703 __tmp60700)))
                                  (__tmp60698
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60699 __tmp60698))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60697))))
                (declare (not safe))
                (cons __tmp60704 __tmp60696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60695 '()))))
                                          (declare (not safe))
                                          (cons __tmp60705 __tmp60694))))
                                   (declare (not safe))
                                   (cons __tmp60711 __tmp60693)))
                                (__tmp60669
                                 (let ((__tmp60670
                                        (let ((__tmp60691
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60671
                                               (let ((__tmp60672
                                                      (let ((__tmp60690
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60673
                                                             (let ((__tmp60682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60689
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60683
                                   (let ((__tmp60688
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60684
                                          (let ((__tmp60687
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60685
                                                 (let ((__tmp60686
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60686 '()))))
                                            (declare (not safe))
                                            (cons __tmp60687 __tmp60685))))
                                     (declare (not safe))
                                     (cons __tmp60688 __tmp60684))))
                              (declare (not safe))
                              (cons __tmp60689 __tmp60683)))
                           (__tmp60674
                            (let ((__tmp60677
                                   (let ((__tmp60681
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60678
                                          (let ((__tmp60680
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60679
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60680 __tmp60679))))
                                     (declare (not safe))
                                     (cons __tmp60681 __tmp60678)))
                                  (__tmp60675
                                   (let ((__tmp60676
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60676 '()))))
                              (declare (not safe))
                              (cons __tmp60677 __tmp60675))))
                       (declare (not safe))
                       (cons __tmp60682 __tmp60674))))
                (declare (not safe))
                (cons __tmp60690 __tmp60673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60672 '()))))
                                          (declare (not safe))
                                          (cons __tmp60691 __tmp60671))))
                                   (declare (not safe))
                                   (cons __tmp60670 '()))))
                            (declare (not safe))
                            (cons __tmp60692 __tmp60669))))
                     (declare (not safe))
                     (cons __tmp60715 __tmp60668))))
              (declare (not safe))
              (cons __tmp60748 __tmp60667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60807 __tmp60666))))
                                        (declare (not safe))
                                        (cons __tmp60665 '()))))
                                 (declare (not safe))
                                 (cons __tmp60808 __tmp60664))))
                          (declare (not safe))
                          (cons __tmp60816 __tmp60663))))
                   (declare (not safe))
                   (cons __tmp60662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60817
                                                          __tmp60661))))
                                             (declare (not safe))
                                             (cons __tmp60830 __tmp60660))))
                                      (declare (not safe))
                                      (cons __tmp60831 __tmp60659))))
                               (declare (not safe))
                               (cons __tmp60658 '()))))
                        (declare (not safe))
                        (cons __tmp60832 __tmp60657))))
                 (declare (not safe))
                 (cons __tmp60872 __tmp60656)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5802158119_
                                                     _hd5801858109_
                                                     _hd5801558099_
                                                     _hd5801258089_
                                                     _hd5800958079_
                                                     _hd5800658069_
                                                     _hd5800358059_
                                                     _hd5800058049_)
                                                    (_g5798658028_
                                                     _g5798758032_))))
                                            (_g5798658028_ _g5798758032_))))
                                    (_g5798658028_ _g5798758032_))))
                            (_g5798658028_ _g5798758032_))))
                    (_g5798658028_ _g5798758032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5798658028_
                                                     _g5798758032_))))
                                            (_g5798658028_ _g5798758032_))))
                                    (_g5798658028_ _g5798758032_))))
                            (_g5798658028_ _g5798758032_))))
                    (_g5798658028_ _g5798758032_)))))
        (_g5798558167_ _$stx57982_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58171_)
      (let* ((_g5817558221_
              (lambda (_g5817658217_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5817658217_)))
             (_g5817458374_
              (lambda (_g5817658225_)
                (if (gx#stx-pair? _g5817658225_)
                    (let ((_e5818858228_ (gx#syntax-e _g5817658225_)))
                      (let ((_hd5818758232_
                             (let ()
                               (declare (not safe))
                               (##car _e5818858228_)))
                            (_tl5818658235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5818858228_))))
                        (if (gx#stx-pair? _tl5818658235_)
                            (let ((_e5819158238_ (gx#syntax-e _tl5818658235_)))
                              (let ((_hd5819058242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5819158238_)))
                                    (_tl5818958245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5819158238_))))
                                (if (gx#stx-pair? _tl5818958245_)
                                    (let ((_e5819458248_
                                           (gx#syntax-e _tl5818958245_)))
                                      (let ((_hd5819358252_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5819458248_)))
                                            (_tl5819258255_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5819458248_))))
                                        (if (gx#stx-pair? _tl5819258255_)
                                            (let ((_e5819758258_
                                                   (gx#syntax-e
                                                    _tl5819258255_)))
                                              (let ((_hd5819658262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5819758258_)))
                                                    (_tl5819558265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5819758258_))))
                                                (if (gx#stx-pair?
                                                     _tl5819558265_)
                                                    (let ((_e5820058268_
                                                           (gx#syntax-e
                                                            _tl5819558265_)))
                                                      (let ((_hd5819958272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5820058268_)))
                    (_tl5819858275_
                     (let () (declare (not safe)) (##cdr _e5820058268_))))
                (if (gx#stx-pair? _tl5819858275_)
                    (let ((_e5820358278_ (gx#syntax-e _tl5819858275_)))
                      (let ((_hd5820258282_
                             (let ()
                               (declare (not safe))
                               (##car _e5820358278_)))
                            (_tl5820158285_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5820358278_))))
                        (if (gx#stx-pair? _tl5820158285_)
                            (let ((_e5820658288_ (gx#syntax-e _tl5820158285_)))
                              (let ((_hd5820558292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5820658288_)))
                                    (_tl5820458295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5820658288_))))
                                (if (gx#stx-pair? _tl5820458295_)
                                    (let ((_e5820958298_
                                           (gx#syntax-e _tl5820458295_)))
                                      (let ((_hd5820858302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5820958298_)))
                                            (_tl5820758305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5820958298_))))
                                        (if (gx#stx-pair? _tl5820758305_)
                                            (let ((_e5821258308_
                                                   (gx#syntax-e
                                                    _tl5820758305_)))
                                              (let ((_hd5821158312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5821258308_)))
                                                    (_tl5821058315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5821258308_))))
                                                (if (gx#stx-pair?
                                                     _tl5821058315_)
                                                    (let ((_e5821558318_
                                                           (gx#syntax-e
                                                            _tl5821058315_)))
                                                      (let ((_hd5821458322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5821558318_)))
                    (_tl5821358325_
                     (let () (declare (not safe)) (##cdr _e5821558318_))))
                (if (gx#stx-null? _tl5821358325_)
                    ((lambda (_L58328_
                              _L58330_
                              _L58331_
                              _L58332_
                              _L58333_
                              _L58334_
                              _L58335_
                              _L58336_
                              _L58337_)
                       (let ((__tmp61104 (gx#datum->syntax '#f 'let*))
                             (__tmp60873
                              (let ((__tmp61064
                                     (let ((__tmp61095
                                            (let ((__tmp61103
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61096
                                                   (let ((__tmp61097
                                                          (let ((__tmp61102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61098
                         (let ((__tmp61100
                                (let ((__tmp61101
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp61101)))
                               (__tmp61099
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp61100 __tmp61099))))
                    (declare (not safe))
                    (cons __tmp61102 __tmp61098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61097 '()))))
                                              (declare (not safe))
                                              (cons __tmp61103 __tmp61096)))
                                           (__tmp61065
                                            (let ((__tmp61089
                                                   (let ((__tmp61094
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61090
                                                          (let ((__tmp61091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61093
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61092
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp61093 __tmp61092))))
                    (declare (not safe))
                    (cons __tmp61091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61094
                                                           __tmp61090)))
                                                  (__tmp61066
                                                   (let ((__tmp61081
                                                          (let ((__tmp61088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61082
                         (let ((__tmp61083
                                (let ((__tmp61087
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61084
                                       (let ((__tmp61086
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61085
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61086 __tmp61085))))
                                  (declare (not safe))
                                  (cons __tmp61087 __tmp61084))))
                           (declare (not safe))
                           (cons __tmp61083 '()))))
                    (declare (not safe))
                    (cons __tmp61088 __tmp61082)))
                 (__tmp61067
                  (let ((__tmp61068
                         (let ((__tmp61080 (gx#datum->syntax '#f 'start))
                               (__tmp61069
                                (let ((__tmp61070
                                       (let ((__tmp61079
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61071
                                              (let ((__tmp61073
                                                     (let ((__tmp61078
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61074
                                                            (let ((__tmp61077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61075
                           (let ((__tmp61076 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61076 '()))))
                      (declare (not safe))
                      (cons __tmp61077 __tmp61075))))
               (declare (not safe))
               (cons __tmp61078 __tmp61074)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61072
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61073 __tmp61072))))
                                         (declare (not safe))
                                         (cons __tmp61079 __tmp61071))))
                                  (declare (not safe))
                                  (cons __tmp61070 '()))))
                           (declare (not safe))
                           (cons __tmp61080 __tmp61069))))
                    (declare (not safe))
                    (cons __tmp61068 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61081
                                                           __tmp61067))))
                                              (declare (not safe))
                                              (cons __tmp61089 __tmp61066))))
                                       (declare (not safe))
                                       (cons __tmp61095 __tmp61065)))
                                    (__tmp60874
                                     (let ((__tmp60875
                                            (let ((__tmp61063
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60876
                                                   (let ((__tmp61062
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60877
                                                          (let ((__tmp61049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61058
                                (let ((__tmp61061
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61059
                                       (let ((__tmp61060
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61060 '()))))
                                  (declare (not safe))
                                  (cons __tmp61061 __tmp61059)))
                               (__tmp61050
                                (let ((__tmp61055
                                       (let ((__tmp61057
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61056
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61057 __tmp61056)))
                                      (__tmp61051
                                       (let ((__tmp61052
                                              (let ((__tmp61054
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61053
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61054 __tmp61053))))
                                         (declare (not safe))
                                         (cons __tmp61052 '()))))
                                  (declare (not safe))
                                  (cons __tmp61055 __tmp61051))))
                           (declare (not safe))
                           (cons __tmp61058 __tmp61050)))
                        (__tmp60878
                         (let ((__tmp60879
                                (let ((__tmp61048 (gx#datum->syntax '#f 'let))
                                      (__tmp60880
                                       (let ((__tmp61040
                                              (let ((__tmp61047
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61041
                                                     (let ((__tmp61042
                                                            (let ((__tmp61046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61043
                           (let ((__tmp61044
                                  (let ((__tmp61045
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61045 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp61044))))
                      (declare (not safe))
                      (cons __tmp61046 __tmp61043))))
               (declare (not safe))
               (cons __tmp61042 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61047 __tmp61041)))
                                             (__tmp60881
                                              (let ((__tmp60882
                                                     (let ((__tmp61039
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60883
                                                            (let ((__tmp60976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61032
                                  (let ((__tmp61038
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61033
                                         (let ((__tmp61037
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61034
                                                (let ((__tmp61035
                                                       (let ((__tmp61036
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61036
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61035 '()))))
                                           (declare (not safe))
                                           (cons __tmp61037 __tmp61034))))
                                    (declare (not safe))
                                    (cons __tmp61038 __tmp61033)))
                                 (__tmp60977
                                  (let ((__tmp60978
                                         (let ((__tmp61031
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60979
                                                (let ((__tmp61030
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60980
                                                       (let ((__tmp61006
                                                              (let ((__tmp61029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61007
                             (let ((__tmp61023
                                    (let ((__tmp61028
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61024
                                           (let ((__tmp61025
                                                  (let ((__tmp61027
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61026
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61027
                                                          __tmp61026))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp61025))))
                                      (declare (not safe))
                                      (cons __tmp61028 __tmp61024)))
                                   (__tmp61008
                                    (let ((__tmp61011
                                           (let ((__tmp61022
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61012
                                                  (let ((__tmp61013
                                                         (let ((__tmp61017
                                                                (let ((__tmp61021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61018
                               (let ((__tmp61020
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61019
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61020 __tmp61019))))
                          (declare (not safe))
                          (cons __tmp61021 __tmp61018)))
                       (__tmp61014
                        (let ((__tmp61015
                               (let ((__tmp61016
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp61016))))
                          (declare (not safe))
                          (cons __tmp61015 '()))))
                   (declare (not safe))
                   (cons __tmp61017 __tmp61014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61013))))
                                             (declare (not safe))
                                             (cons __tmp61022 __tmp61012)))
                                          (__tmp61009
                                           (let ((__tmp61010
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61010 '()))))
                                      (declare (not safe))
                                      (cons __tmp61011 __tmp61009))))
                               (declare (not safe))
                               (cons __tmp61023 __tmp61008))))
                        (declare (not safe))
                        (cons __tmp61029 __tmp61007)))
                     (__tmp60981
                      (let ((__tmp60982
                             (let ((__tmp61005 (gx#datum->syntax '#f 'begin))
                                   (__tmp60983
                                    (let ((__tmp60999
                                           (let ((__tmp61004
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61000
                                                  (let ((__tmp61001
                                                         (let ((__tmp61003
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61002
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp61003 __tmp61002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61001))))
                                             (declare (not safe))
                                             (cons __tmp61004 __tmp61000)))
                                          (__tmp60984
                                           (let ((__tmp60987
                                                  (let ((__tmp60998
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60988
                                                         (let ((__tmp60989
                                                                (let ((__tmp60993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60997 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60994
                                      (let ((__tmp60996
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60995
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60996 __tmp60995))))
                                 (declare (not safe))
                                 (cons __tmp60997 __tmp60994)))
                              (__tmp60990
                               (let ((__tmp60991
                                      (let ((__tmp60992
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60992))))
                                 (declare (not safe))
                                 (cons __tmp60991 '()))))
                          (declare (not safe))
                          (cons __tmp60993 __tmp60990))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60998
                                                          __tmp60988)))
                                                 (__tmp60985
                                                  (let ((__tmp60986
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60986 '()))))
                                             (declare (not safe))
                                             (cons __tmp60987 __tmp60985))))
                                      (declare (not safe))
                                      (cons __tmp60999 __tmp60984))))
                               (declare (not safe))
                               (cons __tmp61005 __tmp60983))))
                        (declare (not safe))
                        (cons __tmp60982 '()))))
                 (declare (not safe))
                 (cons __tmp61006 __tmp60981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61030
                                                        __tmp60980))))
                                           (declare (not safe))
                                           (cons __tmp61031 __tmp60979))))
                                    (declare (not safe))
                                    (cons __tmp60978 '()))))
                             (declare (not safe))
                             (cons __tmp61032 __tmp60977)))
                          (__tmp60884
                           (let ((__tmp60943
                                  (let ((__tmp60969
                                         (let ((__tmp60975
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60970
                                                (let ((__tmp60974
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60971
                                                       (let ((__tmp60972
                                                              (let ((__tmp60973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60973 '()))))
                 (declare (not safe))
                 (cons __tmp60972 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60974
                                                        __tmp60971))))
                                           (declare (not safe))
                                           (cons __tmp60975 __tmp60970)))
                                        (__tmp60944
                                         (let ((__tmp60945
                                                (let ((__tmp60968
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60946
                                                       (let ((__tmp60960
                                                              (let ((__tmp60967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60961
                             (let ((__tmp60966 (gx#datum->syntax '#f 'start))
                                   (__tmp60962
                                    (let ((__tmp60965
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60963
                                           (let ((__tmp60964
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60964 '()))))
                                      (declare (not safe))
                                      (cons __tmp60965 __tmp60963))))
                               (declare (not safe))
                               (cons __tmp60966 __tmp60962))))
                        (declare (not safe))
                        (cons __tmp60967 __tmp60961)))
                     (__tmp60947
                      (let ((__tmp60955
                             (let ((__tmp60959 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60956
                                    (let ((__tmp60958
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60957
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60958 __tmp60957))))
                               (declare (not safe))
                               (cons __tmp60959 __tmp60956)))
                            (__tmp60948
                             (let ((__tmp60949
                                    (let ((__tmp60954
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60950
                                           (let ((__tmp60953
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60951
                                                  (let ((__tmp60952
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60952 '()))))
                                             (declare (not safe))
                                             (cons __tmp60953 __tmp60951))))
                                      (declare (not safe))
                                      (cons __tmp60954 __tmp60950))))
                               (declare (not safe))
                               (cons __tmp60949 '()))))
                        (declare (not safe))
                        (cons __tmp60955 __tmp60948))))
                 (declare (not safe))
                 (cons __tmp60960 __tmp60947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60968
                                                        __tmp60946))))
                                           (declare (not safe))
                                           (cons __tmp60945 '()))))
                                    (declare (not safe))
                                    (cons __tmp60969 __tmp60944)))
                                 (__tmp60885
                                  (let ((__tmp60909
                                         (let ((__tmp60939
                                                (let ((__tmp60940
                                                       (let ((__tmp60941
                                                              (let ((__tmp60942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60942 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60940)))
                                               (__tmp60910
                                                (let ((__tmp60933
                                                       (let ((__tmp60938
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60934
                                                              (let ((__tmp60935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60937 (gx#datum->syntax '#f 'probe))
                                   (__tmp60936
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60937 __tmp60936))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60935))))
                 (declare (not safe))
                 (cons __tmp60938 __tmp60934)))
              (__tmp60911
               (let ((__tmp60912
                      (let ((__tmp60932 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60913
                             (let ((__tmp60914
                                    (let ((__tmp60927
                                           (let ((__tmp60931
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60928
                                                  (let ((__tmp60930
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60929
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60930
                                                          __tmp60929))))
                                             (declare (not safe))
                                             (cons __tmp60931 __tmp60928)))
                                          (__tmp60915
                                           (let ((__tmp60916
                                                  (let ((__tmp60917
                                                         (let ((__tmp60918
                                                                (let ((__tmp60926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60919
                               (let ((__tmp60920
                                      (let ((__tmp60921
                                             (let ((__tmp60925
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60922
                                                    (let ((__tmp60924
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60923
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60924
                                                            __tmp60923))))
                                               (declare (not safe))
                                               (cons __tmp60925 __tmp60922))))
                                        (declare (not safe))
                                        (cons __tmp60921 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60920))))
                          (declare (not safe))
                          (cons __tmp60926 __tmp60919))))
                   (declare (not safe))
                   (cons __tmp60918 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60917))))
                                             (declare (not safe))
                                             (cons __tmp60916 '()))))
                                      (declare (not safe))
                                      (cons __tmp60927 __tmp60915))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60914))))
                        (declare (not safe))
                        (cons __tmp60932 __tmp60913))))
                 (declare (not safe))
                 (cons __tmp60912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60933
                                                        __tmp60911))))
                                           (declare (not safe))
                                           (cons __tmp60939 __tmp60910)))
                                        (__tmp60886
                                         (let ((__tmp60887
                                                (let ((__tmp60908
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60888
                                                       (let ((__tmp60889
                                                              (let ((__tmp60907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60890
                             (let ((__tmp60899
                                    (let ((__tmp60906
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60900
                                           (let ((__tmp60905
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60901
                                                  (let ((__tmp60904
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60902
                                                         (let ((__tmp60903
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60903 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60904
                                                          __tmp60902))))
                                             (declare (not safe))
                                             (cons __tmp60905 __tmp60901))))
                                      (declare (not safe))
                                      (cons __tmp60906 __tmp60900)))
                                   (__tmp60891
                                    (let ((__tmp60894
                                           (let ((__tmp60898
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60895
                                                  (let ((__tmp60897
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60896
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60897
                                                          __tmp60896))))
                                             (declare (not safe))
                                             (cons __tmp60898 __tmp60895)))
                                          (__tmp60892
                                           (let ((__tmp60893
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60893 '()))))
                                      (declare (not safe))
                                      (cons __tmp60894 __tmp60892))))
                               (declare (not safe))
                               (cons __tmp60899 __tmp60891))))
                        (declare (not safe))
                        (cons __tmp60907 __tmp60890))))
                 (declare (not safe))
                 (cons __tmp60889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60908
                                                        __tmp60888))))
                                           (declare (not safe))
                                           (cons __tmp60887 '()))))
                                    (declare (not safe))
                                    (cons __tmp60909 __tmp60886))))
                             (declare (not safe))
                             (cons __tmp60943 __tmp60885))))
                      (declare (not safe))
                      (cons __tmp60976 __tmp60884))))
               (declare (not safe))
               (cons __tmp61039 __tmp60883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60882 '()))))
                                         (declare (not safe))
                                         (cons __tmp61040 __tmp60881))))
                                  (declare (not safe))
                                  (cons __tmp61048 __tmp60880))))
                           (declare (not safe))
                           (cons __tmp60879 '()))))
                    (declare (not safe))
                    (cons __tmp61049 __tmp60878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61062
                                                           __tmp60877))))
                                              (declare (not safe))
                                              (cons __tmp61063 __tmp60876))))
                                       (declare (not safe))
                                       (cons __tmp60875 '()))))
                                (declare (not safe))
                                (cons __tmp61064 __tmp60874))))
                         (declare (not safe))
                         (cons __tmp61104 __tmp60873)))
                     _hd5821458322_
                     _hd5821158312_
                     _hd5820858302_
                     _hd5820558292_
                     _hd5820258282_
                     _hd5819958272_
                     _hd5819658262_
                     _hd5819358252_
                     _hd5819058242_)
                    (_g5817558221_ _g5817658225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5817558221_
                                                     _g5817658225_))))
                                            (_g5817558221_ _g5817658225_))))
                                    (_g5817558221_ _g5817658225_))))
                            (_g5817558221_ _g5817658225_))))
                    (_g5817558221_ _g5817658225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5817558221_
                                                     _g5817658225_))))
                                            (_g5817558221_ _g5817658225_))))
                                    (_g5817558221_ _g5817658225_))))
                            (_g5817558221_ _g5817658225_))))
                    (_g5817558221_ _g5817658225_)))))
        (_g5817458374_ _$stx58171_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58378_)
      (let* ((_g5838258416_
              (lambda (_g5838358412_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5838358412_)))
             (_g5838158527_
              (lambda (_g5838358420_)
                (if (gx#stx-pair? _g5838358420_)
                    (let ((_e5839258423_ (gx#syntax-e _g5838358420_)))
                      (let ((_hd5839158427_
                             (let ()
                               (declare (not safe))
                               (##car _e5839258423_)))
                            (_tl5839058430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5839258423_))))
                        (if (gx#stx-pair? _tl5839058430_)
                            (let ((_e5839558433_ (gx#syntax-e _tl5839058430_)))
                              (let ((_hd5839458437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5839558433_)))
                                    (_tl5839358440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5839558433_))))
                                (if (gx#stx-pair? _tl5839358440_)
                                    (let ((_e5839858443_
                                           (gx#syntax-e _tl5839358440_)))
                                      (let ((_hd5839758447_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5839858443_)))
                                            (_tl5839658450_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5839858443_))))
                                        (if (gx#stx-pair? _tl5839658450_)
                                            (let ((_e5840158453_
                                                   (gx#syntax-e
                                                    _tl5839658450_)))
                                              (let ((_hd5840058457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5840158453_)))
                                                    (_tl5839958460_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5840158453_))))
                                                (if (gx#stx-pair?
                                                     _tl5839958460_)
                                                    (let ((_e5840458463_
                                                           (gx#syntax-e
                                                            _tl5839958460_)))
                                                      (let ((_hd5840358467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5840458463_)))
                    (_tl5840258470_
                     (let () (declare (not safe)) (##cdr _e5840458463_))))
                (if (gx#stx-pair? _tl5840258470_)
                    (let ((_e5840758473_ (gx#syntax-e _tl5840258470_)))
                      (let ((_hd5840658477_
                             (let ()
                               (declare (not safe))
                               (##car _e5840758473_)))
                            (_tl5840558480_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5840758473_))))
                        (if (gx#stx-pair? _tl5840558480_)
                            (let ((_e5841058483_ (gx#syntax-e _tl5840558480_)))
                              (let ((_hd5840958487_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5841058483_)))
                                    (_tl5840858490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5841058483_))))
                                (if (gx#stx-null? _tl5840858490_)
                                    ((lambda (_L58493_
                                              _L58495_
                                              _L58496_
                                              _L58497_
                                              _L58498_
                                              _L58499_)
                                       (let ((__tmp61266
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61105
                                              (let ((__tmp61226
                                                     (let ((__tmp61257
                                                            (let ((__tmp61265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61258
                           (let ((__tmp61259
                                  (let ((__tmp61264
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61260
                                         (let ((__tmp61262
                                                (let ((__tmp61263
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp61263)))
                                               (__tmp61261
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61262 __tmp61261))))
                                    (declare (not safe))
                                    (cons __tmp61264 __tmp61260))))
                             (declare (not safe))
                             (cons __tmp61259 '()))))
                      (declare (not safe))
                      (cons __tmp61265 __tmp61258)))
                   (__tmp61227
                    (let ((__tmp61251
                           (let ((__tmp61256 (gx#datum->syntax '#f 'size))
                                 (__tmp61252
                                  (let ((__tmp61253
                                         (let ((__tmp61255
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61254
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61255 __tmp61254))))
                                    (declare (not safe))
                                    (cons __tmp61253 '()))))
                             (declare (not safe))
                             (cons __tmp61256 __tmp61252)))
                          (__tmp61228
                           (let ((__tmp61243
                                  (let ((__tmp61250
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61244
                                         (let ((__tmp61245
                                                (let ((__tmp61249
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61246
                                                       (let ((__tmp61248
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61247
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61248 __tmp61247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61249
                                                        __tmp61246))))
                                           (declare (not safe))
                                           (cons __tmp61245 '()))))
                                    (declare (not safe))
                                    (cons __tmp61250 __tmp61244)))
                                 (__tmp61229
                                  (let ((__tmp61230
                                         (let ((__tmp61242
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61231
                                                (let ((__tmp61232
                                                       (let ((__tmp61241
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61233
                                                              (let ((__tmp61235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61240
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61236
                                    (let ((__tmp61239
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61237
                                           (let ((__tmp61238
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61238 '()))))
                                      (declare (not safe))
                                      (cons __tmp61239 __tmp61237))))
                               (declare (not safe))
                               (cons __tmp61240 __tmp61236)))
                            (__tmp61234
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61235 __tmp61234))))
                 (declare (not safe))
                 (cons __tmp61241 __tmp61233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61232 '()))))
                                           (declare (not safe))
                                           (cons __tmp61242 __tmp61231))))
                                    (declare (not safe))
                                    (cons __tmp61230 '()))))
                             (declare (not safe))
                             (cons __tmp61243 __tmp61229))))
                      (declare (not safe))
                      (cons __tmp61251 __tmp61228))))
               (declare (not safe))
               (cons __tmp61257 __tmp61227)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61106
                                                     (let ((__tmp61107
                                                            (let ((__tmp61225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61108
                           (let ((__tmp61224 (gx#datum->syntax '#f 'loop))
                                 (__tmp61109
                                  (let ((__tmp61215
                                         (let ((__tmp61220
                                                (let ((__tmp61223
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61221
                                                       (let ((__tmp61222
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61222
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61223
                                                        __tmp61221)))
                                               (__tmp61216
                                                (let ((__tmp61217
                                                       (let ((__tmp61219
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61218
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61219 __tmp61218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61217 '()))))
                                           (declare (not safe))
                                           (cons __tmp61220 __tmp61216)))
                                        (__tmp61110
                                         (let ((__tmp61111
                                                (let ((__tmp61214
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61112
                                                       (let ((__tmp61206
                                                              (let ((__tmp61213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61207
                             (let ((__tmp61208
                                    (let ((__tmp61212
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61209
                                           (let ((__tmp61210
                                                  (let ((__tmp61211
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61211 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp61210))))
                                      (declare (not safe))
                                      (cons __tmp61212 __tmp61209))))
                               (declare (not safe))
                               (cons __tmp61208 '()))))
                        (declare (not safe))
                        (cons __tmp61213 __tmp61207)))
                     (__tmp61113
                      (let ((__tmp61114
                             (let ((__tmp61205 (gx#datum->syntax '#f 'cond))
                                   (__tmp61115
                                    (let ((__tmp61194
                                           (let ((__tmp61198
                                                  (let ((__tmp61204
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61199
                                                         (let ((__tmp61203
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61200
                        (let ((__tmp61201
                               (let ((__tmp61202
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61202 '()))))
                          (declare (not safe))
                          (cons __tmp61201 '()))))
                   (declare (not safe))
                   (cons __tmp61203 __tmp61200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61204
                                                          __tmp61199)))
                                                 (__tmp61195
                                                  (let ((__tmp61196
                                                         (let ((__tmp61197
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61196 '()))))
                                             (declare (not safe))
                                             (cons __tmp61198 __tmp61195)))
                                          (__tmp61116
                                           (let ((__tmp61168
                                                  (let ((__tmp61187
                                                         (let ((__tmp61193
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61188
                        (let ((__tmp61192 (gx#datum->syntax '#f 'k))
                              (__tmp61189
                               (let ((__tmp61190
                                      (let ((__tmp61191
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61191 '()))))
                                 (declare (not safe))
                                 (cons __tmp61190 '()))))
                          (declare (not safe))
                          (cons __tmp61192 __tmp61189))))
                   (declare (not safe))
                   (cons __tmp61193 __tmp61188)))
                (__tmp61169
                 (let ((__tmp61170
                        (let ((__tmp61186 (gx#datum->syntax '#f 'loop))
                              (__tmp61171
                               (let ((__tmp61178
                                      (let ((__tmp61185
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61179
                                             (let ((__tmp61184
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61180
                                                    (let ((__tmp61183
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61181
                                                           (let ((__tmp61182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61182 '()))))
              (declare (not safe))
              (cons __tmp61183 __tmp61181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61184 __tmp61180))))
                                        (declare (not safe))
                                        (cons __tmp61185 __tmp61179)))
                                     (__tmp61172
                                      (let ((__tmp61173
                                             (let ((__tmp61177
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61174
                                                    (let ((__tmp61176
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61175
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61176
                                                            __tmp61175))))
                                               (declare (not safe))
                                               (cons __tmp61177 __tmp61174))))
                                        (declare (not safe))
                                        (cons __tmp61173 '()))))
                                 (declare (not safe))
                                 (cons __tmp61178 __tmp61172))))
                          (declare (not safe))
                          (cons __tmp61186 __tmp61171))))
                   (declare (not safe))
                   (cons __tmp61170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61187
                                                          __tmp61169)))
                                                 (__tmp61117
                                                  (let ((__tmp61139
                                                         (let ((__tmp61164
                                                                (let ((__tmp61165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61166
                                      (let ((__tmp61167
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61167 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp61166))))
                          (declare (not safe))
                          (cons _L58496_ __tmp61165)))
                       (__tmp61140
                        (let ((__tmp61156
                               (let ((__tmp61163
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61157
                                      (let ((__tmp61158
                                             (let ((__tmp61162
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61159
                                                    (let ((__tmp61160
                                                           (let ((__tmp61161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61161 '()))))
              (declare (not safe))
              (cons __tmp61160 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61162 __tmp61159))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp61158))))
                                 (declare (not safe))
                                 (cons __tmp61163 __tmp61157)))
                              (__tmp61141
                               (let ((__tmp61144
                                      (let ((__tmp61155
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61145
                                             (let ((__tmp61146
                                                    (let ((__tmp61150
                                                           (let ((__tmp61154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61151
                          (let ((__tmp61153 (gx#datum->syntax '#f 'probe))
                                (__tmp61152
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61153 __tmp61152))))
                     (declare (not safe))
                     (cons __tmp61154 __tmp61151)))
                  (__tmp61147
                   (let ((__tmp61148
                          (let ((__tmp61149
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61149 '()))))
                     (declare (not safe))
                     (cons __tmp61148 '()))))
              (declare (not safe))
              (cons __tmp61150 __tmp61147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp61146))))
                                        (declare (not safe))
                                        (cons __tmp61155 __tmp61145)))
                                     (__tmp61142
                                      (let ((__tmp61143
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61143 '()))))
                                 (declare (not safe))
                                 (cons __tmp61144 __tmp61142))))
                          (declare (not safe))
                          (cons __tmp61156 __tmp61141))))
                   (declare (not safe))
                   (cons __tmp61164 __tmp61140)))
                (__tmp61118
                 (let ((__tmp61119
                        (let ((__tmp61138 (gx#datum->syntax '#f 'else))
                              (__tmp61120
                               (let ((__tmp61121
                                      (let ((__tmp61137
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61122
                                             (let ((__tmp61129
                                                    (let ((__tmp61136
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61130
                                                           (let ((__tmp61135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61131
                          (let ((__tmp61134 (gx#datum->syntax '#f 'i))
                                (__tmp61132
                                 (let ((__tmp61133
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61133 '()))))
                            (declare (not safe))
                            (cons __tmp61134 __tmp61132))))
                     (declare (not safe))
                     (cons __tmp61135 __tmp61131))))
              (declare (not safe))
              (cons __tmp61136 __tmp61130)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61123
                                                    (let ((__tmp61124
                                                           (let ((__tmp61128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61125
                          (let ((__tmp61127 (gx#datum->syntax '#f 'i))
                                (__tmp61126
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61127 __tmp61126))))
                     (declare (not safe))
                     (cons __tmp61128 __tmp61125))))
              (declare (not safe))
              (cons __tmp61124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61129 __tmp61123))))
                                        (declare (not safe))
                                        (cons __tmp61137 __tmp61122))))
                                 (declare (not safe))
                                 (cons __tmp61121 '()))))
                          (declare (not safe))
                          (cons __tmp61138 __tmp61120))))
                   (declare (not safe))
                   (cons __tmp61119 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61139
                                                          __tmp61118))))
                                             (declare (not safe))
                                             (cons __tmp61168 __tmp61117))))
                                      (declare (not safe))
                                      (cons __tmp61194 __tmp61116))))
                               (declare (not safe))
                               (cons __tmp61205 __tmp61115))))
                        (declare (not safe))
                        (cons __tmp61114 '()))))
                 (declare (not safe))
                 (cons __tmp61206 __tmp61113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61214
                                                        __tmp61112))))
                                           (declare (not safe))
                                           (cons __tmp61111 '()))))
                                    (declare (not safe))
                                    (cons __tmp61215 __tmp61110))))
                             (declare (not safe))
                             (cons __tmp61224 __tmp61109))))
                      (declare (not safe))
                      (cons __tmp61225 __tmp61108))))
               (declare (not safe))
               (cons __tmp61107 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61226 __tmp61106))))
                                         (declare (not safe))
                                         (cons __tmp61266 __tmp61105)))
                                     _hd5840958487_
                                     _hd5840658477_
                                     _hd5840358467_
                                     _hd5840058457_
                                     _hd5839758447_
                                     _hd5839458437_)
                                    (_g5838258416_ _g5838358420_))))
                            (_g5838258416_ _g5838358420_))))
                    (_g5838258416_ _g5838358420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5838258416_
                                                     _g5838358420_))))
                                            (_g5838258416_ _g5838358420_))))
                                    (_g5838258416_ _g5838358420_))))
                            (_g5838258416_ _g5838358420_))))
                    (_g5838258416_ _g5838358420_)))))
        (_g5838158527_ _$stx58378_)))))
