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
                                       (let ((__tmp60034
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60032
                                              (let ((__tmp60033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60033))))
                                         (declare (not safe))
                                         (cons __tmp60034 __tmp60032)))
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
                       (let ((__tmp60466 (gx#datum->syntax '#f 'begin))
                             (__tmp60035
                              (let ((__tmp60445
                                     (let ((__tmp60465
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60446
                                            (let ((__tmp60456
                                                   (let ((__tmp60457
                                                          (let ((__tmp60462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60464 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60463
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60464 __tmp60463)))
                        (__tmp60458
                         (let ((__tmp60459
                                (let ((__tmp60461 (gx#datum->syntax '#f 'seed))
                                      (__tmp60460
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60461 __tmp60460))))
                           (declare (not safe))
                           (cons __tmp60459 '()))))
                    (declare (not safe))
                    (cons __tmp60462 __tmp60458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60457)))
                                                  (__tmp60447
                                                   (let ((__tmp60448
                                                          (let ((__tmp60455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60449
                         (let ((__tmp60454 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60450
                                (let ((__tmp60451
                                       (let ((__tmp60452
                                              (let ((__tmp60453
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60453 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60452))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60451))))
                           (declare (not safe))
                           (cons __tmp60454 __tmp60450))))
                    (declare (not safe))
                    (cons __tmp60455 __tmp60449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60448 '()))))
                                              (declare (not safe))
                                              (cons __tmp60456 __tmp60447))))
                                       (declare (not safe))
                                       (cons __tmp60465 __tmp60446)))
                                    (__tmp60036
                                     (let ((__tmp60402
                                            (let ((__tmp60444
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60403
                                                   (let ((__tmp60437
                                                          (let ((__tmp60438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60443 (gx#datum->syntax '#f 'tab))
                               (__tmp60439
                                (let ((__tmp60442 (gx#datum->syntax '#f 'key))
                                      (__tmp60440
                                       (let ((__tmp60441
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60441 '()))))
                                  (declare (not safe))
                                  (cons __tmp60442 __tmp60440))))
                           (declare (not safe))
                           (cons __tmp60443 __tmp60439))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60438)))
                 (__tmp60404
                  (let ((__tmp60405
                         (let ((__tmp60436 (gx#datum->syntax '#f 'let))
                               (__tmp60406
                                (let ((__tmp60420
                                       (let ((__tmp60429
                                              (let ((__tmp60435
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60430
                                                     (let ((__tmp60431
                                                            (let ((__tmp60434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60432
                           (let ((__tmp60433 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60433 '()))))
                      (declare (not safe))
                      (cons __tmp60434 __tmp60432))))
               (declare (not safe))
               (cons __tmp60431 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60435 __tmp60430)))
                                             (__tmp60421
                                              (let ((__tmp60422
                                                     (let ((__tmp60428
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60423
                                                            (let ((__tmp60424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60427
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60425
                                  (let ((__tmp60426
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60426 '()))))
                             (declare (not safe))
                             (cons __tmp60427 __tmp60425))))
                      (declare (not safe))
                      (cons __tmp60424 '()))))
               (declare (not safe))
               (cons __tmp60428 __tmp60423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60422 '()))))
                                         (declare (not safe))
                                         (cons __tmp60429 __tmp60421)))
                                      (__tmp60407
                                       (let ((__tmp60408
                                              (let ((__tmp60419
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60409
                                                     (let ((__tmp60418
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60410
                                                            (let ((__tmp60417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60411
                           (let ((__tmp60412
                                  (let ((__tmp60413
                                         (let ((__tmp60416
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60414
                                                (let ((__tmp60415
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60415 '()))))
                                           (declare (not safe))
                                           (cons __tmp60416 __tmp60414))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60413))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60412))))
                      (declare (not safe))
                      (cons __tmp60417 __tmp60411))))
               (declare (not safe))
               (cons __tmp60418 __tmp60410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60419 __tmp60409))))
                                         (declare (not safe))
                                         (cons __tmp60408 '()))))
                                  (declare (not safe))
                                  (cons __tmp60420 __tmp60407))))
                           (declare (not safe))
                           (cons __tmp60436 __tmp60406))))
                    (declare (not safe))
                    (cons __tmp60405 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60437
                                                           __tmp60404))))
                                              (declare (not safe))
                                              (cons __tmp60444 __tmp60403)))
                                           (__tmp60037
                                            (let ((__tmp60356
                                                   (let ((__tmp60401
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60357
                                                          (let ((__tmp60394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60395
                                (let ((__tmp60400 (gx#datum->syntax '#f 'tab))
                                      (__tmp60396
                                       (let ((__tmp60399
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60397
                                              (let ((__tmp60398
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60398 '()))))
                                         (declare (not safe))
                                         (cons __tmp60399 __tmp60397))))
                                  (declare (not safe))
                                  (cons __tmp60400 __tmp60396))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60395)))
                        (__tmp60358
                         (let ((__tmp60367
                                (let ((__tmp60393 (gx#datum->syntax '#f 'when))
                                      (__tmp60368
                                       (let ((__tmp60374
                                              (let ((__tmp60392
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60375
                                                     (let ((__tmp60388
                                                            (let ((__tmp60391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60389
                           (let ((__tmp60390 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60390 '()))))
                      (declare (not safe))
                      (cons __tmp60391 __tmp60389)))
                   (__tmp60376
                    (let ((__tmp60377
                           (let ((__tmp60387
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60378
                                  (let ((__tmp60380
                                         (let ((__tmp60386
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60381
                                                (let ((__tmp60382
                                                       (let ((__tmp60385
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
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
                                           (cons __tmp60386 __tmp60381)))
                                        (__tmp60379
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60380 __tmp60379))))
                             (declare (not safe))
                             (cons __tmp60387 __tmp60378))))
                      (declare (not safe))
                      (cons __tmp60377 '()))))
               (declare (not safe))
               (cons __tmp60388 __tmp60376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60392 __tmp60375)))
                                             (__tmp60369
                                              (let ((__tmp60370
                                                     (let ((__tmp60373
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60371
                                                            (let ((__tmp60372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60372 '()))))
               (declare (not safe))
               (cons __tmp60373 __tmp60371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60370 '()))))
                                         (declare (not safe))
                                         (cons __tmp60374 __tmp60369))))
                                  (declare (not safe))
                                  (cons __tmp60393 __tmp60368)))
                               (__tmp60359
                                (let ((__tmp60360
                                       (let ((__tmp60361
                                              (let ((__tmp60366
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60362
                                                     (let ((__tmp60365
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60363
                                                            (let ((__tmp60364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60364 '()))))
               (declare (not safe))
               (cons __tmp60365 __tmp60363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60366 __tmp60362))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60361))))
                                  (declare (not safe))
                                  (cons __tmp60360 '()))))
                           (declare (not safe))
                           (cons __tmp60367 __tmp60359))))
                    (declare (not safe))
                    (cons __tmp60394 __tmp60358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60401
                                                           __tmp60357)))
                                                  (__tmp60038
                                                   (let ((__tmp60254
                                                          (let ((__tmp60355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60255
                         (let ((__tmp60348
                                (let ((__tmp60349
                                       (let ((__tmp60354
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60350
                                              (let ((__tmp60353
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60351
                                                     (let ((__tmp60352
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60352 '()))))
                                                (declare (not safe))
                                                (cons __tmp60353 __tmp60351))))
                                         (declare (not safe))
                                         (cons __tmp60354 __tmp60350))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp60349)))
                               (__tmp60256
                                (let ((__tmp60257
                                       (let ((__tmp60347
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60258
                                              (let ((__tmp60331
                                                     (let ((__tmp60340
                                                            (let ((__tmp60346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60341
                           (let ((__tmp60342
                                  (let ((__tmp60345
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60343
                                         (let ((__tmp60344
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60344 '()))))
                                    (declare (not safe))
                                    (cons __tmp60345 __tmp60343))))
                             (declare (not safe))
                             (cons __tmp60342 '()))))
                      (declare (not safe))
                      (cons __tmp60346 __tmp60341)))
                   (__tmp60332
                    (let ((__tmp60333
                           (let ((__tmp60339 (gx#datum->syntax '#f 'seed))
                                 (__tmp60334
                                  (let ((__tmp60335
                                         (let ((__tmp60338
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60336
                                                (let ((__tmp60337
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60337 '()))))
                                           (declare (not safe))
                                           (cons __tmp60338 __tmp60336))))
                                    (declare (not safe))
                                    (cons __tmp60335 '()))))
                             (declare (not safe))
                             (cons __tmp60339 __tmp60334))))
                      (declare (not safe))
                      (cons __tmp60333 '()))))
               (declare (not safe))
               (cons __tmp60340 __tmp60332)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60259
                                                     (let ((__tmp60260
                                                            (let ((__tmp60330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60261
                           (let ((__tmp60329 (gx#datum->syntax '#f 'table))
                                 (__tmp60262
                                  (let ((__tmp60328
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60263
                                         (let ((__tmp60264
                                                (let ((__tmp60265
                                                       (let ((__tmp60327
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60266
                                                              (let ((__tmp60326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60267
                             (let ((__tmp60289
                                    (let ((__tmp60325
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60290
                                           (let ((__tmp60291
                                                  (let ((__tmp60309
                                                         (let ((__tmp60324
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60310
                        (let ((__tmp60320
                               (let ((__tmp60323
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60321
                                      (let ((__tmp60322
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60322 '()))))
                                 (declare (not safe))
                                 (cons __tmp60323 __tmp60321)))
                              (__tmp60311
                               (let ((__tmp60312
                                      (let ((__tmp60319
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60313
                                             (let ((__tmp60315
                                                    (let ((__tmp60318
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60316
                                                           (let ((__tmp60317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60317 '()))))
              (declare (not safe))
              (cons __tmp60318 __tmp60316)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60314
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60315 __tmp60314))))
                                        (declare (not safe))
                                        (cons __tmp60319 __tmp60313))))
                                 (declare (not safe))
                                 (cons __tmp60312 '()))))
                          (declare (not safe))
                          (cons __tmp60320 __tmp60311))))
                   (declare (not safe))
                   (cons __tmp60324 __tmp60310)))
                (__tmp60292
                 (let ((__tmp60293
                        (let ((__tmp60308 (gx#datum->syntax '#f 'set!))
                              (__tmp60294
                               (let ((__tmp60304
                                      (let ((__tmp60307
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60305
                                             (let ((__tmp60306
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60306 '()))))
                                        (declare (not safe))
                                        (cons __tmp60307 __tmp60305)))
                                     (__tmp60295
                                      (let ((__tmp60296
                                             (let ((__tmp60303
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60297
                                                    (let ((__tmp60299
                                                           (let ((__tmp60302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60300
                          (let ((__tmp60301 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60301 '()))))
                     (declare (not safe))
                     (cons __tmp60302 __tmp60300)))
                  (__tmp60298 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60299 __tmp60298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60303 __tmp60297))))
                                        (declare (not safe))
                                        (cons __tmp60296 '()))))
                                 (declare (not safe))
                                 (cons __tmp60304 __tmp60295))))
                          (declare (not safe))
                          (cons __tmp60308 __tmp60294))))
                   (declare (not safe))
                   (cons __tmp60293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60309
                                                          __tmp60292))))
                                             (declare (not safe))
                                             (cons '() __tmp60291))))
                                      (declare (not safe))
                                      (cons __tmp60325 __tmp60290)))
                                   (__tmp60268
                                    (let ((__tmp60269
                                           (let ((__tmp60288
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60270
                                                  (let ((__tmp60271
                                                         (let ((__tmp60272
                                                                (let ((__tmp60287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60273
                               (let ((__tmp60283
                                      (let ((__tmp60286
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60284
                                             (let ((__tmp60285
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60285 '()))))
                                        (declare (not safe))
                                        (cons __tmp60286 __tmp60284)))
                                     (__tmp60274
                                      (let ((__tmp60275
                                             (let ((__tmp60282
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60276
                                                    (let ((__tmp60278
                                                           (let ((__tmp60281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60279
                          (let ((__tmp60280 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60280 '()))))
                     (declare (not safe))
                     (cons __tmp60281 __tmp60279)))
                  (__tmp60277 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60278 __tmp60277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60282 __tmp60276))))
                                        (declare (not safe))
                                        (cons __tmp60275 '()))))
                                 (declare (not safe))
                                 (cons __tmp60283 __tmp60274))))
                          (declare (not safe))
                          (cons __tmp60287 __tmp60273))))
                   (declare (not safe))
                   (cons __tmp60272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60271))))
                                             (declare (not safe))
                                             (cons __tmp60288 __tmp60270))))
                                      (declare (not safe))
                                      (cons __tmp60269 '()))))
                               (declare (not safe))
                               (cons __tmp60289 __tmp60268))))
                        (declare (not safe))
                        (cons __tmp60326 __tmp60267))))
                 (declare (not safe))
                 (cons __tmp60327 __tmp60266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp60265))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp60264))))
                                    (declare (not safe))
                                    (cons __tmp60328 __tmp60263))))
                             (declare (not safe))
                             (cons __tmp60329 __tmp60262))))
                      (declare (not safe))
                      (cons __tmp60330 __tmp60261))))
               (declare (not safe))
               (cons __tmp60260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60331 __tmp60259))))
                                         (declare (not safe))
                                         (cons __tmp60347 __tmp60258))))
                                  (declare (not safe))
                                  (cons __tmp60257 '()))))
                           (declare (not safe))
                           (cons __tmp60348 __tmp60256))))
                    (declare (not safe))
                    (cons __tmp60355 __tmp60255)))
                 (__tmp60039
                  (let ((__tmp60206
                         (let ((__tmp60253 (gx#datum->syntax '#f 'def))
                               (__tmp60207
                                (let ((__tmp60245
                                       (let ((__tmp60246
                                              (let ((__tmp60252
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60247
                                                     (let ((__tmp60251
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60248
                                                            (let ((__tmp60249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60250 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60250 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp60249))))
               (declare (not safe))
               (cons __tmp60251 __tmp60248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60252 __tmp60247))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp60246)))
                                      (__tmp60208
                                       (let ((__tmp60218
                                              (let ((__tmp60244
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60219
                                                     (let ((__tmp60225
                                                            (let ((__tmp60243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60226
                           (let ((__tmp60239
                                  (let ((__tmp60242
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60240
                                         (let ((__tmp60241
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60241 '()))))
                                    (declare (not safe))
                                    (cons __tmp60242 __tmp60240)))
                                 (__tmp60227
                                  (let ((__tmp60228
                                         (let ((__tmp60238
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60229
                                                (let ((__tmp60231
                                                       (let ((__tmp60237
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60232
                                                              (let ((__tmp60233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60236
                                    (gx#datum->syntax '#f '&raw-table-table))
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
                 (cons __tmp60237 __tmp60232)))
              (__tmp60230 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60231
                                                        __tmp60230))))
                                           (declare (not safe))
                                           (cons __tmp60238 __tmp60229))))
                                    (declare (not safe))
                                    (cons __tmp60228 '()))))
                             (declare (not safe))
                             (cons __tmp60239 __tmp60227))))
                      (declare (not safe))
                      (cons __tmp60243 __tmp60226)))
                   (__tmp60220
                    (let ((__tmp60221
                           (let ((__tmp60224
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60222
                                  (let ((__tmp60223
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60223 '()))))
                             (declare (not safe))
                             (cons __tmp60224 __tmp60222))))
                      (declare (not safe))
                      (cons __tmp60221 '()))))
               (declare (not safe))
               (cons __tmp60225 __tmp60220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60244 __tmp60219)))
                                             (__tmp60209
                                              (let ((__tmp60210
                                                     (let ((__tmp60211
                                                            (let ((__tmp60217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60212
                           (let ((__tmp60216 (gx#datum->syntax '#f 'key))
                                 (__tmp60213
                                  (let ((__tmp60214
                                         (let ((__tmp60215
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60215 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp60214))))
                             (declare (not safe))
                             (cons __tmp60216 __tmp60213))))
                      (declare (not safe))
                      (cons __tmp60217 __tmp60212))))
               (declare (not safe))
               (cons _L57684_ __tmp60211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60210 '()))))
                                         (declare (not safe))
                                         (cons __tmp60218 __tmp60209))))
                                  (declare (not safe))
                                  (cons __tmp60245 __tmp60208))))
                           (declare (not safe))
                           (cons __tmp60253 __tmp60207)))
                        (__tmp60040
                         (let ((__tmp60102
                                (let ((__tmp60205 (gx#datum->syntax '#f 'def))
                                      (__tmp60103
                                       (let ((__tmp60197
                                              (let ((__tmp60198
                                                     (let ((__tmp60204
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60199
                                                            (let ((__tmp60203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60200
                           (let ((__tmp60201
                                  (let ((__tmp60202
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60202 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp60201))))
                      (declare (not safe))
                      (cons __tmp60203 __tmp60200))))
               (declare (not safe))
               (cons __tmp60204 __tmp60199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp60198)))
                                             (__tmp60104
                                              (let ((__tmp60105
                                                     (let ((__tmp60196
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60106
                                                            (let ((__tmp60180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60189
                                  (let ((__tmp60195
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60190
                                         (let ((__tmp60191
                                                (let ((__tmp60194
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60192
                                                       (let ((__tmp60193
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60193
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60194
                                                        __tmp60192))))
                                           (declare (not safe))
                                           (cons __tmp60191 '()))))
                                    (declare (not safe))
                                    (cons __tmp60195 __tmp60190)))
                                 (__tmp60181
                                  (let ((__tmp60182
                                         (let ((__tmp60188
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60183
                                                (let ((__tmp60184
                                                       (let ((__tmp60187
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60185
                                                              (let ((__tmp60186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60186 '()))))
                 (declare (not safe))
                 (cons __tmp60187 __tmp60185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60184 '()))))
                                           (declare (not safe))
                                           (cons __tmp60188 __tmp60183))))
                                    (declare (not safe))
                                    (cons __tmp60182 '()))))
                             (declare (not safe))
                             (cons __tmp60189 __tmp60181)))
                          (__tmp60107
                           (let ((__tmp60108
                                  (let ((__tmp60179
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60109
                                         (let ((__tmp60178
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60110
                                                (let ((__tmp60177
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60111
                                                       (let ((__tmp60112
                                                              (let ((__tmp60113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60176 (gx#datum->syntax '#f 'key))
                                   (__tmp60114
                                    (let ((__tmp60115
                                           (let ((__tmp60175
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60116
                                                  (let ((__tmp60138
                                                         (let ((__tmp60174
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60139
                        (let ((__tmp60140
                               (let ((__tmp60158
                                      (let ((__tmp60173
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60159
                                             (let ((__tmp60169
                                                    (let ((__tmp60172
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60170
                                                           (let ((__tmp60171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60171 '()))))
              (declare (not safe))
              (cons __tmp60172 __tmp60170)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60160
                                                    (let ((__tmp60161
                                                           (let ((__tmp60168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60162
                          (let ((__tmp60164
                                 (let ((__tmp60167
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60165
                                        (let ((__tmp60166
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60166 '()))))
                                   (declare (not safe))
                                   (cons __tmp60167 __tmp60165)))
                                (__tmp60163
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60164 __tmp60163))))
                     (declare (not safe))
                     (cons __tmp60168 __tmp60162))))
              (declare (not safe))
              (cons __tmp60161 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60169 __tmp60160))))
                                        (declare (not safe))
                                        (cons __tmp60173 __tmp60159)))
                                     (__tmp60141
                                      (let ((__tmp60142
                                             (let ((__tmp60157
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60143
                                                    (let ((__tmp60153
                                                           (let ((__tmp60156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60154
                          (let ((__tmp60155 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60155 '()))))
                     (declare (not safe))
                     (cons __tmp60156 __tmp60154)))
                  (__tmp60144
                   (let ((__tmp60145
                          (let ((__tmp60152 (gx#datum->syntax '#f 'fx+))
                                (__tmp60146
                                 (let ((__tmp60148
                                        (let ((__tmp60151
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60149
                                               (let ((__tmp60150
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60150 '()))))
                                          (declare (not safe))
                                          (cons __tmp60151 __tmp60149)))
                                       (__tmp60147
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60148 __tmp60147))))
                            (declare (not safe))
                            (cons __tmp60152 __tmp60146))))
                     (declare (not safe))
                     (cons __tmp60145 '()))))
              (declare (not safe))
              (cons __tmp60153 __tmp60144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60157 __tmp60143))))
                                        (declare (not safe))
                                        (cons __tmp60142 '()))))
                                 (declare (not safe))
                                 (cons __tmp60158 __tmp60141))))
                          (declare (not safe))
                          (cons '() __tmp60140))))
                   (declare (not safe))
                   (cons __tmp60174 __tmp60139)))
                (__tmp60117
                 (let ((__tmp60118
                        (let ((__tmp60137 (gx#datum->syntax '#f 'lambda))
                              (__tmp60119
                               (let ((__tmp60120
                                      (let ((__tmp60121
                                             (let ((__tmp60136
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60122
                                                    (let ((__tmp60132
                                                           (let ((__tmp60135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60133
                          (let ((__tmp60134 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60134 '()))))
                     (declare (not safe))
                     (cons __tmp60135 __tmp60133)))
                  (__tmp60123
                   (let ((__tmp60124
                          (let ((__tmp60131 (gx#datum->syntax '#f 'fx+))
                                (__tmp60125
                                 (let ((__tmp60127
                                        (let ((__tmp60130
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60128
                                               (let ((__tmp60129
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60129 '()))))
                                          (declare (not safe))
                                          (cons __tmp60130 __tmp60128)))
                                       (__tmp60126
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60127 __tmp60126))))
                            (declare (not safe))
                            (cons __tmp60131 __tmp60125))))
                     (declare (not safe))
                     (cons __tmp60124 '()))))
              (declare (not safe))
              (cons __tmp60132 __tmp60123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60136 __tmp60122))))
                                        (declare (not safe))
                                        (cons __tmp60121 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60120))))
                          (declare (not safe))
                          (cons __tmp60137 __tmp60119))))
                   (declare (not safe))
                   (cons __tmp60118 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60138
                                                          __tmp60117))))
                                             (declare (not safe))
                                             (cons __tmp60175 __tmp60116))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp60115))))
                               (declare (not safe))
                               (cons __tmp60176 __tmp60114))))
                        (declare (not safe))
                        (cons _L57680_ __tmp60113))))
                 (declare (not safe))
                 (cons _L57682_ __tmp60112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60177
                                                        __tmp60111))))
                                           (declare (not safe))
                                           (cons __tmp60178 __tmp60110))))
                                    (declare (not safe))
                                    (cons __tmp60179 __tmp60109))))
                             (declare (not safe))
                             (cons __tmp60108 '()))))
                      (declare (not safe))
                      (cons __tmp60180 __tmp60107))))
               (declare (not safe))
               (cons __tmp60196 __tmp60106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60105 '()))))
                                         (declare (not safe))
                                         (cons __tmp60197 __tmp60104))))
                                  (declare (not safe))
                                  (cons __tmp60205 __tmp60103)))
                               (__tmp60041
                                (let ((__tmp60042
                                       (let ((__tmp60101
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60043
                                              (let ((__tmp60096
                                                     (let ((__tmp60097
                                                            (let ((__tmp60100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60098
                           (let ((__tmp60099 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60099 '()))))
                      (declare (not safe))
                      (cons __tmp60100 __tmp60098))))
               (declare (not safe))
               (cons _L57683_ __tmp60097)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60044
                                                     (let ((__tmp60045
                                                            (let ((__tmp60095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60046
                           (let ((__tmp60079
                                  (let ((__tmp60088
                                         (let ((__tmp60094
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60089
                                                (let ((__tmp60090
                                                       (let ((__tmp60093
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60091
                                                              (let ((__tmp60092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60092 '()))))
                 (declare (not safe))
                 (cons __tmp60093 __tmp60091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60090 '()))))
                                           (declare (not safe))
                                           (cons __tmp60094 __tmp60089)))
                                        (__tmp60080
                                         (let ((__tmp60081
                                                (let ((__tmp60087
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60082
                                                       (let ((__tmp60083
                                                              (let ((__tmp60086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60084
                             (let ((__tmp60085 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60085 '()))))
                        (declare (not safe))
                        (cons __tmp60086 __tmp60084))))
                 (declare (not safe))
                 (cons __tmp60083 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60087
                                                        __tmp60082))))
                                           (declare (not safe))
                                           (cons __tmp60081 '()))))
                                    (declare (not safe))
                                    (cons __tmp60088 __tmp60080)))
                                 (__tmp60047
                                  (let ((__tmp60048
                                         (let ((__tmp60078
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60049
                                                (let ((__tmp60077
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60050
                                                       (let ((__tmp60076
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60051
                                                              (let ((__tmp60052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60053
                                    (let ((__tmp60075
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60054
                                           (let ((__tmp60055
                                                  (let ((__tmp60074
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60056
                                                         (let ((__tmp60057
                                                                (let ((__tmp60058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60073 (gx#datum->syntax '#f 'set!))
                                     (__tmp60059
                                      (let ((__tmp60069
                                             (let ((__tmp60072
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60070
                                                    (let ((__tmp60071
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60071 '()))))
                                               (declare (not safe))
                                               (cons __tmp60072 __tmp60070)))
                                            (__tmp60060
                                             (let ((__tmp60061
                                                    (let ((__tmp60068
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60062
                                                           (let ((__tmp60064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60067
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60065
                                 (let ((__tmp60066
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60066 '()))))
                            (declare (not safe))
                            (cons __tmp60067 __tmp60065)))
                         (__tmp60063
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60064 __tmp60063))))
              (declare (not safe))
              (cons __tmp60068 __tmp60062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60061 '()))))
                                        (declare (not safe))
                                        (cons __tmp60069 __tmp60060))))
                                 (declare (not safe))
                                 (cons __tmp60073 __tmp60059))))
                          (declare (not safe))
                          (cons __tmp60058 '()))))
                   (declare (not safe))
                   (cons '() __tmp60057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60074
                                                          __tmp60056))))
                                             (declare (not safe))
                                             (cons __tmp60055 '()))))
                                      (declare (not safe))
                                      (cons __tmp60075 __tmp60054))))
                               (declare (not safe))
                               (cons _L57680_ __tmp60053))))
                        (declare (not safe))
                        (cons _L57682_ __tmp60052))))
                 (declare (not safe))
                 (cons __tmp60076 __tmp60051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60077
                                                        __tmp60050))))
                                           (declare (not safe))
                                           (cons __tmp60078 __tmp60049))))
                                    (declare (not safe))
                                    (cons __tmp60048 '()))))
                             (declare (not safe))
                             (cons __tmp60079 __tmp60047))))
                      (declare (not safe))
                      (cons __tmp60095 __tmp60046))))
               (declare (not safe))
               (cons __tmp60045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60096 __tmp60044))))
                                         (declare (not safe))
                                         (cons __tmp60101 __tmp60043))))
                                  (declare (not safe))
                                  (cons __tmp60042 '()))))
                           (declare (not safe))
                           (cons __tmp60102 __tmp60041))))
                    (declare (not safe))
                    (cons __tmp60206 __tmp60040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60254
                                                           __tmp60039))))
                                              (declare (not safe))
                                              (cons __tmp60356 __tmp60038))))
                                       (declare (not safe))
                                       (cons __tmp60402 __tmp60037))))
                                (declare (not safe))
                                (cons __tmp60445 __tmp60036))))
                         (declare (not safe))
                         (cons __tmp60466 __tmp60035)))
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
                                                       (let ((__tmp60486
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60467
                                                              (let ((__tmp60474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60485
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60475
                                    (let ((__tmp60476
                                           (let ((__tmp60484
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60477
                                                  (let ((__tmp60478
                                                         (let ((__tmp60479
                                                                (let ((__tmp60480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60483 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60481
                                      (let ((__tmp60482
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60482))))
                                 (declare (not safe))
                                 (cons __tmp60483 __tmp60481))))
                          (declare (not safe))
                          (cons __tmp60480 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60478))))
                                             (declare (not safe))
                                             (cons __tmp60484 __tmp60477))))
                                      (declare (not safe))
                                      (cons __tmp60476 '()))))
                               (declare (not safe))
                               (cons __tmp60485 __tmp60475)))
                            (__tmp60468
                             (let ((__tmp60469
                                    (let ((__tmp60473
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60470
                                           (let ((__tmp60472
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60471
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60472 __tmp60471))))
                                      (declare (not safe))
                                      (cons __tmp60473 __tmp60470))))
                               (declare (not safe))
                               (cons __tmp60469 '()))))
                        (declare (not safe))
                        (cons __tmp60474 __tmp60468))))
                 (declare (not safe))
                 (cons __tmp60486 __tmp60467)))
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
                                       (let ((__tmp60645
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60487
                                              (let ((__tmp60605
                                                     (let ((__tmp60636
                                                            (let ((__tmp60644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60637
                           (let ((__tmp60638
                                  (let ((__tmp60643
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60639
                                         (let ((__tmp60641
                                                (let ((__tmp60642
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60642)))
                                               (__tmp60640
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60641 __tmp60640))))
                                    (declare (not safe))
                                    (cons __tmp60643 __tmp60639))))
                             (declare (not safe))
                             (cons __tmp60638 '()))))
                      (declare (not safe))
                      (cons __tmp60644 __tmp60637)))
                   (__tmp60606
                    (let ((__tmp60630
                           (let ((__tmp60635 (gx#datum->syntax '#f 'size))
                                 (__tmp60631
                                  (let ((__tmp60632
                                         (let ((__tmp60634
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60633
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60634 __tmp60633))))
                                    (declare (not safe))
                                    (cons __tmp60632 '()))))
                             (declare (not safe))
                             (cons __tmp60635 __tmp60631)))
                          (__tmp60607
                           (let ((__tmp60622
                                  (let ((__tmp60629
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60623
                                         (let ((__tmp60624
                                                (let ((__tmp60628
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60625
                                                       (let ((__tmp60627
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60626
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60627 __tmp60626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60628
                                                        __tmp60625))))
                                           (declare (not safe))
                                           (cons __tmp60624 '()))))
                                    (declare (not safe))
                                    (cons __tmp60629 __tmp60623)))
                                 (__tmp60608
                                  (let ((__tmp60609
                                         (let ((__tmp60621
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60610
                                                (let ((__tmp60611
                                                       (let ((__tmp60620
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60612
                                                              (let ((__tmp60614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60619
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60615
                                    (let ((__tmp60618
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60616
                                           (let ((__tmp60617
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60617 '()))))
                                      (declare (not safe))
                                      (cons __tmp60618 __tmp60616))))
                               (declare (not safe))
                               (cons __tmp60619 __tmp60615)))
                            (__tmp60613
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60614 __tmp60613))))
                 (declare (not safe))
                 (cons __tmp60620 __tmp60612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60611 '()))))
                                           (declare (not safe))
                                           (cons __tmp60621 __tmp60610))))
                                    (declare (not safe))
                                    (cons __tmp60609 '()))))
                             (declare (not safe))
                             (cons __tmp60622 __tmp60608))))
                      (declare (not safe))
                      (cons __tmp60630 __tmp60607))))
               (declare (not safe))
               (cons __tmp60636 __tmp60606)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60488
                                                     (let ((__tmp60489
                                                            (let ((__tmp60604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60490
                           (let ((__tmp60603 (gx#datum->syntax '#f 'loop))
                                 (__tmp60491
                                  (let ((__tmp60590
                                         (let ((__tmp60599
                                                (let ((__tmp60602
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60600
                                                       (let ((__tmp60601
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60601
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60602
                                                        __tmp60600)))
                                               (__tmp60591
                                                (let ((__tmp60596
                                                       (let ((__tmp60598
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60597
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60598 __tmp60597)))
              (__tmp60592
               (let ((__tmp60593
                      (let ((__tmp60595 (gx#datum->syntax '#f 'deleted))
                            (__tmp60594
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60595 __tmp60594))))
                 (declare (not safe))
                 (cons __tmp60593 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60596
                                                        __tmp60592))))
                                           (declare (not safe))
                                           (cons __tmp60599 __tmp60591)))
                                        (__tmp60492
                                         (let ((__tmp60493
                                                (let ((__tmp60589
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60494
                                                       (let ((__tmp60581
                                                              (let ((__tmp60588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60582
                             (let ((__tmp60583
                                    (let ((__tmp60587
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60584
                                           (let ((__tmp60585
                                                  (let ((__tmp60586
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60586 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60585))))
                                      (declare (not safe))
                                      (cons __tmp60587 __tmp60584))))
                               (declare (not safe))
                               (cons __tmp60583 '()))))
                        (declare (not safe))
                        (cons __tmp60588 __tmp60582)))
                     (__tmp60495
                      (let ((__tmp60496
                             (let ((__tmp60580 (gx#datum->syntax '#f 'cond))
                                   (__tmp60497
                                    (let ((__tmp60571
                                           (let ((__tmp60573
                                                  (let ((__tmp60579
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60574
                                                         (let ((__tmp60578
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60575
                        (let ((__tmp60576
                               (let ((__tmp60577
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60577 '()))))
                          (declare (not safe))
                          (cons __tmp60576 '()))))
                   (declare (not safe))
                   (cons __tmp60578 __tmp60575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60579
                                                          __tmp60574)))
                                                 (__tmp60572
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60573 __tmp60572)))
                                          (__tmp60498
                                           (let ((__tmp60538
                                                  (let ((__tmp60564
                                                         (let ((__tmp60570
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60565
                        (let ((__tmp60569 (gx#datum->syntax '#f 'k))
                              (__tmp60566
                               (let ((__tmp60567
                                      (let ((__tmp60568
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60568 '()))))
                                 (declare (not safe))
                                 (cons __tmp60567 '()))))
                          (declare (not safe))
                          (cons __tmp60569 __tmp60566))))
                   (declare (not safe))
                   (cons __tmp60570 __tmp60565)))
                (__tmp60539
                 (let ((__tmp60540
                        (let ((__tmp60563 (gx#datum->syntax '#f 'loop))
                              (__tmp60541
                               (let ((__tmp60555
                                      (let ((__tmp60562
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60556
                                             (let ((__tmp60561
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60557
                                                    (let ((__tmp60560
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60558
                                                           (let ((__tmp60559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60559 '()))))
              (declare (not safe))
              (cons __tmp60560 __tmp60558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60561 __tmp60557))))
                                        (declare (not safe))
                                        (cons __tmp60562 __tmp60556)))
                                     (__tmp60542
                                      (let ((__tmp60550
                                             (let ((__tmp60554
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60551
                                                    (let ((__tmp60553
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60552
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60553
                                                            __tmp60552))))
                                               (declare (not safe))
                                               (cons __tmp60554 __tmp60551)))
                                            (__tmp60543
                                             (let ((__tmp60544
                                                    (let ((__tmp60549
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60545
                                                           (let ((__tmp60548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60546
                          (let ((__tmp60547 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60547 '()))))
                     (declare (not safe))
                     (cons __tmp60548 __tmp60546))))
              (declare (not safe))
              (cons __tmp60549 __tmp60545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60544 '()))))
                                        (declare (not safe))
                                        (cons __tmp60550 __tmp60543))))
                                 (declare (not safe))
                                 (cons __tmp60555 __tmp60542))))
                          (declare (not safe))
                          (cons __tmp60563 __tmp60541))))
                   (declare (not safe))
                   (cons __tmp60540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60564
                                                          __tmp60539)))
                                                 (__tmp60499
                                                  (let ((__tmp60523
                                                         (let ((__tmp60534
                                                                (let ((__tmp60535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60536
                                      (let ((__tmp60537
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60537 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60536))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60535)))
                       (__tmp60524
                        (let ((__tmp60525
                               (let ((__tmp60533
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60526
                                      (let ((__tmp60527
                                             (let ((__tmp60528
                                                    (let ((__tmp60532
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60529
                                                           (let ((__tmp60531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60530
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60531 __tmp60530))))
              (declare (not safe))
              (cons __tmp60532 __tmp60529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60528 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60527))))
                                 (declare (not safe))
                                 (cons __tmp60533 __tmp60526))))
                          (declare (not safe))
                          (cons __tmp60525 '()))))
                   (declare (not safe))
                   (cons __tmp60534 __tmp60524)))
                (__tmp60500
                 (let ((__tmp60501
                        (let ((__tmp60522 (gx#datum->syntax '#f 'else))
                              (__tmp60502
                               (let ((__tmp60503
                                      (let ((__tmp60521
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60504
                                             (let ((__tmp60513
                                                    (let ((__tmp60520
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60514
                                                           (let ((__tmp60519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60515
                          (let ((__tmp60518 (gx#datum->syntax '#f 'i))
                                (__tmp60516
                                 (let ((__tmp60517
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60517 '()))))
                            (declare (not safe))
                            (cons __tmp60518 __tmp60516))))
                     (declare (not safe))
                     (cons __tmp60519 __tmp60515))))
              (declare (not safe))
              (cons __tmp60520 __tmp60514)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60505
                                                    (let ((__tmp60508
                                                           (let ((__tmp60512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60509
                          (let ((__tmp60511 (gx#datum->syntax '#f 'i))
                                (__tmp60510
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60511 __tmp60510))))
                     (declare (not safe))
                     (cons __tmp60512 __tmp60509)))
                  (__tmp60506
                   (let ((__tmp60507 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60507 '()))))
              (declare (not safe))
              (cons __tmp60508 __tmp60506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60513 __tmp60505))))
                                        (declare (not safe))
                                        (cons __tmp60521 __tmp60504))))
                                 (declare (not safe))
                                 (cons __tmp60503 '()))))
                          (declare (not safe))
                          (cons __tmp60522 __tmp60502))))
                   (declare (not safe))
                   (cons __tmp60501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60523
                                                          __tmp60500))))
                                             (declare (not safe))
                                             (cons __tmp60538 __tmp60499))))
                                      (declare (not safe))
                                      (cons __tmp60571 __tmp60498))))
                               (declare (not safe))
                               (cons __tmp60580 __tmp60497))))
                        (declare (not safe))
                        (cons __tmp60496 '()))))
                 (declare (not safe))
                 (cons __tmp60581 __tmp60495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60589
                                                        __tmp60494))))
                                           (declare (not safe))
                                           (cons __tmp60493 '()))))
                                    (declare (not safe))
                                    (cons __tmp60590 __tmp60492))))
                             (declare (not safe))
                             (cons __tmp60603 __tmp60491))))
                      (declare (not safe))
                      (cons __tmp60604 __tmp60490))))
               (declare (not safe))
               (cons __tmp60489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60605 __tmp60488))))
                                         (declare (not safe))
                                         (cons __tmp60645 __tmp60487)))
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
                                                       (let ((__tmp60862
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60646
                                                              (let ((__tmp60822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60853
                                    (let ((__tmp60861
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60854
                                           (let ((__tmp60855
                                                  (let ((__tmp60860
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60856
                                                         (let ((__tmp60858
                                                                (let ((__tmp60859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60859)))
                       (__tmp60857
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60858 __tmp60857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60860
                                                          __tmp60856))))
                                             (declare (not safe))
                                             (cons __tmp60855 '()))))
                                      (declare (not safe))
                                      (cons __tmp60861 __tmp60854)))
                                   (__tmp60823
                                    (let ((__tmp60847
                                           (let ((__tmp60852
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60848
                                                  (let ((__tmp60849
                                                         (let ((__tmp60851
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60850
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60851 __tmp60850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60849 '()))))
                                             (declare (not safe))
                                             (cons __tmp60852 __tmp60848)))
                                          (__tmp60824
                                           (let ((__tmp60839
                                                  (let ((__tmp60846
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60840
                                                         (let ((__tmp60841
                                                                (let ((__tmp60845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60842
                               (let ((__tmp60844 (gx#datum->syntax '#f 'size))
                                     (__tmp60843
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60844 __tmp60843))))
                          (declare (not safe))
                          (cons __tmp60845 __tmp60842))))
                   (declare (not safe))
                   (cons __tmp60841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60846
                                                          __tmp60840)))
                                                 (__tmp60825
                                                  (let ((__tmp60826
                                                         (let ((__tmp60838
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60827
                        (let ((__tmp60828
                               (let ((__tmp60837
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60829
                                      (let ((__tmp60831
                                             (let ((__tmp60836
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60832
                                                    (let ((__tmp60835
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60833
                                                           (let ((__tmp60834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60834 '()))))
              (declare (not safe))
              (cons __tmp60835 __tmp60833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60836 __tmp60832)))
                                            (__tmp60830
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60831 __tmp60830))))
                                 (declare (not safe))
                                 (cons __tmp60837 __tmp60829))))
                          (declare (not safe))
                          (cons __tmp60828 '()))))
                   (declare (not safe))
                   (cons __tmp60838 __tmp60827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60826 '()))))
                                             (declare (not safe))
                                             (cons __tmp60839 __tmp60825))))
                                      (declare (not safe))
                                      (cons __tmp60847 __tmp60824))))
                               (declare (not safe))
                               (cons __tmp60853 __tmp60823)))
                            (__tmp60647
                             (let ((__tmp60648
                                    (let ((__tmp60821
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60649
                                           (let ((__tmp60820
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60650
                                                  (let ((__tmp60807
                                                         (let ((__tmp60816
                                                                (let ((__tmp60819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60817
                               (let ((__tmp60818
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60818 '()))))
                          (declare (not safe))
                          (cons __tmp60819 __tmp60817)))
                       (__tmp60808
                        (let ((__tmp60813
                               (let ((__tmp60815 (gx#datum->syntax '#f 'i))
                                     (__tmp60814
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60815 __tmp60814)))
                              (__tmp60809
                               (let ((__tmp60810
                                      (let ((__tmp60812
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60811
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60812 __tmp60811))))
                                 (declare (not safe))
                                 (cons __tmp60810 '()))))
                          (declare (not safe))
                          (cons __tmp60813 __tmp60809))))
                   (declare (not safe))
                   (cons __tmp60816 __tmp60808)))
                (__tmp60651
                 (let ((__tmp60652
                        (let ((__tmp60806 (gx#datum->syntax '#f 'let))
                              (__tmp60653
                               (let ((__tmp60798
                                      (let ((__tmp60805
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60799
                                             (let ((__tmp60800
                                                    (let ((__tmp60804
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60801
                                                           (let ((__tmp60802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60803 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60803 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60802))))
              (declare (not safe))
              (cons __tmp60804 __tmp60801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60800 '()))))
                                        (declare (not safe))
                                        (cons __tmp60805 __tmp60799)))
                                     (__tmp60654
                                      (let ((__tmp60655
                                             (let ((__tmp60797
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60656
                                                    (let ((__tmp60738
                                                           (let ((__tmp60790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60796 (gx#datum->syntax '#f 'eq?))
                                (__tmp60791
                                 (let ((__tmp60795 (gx#datum->syntax '#f 'k))
                                       (__tmp60792
                                        (let ((__tmp60793
                                               (let ((__tmp60794
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60794 '()))))
                                          (declare (not safe))
                                          (cons __tmp60793 '()))))
                                   (declare (not safe))
                                   (cons __tmp60795 __tmp60792))))
                            (declare (not safe))
                            (cons __tmp60796 __tmp60791)))
                         (__tmp60739
                          (let ((__tmp60740
                                 (let ((__tmp60789 (gx#datum->syntax '#f 'if))
                                       (__tmp60741
                                        (let ((__tmp60788
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60742
                                               (let ((__tmp60766
                                                      (let ((__tmp60787
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60767
                                                             (let ((__tmp60781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60786
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60782
                                   (let ((__tmp60783
                                          (let ((__tmp60785
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60784
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60785 __tmp60784))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60783))))
                              (declare (not safe))
                              (cons __tmp60786 __tmp60782)))
                           (__tmp60768
                            (let ((__tmp60771
                                   (let ((__tmp60780
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60772
                                          (let ((__tmp60773
                                                 (let ((__tmp60775
                                                        (let ((__tmp60779
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60776
                                                               (let ((__tmp60778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60777
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60778 __tmp60777))))
                  (declare (not safe))
                  (cons __tmp60779 __tmp60776)))
               (__tmp60774 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60775
                                                         __tmp60774))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60773))))
                                     (declare (not safe))
                                     (cons __tmp60780 __tmp60772)))
                                  (__tmp60769
                                   (let ((__tmp60770
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60770 '()))))
                              (declare (not safe))
                              (cons __tmp60771 __tmp60769))))
                       (declare (not safe))
                       (cons __tmp60781 __tmp60768))))
                (declare (not safe))
                (cons __tmp60787 __tmp60767)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60743
                                                      (let ((__tmp60744
                                                             (let ((__tmp60765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60745
                            (let ((__tmp60759
                                   (let ((__tmp60764
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60760
                                          (let ((__tmp60761
                                                 (let ((__tmp60763
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60762
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60763
                                                         __tmp60762))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60761))))
                                     (declare (not safe))
                                     (cons __tmp60764 __tmp60760)))
                                  (__tmp60746
                                   (let ((__tmp60749
                                          (let ((__tmp60758
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60750
                                                 (let ((__tmp60751
                                                        (let ((__tmp60753
                                                               (let ((__tmp60757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60754
                              (let ((__tmp60756 (gx#datum->syntax '#f 'probe))
                                    (__tmp60755
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60756 __tmp60755))))
                         (declare (not safe))
                         (cons __tmp60757 __tmp60754)))
                      (__tmp60752
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60753 __tmp60752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60751))))
                                            (declare (not safe))
                                            (cons __tmp60758 __tmp60750)))
                                         (__tmp60747
                                          (let ((__tmp60748
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60748 '()))))
                                     (declare (not safe))
                                     (cons __tmp60749 __tmp60747))))
                              (declare (not safe))
                              (cons __tmp60759 __tmp60746))))
                       (declare (not safe))
                       (cons __tmp60765 __tmp60745))))
                (declare (not safe))
                (cons __tmp60744 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60766
                                                       __tmp60743))))
                                          (declare (not safe))
                                          (cons __tmp60788 __tmp60742))))
                                   (declare (not safe))
                                   (cons __tmp60789 __tmp60741))))
                            (declare (not safe))
                            (cons __tmp60740 '()))))
                     (declare (not safe))
                     (cons __tmp60790 __tmp60739)))
                  (__tmp60657
                   (let ((__tmp60705
                          (let ((__tmp60731
                                 (let ((__tmp60737 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60732
                                        (let ((__tmp60736
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60733
                                               (let ((__tmp60734
                                                      (let ((__tmp60735
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60735
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60734 '()))))
                                          (declare (not safe))
                                          (cons __tmp60736 __tmp60733))))
                                   (declare (not safe))
                                   (cons __tmp60737 __tmp60732)))
                                (__tmp60706
                                 (let ((__tmp60707
                                        (let ((__tmp60730
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60708
                                               (let ((__tmp60722
                                                      (let ((__tmp60729
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60723
                                                             (let ((__tmp60728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60724
                            (let ((__tmp60727 (gx#datum->syntax '#f 'i))
                                  (__tmp60725
                                   (let ((__tmp60726
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60726 '()))))
                              (declare (not safe))
                              (cons __tmp60727 __tmp60725))))
                       (declare (not safe))
                       (cons __tmp60728 __tmp60724))))
                (declare (not safe))
                (cons __tmp60729 __tmp60723)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60709
                                                      (let ((__tmp60717
                                                             (let ((__tmp60721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60718
                            (let ((__tmp60720 (gx#datum->syntax '#f 'i))
                                  (__tmp60719
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60720 __tmp60719))))
                       (declare (not safe))
                       (cons __tmp60721 __tmp60718)))
                    (__tmp60710
                     (let ((__tmp60711
                            (let ((__tmp60716 (gx#datum->syntax '#f 'or))
                                  (__tmp60712
                                   (let ((__tmp60715
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60713
                                          (let ((__tmp60714
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60714 '()))))
                                     (declare (not safe))
                                     (cons __tmp60715 __tmp60713))))
                              (declare (not safe))
                              (cons __tmp60716 __tmp60712))))
                       (declare (not safe))
                       (cons __tmp60711 '()))))
                (declare (not safe))
                (cons __tmp60717 __tmp60710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60722
                                                       __tmp60709))))
                                          (declare (not safe))
                                          (cons __tmp60730 __tmp60708))))
                                   (declare (not safe))
                                   (cons __tmp60707 '()))))
                            (declare (not safe))
                            (cons __tmp60731 __tmp60706)))
                         (__tmp60658
                          (let ((__tmp60682
                                 (let ((__tmp60701
                                        (let ((__tmp60702
                                               (let ((__tmp60703
                                                      (let ((__tmp60704
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60704
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60703))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60702)))
                                       (__tmp60683
                                        (let ((__tmp60695
                                               (let ((__tmp60700
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60696
                                                      (let ((__tmp60697
                                                             (let ((__tmp60699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60698
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60699 __tmp60698))))
                (declare (not safe))
                (cons _L58133_ __tmp60697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60700 __tmp60696)))
                                              (__tmp60684
                                               (let ((__tmp60685
                                                      (let ((__tmp60694
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60686
                                                             (let ((__tmp60687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60689
                                   (let ((__tmp60693
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60690
                                          (let ((__tmp60692
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60692 __tmp60691))))
                                     (declare (not safe))
                                     (cons __tmp60693 __tmp60690)))
                                  (__tmp60688
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60689 __tmp60688))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60687))))
                (declare (not safe))
                (cons __tmp60694 __tmp60686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60685 '()))))
                                          (declare (not safe))
                                          (cons __tmp60695 __tmp60684))))
                                   (declare (not safe))
                                   (cons __tmp60701 __tmp60683)))
                                (__tmp60659
                                 (let ((__tmp60660
                                        (let ((__tmp60681
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60661
                                               (let ((__tmp60662
                                                      (let ((__tmp60680
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60663
                                                             (let ((__tmp60672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60679
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60673
                                   (let ((__tmp60678
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60674
                                          (let ((__tmp60677
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60675
                                                 (let ((__tmp60676
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60676 '()))))
                                            (declare (not safe))
                                            (cons __tmp60677 __tmp60675))))
                                     (declare (not safe))
                                     (cons __tmp60678 __tmp60674))))
                              (declare (not safe))
                              (cons __tmp60679 __tmp60673)))
                           (__tmp60664
                            (let ((__tmp60667
                                   (let ((__tmp60671
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60668
                                          (let ((__tmp60670
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60669
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60670 __tmp60669))))
                                     (declare (not safe))
                                     (cons __tmp60671 __tmp60668)))
                                  (__tmp60665
                                   (let ((__tmp60666
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60666 '()))))
                              (declare (not safe))
                              (cons __tmp60667 __tmp60665))))
                       (declare (not safe))
                       (cons __tmp60672 __tmp60664))))
                (declare (not safe))
                (cons __tmp60680 __tmp60663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60662 '()))))
                                          (declare (not safe))
                                          (cons __tmp60681 __tmp60661))))
                                   (declare (not safe))
                                   (cons __tmp60660 '()))))
                            (declare (not safe))
                            (cons __tmp60682 __tmp60659))))
                     (declare (not safe))
                     (cons __tmp60705 __tmp60658))))
              (declare (not safe))
              (cons __tmp60738 __tmp60657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60797 __tmp60656))))
                                        (declare (not safe))
                                        (cons __tmp60655 '()))))
                                 (declare (not safe))
                                 (cons __tmp60798 __tmp60654))))
                          (declare (not safe))
                          (cons __tmp60806 __tmp60653))))
                   (declare (not safe))
                   (cons __tmp60652 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60807
                                                          __tmp60651))))
                                             (declare (not safe))
                                             (cons __tmp60820 __tmp60650))))
                                      (declare (not safe))
                                      (cons __tmp60821 __tmp60649))))
                               (declare (not safe))
                               (cons __tmp60648 '()))))
                        (declare (not safe))
                        (cons __tmp60822 __tmp60647))))
                 (declare (not safe))
                 (cons __tmp60862 __tmp60646)))
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
                       (let ((__tmp61094 (gx#datum->syntax '#f 'let*))
                             (__tmp60863
                              (let ((__tmp61054
                                     (let ((__tmp61085
                                            (let ((__tmp61093
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61086
                                                   (let ((__tmp61087
                                                          (let ((__tmp61092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61088
                         (let ((__tmp61090
                                (let ((__tmp61091
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp61091)))
                               (__tmp61089
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp61090 __tmp61089))))
                    (declare (not safe))
                    (cons __tmp61092 __tmp61088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61087 '()))))
                                              (declare (not safe))
                                              (cons __tmp61093 __tmp61086)))
                                           (__tmp61055
                                            (let ((__tmp61079
                                                   (let ((__tmp61084
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61080
                                                          (let ((__tmp61081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61083
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61082
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp61083 __tmp61082))))
                    (declare (not safe))
                    (cons __tmp61081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61084
                                                           __tmp61080)))
                                                  (__tmp61056
                                                   (let ((__tmp61071
                                                          (let ((__tmp61078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61072
                         (let ((__tmp61073
                                (let ((__tmp61077
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61074
                                       (let ((__tmp61076
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61075
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61076 __tmp61075))))
                                  (declare (not safe))
                                  (cons __tmp61077 __tmp61074))))
                           (declare (not safe))
                           (cons __tmp61073 '()))))
                    (declare (not safe))
                    (cons __tmp61078 __tmp61072)))
                 (__tmp61057
                  (let ((__tmp61058
                         (let ((__tmp61070 (gx#datum->syntax '#f 'start))
                               (__tmp61059
                                (let ((__tmp61060
                                       (let ((__tmp61069
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61061
                                              (let ((__tmp61063
                                                     (let ((__tmp61068
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61064
                                                            (let ((__tmp61067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61065
                           (let ((__tmp61066 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61066 '()))))
                      (declare (not safe))
                      (cons __tmp61067 __tmp61065))))
               (declare (not safe))
               (cons __tmp61068 __tmp61064)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61062
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61063 __tmp61062))))
                                         (declare (not safe))
                                         (cons __tmp61069 __tmp61061))))
                                  (declare (not safe))
                                  (cons __tmp61060 '()))))
                           (declare (not safe))
                           (cons __tmp61070 __tmp61059))))
                    (declare (not safe))
                    (cons __tmp61058 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61071
                                                           __tmp61057))))
                                              (declare (not safe))
                                              (cons __tmp61079 __tmp61056))))
                                       (declare (not safe))
                                       (cons __tmp61085 __tmp61055)))
                                    (__tmp60864
                                     (let ((__tmp60865
                                            (let ((__tmp61053
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60866
                                                   (let ((__tmp61052
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60867
                                                          (let ((__tmp61039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61048
                                (let ((__tmp61051
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61049
                                       (let ((__tmp61050
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61050 '()))))
                                  (declare (not safe))
                                  (cons __tmp61051 __tmp61049)))
                               (__tmp61040
                                (let ((__tmp61045
                                       (let ((__tmp61047
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61046
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61047 __tmp61046)))
                                      (__tmp61041
                                       (let ((__tmp61042
                                              (let ((__tmp61044
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61043
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61044 __tmp61043))))
                                         (declare (not safe))
                                         (cons __tmp61042 '()))))
                                  (declare (not safe))
                                  (cons __tmp61045 __tmp61041))))
                           (declare (not safe))
                           (cons __tmp61048 __tmp61040)))
                        (__tmp60868
                         (let ((__tmp60869
                                (let ((__tmp61038 (gx#datum->syntax '#f 'let))
                                      (__tmp60870
                                       (let ((__tmp61030
                                              (let ((__tmp61037
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61031
                                                     (let ((__tmp61032
                                                            (let ((__tmp61036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61033
                           (let ((__tmp61034
                                  (let ((__tmp61035
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61035 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp61034))))
                      (declare (not safe))
                      (cons __tmp61036 __tmp61033))))
               (declare (not safe))
               (cons __tmp61032 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61037 __tmp61031)))
                                             (__tmp60871
                                              (let ((__tmp60872
                                                     (let ((__tmp61029
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60873
                                                            (let ((__tmp60966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61022
                                  (let ((__tmp61028
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61023
                                         (let ((__tmp61027
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61024
                                                (let ((__tmp61025
                                                       (let ((__tmp61026
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61026
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61025 '()))))
                                           (declare (not safe))
                                           (cons __tmp61027 __tmp61024))))
                                    (declare (not safe))
                                    (cons __tmp61028 __tmp61023)))
                                 (__tmp60967
                                  (let ((__tmp60968
                                         (let ((__tmp61021
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60969
                                                (let ((__tmp61020
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60970
                                                       (let ((__tmp60996
                                                              (let ((__tmp61019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60997
                             (let ((__tmp61013
                                    (let ((__tmp61018
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61014
                                           (let ((__tmp61015
                                                  (let ((__tmp61017
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61016
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61017
                                                          __tmp61016))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp61015))))
                                      (declare (not safe))
                                      (cons __tmp61018 __tmp61014)))
                                   (__tmp60998
                                    (let ((__tmp61001
                                           (let ((__tmp61012
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61002
                                                  (let ((__tmp61003
                                                         (let ((__tmp61007
                                                                (let ((__tmp61011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61008
                               (let ((__tmp61010
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61009
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61010 __tmp61009))))
                          (declare (not safe))
                          (cons __tmp61011 __tmp61008)))
                       (__tmp61004
                        (let ((__tmp61005
                               (let ((__tmp61006
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp61006))))
                          (declare (not safe))
                          (cons __tmp61005 '()))))
                   (declare (not safe))
                   (cons __tmp61007 __tmp61004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61003))))
                                             (declare (not safe))
                                             (cons __tmp61012 __tmp61002)))
                                          (__tmp60999
                                           (let ((__tmp61000
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61000 '()))))
                                      (declare (not safe))
                                      (cons __tmp61001 __tmp60999))))
                               (declare (not safe))
                               (cons __tmp61013 __tmp60998))))
                        (declare (not safe))
                        (cons __tmp61019 __tmp60997)))
                     (__tmp60971
                      (let ((__tmp60972
                             (let ((__tmp60995 (gx#datum->syntax '#f 'begin))
                                   (__tmp60973
                                    (let ((__tmp60989
                                           (let ((__tmp60994
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60990
                                                  (let ((__tmp60991
                                                         (let ((__tmp60993
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60992
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp60993 __tmp60992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60991))))
                                             (declare (not safe))
                                             (cons __tmp60994 __tmp60990)))
                                          (__tmp60974
                                           (let ((__tmp60977
                                                  (let ((__tmp60988
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60978
                                                         (let ((__tmp60979
                                                                (let ((__tmp60983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60987 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60984
                                      (let ((__tmp60986
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60985
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60986 __tmp60985))))
                                 (declare (not safe))
                                 (cons __tmp60987 __tmp60984)))
                              (__tmp60980
                               (let ((__tmp60981
                                      (let ((__tmp60982
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60982))))
                                 (declare (not safe))
                                 (cons __tmp60981 '()))))
                          (declare (not safe))
                          (cons __tmp60983 __tmp60980))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60988
                                                          __tmp60978)))
                                                 (__tmp60975
                                                  (let ((__tmp60976
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60976 '()))))
                                             (declare (not safe))
                                             (cons __tmp60977 __tmp60975))))
                                      (declare (not safe))
                                      (cons __tmp60989 __tmp60974))))
                               (declare (not safe))
                               (cons __tmp60995 __tmp60973))))
                        (declare (not safe))
                        (cons __tmp60972 '()))))
                 (declare (not safe))
                 (cons __tmp60996 __tmp60971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61020
                                                        __tmp60970))))
                                           (declare (not safe))
                                           (cons __tmp61021 __tmp60969))))
                                    (declare (not safe))
                                    (cons __tmp60968 '()))))
                             (declare (not safe))
                             (cons __tmp61022 __tmp60967)))
                          (__tmp60874
                           (let ((__tmp60933
                                  (let ((__tmp60959
                                         (let ((__tmp60965
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60960
                                                (let ((__tmp60964
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60961
                                                       (let ((__tmp60962
                                                              (let ((__tmp60963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60963 '()))))
                 (declare (not safe))
                 (cons __tmp60962 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60964
                                                        __tmp60961))))
                                           (declare (not safe))
                                           (cons __tmp60965 __tmp60960)))
                                        (__tmp60934
                                         (let ((__tmp60935
                                                (let ((__tmp60958
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60936
                                                       (let ((__tmp60950
                                                              (let ((__tmp60957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60951
                             (let ((__tmp60956 (gx#datum->syntax '#f 'start))
                                   (__tmp60952
                                    (let ((__tmp60955
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60953
                                           (let ((__tmp60954
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60954 '()))))
                                      (declare (not safe))
                                      (cons __tmp60955 __tmp60953))))
                               (declare (not safe))
                               (cons __tmp60956 __tmp60952))))
                        (declare (not safe))
                        (cons __tmp60957 __tmp60951)))
                     (__tmp60937
                      (let ((__tmp60945
                             (let ((__tmp60949 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60946
                                    (let ((__tmp60948
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60947
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60948 __tmp60947))))
                               (declare (not safe))
                               (cons __tmp60949 __tmp60946)))
                            (__tmp60938
                             (let ((__tmp60939
                                    (let ((__tmp60944
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60940
                                           (let ((__tmp60943
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60941
                                                  (let ((__tmp60942
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60942 '()))))
                                             (declare (not safe))
                                             (cons __tmp60943 __tmp60941))))
                                      (declare (not safe))
                                      (cons __tmp60944 __tmp60940))))
                               (declare (not safe))
                               (cons __tmp60939 '()))))
                        (declare (not safe))
                        (cons __tmp60945 __tmp60938))))
                 (declare (not safe))
                 (cons __tmp60950 __tmp60937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60958
                                                        __tmp60936))))
                                           (declare (not safe))
                                           (cons __tmp60935 '()))))
                                    (declare (not safe))
                                    (cons __tmp60959 __tmp60934)))
                                 (__tmp60875
                                  (let ((__tmp60899
                                         (let ((__tmp60929
                                                (let ((__tmp60930
                                                       (let ((__tmp60931
                                                              (let ((__tmp60932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60932 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60930)))
                                               (__tmp60900
                                                (let ((__tmp60923
                                                       (let ((__tmp60928
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60924
                                                              (let ((__tmp60925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60927 (gx#datum->syntax '#f 'probe))
                                   (__tmp60926
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60927 __tmp60926))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60925))))
                 (declare (not safe))
                 (cons __tmp60928 __tmp60924)))
              (__tmp60901
               (let ((__tmp60902
                      (let ((__tmp60922 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60903
                             (let ((__tmp60904
                                    (let ((__tmp60917
                                           (let ((__tmp60921
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60918
                                                  (let ((__tmp60920
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60919
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60920
                                                          __tmp60919))))
                                             (declare (not safe))
                                             (cons __tmp60921 __tmp60918)))
                                          (__tmp60905
                                           (let ((__tmp60906
                                                  (let ((__tmp60907
                                                         (let ((__tmp60908
                                                                (let ((__tmp60916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60909
                               (let ((__tmp60910
                                      (let ((__tmp60911
                                             (let ((__tmp60915
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60912
                                                    (let ((__tmp60914
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60913
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60914
                                                            __tmp60913))))
                                               (declare (not safe))
                                               (cons __tmp60915 __tmp60912))))
                                        (declare (not safe))
                                        (cons __tmp60911 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60910))))
                          (declare (not safe))
                          (cons __tmp60916 __tmp60909))))
                   (declare (not safe))
                   (cons __tmp60908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60907))))
                                             (declare (not safe))
                                             (cons __tmp60906 '()))))
                                      (declare (not safe))
                                      (cons __tmp60917 __tmp60905))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60904))))
                        (declare (not safe))
                        (cons __tmp60922 __tmp60903))))
                 (declare (not safe))
                 (cons __tmp60902 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60923
                                                        __tmp60901))))
                                           (declare (not safe))
                                           (cons __tmp60929 __tmp60900)))
                                        (__tmp60876
                                         (let ((__tmp60877
                                                (let ((__tmp60898
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60878
                                                       (let ((__tmp60879
                                                              (let ((__tmp60897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60880
                             (let ((__tmp60889
                                    (let ((__tmp60896
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60890
                                           (let ((__tmp60895
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60891
                                                  (let ((__tmp60894
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60892
                                                         (let ((__tmp60893
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60894
                                                          __tmp60892))))
                                             (declare (not safe))
                                             (cons __tmp60895 __tmp60891))))
                                      (declare (not safe))
                                      (cons __tmp60896 __tmp60890)))
                                   (__tmp60881
                                    (let ((__tmp60884
                                           (let ((__tmp60888
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60885
                                                  (let ((__tmp60887
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60886
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60887
                                                          __tmp60886))))
                                             (declare (not safe))
                                             (cons __tmp60888 __tmp60885)))
                                          (__tmp60882
                                           (let ((__tmp60883
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60883 '()))))
                                      (declare (not safe))
                                      (cons __tmp60884 __tmp60882))))
                               (declare (not safe))
                               (cons __tmp60889 __tmp60881))))
                        (declare (not safe))
                        (cons __tmp60897 __tmp60880))))
                 (declare (not safe))
                 (cons __tmp60879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60898
                                                        __tmp60878))))
                                           (declare (not safe))
                                           (cons __tmp60877 '()))))
                                    (declare (not safe))
                                    (cons __tmp60899 __tmp60876))))
                             (declare (not safe))
                             (cons __tmp60933 __tmp60875))))
                      (declare (not safe))
                      (cons __tmp60966 __tmp60874))))
               (declare (not safe))
               (cons __tmp61029 __tmp60873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60872 '()))))
                                         (declare (not safe))
                                         (cons __tmp61030 __tmp60871))))
                                  (declare (not safe))
                                  (cons __tmp61038 __tmp60870))))
                           (declare (not safe))
                           (cons __tmp60869 '()))))
                    (declare (not safe))
                    (cons __tmp61039 __tmp60868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61052
                                                           __tmp60867))))
                                              (declare (not safe))
                                              (cons __tmp61053 __tmp60866))))
                                       (declare (not safe))
                                       (cons __tmp60865 '()))))
                                (declare (not safe))
                                (cons __tmp61054 __tmp60864))))
                         (declare (not safe))
                         (cons __tmp61094 __tmp60863)))
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
                                       (let ((__tmp61256
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61095
                                              (let ((__tmp61216
                                                     (let ((__tmp61247
                                                            (let ((__tmp61255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61248
                           (let ((__tmp61249
                                  (let ((__tmp61254
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61250
                                         (let ((__tmp61252
                                                (let ((__tmp61253
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp61253)))
                                               (__tmp61251
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61252 __tmp61251))))
                                    (declare (not safe))
                                    (cons __tmp61254 __tmp61250))))
                             (declare (not safe))
                             (cons __tmp61249 '()))))
                      (declare (not safe))
                      (cons __tmp61255 __tmp61248)))
                   (__tmp61217
                    (let ((__tmp61241
                           (let ((__tmp61246 (gx#datum->syntax '#f 'size))
                                 (__tmp61242
                                  (let ((__tmp61243
                                         (let ((__tmp61245
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61244
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61245 __tmp61244))))
                                    (declare (not safe))
                                    (cons __tmp61243 '()))))
                             (declare (not safe))
                             (cons __tmp61246 __tmp61242)))
                          (__tmp61218
                           (let ((__tmp61233
                                  (let ((__tmp61240
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61234
                                         (let ((__tmp61235
                                                (let ((__tmp61239
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61236
                                                       (let ((__tmp61238
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61237
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61238 __tmp61237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61239
                                                        __tmp61236))))
                                           (declare (not safe))
                                           (cons __tmp61235 '()))))
                                    (declare (not safe))
                                    (cons __tmp61240 __tmp61234)))
                                 (__tmp61219
                                  (let ((__tmp61220
                                         (let ((__tmp61232
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61221
                                                (let ((__tmp61222
                                                       (let ((__tmp61231
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61223
                                                              (let ((__tmp61225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61230
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61226
                                    (let ((__tmp61229
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61227
                                           (let ((__tmp61228
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61228 '()))))
                                      (declare (not safe))
                                      (cons __tmp61229 __tmp61227))))
                               (declare (not safe))
                               (cons __tmp61230 __tmp61226)))
                            (__tmp61224
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61225 __tmp61224))))
                 (declare (not safe))
                 (cons __tmp61231 __tmp61223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61222 '()))))
                                           (declare (not safe))
                                           (cons __tmp61232 __tmp61221))))
                                    (declare (not safe))
                                    (cons __tmp61220 '()))))
                             (declare (not safe))
                             (cons __tmp61233 __tmp61219))))
                      (declare (not safe))
                      (cons __tmp61241 __tmp61218))))
               (declare (not safe))
               (cons __tmp61247 __tmp61217)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61096
                                                     (let ((__tmp61097
                                                            (let ((__tmp61215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61098
                           (let ((__tmp61214 (gx#datum->syntax '#f 'loop))
                                 (__tmp61099
                                  (let ((__tmp61205
                                         (let ((__tmp61210
                                                (let ((__tmp61213
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61211
                                                       (let ((__tmp61212
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61212
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61213
                                                        __tmp61211)))
                                               (__tmp61206
                                                (let ((__tmp61207
                                                       (let ((__tmp61209
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61208
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61209 __tmp61208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61207 '()))))
                                           (declare (not safe))
                                           (cons __tmp61210 __tmp61206)))
                                        (__tmp61100
                                         (let ((__tmp61101
                                                (let ((__tmp61204
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61102
                                                       (let ((__tmp61196
                                                              (let ((__tmp61203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61197
                             (let ((__tmp61198
                                    (let ((__tmp61202
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61199
                                           (let ((__tmp61200
                                                  (let ((__tmp61201
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61201 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp61200))))
                                      (declare (not safe))
                                      (cons __tmp61202 __tmp61199))))
                               (declare (not safe))
                               (cons __tmp61198 '()))))
                        (declare (not safe))
                        (cons __tmp61203 __tmp61197)))
                     (__tmp61103
                      (let ((__tmp61104
                             (let ((__tmp61195 (gx#datum->syntax '#f 'cond))
                                   (__tmp61105
                                    (let ((__tmp61184
                                           (let ((__tmp61188
                                                  (let ((__tmp61194
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61189
                                                         (let ((__tmp61193
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61190
                        (let ((__tmp61191
                               (let ((__tmp61192
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61192 '()))))
                          (declare (not safe))
                          (cons __tmp61191 '()))))
                   (declare (not safe))
                   (cons __tmp61193 __tmp61190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61194
                                                          __tmp61189)))
                                                 (__tmp61185
                                                  (let ((__tmp61186
                                                         (let ((__tmp61187
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61186 '()))))
                                             (declare (not safe))
                                             (cons __tmp61188 __tmp61185)))
                                          (__tmp61106
                                           (let ((__tmp61158
                                                  (let ((__tmp61177
                                                         (let ((__tmp61183
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61178
                        (let ((__tmp61182 (gx#datum->syntax '#f 'k))
                              (__tmp61179
                               (let ((__tmp61180
                                      (let ((__tmp61181
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61181 '()))))
                                 (declare (not safe))
                                 (cons __tmp61180 '()))))
                          (declare (not safe))
                          (cons __tmp61182 __tmp61179))))
                   (declare (not safe))
                   (cons __tmp61183 __tmp61178)))
                (__tmp61159
                 (let ((__tmp61160
                        (let ((__tmp61176 (gx#datum->syntax '#f 'loop))
                              (__tmp61161
                               (let ((__tmp61168
                                      (let ((__tmp61175
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61169
                                             (let ((__tmp61174
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61170
                                                    (let ((__tmp61173
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61171
                                                           (let ((__tmp61172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61172 '()))))
              (declare (not safe))
              (cons __tmp61173 __tmp61171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61174 __tmp61170))))
                                        (declare (not safe))
                                        (cons __tmp61175 __tmp61169)))
                                     (__tmp61162
                                      (let ((__tmp61163
                                             (let ((__tmp61167
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61164
                                                    (let ((__tmp61166
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61165
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61166
                                                            __tmp61165))))
                                               (declare (not safe))
                                               (cons __tmp61167 __tmp61164))))
                                        (declare (not safe))
                                        (cons __tmp61163 '()))))
                                 (declare (not safe))
                                 (cons __tmp61168 __tmp61162))))
                          (declare (not safe))
                          (cons __tmp61176 __tmp61161))))
                   (declare (not safe))
                   (cons __tmp61160 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61177
                                                          __tmp61159)))
                                                 (__tmp61107
                                                  (let ((__tmp61129
                                                         (let ((__tmp61154
                                                                (let ((__tmp61155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61156
                                      (let ((__tmp61157
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61157 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp61156))))
                          (declare (not safe))
                          (cons _L58496_ __tmp61155)))
                       (__tmp61130
                        (let ((__tmp61146
                               (let ((__tmp61153
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61147
                                      (let ((__tmp61148
                                             (let ((__tmp61152
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61149
                                                    (let ((__tmp61150
                                                           (let ((__tmp61151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61151 '()))))
              (declare (not safe))
              (cons __tmp61150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61152 __tmp61149))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp61148))))
                                 (declare (not safe))
                                 (cons __tmp61153 __tmp61147)))
                              (__tmp61131
                               (let ((__tmp61134
                                      (let ((__tmp61145
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61135
                                             (let ((__tmp61136
                                                    (let ((__tmp61140
                                                           (let ((__tmp61144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61141
                          (let ((__tmp61143 (gx#datum->syntax '#f 'probe))
                                (__tmp61142
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61143 __tmp61142))))
                     (declare (not safe))
                     (cons __tmp61144 __tmp61141)))
                  (__tmp61137
                   (let ((__tmp61138
                          (let ((__tmp61139
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61139 '()))))
                     (declare (not safe))
                     (cons __tmp61138 '()))))
              (declare (not safe))
              (cons __tmp61140 __tmp61137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp61136))))
                                        (declare (not safe))
                                        (cons __tmp61145 __tmp61135)))
                                     (__tmp61132
                                      (let ((__tmp61133
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61133 '()))))
                                 (declare (not safe))
                                 (cons __tmp61134 __tmp61132))))
                          (declare (not safe))
                          (cons __tmp61146 __tmp61131))))
                   (declare (not safe))
                   (cons __tmp61154 __tmp61130)))
                (__tmp61108
                 (let ((__tmp61109
                        (let ((__tmp61128 (gx#datum->syntax '#f 'else))
                              (__tmp61110
                               (let ((__tmp61111
                                      (let ((__tmp61127
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61112
                                             (let ((__tmp61119
                                                    (let ((__tmp61126
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61120
                                                           (let ((__tmp61125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61121
                          (let ((__tmp61124 (gx#datum->syntax '#f 'i))
                                (__tmp61122
                                 (let ((__tmp61123
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61123 '()))))
                            (declare (not safe))
                            (cons __tmp61124 __tmp61122))))
                     (declare (not safe))
                     (cons __tmp61125 __tmp61121))))
              (declare (not safe))
              (cons __tmp61126 __tmp61120)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61113
                                                    (let ((__tmp61114
                                                           (let ((__tmp61118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61115
                          (let ((__tmp61117 (gx#datum->syntax '#f 'i))
                                (__tmp61116
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61117 __tmp61116))))
                     (declare (not safe))
                     (cons __tmp61118 __tmp61115))))
              (declare (not safe))
              (cons __tmp61114 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61119 __tmp61113))))
                                        (declare (not safe))
                                        (cons __tmp61127 __tmp61112))))
                                 (declare (not safe))
                                 (cons __tmp61111 '()))))
                          (declare (not safe))
                          (cons __tmp61128 __tmp61110))))
                   (declare (not safe))
                   (cons __tmp61109 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61129
                                                          __tmp61108))))
                                             (declare (not safe))
                                             (cons __tmp61158 __tmp61107))))
                                      (declare (not safe))
                                      (cons __tmp61184 __tmp61106))))
                               (declare (not safe))
                               (cons __tmp61195 __tmp61105))))
                        (declare (not safe))
                        (cons __tmp61104 '()))))
                 (declare (not safe))
                 (cons __tmp61196 __tmp61103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61204
                                                        __tmp61102))))
                                           (declare (not safe))
                                           (cons __tmp61101 '()))))
                                    (declare (not safe))
                                    (cons __tmp61205 __tmp61100))))
                             (declare (not safe))
                             (cons __tmp61214 __tmp61099))))
                      (declare (not safe))
                      (cons __tmp61215 __tmp61098))))
               (declare (not safe))
               (cons __tmp61097 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61216 __tmp61096))))
                                         (declare (not safe))
                                         (cons __tmp61256 __tmp61095)))
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
