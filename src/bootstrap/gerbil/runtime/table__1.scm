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
                                       (let ((__tmp60046
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60044
                                              (let ((__tmp60045
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60045))))
                                         (declare (not safe))
                                         (cons __tmp60046 __tmp60044)))
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
                       (let ((__tmp60478 (gx#datum->syntax '#f 'begin))
                             (__tmp60047
                              (let ((__tmp60457
                                     (let ((__tmp60477
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60458
                                            (let ((__tmp60468
                                                   (let ((__tmp60469
                                                          (let ((__tmp60474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60476 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60475
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60476 __tmp60475)))
                        (__tmp60470
                         (let ((__tmp60471
                                (let ((__tmp60473 (gx#datum->syntax '#f 'seed))
                                      (__tmp60472
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60473 __tmp60472))))
                           (declare (not safe))
                           (cons __tmp60471 '()))))
                    (declare (not safe))
                    (cons __tmp60474 __tmp60470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60469)))
                                                  (__tmp60459
                                                   (let ((__tmp60460
                                                          (let ((__tmp60467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60461
                         (let ((__tmp60466 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60462
                                (let ((__tmp60463
                                       (let ((__tmp60464
                                              (let ((__tmp60465
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60465 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60464))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60463))))
                           (declare (not safe))
                           (cons __tmp60466 __tmp60462))))
                    (declare (not safe))
                    (cons __tmp60467 __tmp60461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60460 '()))))
                                              (declare (not safe))
                                              (cons __tmp60468 __tmp60459))))
                                       (declare (not safe))
                                       (cons __tmp60477 __tmp60458)))
                                    (__tmp60048
                                     (let ((__tmp60414
                                            (let ((__tmp60456
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60415
                                                   (let ((__tmp60449
                                                          (let ((__tmp60450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60455 (gx#datum->syntax '#f 'tab))
                               (__tmp60451
                                (let ((__tmp60454 (gx#datum->syntax '#f 'key))
                                      (__tmp60452
                                       (let ((__tmp60453
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60453 '()))))
                                  (declare (not safe))
                                  (cons __tmp60454 __tmp60452))))
                           (declare (not safe))
                           (cons __tmp60455 __tmp60451))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60450)))
                 (__tmp60416
                  (let ((__tmp60417
                         (let ((__tmp60448 (gx#datum->syntax '#f 'let))
                               (__tmp60418
                                (let ((__tmp60432
                                       (let ((__tmp60441
                                              (let ((__tmp60447
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60442
                                                     (let ((__tmp60443
                                                            (let ((__tmp60446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60444
                           (let ((__tmp60445 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60445 '()))))
                      (declare (not safe))
                      (cons __tmp60446 __tmp60444))))
               (declare (not safe))
               (cons __tmp60443 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60447 __tmp60442)))
                                             (__tmp60433
                                              (let ((__tmp60434
                                                     (let ((__tmp60440
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60435
                                                            (let ((__tmp60436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60439
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60437
                                  (let ((__tmp60438
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60438 '()))))
                             (declare (not safe))
                             (cons __tmp60439 __tmp60437))))
                      (declare (not safe))
                      (cons __tmp60436 '()))))
               (declare (not safe))
               (cons __tmp60440 __tmp60435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60434 '()))))
                                         (declare (not safe))
                                         (cons __tmp60441 __tmp60433)))
                                      (__tmp60419
                                       (let ((__tmp60420
                                              (let ((__tmp60431
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60421
                                                     (let ((__tmp60430
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60422
                                                            (let ((__tmp60429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60423
                           (let ((__tmp60424
                                  (let ((__tmp60425
                                         (let ((__tmp60428
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60426
                                                (let ((__tmp60427
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60427 '()))))
                                           (declare (not safe))
                                           (cons __tmp60428 __tmp60426))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60425))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60424))))
                      (declare (not safe))
                      (cons __tmp60429 __tmp60423))))
               (declare (not safe))
               (cons __tmp60430 __tmp60422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60431 __tmp60421))))
                                         (declare (not safe))
                                         (cons __tmp60420 '()))))
                                  (declare (not safe))
                                  (cons __tmp60432 __tmp60419))))
                           (declare (not safe))
                           (cons __tmp60448 __tmp60418))))
                    (declare (not safe))
                    (cons __tmp60417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60449
                                                           __tmp60416))))
                                              (declare (not safe))
                                              (cons __tmp60456 __tmp60415)))
                                           (__tmp60049
                                            (let ((__tmp60368
                                                   (let ((__tmp60413
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60369
                                                          (let ((__tmp60406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60407
                                (let ((__tmp60412 (gx#datum->syntax '#f 'tab))
                                      (__tmp60408
                                       (let ((__tmp60411
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60409
                                              (let ((__tmp60410
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60410 '()))))
                                         (declare (not safe))
                                         (cons __tmp60411 __tmp60409))))
                                  (declare (not safe))
                                  (cons __tmp60412 __tmp60408))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60407)))
                        (__tmp60370
                         (let ((__tmp60379
                                (let ((__tmp60405 (gx#datum->syntax '#f 'when))
                                      (__tmp60380
                                       (let ((__tmp60386
                                              (let ((__tmp60404
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60387
                                                     (let ((__tmp60400
                                                            (let ((__tmp60403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60401
                           (let ((__tmp60402 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60402 '()))))
                      (declare (not safe))
                      (cons __tmp60403 __tmp60401)))
                   (__tmp60388
                    (let ((__tmp60389
                           (let ((__tmp60399
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60390
                                  (let ((__tmp60392
                                         (let ((__tmp60398
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60393
                                                (let ((__tmp60394
                                                       (let ((__tmp60397
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60395
                                                              (let ((__tmp60396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60396 '()))))
                 (declare (not safe))
                 (cons __tmp60397 __tmp60395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60394 '()))))
                                           (declare (not safe))
                                           (cons __tmp60398 __tmp60393)))
                                        (__tmp60391
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60392 __tmp60391))))
                             (declare (not safe))
                             (cons __tmp60399 __tmp60390))))
                      (declare (not safe))
                      (cons __tmp60389 '()))))
               (declare (not safe))
               (cons __tmp60400 __tmp60388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60404 __tmp60387)))
                                             (__tmp60381
                                              (let ((__tmp60382
                                                     (let ((__tmp60385
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60383
                                                            (let ((__tmp60384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60384 '()))))
               (declare (not safe))
               (cons __tmp60385 __tmp60383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60382 '()))))
                                         (declare (not safe))
                                         (cons __tmp60386 __tmp60381))))
                                  (declare (not safe))
                                  (cons __tmp60405 __tmp60380)))
                               (__tmp60371
                                (let ((__tmp60372
                                       (let ((__tmp60373
                                              (let ((__tmp60378
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60374
                                                     (let ((__tmp60377
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60375
                                                            (let ((__tmp60376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60376 '()))))
               (declare (not safe))
               (cons __tmp60377 __tmp60375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60378 __tmp60374))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60373))))
                                  (declare (not safe))
                                  (cons __tmp60372 '()))))
                           (declare (not safe))
                           (cons __tmp60379 __tmp60371))))
                    (declare (not safe))
                    (cons __tmp60406 __tmp60370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60413
                                                           __tmp60369)))
                                                  (__tmp60050
                                                   (let ((__tmp60266
                                                          (let ((__tmp60367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60267
                         (let ((__tmp60360
                                (let ((__tmp60361
                                       (let ((__tmp60366
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60362
                                              (let ((__tmp60365
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60363
                                                     (let ((__tmp60364
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60364 '()))))
                                                (declare (not safe))
                                                (cons __tmp60365 __tmp60363))))
                                         (declare (not safe))
                                         (cons __tmp60366 __tmp60362))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp60361)))
                               (__tmp60268
                                (let ((__tmp60269
                                       (let ((__tmp60359
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60270
                                              (let ((__tmp60343
                                                     (let ((__tmp60352
                                                            (let ((__tmp60358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60353
                           (let ((__tmp60354
                                  (let ((__tmp60357
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60355
                                         (let ((__tmp60356
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60356 '()))))
                                    (declare (not safe))
                                    (cons __tmp60357 __tmp60355))))
                             (declare (not safe))
                             (cons __tmp60354 '()))))
                      (declare (not safe))
                      (cons __tmp60358 __tmp60353)))
                   (__tmp60344
                    (let ((__tmp60345
                           (let ((__tmp60351 (gx#datum->syntax '#f 'seed))
                                 (__tmp60346
                                  (let ((__tmp60347
                                         (let ((__tmp60350
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60348
                                                (let ((__tmp60349
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60349 '()))))
                                           (declare (not safe))
                                           (cons __tmp60350 __tmp60348))))
                                    (declare (not safe))
                                    (cons __tmp60347 '()))))
                             (declare (not safe))
                             (cons __tmp60351 __tmp60346))))
                      (declare (not safe))
                      (cons __tmp60345 '()))))
               (declare (not safe))
               (cons __tmp60352 __tmp60344)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60271
                                                     (let ((__tmp60272
                                                            (let ((__tmp60342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60273
                           (let ((__tmp60341 (gx#datum->syntax '#f 'table))
                                 (__tmp60274
                                  (let ((__tmp60340
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60275
                                         (let ((__tmp60276
                                                (let ((__tmp60277
                                                       (let ((__tmp60339
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60278
                                                              (let ((__tmp60338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60279
                             (let ((__tmp60301
                                    (let ((__tmp60337
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60302
                                           (let ((__tmp60303
                                                  (let ((__tmp60321
                                                         (let ((__tmp60336
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60322
                        (let ((__tmp60332
                               (let ((__tmp60335
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60333
                                      (let ((__tmp60334
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60334 '()))))
                                 (declare (not safe))
                                 (cons __tmp60335 __tmp60333)))
                              (__tmp60323
                               (let ((__tmp60324
                                      (let ((__tmp60331
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60325
                                             (let ((__tmp60327
                                                    (let ((__tmp60330
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60328
                                                           (let ((__tmp60329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60329 '()))))
              (declare (not safe))
              (cons __tmp60330 __tmp60328)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60326
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60327 __tmp60326))))
                                        (declare (not safe))
                                        (cons __tmp60331 __tmp60325))))
                                 (declare (not safe))
                                 (cons __tmp60324 '()))))
                          (declare (not safe))
                          (cons __tmp60332 __tmp60323))))
                   (declare (not safe))
                   (cons __tmp60336 __tmp60322)))
                (__tmp60304
                 (let ((__tmp60305
                        (let ((__tmp60320 (gx#datum->syntax '#f 'set!))
                              (__tmp60306
                               (let ((__tmp60316
                                      (let ((__tmp60319
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60317
                                             (let ((__tmp60318
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60318 '()))))
                                        (declare (not safe))
                                        (cons __tmp60319 __tmp60317)))
                                     (__tmp60307
                                      (let ((__tmp60308
                                             (let ((__tmp60315
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60309
                                                    (let ((__tmp60311
                                                           (let ((__tmp60314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60312
                          (let ((__tmp60313 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60313 '()))))
                     (declare (not safe))
                     (cons __tmp60314 __tmp60312)))
                  (__tmp60310 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60311 __tmp60310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60315 __tmp60309))))
                                        (declare (not safe))
                                        (cons __tmp60308 '()))))
                                 (declare (not safe))
                                 (cons __tmp60316 __tmp60307))))
                          (declare (not safe))
                          (cons __tmp60320 __tmp60306))))
                   (declare (not safe))
                   (cons __tmp60305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60321
                                                          __tmp60304))))
                                             (declare (not safe))
                                             (cons '() __tmp60303))))
                                      (declare (not safe))
                                      (cons __tmp60337 __tmp60302)))
                                   (__tmp60280
                                    (let ((__tmp60281
                                           (let ((__tmp60300
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60282
                                                  (let ((__tmp60283
                                                         (let ((__tmp60284
                                                                (let ((__tmp60299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60285
                               (let ((__tmp60295
                                      (let ((__tmp60298
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60296
                                             (let ((__tmp60297
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60297 '()))))
                                        (declare (not safe))
                                        (cons __tmp60298 __tmp60296)))
                                     (__tmp60286
                                      (let ((__tmp60287
                                             (let ((__tmp60294
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60288
                                                    (let ((__tmp60290
                                                           (let ((__tmp60293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60291
                          (let ((__tmp60292 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60292 '()))))
                     (declare (not safe))
                     (cons __tmp60293 __tmp60291)))
                  (__tmp60289 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60290 __tmp60289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60294 __tmp60288))))
                                        (declare (not safe))
                                        (cons __tmp60287 '()))))
                                 (declare (not safe))
                                 (cons __tmp60295 __tmp60286))))
                          (declare (not safe))
                          (cons __tmp60299 __tmp60285))))
                   (declare (not safe))
                   (cons __tmp60284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60283))))
                                             (declare (not safe))
                                             (cons __tmp60300 __tmp60282))))
                                      (declare (not safe))
                                      (cons __tmp60281 '()))))
                               (declare (not safe))
                               (cons __tmp60301 __tmp60280))))
                        (declare (not safe))
                        (cons __tmp60338 __tmp60279))))
                 (declare (not safe))
                 (cons __tmp60339 __tmp60278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp60277))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp60276))))
                                    (declare (not safe))
                                    (cons __tmp60340 __tmp60275))))
                             (declare (not safe))
                             (cons __tmp60341 __tmp60274))))
                      (declare (not safe))
                      (cons __tmp60342 __tmp60273))))
               (declare (not safe))
               (cons __tmp60272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60343 __tmp60271))))
                                         (declare (not safe))
                                         (cons __tmp60359 __tmp60270))))
                                  (declare (not safe))
                                  (cons __tmp60269 '()))))
                           (declare (not safe))
                           (cons __tmp60360 __tmp60268))))
                    (declare (not safe))
                    (cons __tmp60367 __tmp60267)))
                 (__tmp60051
                  (let ((__tmp60218
                         (let ((__tmp60265 (gx#datum->syntax '#f 'def))
                               (__tmp60219
                                (let ((__tmp60257
                                       (let ((__tmp60258
                                              (let ((__tmp60264
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60259
                                                     (let ((__tmp60263
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60260
                                                            (let ((__tmp60261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60262 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60262 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp60261))))
               (declare (not safe))
               (cons __tmp60263 __tmp60260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60264 __tmp60259))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp60258)))
                                      (__tmp60220
                                       (let ((__tmp60230
                                              (let ((__tmp60256
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60231
                                                     (let ((__tmp60237
                                                            (let ((__tmp60255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60238
                           (let ((__tmp60251
                                  (let ((__tmp60254
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60252
                                         (let ((__tmp60253
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60253 '()))))
                                    (declare (not safe))
                                    (cons __tmp60254 __tmp60252)))
                                 (__tmp60239
                                  (let ((__tmp60240
                                         (let ((__tmp60250
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60241
                                                (let ((__tmp60243
                                                       (let ((__tmp60249
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60244
                                                              (let ((__tmp60245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60248
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60246
                                    (let ((__tmp60247
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60247 '()))))
                               (declare (not safe))
                               (cons __tmp60248 __tmp60246))))
                        (declare (not safe))
                        (cons __tmp60245 '()))))
                 (declare (not safe))
                 (cons __tmp60249 __tmp60244)))
              (__tmp60242 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60243
                                                        __tmp60242))))
                                           (declare (not safe))
                                           (cons __tmp60250 __tmp60241))))
                                    (declare (not safe))
                                    (cons __tmp60240 '()))))
                             (declare (not safe))
                             (cons __tmp60251 __tmp60239))))
                      (declare (not safe))
                      (cons __tmp60255 __tmp60238)))
                   (__tmp60232
                    (let ((__tmp60233
                           (let ((__tmp60236
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60234
                                  (let ((__tmp60235
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60235 '()))))
                             (declare (not safe))
                             (cons __tmp60236 __tmp60234))))
                      (declare (not safe))
                      (cons __tmp60233 '()))))
               (declare (not safe))
               (cons __tmp60237 __tmp60232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60256 __tmp60231)))
                                             (__tmp60221
                                              (let ((__tmp60222
                                                     (let ((__tmp60223
                                                            (let ((__tmp60229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60224
                           (let ((__tmp60228 (gx#datum->syntax '#f 'key))
                                 (__tmp60225
                                  (let ((__tmp60226
                                         (let ((__tmp60227
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60227 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp60226))))
                             (declare (not safe))
                             (cons __tmp60228 __tmp60225))))
                      (declare (not safe))
                      (cons __tmp60229 __tmp60224))))
               (declare (not safe))
               (cons _L57684_ __tmp60223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60222 '()))))
                                         (declare (not safe))
                                         (cons __tmp60230 __tmp60221))))
                                  (declare (not safe))
                                  (cons __tmp60257 __tmp60220))))
                           (declare (not safe))
                           (cons __tmp60265 __tmp60219)))
                        (__tmp60052
                         (let ((__tmp60114
                                (let ((__tmp60217 (gx#datum->syntax '#f 'def))
                                      (__tmp60115
                                       (let ((__tmp60209
                                              (let ((__tmp60210
                                                     (let ((__tmp60216
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60211
                                                            (let ((__tmp60215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60212
                           (let ((__tmp60213
                                  (let ((__tmp60214
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60214 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp60213))))
                      (declare (not safe))
                      (cons __tmp60215 __tmp60212))))
               (declare (not safe))
               (cons __tmp60216 __tmp60211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp60210)))
                                             (__tmp60116
                                              (let ((__tmp60117
                                                     (let ((__tmp60208
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60118
                                                            (let ((__tmp60192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60201
                                  (let ((__tmp60207
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60202
                                         (let ((__tmp60203
                                                (let ((__tmp60206
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60204
                                                       (let ((__tmp60205
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60205
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60206
                                                        __tmp60204))))
                                           (declare (not safe))
                                           (cons __tmp60203 '()))))
                                    (declare (not safe))
                                    (cons __tmp60207 __tmp60202)))
                                 (__tmp60193
                                  (let ((__tmp60194
                                         (let ((__tmp60200
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60195
                                                (let ((__tmp60196
                                                       (let ((__tmp60199
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60197
                                                              (let ((__tmp60198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60198 '()))))
                 (declare (not safe))
                 (cons __tmp60199 __tmp60197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60196 '()))))
                                           (declare (not safe))
                                           (cons __tmp60200 __tmp60195))))
                                    (declare (not safe))
                                    (cons __tmp60194 '()))))
                             (declare (not safe))
                             (cons __tmp60201 __tmp60193)))
                          (__tmp60119
                           (let ((__tmp60120
                                  (let ((__tmp60191
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60121
                                         (let ((__tmp60190
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60122
                                                (let ((__tmp60189
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60123
                                                       (let ((__tmp60124
                                                              (let ((__tmp60125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60188 (gx#datum->syntax '#f 'key))
                                   (__tmp60126
                                    (let ((__tmp60127
                                           (let ((__tmp60187
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60128
                                                  (let ((__tmp60150
                                                         (let ((__tmp60186
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60151
                        (let ((__tmp60152
                               (let ((__tmp60170
                                      (let ((__tmp60185
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60171
                                             (let ((__tmp60181
                                                    (let ((__tmp60184
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60182
                                                           (let ((__tmp60183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60183 '()))))
              (declare (not safe))
              (cons __tmp60184 __tmp60182)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60172
                                                    (let ((__tmp60173
                                                           (let ((__tmp60180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60174
                          (let ((__tmp60176
                                 (let ((__tmp60179
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60177
                                        (let ((__tmp60178
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60178 '()))))
                                   (declare (not safe))
                                   (cons __tmp60179 __tmp60177)))
                                (__tmp60175
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60176 __tmp60175))))
                     (declare (not safe))
                     (cons __tmp60180 __tmp60174))))
              (declare (not safe))
              (cons __tmp60173 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60181 __tmp60172))))
                                        (declare (not safe))
                                        (cons __tmp60185 __tmp60171)))
                                     (__tmp60153
                                      (let ((__tmp60154
                                             (let ((__tmp60169
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60155
                                                    (let ((__tmp60165
                                                           (let ((__tmp60168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60166
                          (let ((__tmp60167 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60167 '()))))
                     (declare (not safe))
                     (cons __tmp60168 __tmp60166)))
                  (__tmp60156
                   (let ((__tmp60157
                          (let ((__tmp60164 (gx#datum->syntax '#f 'fx+))
                                (__tmp60158
                                 (let ((__tmp60160
                                        (let ((__tmp60163
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60161
                                               (let ((__tmp60162
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60162 '()))))
                                          (declare (not safe))
                                          (cons __tmp60163 __tmp60161)))
                                       (__tmp60159
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60160 __tmp60159))))
                            (declare (not safe))
                            (cons __tmp60164 __tmp60158))))
                     (declare (not safe))
                     (cons __tmp60157 '()))))
              (declare (not safe))
              (cons __tmp60165 __tmp60156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60169 __tmp60155))))
                                        (declare (not safe))
                                        (cons __tmp60154 '()))))
                                 (declare (not safe))
                                 (cons __tmp60170 __tmp60153))))
                          (declare (not safe))
                          (cons '() __tmp60152))))
                   (declare (not safe))
                   (cons __tmp60186 __tmp60151)))
                (__tmp60129
                 (let ((__tmp60130
                        (let ((__tmp60149 (gx#datum->syntax '#f 'lambda))
                              (__tmp60131
                               (let ((__tmp60132
                                      (let ((__tmp60133
                                             (let ((__tmp60148
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60134
                                                    (let ((__tmp60144
                                                           (let ((__tmp60147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60145
                          (let ((__tmp60146 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60146 '()))))
                     (declare (not safe))
                     (cons __tmp60147 __tmp60145)))
                  (__tmp60135
                   (let ((__tmp60136
                          (let ((__tmp60143 (gx#datum->syntax '#f 'fx+))
                                (__tmp60137
                                 (let ((__tmp60139
                                        (let ((__tmp60142
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60140
                                               (let ((__tmp60141
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60141 '()))))
                                          (declare (not safe))
                                          (cons __tmp60142 __tmp60140)))
                                       (__tmp60138
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60139 __tmp60138))))
                            (declare (not safe))
                            (cons __tmp60143 __tmp60137))))
                     (declare (not safe))
                     (cons __tmp60136 '()))))
              (declare (not safe))
              (cons __tmp60144 __tmp60135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60148 __tmp60134))))
                                        (declare (not safe))
                                        (cons __tmp60133 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60132))))
                          (declare (not safe))
                          (cons __tmp60149 __tmp60131))))
                   (declare (not safe))
                   (cons __tmp60130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60150
                                                          __tmp60129))))
                                             (declare (not safe))
                                             (cons __tmp60187 __tmp60128))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp60127))))
                               (declare (not safe))
                               (cons __tmp60188 __tmp60126))))
                        (declare (not safe))
                        (cons _L57680_ __tmp60125))))
                 (declare (not safe))
                 (cons _L57682_ __tmp60124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60189
                                                        __tmp60123))))
                                           (declare (not safe))
                                           (cons __tmp60190 __tmp60122))))
                                    (declare (not safe))
                                    (cons __tmp60191 __tmp60121))))
                             (declare (not safe))
                             (cons __tmp60120 '()))))
                      (declare (not safe))
                      (cons __tmp60192 __tmp60119))))
               (declare (not safe))
               (cons __tmp60208 __tmp60118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60117 '()))))
                                         (declare (not safe))
                                         (cons __tmp60209 __tmp60116))))
                                  (declare (not safe))
                                  (cons __tmp60217 __tmp60115)))
                               (__tmp60053
                                (let ((__tmp60054
                                       (let ((__tmp60113
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60055
                                              (let ((__tmp60108
                                                     (let ((__tmp60109
                                                            (let ((__tmp60112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60110
                           (let ((__tmp60111 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60111 '()))))
                      (declare (not safe))
                      (cons __tmp60112 __tmp60110))))
               (declare (not safe))
               (cons _L57683_ __tmp60109)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60056
                                                     (let ((__tmp60057
                                                            (let ((__tmp60107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60058
                           (let ((__tmp60091
                                  (let ((__tmp60100
                                         (let ((__tmp60106
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60101
                                                (let ((__tmp60102
                                                       (let ((__tmp60105
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60103
                                                              (let ((__tmp60104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60104 '()))))
                 (declare (not safe))
                 (cons __tmp60105 __tmp60103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60102 '()))))
                                           (declare (not safe))
                                           (cons __tmp60106 __tmp60101)))
                                        (__tmp60092
                                         (let ((__tmp60093
                                                (let ((__tmp60099
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60094
                                                       (let ((__tmp60095
                                                              (let ((__tmp60098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60096
                             (let ((__tmp60097 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60097 '()))))
                        (declare (not safe))
                        (cons __tmp60098 __tmp60096))))
                 (declare (not safe))
                 (cons __tmp60095 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60099
                                                        __tmp60094))))
                                           (declare (not safe))
                                           (cons __tmp60093 '()))))
                                    (declare (not safe))
                                    (cons __tmp60100 __tmp60092)))
                                 (__tmp60059
                                  (let ((__tmp60060
                                         (let ((__tmp60090
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60061
                                                (let ((__tmp60089
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60062
                                                       (let ((__tmp60088
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60063
                                                              (let ((__tmp60064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60065
                                    (let ((__tmp60087
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60066
                                           (let ((__tmp60067
                                                  (let ((__tmp60086
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60068
                                                         (let ((__tmp60069
                                                                (let ((__tmp60070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60085 (gx#datum->syntax '#f 'set!))
                                     (__tmp60071
                                      (let ((__tmp60081
                                             (let ((__tmp60084
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60082
                                                    (let ((__tmp60083
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60083 '()))))
                                               (declare (not safe))
                                               (cons __tmp60084 __tmp60082)))
                                            (__tmp60072
                                             (let ((__tmp60073
                                                    (let ((__tmp60080
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60074
                                                           (let ((__tmp60076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60079
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60077
                                 (let ((__tmp60078
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60078 '()))))
                            (declare (not safe))
                            (cons __tmp60079 __tmp60077)))
                         (__tmp60075
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60076 __tmp60075))))
              (declare (not safe))
              (cons __tmp60080 __tmp60074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60073 '()))))
                                        (declare (not safe))
                                        (cons __tmp60081 __tmp60072))))
                                 (declare (not safe))
                                 (cons __tmp60085 __tmp60071))))
                          (declare (not safe))
                          (cons __tmp60070 '()))))
                   (declare (not safe))
                   (cons '() __tmp60069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60086
                                                          __tmp60068))))
                                             (declare (not safe))
                                             (cons __tmp60067 '()))))
                                      (declare (not safe))
                                      (cons __tmp60087 __tmp60066))))
                               (declare (not safe))
                               (cons _L57680_ __tmp60065))))
                        (declare (not safe))
                        (cons _L57682_ __tmp60064))))
                 (declare (not safe))
                 (cons __tmp60088 __tmp60063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60089
                                                        __tmp60062))))
                                           (declare (not safe))
                                           (cons __tmp60090 __tmp60061))))
                                    (declare (not safe))
                                    (cons __tmp60060 '()))))
                             (declare (not safe))
                             (cons __tmp60091 __tmp60059))))
                      (declare (not safe))
                      (cons __tmp60107 __tmp60058))))
               (declare (not safe))
               (cons __tmp60057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60108 __tmp60056))))
                                         (declare (not safe))
                                         (cons __tmp60113 __tmp60055))))
                                  (declare (not safe))
                                  (cons __tmp60054 '()))))
                           (declare (not safe))
                           (cons __tmp60114 __tmp60053))))
                    (declare (not safe))
                    (cons __tmp60218 __tmp60052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60266
                                                           __tmp60051))))
                                              (declare (not safe))
                                              (cons __tmp60368 __tmp60050))))
                                       (declare (not safe))
                                       (cons __tmp60414 __tmp60049))))
                                (declare (not safe))
                                (cons __tmp60457 __tmp60048))))
                         (declare (not safe))
                         (cons __tmp60478 __tmp60047)))
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
                                                       (let ((__tmp60498
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60479
                                                              (let ((__tmp60486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60497
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60487
                                    (let ((__tmp60488
                                           (let ((__tmp60496
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60489
                                                  (let ((__tmp60490
                                                         (let ((__tmp60491
                                                                (let ((__tmp60492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60495 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60493
                                      (let ((__tmp60494
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60494))))
                                 (declare (not safe))
                                 (cons __tmp60495 __tmp60493))))
                          (declare (not safe))
                          (cons __tmp60492 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60490))))
                                             (declare (not safe))
                                             (cons __tmp60496 __tmp60489))))
                                      (declare (not safe))
                                      (cons __tmp60488 '()))))
                               (declare (not safe))
                               (cons __tmp60497 __tmp60487)))
                            (__tmp60480
                             (let ((__tmp60481
                                    (let ((__tmp60485
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60482
                                           (let ((__tmp60484
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60483
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60484 __tmp60483))))
                                      (declare (not safe))
                                      (cons __tmp60485 __tmp60482))))
                               (declare (not safe))
                               (cons __tmp60481 '()))))
                        (declare (not safe))
                        (cons __tmp60486 __tmp60480))))
                 (declare (not safe))
                 (cons __tmp60498 __tmp60479)))
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
                                       (let ((__tmp60657
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60499
                                              (let ((__tmp60617
                                                     (let ((__tmp60648
                                                            (let ((__tmp60656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60649
                           (let ((__tmp60650
                                  (let ((__tmp60655
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60651
                                         (let ((__tmp60653
                                                (let ((__tmp60654
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60654)))
                                               (__tmp60652
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60653 __tmp60652))))
                                    (declare (not safe))
                                    (cons __tmp60655 __tmp60651))))
                             (declare (not safe))
                             (cons __tmp60650 '()))))
                      (declare (not safe))
                      (cons __tmp60656 __tmp60649)))
                   (__tmp60618
                    (let ((__tmp60642
                           (let ((__tmp60647 (gx#datum->syntax '#f 'size))
                                 (__tmp60643
                                  (let ((__tmp60644
                                         (let ((__tmp60646
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60645
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60646 __tmp60645))))
                                    (declare (not safe))
                                    (cons __tmp60644 '()))))
                             (declare (not safe))
                             (cons __tmp60647 __tmp60643)))
                          (__tmp60619
                           (let ((__tmp60634
                                  (let ((__tmp60641
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60635
                                         (let ((__tmp60636
                                                (let ((__tmp60640
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60637
                                                       (let ((__tmp60639
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60638
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60639 __tmp60638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60640
                                                        __tmp60637))))
                                           (declare (not safe))
                                           (cons __tmp60636 '()))))
                                    (declare (not safe))
                                    (cons __tmp60641 __tmp60635)))
                                 (__tmp60620
                                  (let ((__tmp60621
                                         (let ((__tmp60633
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60622
                                                (let ((__tmp60623
                                                       (let ((__tmp60632
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60624
                                                              (let ((__tmp60626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60631
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60627
                                    (let ((__tmp60630
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60628
                                           (let ((__tmp60629
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60629 '()))))
                                      (declare (not safe))
                                      (cons __tmp60630 __tmp60628))))
                               (declare (not safe))
                               (cons __tmp60631 __tmp60627)))
                            (__tmp60625
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60626 __tmp60625))))
                 (declare (not safe))
                 (cons __tmp60632 __tmp60624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60623 '()))))
                                           (declare (not safe))
                                           (cons __tmp60633 __tmp60622))))
                                    (declare (not safe))
                                    (cons __tmp60621 '()))))
                             (declare (not safe))
                             (cons __tmp60634 __tmp60620))))
                      (declare (not safe))
                      (cons __tmp60642 __tmp60619))))
               (declare (not safe))
               (cons __tmp60648 __tmp60618)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60500
                                                     (let ((__tmp60501
                                                            (let ((__tmp60616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60502
                           (let ((__tmp60615 (gx#datum->syntax '#f 'loop))
                                 (__tmp60503
                                  (let ((__tmp60602
                                         (let ((__tmp60611
                                                (let ((__tmp60614
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60612
                                                       (let ((__tmp60613
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60613
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60614
                                                        __tmp60612)))
                                               (__tmp60603
                                                (let ((__tmp60608
                                                       (let ((__tmp60610
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60609
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60610 __tmp60609)))
              (__tmp60604
               (let ((__tmp60605
                      (let ((__tmp60607 (gx#datum->syntax '#f 'deleted))
                            (__tmp60606
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60607 __tmp60606))))
                 (declare (not safe))
                 (cons __tmp60605 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60608
                                                        __tmp60604))))
                                           (declare (not safe))
                                           (cons __tmp60611 __tmp60603)))
                                        (__tmp60504
                                         (let ((__tmp60505
                                                (let ((__tmp60601
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60506
                                                       (let ((__tmp60593
                                                              (let ((__tmp60600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60594
                             (let ((__tmp60595
                                    (let ((__tmp60599
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60596
                                           (let ((__tmp60597
                                                  (let ((__tmp60598
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60598 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60597))))
                                      (declare (not safe))
                                      (cons __tmp60599 __tmp60596))))
                               (declare (not safe))
                               (cons __tmp60595 '()))))
                        (declare (not safe))
                        (cons __tmp60600 __tmp60594)))
                     (__tmp60507
                      (let ((__tmp60508
                             (let ((__tmp60592 (gx#datum->syntax '#f 'cond))
                                   (__tmp60509
                                    (let ((__tmp60583
                                           (let ((__tmp60585
                                                  (let ((__tmp60591
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60586
                                                         (let ((__tmp60590
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60587
                        (let ((__tmp60588
                               (let ((__tmp60589
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60589 '()))))
                          (declare (not safe))
                          (cons __tmp60588 '()))))
                   (declare (not safe))
                   (cons __tmp60590 __tmp60587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60591
                                                          __tmp60586)))
                                                 (__tmp60584
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60585 __tmp60584)))
                                          (__tmp60510
                                           (let ((__tmp60550
                                                  (let ((__tmp60576
                                                         (let ((__tmp60582
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60577
                        (let ((__tmp60581 (gx#datum->syntax '#f 'k))
                              (__tmp60578
                               (let ((__tmp60579
                                      (let ((__tmp60580
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60580 '()))))
                                 (declare (not safe))
                                 (cons __tmp60579 '()))))
                          (declare (not safe))
                          (cons __tmp60581 __tmp60578))))
                   (declare (not safe))
                   (cons __tmp60582 __tmp60577)))
                (__tmp60551
                 (let ((__tmp60552
                        (let ((__tmp60575 (gx#datum->syntax '#f 'loop))
                              (__tmp60553
                               (let ((__tmp60567
                                      (let ((__tmp60574
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60568
                                             (let ((__tmp60573
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60569
                                                    (let ((__tmp60572
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60570
                                                           (let ((__tmp60571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60571 '()))))
              (declare (not safe))
              (cons __tmp60572 __tmp60570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60573 __tmp60569))))
                                        (declare (not safe))
                                        (cons __tmp60574 __tmp60568)))
                                     (__tmp60554
                                      (let ((__tmp60562
                                             (let ((__tmp60566
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60563
                                                    (let ((__tmp60565
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60564
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60565
                                                            __tmp60564))))
                                               (declare (not safe))
                                               (cons __tmp60566 __tmp60563)))
                                            (__tmp60555
                                             (let ((__tmp60556
                                                    (let ((__tmp60561
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60557
                                                           (let ((__tmp60560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60558
                          (let ((__tmp60559 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60559 '()))))
                     (declare (not safe))
                     (cons __tmp60560 __tmp60558))))
              (declare (not safe))
              (cons __tmp60561 __tmp60557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60556 '()))))
                                        (declare (not safe))
                                        (cons __tmp60562 __tmp60555))))
                                 (declare (not safe))
                                 (cons __tmp60567 __tmp60554))))
                          (declare (not safe))
                          (cons __tmp60575 __tmp60553))))
                   (declare (not safe))
                   (cons __tmp60552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60576
                                                          __tmp60551)))
                                                 (__tmp60511
                                                  (let ((__tmp60535
                                                         (let ((__tmp60546
                                                                (let ((__tmp60547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60548
                                      (let ((__tmp60549
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60549 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60548))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60547)))
                       (__tmp60536
                        (let ((__tmp60537
                               (let ((__tmp60545
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60538
                                      (let ((__tmp60539
                                             (let ((__tmp60540
                                                    (let ((__tmp60544
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60541
                                                           (let ((__tmp60543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60542
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60543 __tmp60542))))
              (declare (not safe))
              (cons __tmp60544 __tmp60541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60540 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60539))))
                                 (declare (not safe))
                                 (cons __tmp60545 __tmp60538))))
                          (declare (not safe))
                          (cons __tmp60537 '()))))
                   (declare (not safe))
                   (cons __tmp60546 __tmp60536)))
                (__tmp60512
                 (let ((__tmp60513
                        (let ((__tmp60534 (gx#datum->syntax '#f 'else))
                              (__tmp60514
                               (let ((__tmp60515
                                      (let ((__tmp60533
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60516
                                             (let ((__tmp60525
                                                    (let ((__tmp60532
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60526
                                                           (let ((__tmp60531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60527
                          (let ((__tmp60530 (gx#datum->syntax '#f 'i))
                                (__tmp60528
                                 (let ((__tmp60529
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60529 '()))))
                            (declare (not safe))
                            (cons __tmp60530 __tmp60528))))
                     (declare (not safe))
                     (cons __tmp60531 __tmp60527))))
              (declare (not safe))
              (cons __tmp60532 __tmp60526)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60517
                                                    (let ((__tmp60520
                                                           (let ((__tmp60524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60521
                          (let ((__tmp60523 (gx#datum->syntax '#f 'i))
                                (__tmp60522
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60523 __tmp60522))))
                     (declare (not safe))
                     (cons __tmp60524 __tmp60521)))
                  (__tmp60518
                   (let ((__tmp60519 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60519 '()))))
              (declare (not safe))
              (cons __tmp60520 __tmp60518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60525 __tmp60517))))
                                        (declare (not safe))
                                        (cons __tmp60533 __tmp60516))))
                                 (declare (not safe))
                                 (cons __tmp60515 '()))))
                          (declare (not safe))
                          (cons __tmp60534 __tmp60514))))
                   (declare (not safe))
                   (cons __tmp60513 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60535
                                                          __tmp60512))))
                                             (declare (not safe))
                                             (cons __tmp60550 __tmp60511))))
                                      (declare (not safe))
                                      (cons __tmp60583 __tmp60510))))
                               (declare (not safe))
                               (cons __tmp60592 __tmp60509))))
                        (declare (not safe))
                        (cons __tmp60508 '()))))
                 (declare (not safe))
                 (cons __tmp60593 __tmp60507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60601
                                                        __tmp60506))))
                                           (declare (not safe))
                                           (cons __tmp60505 '()))))
                                    (declare (not safe))
                                    (cons __tmp60602 __tmp60504))))
                             (declare (not safe))
                             (cons __tmp60615 __tmp60503))))
                      (declare (not safe))
                      (cons __tmp60616 __tmp60502))))
               (declare (not safe))
               (cons __tmp60501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60617 __tmp60500))))
                                         (declare (not safe))
                                         (cons __tmp60657 __tmp60499)))
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
                                                       (let ((__tmp60874
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60658
                                                              (let ((__tmp60834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60865
                                    (let ((__tmp60873
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60866
                                           (let ((__tmp60867
                                                  (let ((__tmp60872
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60868
                                                         (let ((__tmp60870
                                                                (let ((__tmp60871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60871)))
                       (__tmp60869
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60870 __tmp60869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60872
                                                          __tmp60868))))
                                             (declare (not safe))
                                             (cons __tmp60867 '()))))
                                      (declare (not safe))
                                      (cons __tmp60873 __tmp60866)))
                                   (__tmp60835
                                    (let ((__tmp60859
                                           (let ((__tmp60864
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60860
                                                  (let ((__tmp60861
                                                         (let ((__tmp60863
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60862
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60863 __tmp60862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60861 '()))))
                                             (declare (not safe))
                                             (cons __tmp60864 __tmp60860)))
                                          (__tmp60836
                                           (let ((__tmp60851
                                                  (let ((__tmp60858
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60852
                                                         (let ((__tmp60853
                                                                (let ((__tmp60857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60854
                               (let ((__tmp60856 (gx#datum->syntax '#f 'size))
                                     (__tmp60855
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60856 __tmp60855))))
                          (declare (not safe))
                          (cons __tmp60857 __tmp60854))))
                   (declare (not safe))
                   (cons __tmp60853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60858
                                                          __tmp60852)))
                                                 (__tmp60837
                                                  (let ((__tmp60838
                                                         (let ((__tmp60850
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60839
                        (let ((__tmp60840
                               (let ((__tmp60849
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60841
                                      (let ((__tmp60843
                                             (let ((__tmp60848
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60844
                                                    (let ((__tmp60847
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60845
                                                           (let ((__tmp60846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60846 '()))))
              (declare (not safe))
              (cons __tmp60847 __tmp60845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60848 __tmp60844)))
                                            (__tmp60842
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60843 __tmp60842))))
                                 (declare (not safe))
                                 (cons __tmp60849 __tmp60841))))
                          (declare (not safe))
                          (cons __tmp60840 '()))))
                   (declare (not safe))
                   (cons __tmp60850 __tmp60839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60838 '()))))
                                             (declare (not safe))
                                             (cons __tmp60851 __tmp60837))))
                                      (declare (not safe))
                                      (cons __tmp60859 __tmp60836))))
                               (declare (not safe))
                               (cons __tmp60865 __tmp60835)))
                            (__tmp60659
                             (let ((__tmp60660
                                    (let ((__tmp60833
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60661
                                           (let ((__tmp60832
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60662
                                                  (let ((__tmp60819
                                                         (let ((__tmp60828
                                                                (let ((__tmp60831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60829
                               (let ((__tmp60830
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60830 '()))))
                          (declare (not safe))
                          (cons __tmp60831 __tmp60829)))
                       (__tmp60820
                        (let ((__tmp60825
                               (let ((__tmp60827 (gx#datum->syntax '#f 'i))
                                     (__tmp60826
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60827 __tmp60826)))
                              (__tmp60821
                               (let ((__tmp60822
                                      (let ((__tmp60824
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60823
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60824 __tmp60823))))
                                 (declare (not safe))
                                 (cons __tmp60822 '()))))
                          (declare (not safe))
                          (cons __tmp60825 __tmp60821))))
                   (declare (not safe))
                   (cons __tmp60828 __tmp60820)))
                (__tmp60663
                 (let ((__tmp60664
                        (let ((__tmp60818 (gx#datum->syntax '#f 'let))
                              (__tmp60665
                               (let ((__tmp60810
                                      (let ((__tmp60817
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60811
                                             (let ((__tmp60812
                                                    (let ((__tmp60816
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60813
                                                           (let ((__tmp60814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60815 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60815 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60814))))
              (declare (not safe))
              (cons __tmp60816 __tmp60813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60812 '()))))
                                        (declare (not safe))
                                        (cons __tmp60817 __tmp60811)))
                                     (__tmp60666
                                      (let ((__tmp60667
                                             (let ((__tmp60809
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60668
                                                    (let ((__tmp60750
                                                           (let ((__tmp60802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60808 (gx#datum->syntax '#f 'eq?))
                                (__tmp60803
                                 (let ((__tmp60807 (gx#datum->syntax '#f 'k))
                                       (__tmp60804
                                        (let ((__tmp60805
                                               (let ((__tmp60806
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60806 '()))))
                                          (declare (not safe))
                                          (cons __tmp60805 '()))))
                                   (declare (not safe))
                                   (cons __tmp60807 __tmp60804))))
                            (declare (not safe))
                            (cons __tmp60808 __tmp60803)))
                         (__tmp60751
                          (let ((__tmp60752
                                 (let ((__tmp60801 (gx#datum->syntax '#f 'if))
                                       (__tmp60753
                                        (let ((__tmp60800
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60754
                                               (let ((__tmp60778
                                                      (let ((__tmp60799
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60779
                                                             (let ((__tmp60793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60798
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60794
                                   (let ((__tmp60795
                                          (let ((__tmp60797
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60796
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60797 __tmp60796))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60795))))
                              (declare (not safe))
                              (cons __tmp60798 __tmp60794)))
                           (__tmp60780
                            (let ((__tmp60783
                                   (let ((__tmp60792
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60784
                                          (let ((__tmp60785
                                                 (let ((__tmp60787
                                                        (let ((__tmp60791
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60788
                                                               (let ((__tmp60790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60789
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60790 __tmp60789))))
                  (declare (not safe))
                  (cons __tmp60791 __tmp60788)))
               (__tmp60786 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60787
                                                         __tmp60786))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60785))))
                                     (declare (not safe))
                                     (cons __tmp60792 __tmp60784)))
                                  (__tmp60781
                                   (let ((__tmp60782
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60782 '()))))
                              (declare (not safe))
                              (cons __tmp60783 __tmp60781))))
                       (declare (not safe))
                       (cons __tmp60793 __tmp60780))))
                (declare (not safe))
                (cons __tmp60799 __tmp60779)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60755
                                                      (let ((__tmp60756
                                                             (let ((__tmp60777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60757
                            (let ((__tmp60771
                                   (let ((__tmp60776
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60772
                                          (let ((__tmp60773
                                                 (let ((__tmp60775
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60774
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60775
                                                         __tmp60774))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60773))))
                                     (declare (not safe))
                                     (cons __tmp60776 __tmp60772)))
                                  (__tmp60758
                                   (let ((__tmp60761
                                          (let ((__tmp60770
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60762
                                                 (let ((__tmp60763
                                                        (let ((__tmp60765
                                                               (let ((__tmp60769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60766
                              (let ((__tmp60768 (gx#datum->syntax '#f 'probe))
                                    (__tmp60767
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60768 __tmp60767))))
                         (declare (not safe))
                         (cons __tmp60769 __tmp60766)))
                      (__tmp60764
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60765 __tmp60764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60763))))
                                            (declare (not safe))
                                            (cons __tmp60770 __tmp60762)))
                                         (__tmp60759
                                          (let ((__tmp60760
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60760 '()))))
                                     (declare (not safe))
                                     (cons __tmp60761 __tmp60759))))
                              (declare (not safe))
                              (cons __tmp60771 __tmp60758))))
                       (declare (not safe))
                       (cons __tmp60777 __tmp60757))))
                (declare (not safe))
                (cons __tmp60756 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60778
                                                       __tmp60755))))
                                          (declare (not safe))
                                          (cons __tmp60800 __tmp60754))))
                                   (declare (not safe))
                                   (cons __tmp60801 __tmp60753))))
                            (declare (not safe))
                            (cons __tmp60752 '()))))
                     (declare (not safe))
                     (cons __tmp60802 __tmp60751)))
                  (__tmp60669
                   (let ((__tmp60717
                          (let ((__tmp60743
                                 (let ((__tmp60749 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60744
                                        (let ((__tmp60748
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60745
                                               (let ((__tmp60746
                                                      (let ((__tmp60747
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60747
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60746 '()))))
                                          (declare (not safe))
                                          (cons __tmp60748 __tmp60745))))
                                   (declare (not safe))
                                   (cons __tmp60749 __tmp60744)))
                                (__tmp60718
                                 (let ((__tmp60719
                                        (let ((__tmp60742
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60720
                                               (let ((__tmp60734
                                                      (let ((__tmp60741
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60735
                                                             (let ((__tmp60740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60736
                            (let ((__tmp60739 (gx#datum->syntax '#f 'i))
                                  (__tmp60737
                                   (let ((__tmp60738
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60738 '()))))
                              (declare (not safe))
                              (cons __tmp60739 __tmp60737))))
                       (declare (not safe))
                       (cons __tmp60740 __tmp60736))))
                (declare (not safe))
                (cons __tmp60741 __tmp60735)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60721
                                                      (let ((__tmp60729
                                                             (let ((__tmp60733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60730
                            (let ((__tmp60732 (gx#datum->syntax '#f 'i))
                                  (__tmp60731
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60732 __tmp60731))))
                       (declare (not safe))
                       (cons __tmp60733 __tmp60730)))
                    (__tmp60722
                     (let ((__tmp60723
                            (let ((__tmp60728 (gx#datum->syntax '#f 'or))
                                  (__tmp60724
                                   (let ((__tmp60727
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60725
                                          (let ((__tmp60726
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60726 '()))))
                                     (declare (not safe))
                                     (cons __tmp60727 __tmp60725))))
                              (declare (not safe))
                              (cons __tmp60728 __tmp60724))))
                       (declare (not safe))
                       (cons __tmp60723 '()))))
                (declare (not safe))
                (cons __tmp60729 __tmp60722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60734
                                                       __tmp60721))))
                                          (declare (not safe))
                                          (cons __tmp60742 __tmp60720))))
                                   (declare (not safe))
                                   (cons __tmp60719 '()))))
                            (declare (not safe))
                            (cons __tmp60743 __tmp60718)))
                         (__tmp60670
                          (let ((__tmp60694
                                 (let ((__tmp60713
                                        (let ((__tmp60714
                                               (let ((__tmp60715
                                                      (let ((__tmp60716
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60716
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60715))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60714)))
                                       (__tmp60695
                                        (let ((__tmp60707
                                               (let ((__tmp60712
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60708
                                                      (let ((__tmp60709
                                                             (let ((__tmp60711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60710
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60711 __tmp60710))))
                (declare (not safe))
                (cons _L58133_ __tmp60709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60712 __tmp60708)))
                                              (__tmp60696
                                               (let ((__tmp60697
                                                      (let ((__tmp60706
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60698
                                                             (let ((__tmp60699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60701
                                   (let ((__tmp60705
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60702
                                          (let ((__tmp60704
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60703
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60704 __tmp60703))))
                                     (declare (not safe))
                                     (cons __tmp60705 __tmp60702)))
                                  (__tmp60700
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60701 __tmp60700))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60699))))
                (declare (not safe))
                (cons __tmp60706 __tmp60698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60697 '()))))
                                          (declare (not safe))
                                          (cons __tmp60707 __tmp60696))))
                                   (declare (not safe))
                                   (cons __tmp60713 __tmp60695)))
                                (__tmp60671
                                 (let ((__tmp60672
                                        (let ((__tmp60693
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60673
                                               (let ((__tmp60674
                                                      (let ((__tmp60692
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60675
                                                             (let ((__tmp60684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60691
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60685
                                   (let ((__tmp60690
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60686
                                          (let ((__tmp60689
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60687
                                                 (let ((__tmp60688
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60688 '()))))
                                            (declare (not safe))
                                            (cons __tmp60689 __tmp60687))))
                                     (declare (not safe))
                                     (cons __tmp60690 __tmp60686))))
                              (declare (not safe))
                              (cons __tmp60691 __tmp60685)))
                           (__tmp60676
                            (let ((__tmp60679
                                   (let ((__tmp60683
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60680
                                          (let ((__tmp60682
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60681
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60682 __tmp60681))))
                                     (declare (not safe))
                                     (cons __tmp60683 __tmp60680)))
                                  (__tmp60677
                                   (let ((__tmp60678
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60678 '()))))
                              (declare (not safe))
                              (cons __tmp60679 __tmp60677))))
                       (declare (not safe))
                       (cons __tmp60684 __tmp60676))))
                (declare (not safe))
                (cons __tmp60692 __tmp60675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60674 '()))))
                                          (declare (not safe))
                                          (cons __tmp60693 __tmp60673))))
                                   (declare (not safe))
                                   (cons __tmp60672 '()))))
                            (declare (not safe))
                            (cons __tmp60694 __tmp60671))))
                     (declare (not safe))
                     (cons __tmp60717 __tmp60670))))
              (declare (not safe))
              (cons __tmp60750 __tmp60669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60809 __tmp60668))))
                                        (declare (not safe))
                                        (cons __tmp60667 '()))))
                                 (declare (not safe))
                                 (cons __tmp60810 __tmp60666))))
                          (declare (not safe))
                          (cons __tmp60818 __tmp60665))))
                   (declare (not safe))
                   (cons __tmp60664 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60819
                                                          __tmp60663))))
                                             (declare (not safe))
                                             (cons __tmp60832 __tmp60662))))
                                      (declare (not safe))
                                      (cons __tmp60833 __tmp60661))))
                               (declare (not safe))
                               (cons __tmp60660 '()))))
                        (declare (not safe))
                        (cons __tmp60834 __tmp60659))))
                 (declare (not safe))
                 (cons __tmp60874 __tmp60658)))
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
                       (let ((__tmp61106 (gx#datum->syntax '#f 'let*))
                             (__tmp60875
                              (let ((__tmp61066
                                     (let ((__tmp61097
                                            (let ((__tmp61105
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61098
                                                   (let ((__tmp61099
                                                          (let ((__tmp61104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61100
                         (let ((__tmp61102
                                (let ((__tmp61103
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp61103)))
                               (__tmp61101
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp61102 __tmp61101))))
                    (declare (not safe))
                    (cons __tmp61104 __tmp61100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61099 '()))))
                                              (declare (not safe))
                                              (cons __tmp61105 __tmp61098)))
                                           (__tmp61067
                                            (let ((__tmp61091
                                                   (let ((__tmp61096
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61092
                                                          (let ((__tmp61093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61095
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61094
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp61095 __tmp61094))))
                    (declare (not safe))
                    (cons __tmp61093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61096
                                                           __tmp61092)))
                                                  (__tmp61068
                                                   (let ((__tmp61083
                                                          (let ((__tmp61090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61084
                         (let ((__tmp61085
                                (let ((__tmp61089
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61086
                                       (let ((__tmp61088
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61087
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61088 __tmp61087))))
                                  (declare (not safe))
                                  (cons __tmp61089 __tmp61086))))
                           (declare (not safe))
                           (cons __tmp61085 '()))))
                    (declare (not safe))
                    (cons __tmp61090 __tmp61084)))
                 (__tmp61069
                  (let ((__tmp61070
                         (let ((__tmp61082 (gx#datum->syntax '#f 'start))
                               (__tmp61071
                                (let ((__tmp61072
                                       (let ((__tmp61081
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61073
                                              (let ((__tmp61075
                                                     (let ((__tmp61080
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61076
                                                            (let ((__tmp61079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61077
                           (let ((__tmp61078 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61078 '()))))
                      (declare (not safe))
                      (cons __tmp61079 __tmp61077))))
               (declare (not safe))
               (cons __tmp61080 __tmp61076)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61074
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61075 __tmp61074))))
                                         (declare (not safe))
                                         (cons __tmp61081 __tmp61073))))
                                  (declare (not safe))
                                  (cons __tmp61072 '()))))
                           (declare (not safe))
                           (cons __tmp61082 __tmp61071))))
                    (declare (not safe))
                    (cons __tmp61070 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61083
                                                           __tmp61069))))
                                              (declare (not safe))
                                              (cons __tmp61091 __tmp61068))))
                                       (declare (not safe))
                                       (cons __tmp61097 __tmp61067)))
                                    (__tmp60876
                                     (let ((__tmp60877
                                            (let ((__tmp61065
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60878
                                                   (let ((__tmp61064
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60879
                                                          (let ((__tmp61051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61060
                                (let ((__tmp61063
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61061
                                       (let ((__tmp61062
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61062 '()))))
                                  (declare (not safe))
                                  (cons __tmp61063 __tmp61061)))
                               (__tmp61052
                                (let ((__tmp61057
                                       (let ((__tmp61059
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61058
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61059 __tmp61058)))
                                      (__tmp61053
                                       (let ((__tmp61054
                                              (let ((__tmp61056
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61055
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61056 __tmp61055))))
                                         (declare (not safe))
                                         (cons __tmp61054 '()))))
                                  (declare (not safe))
                                  (cons __tmp61057 __tmp61053))))
                           (declare (not safe))
                           (cons __tmp61060 __tmp61052)))
                        (__tmp60880
                         (let ((__tmp60881
                                (let ((__tmp61050 (gx#datum->syntax '#f 'let))
                                      (__tmp60882
                                       (let ((__tmp61042
                                              (let ((__tmp61049
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61043
                                                     (let ((__tmp61044
                                                            (let ((__tmp61048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61045
                           (let ((__tmp61046
                                  (let ((__tmp61047
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61047 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp61046))))
                      (declare (not safe))
                      (cons __tmp61048 __tmp61045))))
               (declare (not safe))
               (cons __tmp61044 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61049 __tmp61043)))
                                             (__tmp60883
                                              (let ((__tmp60884
                                                     (let ((__tmp61041
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60885
                                                            (let ((__tmp60978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61034
                                  (let ((__tmp61040
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61035
                                         (let ((__tmp61039
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61036
                                                (let ((__tmp61037
                                                       (let ((__tmp61038
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61038
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61037 '()))))
                                           (declare (not safe))
                                           (cons __tmp61039 __tmp61036))))
                                    (declare (not safe))
                                    (cons __tmp61040 __tmp61035)))
                                 (__tmp60979
                                  (let ((__tmp60980
                                         (let ((__tmp61033
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60981
                                                (let ((__tmp61032
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60982
                                                       (let ((__tmp61008
                                                              (let ((__tmp61031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61009
                             (let ((__tmp61025
                                    (let ((__tmp61030
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61026
                                           (let ((__tmp61027
                                                  (let ((__tmp61029
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61028
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61029
                                                          __tmp61028))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp61027))))
                                      (declare (not safe))
                                      (cons __tmp61030 __tmp61026)))
                                   (__tmp61010
                                    (let ((__tmp61013
                                           (let ((__tmp61024
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61014
                                                  (let ((__tmp61015
                                                         (let ((__tmp61019
                                                                (let ((__tmp61023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61020
                               (let ((__tmp61022
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61021
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61022 __tmp61021))))
                          (declare (not safe))
                          (cons __tmp61023 __tmp61020)))
                       (__tmp61016
                        (let ((__tmp61017
                               (let ((__tmp61018
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp61018))))
                          (declare (not safe))
                          (cons __tmp61017 '()))))
                   (declare (not safe))
                   (cons __tmp61019 __tmp61016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61015))))
                                             (declare (not safe))
                                             (cons __tmp61024 __tmp61014)))
                                          (__tmp61011
                                           (let ((__tmp61012
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61012 '()))))
                                      (declare (not safe))
                                      (cons __tmp61013 __tmp61011))))
                               (declare (not safe))
                               (cons __tmp61025 __tmp61010))))
                        (declare (not safe))
                        (cons __tmp61031 __tmp61009)))
                     (__tmp60983
                      (let ((__tmp60984
                             (let ((__tmp61007 (gx#datum->syntax '#f 'begin))
                                   (__tmp60985
                                    (let ((__tmp61001
                                           (let ((__tmp61006
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61002
                                                  (let ((__tmp61003
                                                         (let ((__tmp61005
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61004
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp61005 __tmp61004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61003))))
                                             (declare (not safe))
                                             (cons __tmp61006 __tmp61002)))
                                          (__tmp60986
                                           (let ((__tmp60989
                                                  (let ((__tmp61000
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60990
                                                         (let ((__tmp60991
                                                                (let ((__tmp60995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60999 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60996
                                      (let ((__tmp60998
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60997
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60998 __tmp60997))))
                                 (declare (not safe))
                                 (cons __tmp60999 __tmp60996)))
                              (__tmp60992
                               (let ((__tmp60993
                                      (let ((__tmp60994
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60994))))
                                 (declare (not safe))
                                 (cons __tmp60993 '()))))
                          (declare (not safe))
                          (cons __tmp60995 __tmp60992))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61000
                                                          __tmp60990)))
                                                 (__tmp60987
                                                  (let ((__tmp60988
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60988 '()))))
                                             (declare (not safe))
                                             (cons __tmp60989 __tmp60987))))
                                      (declare (not safe))
                                      (cons __tmp61001 __tmp60986))))
                               (declare (not safe))
                               (cons __tmp61007 __tmp60985))))
                        (declare (not safe))
                        (cons __tmp60984 '()))))
                 (declare (not safe))
                 (cons __tmp61008 __tmp60983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61032
                                                        __tmp60982))))
                                           (declare (not safe))
                                           (cons __tmp61033 __tmp60981))))
                                    (declare (not safe))
                                    (cons __tmp60980 '()))))
                             (declare (not safe))
                             (cons __tmp61034 __tmp60979)))
                          (__tmp60886
                           (let ((__tmp60945
                                  (let ((__tmp60971
                                         (let ((__tmp60977
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60972
                                                (let ((__tmp60976
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60973
                                                       (let ((__tmp60974
                                                              (let ((__tmp60975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60975 '()))))
                 (declare (not safe))
                 (cons __tmp60974 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60976
                                                        __tmp60973))))
                                           (declare (not safe))
                                           (cons __tmp60977 __tmp60972)))
                                        (__tmp60946
                                         (let ((__tmp60947
                                                (let ((__tmp60970
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60948
                                                       (let ((__tmp60962
                                                              (let ((__tmp60969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60963
                             (let ((__tmp60968 (gx#datum->syntax '#f 'start))
                                   (__tmp60964
                                    (let ((__tmp60967
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60965
                                           (let ((__tmp60966
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60966 '()))))
                                      (declare (not safe))
                                      (cons __tmp60967 __tmp60965))))
                               (declare (not safe))
                               (cons __tmp60968 __tmp60964))))
                        (declare (not safe))
                        (cons __tmp60969 __tmp60963)))
                     (__tmp60949
                      (let ((__tmp60957
                             (let ((__tmp60961 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60958
                                    (let ((__tmp60960
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60959
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60960 __tmp60959))))
                               (declare (not safe))
                               (cons __tmp60961 __tmp60958)))
                            (__tmp60950
                             (let ((__tmp60951
                                    (let ((__tmp60956
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60952
                                           (let ((__tmp60955
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60953
                                                  (let ((__tmp60954
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60954 '()))))
                                             (declare (not safe))
                                             (cons __tmp60955 __tmp60953))))
                                      (declare (not safe))
                                      (cons __tmp60956 __tmp60952))))
                               (declare (not safe))
                               (cons __tmp60951 '()))))
                        (declare (not safe))
                        (cons __tmp60957 __tmp60950))))
                 (declare (not safe))
                 (cons __tmp60962 __tmp60949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60970
                                                        __tmp60948))))
                                           (declare (not safe))
                                           (cons __tmp60947 '()))))
                                    (declare (not safe))
                                    (cons __tmp60971 __tmp60946)))
                                 (__tmp60887
                                  (let ((__tmp60911
                                         (let ((__tmp60941
                                                (let ((__tmp60942
                                                       (let ((__tmp60943
                                                              (let ((__tmp60944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60944 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60942)))
                                               (__tmp60912
                                                (let ((__tmp60935
                                                       (let ((__tmp60940
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60936
                                                              (let ((__tmp60937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60939 (gx#datum->syntax '#f 'probe))
                                   (__tmp60938
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60939 __tmp60938))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60937))))
                 (declare (not safe))
                 (cons __tmp60940 __tmp60936)))
              (__tmp60913
               (let ((__tmp60914
                      (let ((__tmp60934 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60915
                             (let ((__tmp60916
                                    (let ((__tmp60929
                                           (let ((__tmp60933
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60930
                                                  (let ((__tmp60932
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60931
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60932
                                                          __tmp60931))))
                                             (declare (not safe))
                                             (cons __tmp60933 __tmp60930)))
                                          (__tmp60917
                                           (let ((__tmp60918
                                                  (let ((__tmp60919
                                                         (let ((__tmp60920
                                                                (let ((__tmp60928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60921
                               (let ((__tmp60922
                                      (let ((__tmp60923
                                             (let ((__tmp60927
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60924
                                                    (let ((__tmp60926
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60925
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60926
                                                            __tmp60925))))
                                               (declare (not safe))
                                               (cons __tmp60927 __tmp60924))))
                                        (declare (not safe))
                                        (cons __tmp60923 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60922))))
                          (declare (not safe))
                          (cons __tmp60928 __tmp60921))))
                   (declare (not safe))
                   (cons __tmp60920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60919))))
                                             (declare (not safe))
                                             (cons __tmp60918 '()))))
                                      (declare (not safe))
                                      (cons __tmp60929 __tmp60917))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60916))))
                        (declare (not safe))
                        (cons __tmp60934 __tmp60915))))
                 (declare (not safe))
                 (cons __tmp60914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60935
                                                        __tmp60913))))
                                           (declare (not safe))
                                           (cons __tmp60941 __tmp60912)))
                                        (__tmp60888
                                         (let ((__tmp60889
                                                (let ((__tmp60910
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60890
                                                       (let ((__tmp60891
                                                              (let ((__tmp60909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60892
                             (let ((__tmp60901
                                    (let ((__tmp60908
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60902
                                           (let ((__tmp60907
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60903
                                                  (let ((__tmp60906
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60904
                                                         (let ((__tmp60905
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60906
                                                          __tmp60904))))
                                             (declare (not safe))
                                             (cons __tmp60907 __tmp60903))))
                                      (declare (not safe))
                                      (cons __tmp60908 __tmp60902)))
                                   (__tmp60893
                                    (let ((__tmp60896
                                           (let ((__tmp60900
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60897
                                                  (let ((__tmp60899
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60898
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60899
                                                          __tmp60898))))
                                             (declare (not safe))
                                             (cons __tmp60900 __tmp60897)))
                                          (__tmp60894
                                           (let ((__tmp60895
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60895 '()))))
                                      (declare (not safe))
                                      (cons __tmp60896 __tmp60894))))
                               (declare (not safe))
                               (cons __tmp60901 __tmp60893))))
                        (declare (not safe))
                        (cons __tmp60909 __tmp60892))))
                 (declare (not safe))
                 (cons __tmp60891 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60910
                                                        __tmp60890))))
                                           (declare (not safe))
                                           (cons __tmp60889 '()))))
                                    (declare (not safe))
                                    (cons __tmp60911 __tmp60888))))
                             (declare (not safe))
                             (cons __tmp60945 __tmp60887))))
                      (declare (not safe))
                      (cons __tmp60978 __tmp60886))))
               (declare (not safe))
               (cons __tmp61041 __tmp60885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60884 '()))))
                                         (declare (not safe))
                                         (cons __tmp61042 __tmp60883))))
                                  (declare (not safe))
                                  (cons __tmp61050 __tmp60882))))
                           (declare (not safe))
                           (cons __tmp60881 '()))))
                    (declare (not safe))
                    (cons __tmp61051 __tmp60880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61064
                                                           __tmp60879))))
                                              (declare (not safe))
                                              (cons __tmp61065 __tmp60878))))
                                       (declare (not safe))
                                       (cons __tmp60877 '()))))
                                (declare (not safe))
                                (cons __tmp61066 __tmp60876))))
                         (declare (not safe))
                         (cons __tmp61106 __tmp60875)))
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
                                       (let ((__tmp61268
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61107
                                              (let ((__tmp61228
                                                     (let ((__tmp61259
                                                            (let ((__tmp61267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61260
                           (let ((__tmp61261
                                  (let ((__tmp61266
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61262
                                         (let ((__tmp61264
                                                (let ((__tmp61265
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp61265)))
                                               (__tmp61263
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61264 __tmp61263))))
                                    (declare (not safe))
                                    (cons __tmp61266 __tmp61262))))
                             (declare (not safe))
                             (cons __tmp61261 '()))))
                      (declare (not safe))
                      (cons __tmp61267 __tmp61260)))
                   (__tmp61229
                    (let ((__tmp61253
                           (let ((__tmp61258 (gx#datum->syntax '#f 'size))
                                 (__tmp61254
                                  (let ((__tmp61255
                                         (let ((__tmp61257
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61256
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61257 __tmp61256))))
                                    (declare (not safe))
                                    (cons __tmp61255 '()))))
                             (declare (not safe))
                             (cons __tmp61258 __tmp61254)))
                          (__tmp61230
                           (let ((__tmp61245
                                  (let ((__tmp61252
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61246
                                         (let ((__tmp61247
                                                (let ((__tmp61251
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61248
                                                       (let ((__tmp61250
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61249
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61250 __tmp61249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61251
                                                        __tmp61248))))
                                           (declare (not safe))
                                           (cons __tmp61247 '()))))
                                    (declare (not safe))
                                    (cons __tmp61252 __tmp61246)))
                                 (__tmp61231
                                  (let ((__tmp61232
                                         (let ((__tmp61244
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61233
                                                (let ((__tmp61234
                                                       (let ((__tmp61243
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61235
                                                              (let ((__tmp61237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61242
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61238
                                    (let ((__tmp61241
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61239
                                           (let ((__tmp61240
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61240 '()))))
                                      (declare (not safe))
                                      (cons __tmp61241 __tmp61239))))
                               (declare (not safe))
                               (cons __tmp61242 __tmp61238)))
                            (__tmp61236
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61237 __tmp61236))))
                 (declare (not safe))
                 (cons __tmp61243 __tmp61235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61234 '()))))
                                           (declare (not safe))
                                           (cons __tmp61244 __tmp61233))))
                                    (declare (not safe))
                                    (cons __tmp61232 '()))))
                             (declare (not safe))
                             (cons __tmp61245 __tmp61231))))
                      (declare (not safe))
                      (cons __tmp61253 __tmp61230))))
               (declare (not safe))
               (cons __tmp61259 __tmp61229)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61108
                                                     (let ((__tmp61109
                                                            (let ((__tmp61227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61110
                           (let ((__tmp61226 (gx#datum->syntax '#f 'loop))
                                 (__tmp61111
                                  (let ((__tmp61217
                                         (let ((__tmp61222
                                                (let ((__tmp61225
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61223
                                                       (let ((__tmp61224
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61224
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61225
                                                        __tmp61223)))
                                               (__tmp61218
                                                (let ((__tmp61219
                                                       (let ((__tmp61221
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61220
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61221 __tmp61220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61219 '()))))
                                           (declare (not safe))
                                           (cons __tmp61222 __tmp61218)))
                                        (__tmp61112
                                         (let ((__tmp61113
                                                (let ((__tmp61216
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61114
                                                       (let ((__tmp61208
                                                              (let ((__tmp61215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61209
                             (let ((__tmp61210
                                    (let ((__tmp61214
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61211
                                           (let ((__tmp61212
                                                  (let ((__tmp61213
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61213 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp61212))))
                                      (declare (not safe))
                                      (cons __tmp61214 __tmp61211))))
                               (declare (not safe))
                               (cons __tmp61210 '()))))
                        (declare (not safe))
                        (cons __tmp61215 __tmp61209)))
                     (__tmp61115
                      (let ((__tmp61116
                             (let ((__tmp61207 (gx#datum->syntax '#f 'cond))
                                   (__tmp61117
                                    (let ((__tmp61196
                                           (let ((__tmp61200
                                                  (let ((__tmp61206
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61201
                                                         (let ((__tmp61205
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61202
                        (let ((__tmp61203
                               (let ((__tmp61204
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61204 '()))))
                          (declare (not safe))
                          (cons __tmp61203 '()))))
                   (declare (not safe))
                   (cons __tmp61205 __tmp61202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61206
                                                          __tmp61201)))
                                                 (__tmp61197
                                                  (let ((__tmp61198
                                                         (let ((__tmp61199
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61199 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61198 '()))))
                                             (declare (not safe))
                                             (cons __tmp61200 __tmp61197)))
                                          (__tmp61118
                                           (let ((__tmp61170
                                                  (let ((__tmp61189
                                                         (let ((__tmp61195
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61190
                        (let ((__tmp61194 (gx#datum->syntax '#f 'k))
                              (__tmp61191
                               (let ((__tmp61192
                                      (let ((__tmp61193
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61193 '()))))
                                 (declare (not safe))
                                 (cons __tmp61192 '()))))
                          (declare (not safe))
                          (cons __tmp61194 __tmp61191))))
                   (declare (not safe))
                   (cons __tmp61195 __tmp61190)))
                (__tmp61171
                 (let ((__tmp61172
                        (let ((__tmp61188 (gx#datum->syntax '#f 'loop))
                              (__tmp61173
                               (let ((__tmp61180
                                      (let ((__tmp61187
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61181
                                             (let ((__tmp61186
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61182
                                                    (let ((__tmp61185
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61183
                                                           (let ((__tmp61184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61184 '()))))
              (declare (not safe))
              (cons __tmp61185 __tmp61183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61186 __tmp61182))))
                                        (declare (not safe))
                                        (cons __tmp61187 __tmp61181)))
                                     (__tmp61174
                                      (let ((__tmp61175
                                             (let ((__tmp61179
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61176
                                                    (let ((__tmp61178
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61177
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61178
                                                            __tmp61177))))
                                               (declare (not safe))
                                               (cons __tmp61179 __tmp61176))))
                                        (declare (not safe))
                                        (cons __tmp61175 '()))))
                                 (declare (not safe))
                                 (cons __tmp61180 __tmp61174))))
                          (declare (not safe))
                          (cons __tmp61188 __tmp61173))))
                   (declare (not safe))
                   (cons __tmp61172 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61189
                                                          __tmp61171)))
                                                 (__tmp61119
                                                  (let ((__tmp61141
                                                         (let ((__tmp61166
                                                                (let ((__tmp61167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61168
                                      (let ((__tmp61169
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61169 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp61168))))
                          (declare (not safe))
                          (cons _L58496_ __tmp61167)))
                       (__tmp61142
                        (let ((__tmp61158
                               (let ((__tmp61165
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61159
                                      (let ((__tmp61160
                                             (let ((__tmp61164
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61161
                                                    (let ((__tmp61162
                                                           (let ((__tmp61163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61163 '()))))
              (declare (not safe))
              (cons __tmp61162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61164 __tmp61161))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp61160))))
                                 (declare (not safe))
                                 (cons __tmp61165 __tmp61159)))
                              (__tmp61143
                               (let ((__tmp61146
                                      (let ((__tmp61157
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61147
                                             (let ((__tmp61148
                                                    (let ((__tmp61152
                                                           (let ((__tmp61156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61153
                          (let ((__tmp61155 (gx#datum->syntax '#f 'probe))
                                (__tmp61154
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61155 __tmp61154))))
                     (declare (not safe))
                     (cons __tmp61156 __tmp61153)))
                  (__tmp61149
                   (let ((__tmp61150
                          (let ((__tmp61151
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61151 '()))))
                     (declare (not safe))
                     (cons __tmp61150 '()))))
              (declare (not safe))
              (cons __tmp61152 __tmp61149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp61148))))
                                        (declare (not safe))
                                        (cons __tmp61157 __tmp61147)))
                                     (__tmp61144
                                      (let ((__tmp61145
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61145 '()))))
                                 (declare (not safe))
                                 (cons __tmp61146 __tmp61144))))
                          (declare (not safe))
                          (cons __tmp61158 __tmp61143))))
                   (declare (not safe))
                   (cons __tmp61166 __tmp61142)))
                (__tmp61120
                 (let ((__tmp61121
                        (let ((__tmp61140 (gx#datum->syntax '#f 'else))
                              (__tmp61122
                               (let ((__tmp61123
                                      (let ((__tmp61139
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61124
                                             (let ((__tmp61131
                                                    (let ((__tmp61138
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61132
                                                           (let ((__tmp61137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61133
                          (let ((__tmp61136 (gx#datum->syntax '#f 'i))
                                (__tmp61134
                                 (let ((__tmp61135
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61135 '()))))
                            (declare (not safe))
                            (cons __tmp61136 __tmp61134))))
                     (declare (not safe))
                     (cons __tmp61137 __tmp61133))))
              (declare (not safe))
              (cons __tmp61138 __tmp61132)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61125
                                                    (let ((__tmp61126
                                                           (let ((__tmp61130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61127
                          (let ((__tmp61129 (gx#datum->syntax '#f 'i))
                                (__tmp61128
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61129 __tmp61128))))
                     (declare (not safe))
                     (cons __tmp61130 __tmp61127))))
              (declare (not safe))
              (cons __tmp61126 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61131 __tmp61125))))
                                        (declare (not safe))
                                        (cons __tmp61139 __tmp61124))))
                                 (declare (not safe))
                                 (cons __tmp61123 '()))))
                          (declare (not safe))
                          (cons __tmp61140 __tmp61122))))
                   (declare (not safe))
                   (cons __tmp61121 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61141
                                                          __tmp61120))))
                                             (declare (not safe))
                                             (cons __tmp61170 __tmp61119))))
                                      (declare (not safe))
                                      (cons __tmp61196 __tmp61118))))
                               (declare (not safe))
                               (cons __tmp61207 __tmp61117))))
                        (declare (not safe))
                        (cons __tmp61116 '()))))
                 (declare (not safe))
                 (cons __tmp61208 __tmp61115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61216
                                                        __tmp61114))))
                                           (declare (not safe))
                                           (cons __tmp61113 '()))))
                                    (declare (not safe))
                                    (cons __tmp61217 __tmp61112))))
                             (declare (not safe))
                             (cons __tmp61226 __tmp61111))))
                      (declare (not safe))
                      (cons __tmp61227 __tmp61110))))
               (declare (not safe))
               (cons __tmp61109 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61228 __tmp61108))))
                                         (declare (not safe))
                                         (cons __tmp61268 __tmp61107)))
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
