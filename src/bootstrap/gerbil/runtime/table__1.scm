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
                                       (let ((__tmp60041
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60039
                                              (let ((__tmp60040
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57504_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60040))))
                                         (declare (not safe))
                                         (cons __tmp60041 __tmp60039)))
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
                       (let ((__tmp60473 (gx#datum->syntax '#f 'begin))
                             (__tmp60042
                              (let ((__tmp60452
                                     (let ((__tmp60472
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60453
                                            (let ((__tmp60463
                                                   (let ((__tmp60464
                                                          (let ((__tmp60469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60471 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60470
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60471 __tmp60470)))
                        (__tmp60465
                         (let ((__tmp60466
                                (let ((__tmp60468 (gx#datum->syntax '#f 'seed))
                                      (__tmp60467
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60468 __tmp60467))))
                           (declare (not safe))
                           (cons __tmp60466 '()))))
                    (declare (not safe))
                    (cons __tmp60469 __tmp60465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57689_
                                                           __tmp60464)))
                                                  (__tmp60454
                                                   (let ((__tmp60455
                                                          (let ((__tmp60462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60456
                         (let ((__tmp60461 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60457
                                (let ((__tmp60458
                                       (let ((__tmp60459
                                              (let ((__tmp60460
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60460 '()))))
                                         (declare (not safe))
                                         (cons _L57680_ __tmp60459))))
                                  (declare (not safe))
                                  (cons _L57682_ __tmp60458))))
                           (declare (not safe))
                           (cons __tmp60461 __tmp60457))))
                    (declare (not safe))
                    (cons __tmp60462 __tmp60456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60455 '()))))
                                              (declare (not safe))
                                              (cons __tmp60463 __tmp60454))))
                                       (declare (not safe))
                                       (cons __tmp60472 __tmp60453)))
                                    (__tmp60043
                                     (let ((__tmp60409
                                            (let ((__tmp60451
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60410
                                                   (let ((__tmp60444
                                                          (let ((__tmp60445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60450 (gx#datum->syntax '#f 'tab))
                               (__tmp60446
                                (let ((__tmp60449 (gx#datum->syntax '#f 'key))
                                      (__tmp60447
                                       (let ((__tmp60448
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60448 '()))))
                                  (declare (not safe))
                                  (cons __tmp60449 __tmp60447))))
                           (declare (not safe))
                           (cons __tmp60450 __tmp60446))))
                    (declare (not safe))
                    (cons _L57688_ __tmp60445)))
                 (__tmp60411
                  (let ((__tmp60412
                         (let ((__tmp60443 (gx#datum->syntax '#f 'let))
                               (__tmp60413
                                (let ((__tmp60427
                                       (let ((__tmp60436
                                              (let ((__tmp60442
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60437
                                                     (let ((__tmp60438
                                                            (let ((__tmp60441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60439
                           (let ((__tmp60440 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60440 '()))))
                      (declare (not safe))
                      (cons __tmp60441 __tmp60439))))
               (declare (not safe))
               (cons __tmp60438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60442 __tmp60437)))
                                             (__tmp60428
                                              (let ((__tmp60429
                                                     (let ((__tmp60435
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60430
                                                            (let ((__tmp60431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60434
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60432
                                  (let ((__tmp60433
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60433 '()))))
                             (declare (not safe))
                             (cons __tmp60434 __tmp60432))))
                      (declare (not safe))
                      (cons __tmp60431 '()))))
               (declare (not safe))
               (cons __tmp60435 __tmp60430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60429 '()))))
                                         (declare (not safe))
                                         (cons __tmp60436 __tmp60428)))
                                      (__tmp60414
                                       (let ((__tmp60415
                                              (let ((__tmp60426
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60416
                                                     (let ((__tmp60425
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60417
                                                            (let ((__tmp60424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60418
                           (let ((__tmp60419
                                  (let ((__tmp60420
                                         (let ((__tmp60423
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60421
                                                (let ((__tmp60422
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60422 '()))))
                                           (declare (not safe))
                                           (cons __tmp60423 __tmp60421))))
                                    (declare (not safe))
                                    (cons _L57680_ __tmp60420))))
                             (declare (not safe))
                             (cons _L57682_ __tmp60419))))
                      (declare (not safe))
                      (cons __tmp60424 __tmp60418))))
               (declare (not safe))
               (cons __tmp60425 __tmp60417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60426 __tmp60416))))
                                         (declare (not safe))
                                         (cons __tmp60415 '()))))
                                  (declare (not safe))
                                  (cons __tmp60427 __tmp60414))))
                           (declare (not safe))
                           (cons __tmp60443 __tmp60413))))
                    (declare (not safe))
                    (cons __tmp60412 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60444
                                                           __tmp60411))))
                                              (declare (not safe))
                                              (cons __tmp60451 __tmp60410)))
                                           (__tmp60044
                                            (let ((__tmp60363
                                                   (let ((__tmp60408
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60364
                                                          (let ((__tmp60401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60402
                                (let ((__tmp60407 (gx#datum->syntax '#f 'tab))
                                      (__tmp60403
                                       (let ((__tmp60406
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60404
                                              (let ((__tmp60405
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60405 '()))))
                                         (declare (not safe))
                                         (cons __tmp60406 __tmp60404))))
                                  (declare (not safe))
                                  (cons __tmp60407 __tmp60403))))
                           (declare (not safe))
                           (cons _L57687_ __tmp60402)))
                        (__tmp60365
                         (let ((__tmp60374
                                (let ((__tmp60400 (gx#datum->syntax '#f 'when))
                                      (__tmp60375
                                       (let ((__tmp60381
                                              (let ((__tmp60399
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60382
                                                     (let ((__tmp60395
                                                            (let ((__tmp60398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60396
                           (let ((__tmp60397 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60397 '()))))
                      (declare (not safe))
                      (cons __tmp60398 __tmp60396)))
                   (__tmp60383
                    (let ((__tmp60384
                           (let ((__tmp60394
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60385
                                  (let ((__tmp60387
                                         (let ((__tmp60393
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60388
                                                (let ((__tmp60389
                                                       (let ((__tmp60392
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60390
                                                              (let ((__tmp60391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60391 '()))))
                 (declare (not safe))
                 (cons __tmp60392 __tmp60390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60389 '()))))
                                           (declare (not safe))
                                           (cons __tmp60393 __tmp60388)))
                                        (__tmp60386
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60387 __tmp60386))))
                             (declare (not safe))
                             (cons __tmp60394 __tmp60385))))
                      (declare (not safe))
                      (cons __tmp60384 '()))))
               (declare (not safe))
               (cons __tmp60395 __tmp60383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60399 __tmp60382)))
                                             (__tmp60376
                                              (let ((__tmp60377
                                                     (let ((__tmp60380
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60378
                                                            (let ((__tmp60379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60379 '()))))
               (declare (not safe))
               (cons __tmp60380 __tmp60378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60377 '()))))
                                         (declare (not safe))
                                         (cons __tmp60381 __tmp60376))))
                                  (declare (not safe))
                                  (cons __tmp60400 __tmp60375)))
                               (__tmp60366
                                (let ((__tmp60367
                                       (let ((__tmp60368
                                              (let ((__tmp60373
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60369
                                                     (let ((__tmp60372
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60370
                                                            (let ((__tmp60371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60371 '()))))
               (declare (not safe))
               (cons __tmp60372 __tmp60370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60373 __tmp60369))))
                                         (declare (not safe))
                                         (cons _L57686_ __tmp60368))))
                                  (declare (not safe))
                                  (cons __tmp60367 '()))))
                           (declare (not safe))
                           (cons __tmp60374 __tmp60366))))
                    (declare (not safe))
                    (cons __tmp60401 __tmp60365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60408
                                                           __tmp60364)))
                                                  (__tmp60045
                                                   (let ((__tmp60261
                                                          (let ((__tmp60362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60262
                         (let ((__tmp60355
                                (let ((__tmp60356
                                       (let ((__tmp60361
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60357
                                              (let ((__tmp60360
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60358
                                                     (let ((__tmp60359
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60359 '()))))
                                                (declare (not safe))
                                                (cons __tmp60360 __tmp60358))))
                                         (declare (not safe))
                                         (cons __tmp60361 __tmp60357))))
                                  (declare (not safe))
                                  (cons _L57686_ __tmp60356)))
                               (__tmp60263
                                (let ((__tmp60264
                                       (let ((__tmp60354
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60265
                                              (let ((__tmp60338
                                                     (let ((__tmp60347
                                                            (let ((__tmp60353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60348
                           (let ((__tmp60349
                                  (let ((__tmp60352
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60350
                                         (let ((__tmp60351
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60351 '()))))
                                    (declare (not safe))
                                    (cons __tmp60352 __tmp60350))))
                             (declare (not safe))
                             (cons __tmp60349 '()))))
                      (declare (not safe))
                      (cons __tmp60353 __tmp60348)))
                   (__tmp60339
                    (let ((__tmp60340
                           (let ((__tmp60346 (gx#datum->syntax '#f 'seed))
                                 (__tmp60341
                                  (let ((__tmp60342
                                         (let ((__tmp60345
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60343
                                                (let ((__tmp60344
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60344 '()))))
                                           (declare (not safe))
                                           (cons __tmp60345 __tmp60343))))
                                    (declare (not safe))
                                    (cons __tmp60342 '()))))
                             (declare (not safe))
                             (cons __tmp60346 __tmp60341))))
                      (declare (not safe))
                      (cons __tmp60340 '()))))
               (declare (not safe))
               (cons __tmp60347 __tmp60339)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60266
                                                     (let ((__tmp60267
                                                            (let ((__tmp60337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60268
                           (let ((__tmp60336 (gx#datum->syntax '#f 'table))
                                 (__tmp60269
                                  (let ((__tmp60335
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60270
                                         (let ((__tmp60271
                                                (let ((__tmp60272
                                                       (let ((__tmp60334
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60273
                                                              (let ((__tmp60333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60274
                             (let ((__tmp60296
                                    (let ((__tmp60332
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60297
                                           (let ((__tmp60298
                                                  (let ((__tmp60316
                                                         (let ((__tmp60331
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60317
                        (let ((__tmp60327
                               (let ((__tmp60330
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60328
                                      (let ((__tmp60329
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60329 '()))))
                                 (declare (not safe))
                                 (cons __tmp60330 __tmp60328)))
                              (__tmp60318
                               (let ((__tmp60319
                                      (let ((__tmp60326
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60320
                                             (let ((__tmp60322
                                                    (let ((__tmp60325
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60323
                                                           (let ((__tmp60324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60324 '()))))
              (declare (not safe))
              (cons __tmp60325 __tmp60323)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60321
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60322 __tmp60321))))
                                        (declare (not safe))
                                        (cons __tmp60326 __tmp60320))))
                                 (declare (not safe))
                                 (cons __tmp60319 '()))))
                          (declare (not safe))
                          (cons __tmp60327 __tmp60318))))
                   (declare (not safe))
                   (cons __tmp60331 __tmp60317)))
                (__tmp60299
                 (let ((__tmp60300
                        (let ((__tmp60315 (gx#datum->syntax '#f 'set!))
                              (__tmp60301
                               (let ((__tmp60311
                                      (let ((__tmp60314
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60312
                                             (let ((__tmp60313
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60313 '()))))
                                        (declare (not safe))
                                        (cons __tmp60314 __tmp60312)))
                                     (__tmp60302
                                      (let ((__tmp60303
                                             (let ((__tmp60310
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60304
                                                    (let ((__tmp60306
                                                           (let ((__tmp60309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60307
                          (let ((__tmp60308 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60308 '()))))
                     (declare (not safe))
                     (cons __tmp60309 __tmp60307)))
                  (__tmp60305 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60306 __tmp60305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60310 __tmp60304))))
                                        (declare (not safe))
                                        (cons __tmp60303 '()))))
                                 (declare (not safe))
                                 (cons __tmp60311 __tmp60302))))
                          (declare (not safe))
                          (cons __tmp60315 __tmp60301))))
                   (declare (not safe))
                   (cons __tmp60300 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60316
                                                          __tmp60299))))
                                             (declare (not safe))
                                             (cons '() __tmp60298))))
                                      (declare (not safe))
                                      (cons __tmp60332 __tmp60297)))
                                   (__tmp60275
                                    (let ((__tmp60276
                                           (let ((__tmp60295
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60277
                                                  (let ((__tmp60278
                                                         (let ((__tmp60279
                                                                (let ((__tmp60294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60280
                               (let ((__tmp60290
                                      (let ((__tmp60293
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60291
                                             (let ((__tmp60292
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60292 '()))))
                                        (declare (not safe))
                                        (cons __tmp60293 __tmp60291)))
                                     (__tmp60281
                                      (let ((__tmp60282
                                             (let ((__tmp60289
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60283
                                                    (let ((__tmp60285
                                                           (let ((__tmp60288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60286
                          (let ((__tmp60287 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60287 '()))))
                     (declare (not safe))
                     (cons __tmp60288 __tmp60286)))
                  (__tmp60284 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60285 __tmp60284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60289 __tmp60283))))
                                        (declare (not safe))
                                        (cons __tmp60282 '()))))
                                 (declare (not safe))
                                 (cons __tmp60290 __tmp60281))))
                          (declare (not safe))
                          (cons __tmp60294 __tmp60280))))
                   (declare (not safe))
                   (cons __tmp60279 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60278))))
                                             (declare (not safe))
                                             (cons __tmp60295 __tmp60277))))
                                      (declare (not safe))
                                      (cons __tmp60276 '()))))
                               (declare (not safe))
                               (cons __tmp60296 __tmp60275))))
                        (declare (not safe))
                        (cons __tmp60333 __tmp60274))))
                 (declare (not safe))
                 (cons __tmp60334 __tmp60273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57680_ __tmp60272))))
                                           (declare (not safe))
                                           (cons _L57682_ __tmp60271))))
                                    (declare (not safe))
                                    (cons __tmp60335 __tmp60270))))
                             (declare (not safe))
                             (cons __tmp60336 __tmp60269))))
                      (declare (not safe))
                      (cons __tmp60337 __tmp60268))))
               (declare (not safe))
               (cons __tmp60267 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60338 __tmp60266))))
                                         (declare (not safe))
                                         (cons __tmp60354 __tmp60265))))
                                  (declare (not safe))
                                  (cons __tmp60264 '()))))
                           (declare (not safe))
                           (cons __tmp60355 __tmp60263))))
                    (declare (not safe))
                    (cons __tmp60362 __tmp60262)))
                 (__tmp60046
                  (let ((__tmp60213
                         (let ((__tmp60260 (gx#datum->syntax '#f 'def))
                               (__tmp60214
                                (let ((__tmp60252
                                       (let ((__tmp60253
                                              (let ((__tmp60259
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60254
                                                     (let ((__tmp60258
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60255
                                                            (let ((__tmp60256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60257 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60257 '()))))
                      (declare (not safe))
                      (cons _L57685_ __tmp60256))))
               (declare (not safe))
               (cons __tmp60258 __tmp60255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60259 __tmp60254))))
                                         (declare (not safe))
                                         (cons _L57685_ __tmp60253)))
                                      (__tmp60215
                                       (let ((__tmp60225
                                              (let ((__tmp60251
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60226
                                                     (let ((__tmp60232
                                                            (let ((__tmp60250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60233
                           (let ((__tmp60246
                                  (let ((__tmp60249
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60247
                                         (let ((__tmp60248
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60248 '()))))
                                    (declare (not safe))
                                    (cons __tmp60249 __tmp60247)))
                                 (__tmp60234
                                  (let ((__tmp60235
                                         (let ((__tmp60245
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60236
                                                (let ((__tmp60238
                                                       (let ((__tmp60244
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60239
                                                              (let ((__tmp60240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60243
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60241
                                    (let ((__tmp60242
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60242 '()))))
                               (declare (not safe))
                               (cons __tmp60243 __tmp60241))))
                        (declare (not safe))
                        (cons __tmp60240 '()))))
                 (declare (not safe))
                 (cons __tmp60244 __tmp60239)))
              (__tmp60237 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60238
                                                        __tmp60237))))
                                           (declare (not safe))
                                           (cons __tmp60245 __tmp60236))))
                                    (declare (not safe))
                                    (cons __tmp60235 '()))))
                             (declare (not safe))
                             (cons __tmp60246 __tmp60234))))
                      (declare (not safe))
                      (cons __tmp60250 __tmp60233)))
                   (__tmp60227
                    (let ((__tmp60228
                           (let ((__tmp60231
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60229
                                  (let ((__tmp60230
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60230 '()))))
                             (declare (not safe))
                             (cons __tmp60231 __tmp60229))))
                      (declare (not safe))
                      (cons __tmp60228 '()))))
               (declare (not safe))
               (cons __tmp60232 __tmp60227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60251 __tmp60226)))
                                             (__tmp60216
                                              (let ((__tmp60217
                                                     (let ((__tmp60218
                                                            (let ((__tmp60224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60219
                           (let ((__tmp60223 (gx#datum->syntax '#f 'key))
                                 (__tmp60220
                                  (let ((__tmp60221
                                         (let ((__tmp60222
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60222 '()))))
                                    (declare (not safe))
                                    (cons _L57685_ __tmp60221))))
                             (declare (not safe))
                             (cons __tmp60223 __tmp60220))))
                      (declare (not safe))
                      (cons __tmp60224 __tmp60219))))
               (declare (not safe))
               (cons _L57684_ __tmp60218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60217 '()))))
                                         (declare (not safe))
                                         (cons __tmp60225 __tmp60216))))
                                  (declare (not safe))
                                  (cons __tmp60252 __tmp60215))))
                           (declare (not safe))
                           (cons __tmp60260 __tmp60214)))
                        (__tmp60047
                         (let ((__tmp60109
                                (let ((__tmp60212 (gx#datum->syntax '#f 'def))
                                      (__tmp60110
                                       (let ((__tmp60204
                                              (let ((__tmp60205
                                                     (let ((__tmp60211
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60206
                                                            (let ((__tmp60210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60207
                           (let ((__tmp60208
                                  (let ((__tmp60209
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60209 '()))))
                             (declare (not safe))
                             (cons _L57685_ __tmp60208))))
                      (declare (not safe))
                      (cons __tmp60210 __tmp60207))))
               (declare (not safe))
               (cons __tmp60211 __tmp60206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57684_ __tmp60205)))
                                             (__tmp60111
                                              (let ((__tmp60112
                                                     (let ((__tmp60203
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60113
                                                            (let ((__tmp60187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60196
                                  (let ((__tmp60202
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60197
                                         (let ((__tmp60198
                                                (let ((__tmp60201
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60199
                                                       (let ((__tmp60200
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60200
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60201
                                                        __tmp60199))))
                                           (declare (not safe))
                                           (cons __tmp60198 '()))))
                                    (declare (not safe))
                                    (cons __tmp60202 __tmp60197)))
                                 (__tmp60188
                                  (let ((__tmp60189
                                         (let ((__tmp60195
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60190
                                                (let ((__tmp60191
                                                       (let ((__tmp60194
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60192
                                                              (let ((__tmp60193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60193 '()))))
                 (declare (not safe))
                 (cons __tmp60194 __tmp60192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60191 '()))))
                                           (declare (not safe))
                                           (cons __tmp60195 __tmp60190))))
                                    (declare (not safe))
                                    (cons __tmp60189 '()))))
                             (declare (not safe))
                             (cons __tmp60196 __tmp60188)))
                          (__tmp60114
                           (let ((__tmp60115
                                  (let ((__tmp60186
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60116
                                         (let ((__tmp60185
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60117
                                                (let ((__tmp60184
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60118
                                                       (let ((__tmp60119
                                                              (let ((__tmp60120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60183 (gx#datum->syntax '#f 'key))
                                   (__tmp60121
                                    (let ((__tmp60122
                                           (let ((__tmp60182
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60123
                                                  (let ((__tmp60145
                                                         (let ((__tmp60181
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60146
                        (let ((__tmp60147
                               (let ((__tmp60165
                                      (let ((__tmp60180
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60166
                                             (let ((__tmp60176
                                                    (let ((__tmp60179
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60177
                                                           (let ((__tmp60178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60178 '()))))
              (declare (not safe))
              (cons __tmp60179 __tmp60177)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60167
                                                    (let ((__tmp60168
                                                           (let ((__tmp60175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60169
                          (let ((__tmp60171
                                 (let ((__tmp60174
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60172
                                        (let ((__tmp60173
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60173 '()))))
                                   (declare (not safe))
                                   (cons __tmp60174 __tmp60172)))
                                (__tmp60170
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60171 __tmp60170))))
                     (declare (not safe))
                     (cons __tmp60175 __tmp60169))))
              (declare (not safe))
              (cons __tmp60168 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60176 __tmp60167))))
                                        (declare (not safe))
                                        (cons __tmp60180 __tmp60166)))
                                     (__tmp60148
                                      (let ((__tmp60149
                                             (let ((__tmp60164
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60150
                                                    (let ((__tmp60160
                                                           (let ((__tmp60163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60161
                          (let ((__tmp60162 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60162 '()))))
                     (declare (not safe))
                     (cons __tmp60163 __tmp60161)))
                  (__tmp60151
                   (let ((__tmp60152
                          (let ((__tmp60159 (gx#datum->syntax '#f 'fx+))
                                (__tmp60153
                                 (let ((__tmp60155
                                        (let ((__tmp60158
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60156
                                               (let ((__tmp60157
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60157 '()))))
                                          (declare (not safe))
                                          (cons __tmp60158 __tmp60156)))
                                       (__tmp60154
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60155 __tmp60154))))
                            (declare (not safe))
                            (cons __tmp60159 __tmp60153))))
                     (declare (not safe))
                     (cons __tmp60152 '()))))
              (declare (not safe))
              (cons __tmp60160 __tmp60151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60164 __tmp60150))))
                                        (declare (not safe))
                                        (cons __tmp60149 '()))))
                                 (declare (not safe))
                                 (cons __tmp60165 __tmp60148))))
                          (declare (not safe))
                          (cons '() __tmp60147))))
                   (declare (not safe))
                   (cons __tmp60181 __tmp60146)))
                (__tmp60124
                 (let ((__tmp60125
                        (let ((__tmp60144 (gx#datum->syntax '#f 'lambda))
                              (__tmp60126
                               (let ((__tmp60127
                                      (let ((__tmp60128
                                             (let ((__tmp60143
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60129
                                                    (let ((__tmp60139
                                                           (let ((__tmp60142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60140
                          (let ((__tmp60141 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60141 '()))))
                     (declare (not safe))
                     (cons __tmp60142 __tmp60140)))
                  (__tmp60130
                   (let ((__tmp60131
                          (let ((__tmp60138 (gx#datum->syntax '#f 'fx+))
                                (__tmp60132
                                 (let ((__tmp60134
                                        (let ((__tmp60137
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60135
                                               (let ((__tmp60136
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60136 '()))))
                                          (declare (not safe))
                                          (cons __tmp60137 __tmp60135)))
                                       (__tmp60133
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60134 __tmp60133))))
                            (declare (not safe))
                            (cons __tmp60138 __tmp60132))))
                     (declare (not safe))
                     (cons __tmp60131 '()))))
              (declare (not safe))
              (cons __tmp60139 __tmp60130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60143 __tmp60129))))
                                        (declare (not safe))
                                        (cons __tmp60128 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60127))))
                          (declare (not safe))
                          (cons __tmp60144 __tmp60126))))
                   (declare (not safe))
                   (cons __tmp60125 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60145
                                                          __tmp60124))))
                                             (declare (not safe))
                                             (cons __tmp60182 __tmp60123))))
                                      (declare (not safe))
                                      (cons _L57685_ __tmp60122))))
                               (declare (not safe))
                               (cons __tmp60183 __tmp60121))))
                        (declare (not safe))
                        (cons _L57680_ __tmp60120))))
                 (declare (not safe))
                 (cons _L57682_ __tmp60119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60184
                                                        __tmp60118))))
                                           (declare (not safe))
                                           (cons __tmp60185 __tmp60117))))
                                    (declare (not safe))
                                    (cons __tmp60186 __tmp60116))))
                             (declare (not safe))
                             (cons __tmp60115 '()))))
                      (declare (not safe))
                      (cons __tmp60187 __tmp60114))))
               (declare (not safe))
               (cons __tmp60203 __tmp60113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60112 '()))))
                                         (declare (not safe))
                                         (cons __tmp60204 __tmp60111))))
                                  (declare (not safe))
                                  (cons __tmp60212 __tmp60110)))
                               (__tmp60048
                                (let ((__tmp60049
                                       (let ((__tmp60108
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60050
                                              (let ((__tmp60103
                                                     (let ((__tmp60104
                                                            (let ((__tmp60107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60105
                           (let ((__tmp60106 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60106 '()))))
                      (declare (not safe))
                      (cons __tmp60107 __tmp60105))))
               (declare (not safe))
               (cons _L57683_ __tmp60104)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60051
                                                     (let ((__tmp60052
                                                            (let ((__tmp60102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60053
                           (let ((__tmp60086
                                  (let ((__tmp60095
                                         (let ((__tmp60101
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60096
                                                (let ((__tmp60097
                                                       (let ((__tmp60100
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60098
                                                              (let ((__tmp60099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60099 '()))))
                 (declare (not safe))
                 (cons __tmp60100 __tmp60098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60097 '()))))
                                           (declare (not safe))
                                           (cons __tmp60101 __tmp60096)))
                                        (__tmp60087
                                         (let ((__tmp60088
                                                (let ((__tmp60094
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60089
                                                       (let ((__tmp60090
                                                              (let ((__tmp60093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60091
                             (let ((__tmp60092 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60092 '()))))
                        (declare (not safe))
                        (cons __tmp60093 __tmp60091))))
                 (declare (not safe))
                 (cons __tmp60090 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60094
                                                        __tmp60089))))
                                           (declare (not safe))
                                           (cons __tmp60088 '()))))
                                    (declare (not safe))
                                    (cons __tmp60095 __tmp60087)))
                                 (__tmp60054
                                  (let ((__tmp60055
                                         (let ((__tmp60085
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60056
                                                (let ((__tmp60084
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60057
                                                       (let ((__tmp60083
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60058
                                                              (let ((__tmp60059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60060
                                    (let ((__tmp60082
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60061
                                           (let ((__tmp60062
                                                  (let ((__tmp60081
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60063
                                                         (let ((__tmp60064
                                                                (let ((__tmp60065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60080 (gx#datum->syntax '#f 'set!))
                                     (__tmp60066
                                      (let ((__tmp60076
                                             (let ((__tmp60079
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60077
                                                    (let ((__tmp60078
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60078 '()))))
                                               (declare (not safe))
                                               (cons __tmp60079 __tmp60077)))
                                            (__tmp60067
                                             (let ((__tmp60068
                                                    (let ((__tmp60075
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60069
                                                           (let ((__tmp60071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60074
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60072
                                 (let ((__tmp60073
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60073 '()))))
                            (declare (not safe))
                            (cons __tmp60074 __tmp60072)))
                         (__tmp60070
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60071 __tmp60070))))
              (declare (not safe))
              (cons __tmp60075 __tmp60069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60068 '()))))
                                        (declare (not safe))
                                        (cons __tmp60076 __tmp60067))))
                                 (declare (not safe))
                                 (cons __tmp60080 __tmp60066))))
                          (declare (not safe))
                          (cons __tmp60065 '()))))
                   (declare (not safe))
                   (cons '() __tmp60064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60081
                                                          __tmp60063))))
                                             (declare (not safe))
                                             (cons __tmp60062 '()))))
                                      (declare (not safe))
                                      (cons __tmp60082 __tmp60061))))
                               (declare (not safe))
                               (cons _L57680_ __tmp60060))))
                        (declare (not safe))
                        (cons _L57682_ __tmp60059))))
                 (declare (not safe))
                 (cons __tmp60083 __tmp60058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60084
                                                        __tmp60057))))
                                           (declare (not safe))
                                           (cons __tmp60085 __tmp60056))))
                                    (declare (not safe))
                                    (cons __tmp60055 '()))))
                             (declare (not safe))
                             (cons __tmp60086 __tmp60054))))
                      (declare (not safe))
                      (cons __tmp60102 __tmp60053))))
               (declare (not safe))
               (cons __tmp60052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60103 __tmp60051))))
                                         (declare (not safe))
                                         (cons __tmp60108 __tmp60050))))
                                  (declare (not safe))
                                  (cons __tmp60049 '()))))
                           (declare (not safe))
                           (cons __tmp60109 __tmp60048))))
                    (declare (not safe))
                    (cons __tmp60213 __tmp60047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60261
                                                           __tmp60046))))
                                              (declare (not safe))
                                              (cons __tmp60363 __tmp60045))))
                                       (declare (not safe))
                                       (cons __tmp60409 __tmp60044))))
                                (declare (not safe))
                                (cons __tmp60452 __tmp60043))))
                         (declare (not safe))
                         (cons __tmp60473 __tmp60042)))
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
                                                       (let ((__tmp60493
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60474
                                                              (let ((__tmp60481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60492
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60482
                                    (let ((__tmp60483
                                           (let ((__tmp60491
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60484
                                                  (let ((__tmp60485
                                                         (let ((__tmp60486
                                                                (let ((__tmp60487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60490 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60488
                                      (let ((__tmp60489
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57805_ '()))))
                                        (declare (not safe))
                                        (cons _L57805_ __tmp60489))))
                                 (declare (not safe))
                                 (cons __tmp60490 __tmp60488))))
                          (declare (not safe))
                          (cons __tmp60487 '()))))
                   (declare (not safe))
                   (cons _L57805_ __tmp60486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57806_
                                                          __tmp60485))))
                                             (declare (not safe))
                                             (cons __tmp60491 __tmp60484))))
                                      (declare (not safe))
                                      (cons __tmp60483 '()))))
                               (declare (not safe))
                               (cons __tmp60492 __tmp60482)))
                            (__tmp60475
                             (let ((__tmp60476
                                    (let ((__tmp60480
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60477
                                           (let ((__tmp60479
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60478
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57803_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60479 __tmp60478))))
                                      (declare (not safe))
                                      (cons __tmp60480 __tmp60477))))
                               (declare (not safe))
                               (cons __tmp60476 '()))))
                        (declare (not safe))
                        (cons __tmp60481 __tmp60475))))
                 (declare (not safe))
                 (cons __tmp60493 __tmp60474)))
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
                                       (let ((__tmp60652
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60494
                                              (let ((__tmp60612
                                                     (let ((__tmp60643
                                                            (let ((__tmp60651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60644
                           (let ((__tmp60645
                                  (let ((__tmp60650
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60646
                                         (let ((__tmp60648
                                                (let ((__tmp60649
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57946_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57948_ __tmp60649)))
                                               (__tmp60647
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57949_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60648 __tmp60647))))
                                    (declare (not safe))
                                    (cons __tmp60650 __tmp60646))))
                             (declare (not safe))
                             (cons __tmp60645 '()))))
                      (declare (not safe))
                      (cons __tmp60651 __tmp60644)))
                   (__tmp60613
                    (let ((__tmp60637
                           (let ((__tmp60642 (gx#datum->syntax '#f 'size))
                                 (__tmp60638
                                  (let ((__tmp60639
                                         (let ((__tmp60641
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60640
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57950_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60641 __tmp60640))))
                                    (declare (not safe))
                                    (cons __tmp60639 '()))))
                             (declare (not safe))
                             (cons __tmp60642 __tmp60638)))
                          (__tmp60614
                           (let ((__tmp60629
                                  (let ((__tmp60636
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60630
                                         (let ((__tmp60631
                                                (let ((__tmp60635
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60632
                                                       (let ((__tmp60634
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60633
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60634 __tmp60633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60635
                                                        __tmp60632))))
                                           (declare (not safe))
                                           (cons __tmp60631 '()))))
                                    (declare (not safe))
                                    (cons __tmp60636 __tmp60630)))
                                 (__tmp60615
                                  (let ((__tmp60616
                                         (let ((__tmp60628
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60617
                                                (let ((__tmp60618
                                                       (let ((__tmp60627
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60619
                                                              (let ((__tmp60621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60626
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60622
                                    (let ((__tmp60625
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60623
                                           (let ((__tmp60624
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60624 '()))))
                                      (declare (not safe))
                                      (cons __tmp60625 __tmp60623))))
                               (declare (not safe))
                               (cons __tmp60626 __tmp60622)))
                            (__tmp60620
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60621 __tmp60620))))
                 (declare (not safe))
                 (cons __tmp60627 __tmp60619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60618 '()))))
                                           (declare (not safe))
                                           (cons __tmp60628 __tmp60617))))
                                    (declare (not safe))
                                    (cons __tmp60616 '()))))
                             (declare (not safe))
                             (cons __tmp60629 __tmp60615))))
                      (declare (not safe))
                      (cons __tmp60637 __tmp60614))))
               (declare (not safe))
               (cons __tmp60643 __tmp60613)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60495
                                                     (let ((__tmp60496
                                                            (let ((__tmp60611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60497
                           (let ((__tmp60610 (gx#datum->syntax '#f 'loop))
                                 (__tmp60498
                                  (let ((__tmp60597
                                         (let ((__tmp60606
                                                (let ((__tmp60609
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60607
                                                       (let ((__tmp60608
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60608
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60609
                                                        __tmp60607)))
                                               (__tmp60598
                                                (let ((__tmp60603
                                                       (let ((__tmp60605
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60604
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60605 __tmp60604)))
              (__tmp60599
               (let ((__tmp60600
                      (let ((__tmp60602 (gx#datum->syntax '#f 'deleted))
                            (__tmp60601
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60602 __tmp60601))))
                 (declare (not safe))
                 (cons __tmp60600 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60603
                                                        __tmp60599))))
                                           (declare (not safe))
                                           (cons __tmp60606 __tmp60598)))
                                        (__tmp60499
                                         (let ((__tmp60500
                                                (let ((__tmp60596
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60501
                                                       (let ((__tmp60588
                                                              (let ((__tmp60595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60589
                             (let ((__tmp60590
                                    (let ((__tmp60594
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60591
                                           (let ((__tmp60592
                                                  (let ((__tmp60593
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60593 '()))))
                                             (declare (not safe))
                                             (cons _L57950_ __tmp60592))))
                                      (declare (not safe))
                                      (cons __tmp60594 __tmp60591))))
                               (declare (not safe))
                               (cons __tmp60590 '()))))
                        (declare (not safe))
                        (cons __tmp60595 __tmp60589)))
                     (__tmp60502
                      (let ((__tmp60503
                             (let ((__tmp60587 (gx#datum->syntax '#f 'cond))
                                   (__tmp60504
                                    (let ((__tmp60578
                                           (let ((__tmp60580
                                                  (let ((__tmp60586
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60581
                                                         (let ((__tmp60585
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60582
                        (let ((__tmp60583
                               (let ((__tmp60584
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60584 '()))))
                          (declare (not safe))
                          (cons __tmp60583 '()))))
                   (declare (not safe))
                   (cons __tmp60585 __tmp60582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60586
                                                          __tmp60581)))
                                                 (__tmp60579
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57944_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60580 __tmp60579)))
                                          (__tmp60505
                                           (let ((__tmp60545
                                                  (let ((__tmp60571
                                                         (let ((__tmp60577
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60572
                        (let ((__tmp60576 (gx#datum->syntax '#f 'k))
                              (__tmp60573
                               (let ((__tmp60574
                                      (let ((__tmp60575
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60575 '()))))
                                 (declare (not safe))
                                 (cons __tmp60574 '()))))
                          (declare (not safe))
                          (cons __tmp60576 __tmp60573))))
                   (declare (not safe))
                   (cons __tmp60577 __tmp60572)))
                (__tmp60546
                 (let ((__tmp60547
                        (let ((__tmp60570 (gx#datum->syntax '#f 'loop))
                              (__tmp60548
                               (let ((__tmp60562
                                      (let ((__tmp60569
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60563
                                             (let ((__tmp60568
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60564
                                                    (let ((__tmp60567
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60565
                                                           (let ((__tmp60566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60566 '()))))
              (declare (not safe))
              (cons __tmp60567 __tmp60565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60568 __tmp60564))))
                                        (declare (not safe))
                                        (cons __tmp60569 __tmp60563)))
                                     (__tmp60549
                                      (let ((__tmp60557
                                             (let ((__tmp60561
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60558
                                                    (let ((__tmp60560
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60560
                                                            __tmp60559))))
                                               (declare (not safe))
                                               (cons __tmp60561 __tmp60558)))
                                            (__tmp60550
                                             (let ((__tmp60551
                                                    (let ((__tmp60556
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60552
                                                           (let ((__tmp60555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60553
                          (let ((__tmp60554 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60554 '()))))
                     (declare (not safe))
                     (cons __tmp60555 __tmp60553))))
              (declare (not safe))
              (cons __tmp60556 __tmp60552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60551 '()))))
                                        (declare (not safe))
                                        (cons __tmp60557 __tmp60550))))
                                 (declare (not safe))
                                 (cons __tmp60562 __tmp60549))))
                          (declare (not safe))
                          (cons __tmp60570 __tmp60548))))
                   (declare (not safe))
                   (cons __tmp60547 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60571
                                                          __tmp60546)))
                                                 (__tmp60506
                                                  (let ((__tmp60530
                                                         (let ((__tmp60541
                                                                (let ((__tmp60542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60543
                                      (let ((__tmp60544
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60544 '()))))
                                 (declare (not safe))
                                 (cons _L57946_ __tmp60543))))
                          (declare (not safe))
                          (cons _L57947_ __tmp60542)))
                       (__tmp60531
                        (let ((__tmp60532
                               (let ((__tmp60540
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60533
                                      (let ((__tmp60534
                                             (let ((__tmp60535
                                                    (let ((__tmp60539
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60536
                                                           (let ((__tmp60538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60537
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60538 __tmp60537))))
              (declare (not safe))
              (cons __tmp60539 __tmp60536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60535 '()))))
                                        (declare (not safe))
                                        (cons _L57950_ __tmp60534))))
                                 (declare (not safe))
                                 (cons __tmp60540 __tmp60533))))
                          (declare (not safe))
                          (cons __tmp60532 '()))))
                   (declare (not safe))
                   (cons __tmp60541 __tmp60531)))
                (__tmp60507
                 (let ((__tmp60508
                        (let ((__tmp60529 (gx#datum->syntax '#f 'else))
                              (__tmp60509
                               (let ((__tmp60510
                                      (let ((__tmp60528
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60511
                                             (let ((__tmp60520
                                                    (let ((__tmp60527
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60521
                                                           (let ((__tmp60526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60522
                          (let ((__tmp60525 (gx#datum->syntax '#f 'i))
                                (__tmp60523
                                 (let ((__tmp60524
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60524 '()))))
                            (declare (not safe))
                            (cons __tmp60525 __tmp60523))))
                     (declare (not safe))
                     (cons __tmp60526 __tmp60522))))
              (declare (not safe))
              (cons __tmp60527 __tmp60521)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60512
                                                    (let ((__tmp60515
                                                           (let ((__tmp60519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60516
                          (let ((__tmp60518 (gx#datum->syntax '#f 'i))
                                (__tmp60517
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60518 __tmp60517))))
                     (declare (not safe))
                     (cons __tmp60519 __tmp60516)))
                  (__tmp60513
                   (let ((__tmp60514 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60514 '()))))
              (declare (not safe))
              (cons __tmp60515 __tmp60513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60520 __tmp60512))))
                                        (declare (not safe))
                                        (cons __tmp60528 __tmp60511))))
                                 (declare (not safe))
                                 (cons __tmp60510 '()))))
                          (declare (not safe))
                          (cons __tmp60529 __tmp60509))))
                   (declare (not safe))
                   (cons __tmp60508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60530
                                                          __tmp60507))))
                                             (declare (not safe))
                                             (cons __tmp60545 __tmp60506))))
                                      (declare (not safe))
                                      (cons __tmp60578 __tmp60505))))
                               (declare (not safe))
                               (cons __tmp60587 __tmp60504))))
                        (declare (not safe))
                        (cons __tmp60503 '()))))
                 (declare (not safe))
                 (cons __tmp60588 __tmp60502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60596
                                                        __tmp60501))))
                                           (declare (not safe))
                                           (cons __tmp60500 '()))))
                                    (declare (not safe))
                                    (cons __tmp60597 __tmp60499))))
                             (declare (not safe))
                             (cons __tmp60610 __tmp60498))))
                      (declare (not safe))
                      (cons __tmp60611 __tmp60497))))
               (declare (not safe))
               (cons __tmp60496 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60612 __tmp60495))))
                                         (declare (not safe))
                                         (cons __tmp60652 __tmp60494)))
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
                                                       (let ((__tmp60869
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60653
                                                              (let ((__tmp60829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60860
                                    (let ((__tmp60868
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60861
                                           (let ((__tmp60862
                                                  (let ((__tmp60867
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60863
                                                         (let ((__tmp60865
                                                                (let ((__tmp60866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58129_ '()))))
                          (declare (not safe))
                          (cons _L58131_ __tmp60866)))
                       (__tmp60864
                        (let () (declare (not safe)) (cons _L58132_ '()))))
                   (declare (not safe))
                   (cons __tmp60865 __tmp60864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60867
                                                          __tmp60863))))
                                             (declare (not safe))
                                             (cons __tmp60862 '()))))
                                      (declare (not safe))
                                      (cons __tmp60868 __tmp60861)))
                                   (__tmp60830
                                    (let ((__tmp60854
                                           (let ((__tmp60859
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60855
                                                  (let ((__tmp60856
                                                         (let ((__tmp60858
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60857
                        (let () (declare (not safe)) (cons _L58133_ '()))))
                   (declare (not safe))
                   (cons __tmp60858 __tmp60857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60856 '()))))
                                             (declare (not safe))
                                             (cons __tmp60859 __tmp60855)))
                                          (__tmp60831
                                           (let ((__tmp60846
                                                  (let ((__tmp60853
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60847
                                                         (let ((__tmp60848
                                                                (let ((__tmp60852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60849
                               (let ((__tmp60851 (gx#datum->syntax '#f 'size))
                                     (__tmp60850
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60851 __tmp60850))))
                          (declare (not safe))
                          (cons __tmp60852 __tmp60849))))
                   (declare (not safe))
                   (cons __tmp60848 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60853
                                                          __tmp60847)))
                                                 (__tmp60832
                                                  (let ((__tmp60833
                                                         (let ((__tmp60845
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60834
                        (let ((__tmp60835
                               (let ((__tmp60844
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60836
                                      (let ((__tmp60838
                                             (let ((__tmp60843
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60839
                                                    (let ((__tmp60842
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60840
                                                           (let ((__tmp60841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60841 '()))))
              (declare (not safe))
              (cons __tmp60842 __tmp60840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60843 __tmp60839)))
                                            (__tmp60837
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60838 __tmp60837))))
                                 (declare (not safe))
                                 (cons __tmp60844 __tmp60836))))
                          (declare (not safe))
                          (cons __tmp60835 '()))))
                   (declare (not safe))
                   (cons __tmp60845 __tmp60834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60833 '()))))
                                             (declare (not safe))
                                             (cons __tmp60846 __tmp60832))))
                                      (declare (not safe))
                                      (cons __tmp60854 __tmp60831))))
                               (declare (not safe))
                               (cons __tmp60860 __tmp60830)))
                            (__tmp60654
                             (let ((__tmp60655
                                    (let ((__tmp60828
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60656
                                           (let ((__tmp60827
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60657
                                                  (let ((__tmp60814
                                                         (let ((__tmp60823
                                                                (let ((__tmp60826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60824
                               (let ((__tmp60825
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60825 '()))))
                          (declare (not safe))
                          (cons __tmp60826 __tmp60824)))
                       (__tmp60815
                        (let ((__tmp60820
                               (let ((__tmp60822 (gx#datum->syntax '#f 'i))
                                     (__tmp60821
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60822 __tmp60821)))
                              (__tmp60816
                               (let ((__tmp60817
                                      (let ((__tmp60819
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60818
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60819 __tmp60818))))
                                 (declare (not safe))
                                 (cons __tmp60817 '()))))
                          (declare (not safe))
                          (cons __tmp60820 __tmp60816))))
                   (declare (not safe))
                   (cons __tmp60823 __tmp60815)))
                (__tmp60658
                 (let ((__tmp60659
                        (let ((__tmp60813 (gx#datum->syntax '#f 'let))
                              (__tmp60660
                               (let ((__tmp60805
                                      (let ((__tmp60812
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60806
                                             (let ((__tmp60807
                                                    (let ((__tmp60811
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60808
                                                           (let ((__tmp60809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60810 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60810 '()))))
                     (declare (not safe))
                     (cons _L58133_ __tmp60809))))
              (declare (not safe))
              (cons __tmp60811 __tmp60808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60807 '()))))
                                        (declare (not safe))
                                        (cons __tmp60812 __tmp60806)))
                                     (__tmp60661
                                      (let ((__tmp60662
                                             (let ((__tmp60804
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60663
                                                    (let ((__tmp60745
                                                           (let ((__tmp60797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60803 (gx#datum->syntax '#f 'eq?))
                                (__tmp60798
                                 (let ((__tmp60802 (gx#datum->syntax '#f 'k))
                                       (__tmp60799
                                        (let ((__tmp60800
                                               (let ((__tmp60801
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60801 '()))))
                                          (declare (not safe))
                                          (cons __tmp60800 '()))))
                                   (declare (not safe))
                                   (cons __tmp60802 __tmp60799))))
                            (declare (not safe))
                            (cons __tmp60803 __tmp60798)))
                         (__tmp60746
                          (let ((__tmp60747
                                 (let ((__tmp60796 (gx#datum->syntax '#f 'if))
                                       (__tmp60748
                                        (let ((__tmp60795
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60749
                                               (let ((__tmp60773
                                                      (let ((__tmp60794
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60774
                                                             (let ((__tmp60788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60793
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60789
                                   (let ((__tmp60790
                                          (let ((__tmp60792
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60791
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60792 __tmp60791))))
                                     (declare (not safe))
                                     (cons _L58133_ __tmp60790))))
                              (declare (not safe))
                              (cons __tmp60793 __tmp60789)))
                           (__tmp60775
                            (let ((__tmp60778
                                   (let ((__tmp60787
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60779
                                          (let ((__tmp60780
                                                 (let ((__tmp60782
                                                        (let ((__tmp60786
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60783
                                                               (let ((__tmp60785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60784
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60785 __tmp60784))))
                  (declare (not safe))
                  (cons __tmp60786 __tmp60783)))
               (__tmp60781 (let () (declare (not safe)) (cons _L58128_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60782
                                                         __tmp60781))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60780))))
                                     (declare (not safe))
                                     (cons __tmp60787 __tmp60779)))
                                  (__tmp60776
                                   (let ((__tmp60777
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58125_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60777 '()))))
                              (declare (not safe))
                              (cons __tmp60778 __tmp60776))))
                       (declare (not safe))
                       (cons __tmp60788 __tmp60775))))
                (declare (not safe))
                (cons __tmp60794 __tmp60774)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60750
                                                      (let ((__tmp60751
                                                             (let ((__tmp60772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60752
                            (let ((__tmp60766
                                   (let ((__tmp60771
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60767
                                          (let ((__tmp60768
                                                 (let ((__tmp60770
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60769
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58129_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60770
                                                         __tmp60769))))
                                            (declare (not safe))
                                            (cons _L58133_ __tmp60768))))
                                     (declare (not safe))
                                     (cons __tmp60771 __tmp60767)))
                                  (__tmp60753
                                   (let ((__tmp60756
                                          (let ((__tmp60765
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60757
                                                 (let ((__tmp60758
                                                        (let ((__tmp60760
                                                               (let ((__tmp60764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60761
                              (let ((__tmp60763 (gx#datum->syntax '#f 'probe))
                                    (__tmp60762
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60763 __tmp60762))))
                         (declare (not safe))
                         (cons __tmp60764 __tmp60761)))
                      (__tmp60759
                       (let () (declare (not safe)) (cons _L58128_ '()))))
                  (declare (not safe))
                  (cons __tmp60760 __tmp60759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58133_
                                                         __tmp60758))))
                                            (declare (not safe))
                                            (cons __tmp60765 __tmp60757)))
                                         (__tmp60754
                                          (let ((__tmp60755
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58127_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60755 '()))))
                                     (declare (not safe))
                                     (cons __tmp60756 __tmp60754))))
                              (declare (not safe))
                              (cons __tmp60766 __tmp60753))))
                       (declare (not safe))
                       (cons __tmp60772 __tmp60752))))
                (declare (not safe))
                (cons __tmp60751 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60773
                                                       __tmp60750))))
                                          (declare (not safe))
                                          (cons __tmp60795 __tmp60749))))
                                   (declare (not safe))
                                   (cons __tmp60796 __tmp60748))))
                            (declare (not safe))
                            (cons __tmp60747 '()))))
                     (declare (not safe))
                     (cons __tmp60797 __tmp60746)))
                  (__tmp60664
                   (let ((__tmp60712
                          (let ((__tmp60738
                                 (let ((__tmp60744 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60739
                                        (let ((__tmp60743
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60740
                                               (let ((__tmp60741
                                                      (let ((__tmp60742
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60742
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60741 '()))))
                                          (declare (not safe))
                                          (cons __tmp60743 __tmp60740))))
                                   (declare (not safe))
                                   (cons __tmp60744 __tmp60739)))
                                (__tmp60713
                                 (let ((__tmp60714
                                        (let ((__tmp60737
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60715
                                               (let ((__tmp60729
                                                      (let ((__tmp60736
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60730
                                                             (let ((__tmp60735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60731
                            (let ((__tmp60734 (gx#datum->syntax '#f 'i))
                                  (__tmp60732
                                   (let ((__tmp60733
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60733 '()))))
                              (declare (not safe))
                              (cons __tmp60734 __tmp60732))))
                       (declare (not safe))
                       (cons __tmp60735 __tmp60731))))
                (declare (not safe))
                (cons __tmp60736 __tmp60730)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60716
                                                      (let ((__tmp60724
                                                             (let ((__tmp60728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60725
                            (let ((__tmp60727 (gx#datum->syntax '#f 'i))
                                  (__tmp60726
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60727 __tmp60726))))
                       (declare (not safe))
                       (cons __tmp60728 __tmp60725)))
                    (__tmp60717
                     (let ((__tmp60718
                            (let ((__tmp60723 (gx#datum->syntax '#f 'or))
                                  (__tmp60719
                                   (let ((__tmp60722
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60720
                                          (let ((__tmp60721
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60721 '()))))
                                     (declare (not safe))
                                     (cons __tmp60722 __tmp60720))))
                              (declare (not safe))
                              (cons __tmp60723 __tmp60719))))
                       (declare (not safe))
                       (cons __tmp60718 '()))))
                (declare (not safe))
                (cons __tmp60724 __tmp60717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60729
                                                       __tmp60716))))
                                          (declare (not safe))
                                          (cons __tmp60737 __tmp60715))))
                                   (declare (not safe))
                                   (cons __tmp60714 '()))))
                            (declare (not safe))
                            (cons __tmp60738 __tmp60713)))
                         (__tmp60665
                          (let ((__tmp60689
                                 (let ((__tmp60708
                                        (let ((__tmp60709
                                               (let ((__tmp60710
                                                      (let ((__tmp60711
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60711
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58129_ __tmp60710))))
                                          (declare (not safe))
                                          (cons _L58130_ __tmp60709)))
                                       (__tmp60690
                                        (let ((__tmp60702
                                               (let ((__tmp60707
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60703
                                                      (let ((__tmp60704
                                                             (let ((__tmp60706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60705
                            (let () (declare (not safe)) (cons _L58129_ '()))))
                       (declare (not safe))
                       (cons __tmp60706 __tmp60705))))
                (declare (not safe))
                (cons _L58133_ __tmp60704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60707 __tmp60703)))
                                              (__tmp60691
                                               (let ((__tmp60692
                                                      (let ((__tmp60701
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60693
                                                             (let ((__tmp60694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60696
                                   (let ((__tmp60700
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60697
                                          (let ((__tmp60699
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60698
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60699 __tmp60698))))
                                     (declare (not safe))
                                     (cons __tmp60700 __tmp60697)))
                                  (__tmp60695
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58128_ '()))))
                              (declare (not safe))
                              (cons __tmp60696 __tmp60695))))
                       (declare (not safe))
                       (cons _L58133_ __tmp60694))))
                (declare (not safe))
                (cons __tmp60701 __tmp60693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60692 '()))))
                                          (declare (not safe))
                                          (cons __tmp60702 __tmp60691))))
                                   (declare (not safe))
                                   (cons __tmp60708 __tmp60690)))
                                (__tmp60666
                                 (let ((__tmp60667
                                        (let ((__tmp60688
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60668
                                               (let ((__tmp60669
                                                      (let ((__tmp60687
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60670
                                                             (let ((__tmp60679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60686
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60680
                                   (let ((__tmp60685
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60681
                                          (let ((__tmp60684
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60682
                                                 (let ((__tmp60683
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60683 '()))))
                                            (declare (not safe))
                                            (cons __tmp60684 __tmp60682))))
                                     (declare (not safe))
                                     (cons __tmp60685 __tmp60681))))
                              (declare (not safe))
                              (cons __tmp60686 __tmp60680)))
                           (__tmp60671
                            (let ((__tmp60674
                                   (let ((__tmp60678
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60675
                                          (let ((__tmp60677
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60676
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60677 __tmp60676))))
                                     (declare (not safe))
                                     (cons __tmp60678 __tmp60675)))
                                  (__tmp60672
                                   (let ((__tmp60673
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60673 '()))))
                              (declare (not safe))
                              (cons __tmp60674 __tmp60672))))
                       (declare (not safe))
                       (cons __tmp60679 __tmp60671))))
                (declare (not safe))
                (cons __tmp60687 __tmp60670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60669 '()))))
                                          (declare (not safe))
                                          (cons __tmp60688 __tmp60668))))
                                   (declare (not safe))
                                   (cons __tmp60667 '()))))
                            (declare (not safe))
                            (cons __tmp60689 __tmp60666))))
                     (declare (not safe))
                     (cons __tmp60712 __tmp60665))))
              (declare (not safe))
              (cons __tmp60745 __tmp60664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60804 __tmp60663))))
                                        (declare (not safe))
                                        (cons __tmp60662 '()))))
                                 (declare (not safe))
                                 (cons __tmp60805 __tmp60661))))
                          (declare (not safe))
                          (cons __tmp60813 __tmp60660))))
                   (declare (not safe))
                   (cons __tmp60659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60814
                                                          __tmp60658))))
                                             (declare (not safe))
                                             (cons __tmp60827 __tmp60657))))
                                      (declare (not safe))
                                      (cons __tmp60828 __tmp60656))))
                               (declare (not safe))
                               (cons __tmp60655 '()))))
                        (declare (not safe))
                        (cons __tmp60829 __tmp60654))))
                 (declare (not safe))
                 (cons __tmp60869 __tmp60653)))
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
                       (let ((__tmp61101 (gx#datum->syntax '#f 'let*))
                             (__tmp60870
                              (let ((__tmp61061
                                     (let ((__tmp61092
                                            (let ((__tmp61100
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61093
                                                   (let ((__tmp61094
                                                          (let ((__tmp61099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61095
                         (let ((__tmp61097
                                (let ((__tmp61098
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58333_ '()))))
                                  (declare (not safe))
                                  (cons _L58335_ __tmp61098)))
                               (__tmp61096
                                (let ()
                                  (declare (not safe))
                                  (cons _L58336_ '()))))
                           (declare (not safe))
                           (cons __tmp61097 __tmp61096))))
                    (declare (not safe))
                    (cons __tmp61099 __tmp61095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61094 '()))))
                                              (declare (not safe))
                                              (cons __tmp61100 __tmp61093)))
                                           (__tmp61062
                                            (let ((__tmp61086
                                                   (let ((__tmp61091
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61087
                                                          (let ((__tmp61088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61090
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61089
                                (let ()
                                  (declare (not safe))
                                  (cons _L58337_ '()))))
                           (declare (not safe))
                           (cons __tmp61090 __tmp61089))))
                    (declare (not safe))
                    (cons __tmp61088 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61091
                                                           __tmp61087)))
                                                  (__tmp61063
                                                   (let ((__tmp61078
                                                          (let ((__tmp61085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61079
                         (let ((__tmp61080
                                (let ((__tmp61084
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61081
                                       (let ((__tmp61083
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61082
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61083 __tmp61082))))
                                  (declare (not safe))
                                  (cons __tmp61084 __tmp61081))))
                           (declare (not safe))
                           (cons __tmp61080 '()))))
                    (declare (not safe))
                    (cons __tmp61085 __tmp61079)))
                 (__tmp61064
                  (let ((__tmp61065
                         (let ((__tmp61077 (gx#datum->syntax '#f 'start))
                               (__tmp61066
                                (let ((__tmp61067
                                       (let ((__tmp61076
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61068
                                              (let ((__tmp61070
                                                     (let ((__tmp61075
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61071
                                                            (let ((__tmp61074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61072
                           (let ((__tmp61073 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61073 '()))))
                      (declare (not safe))
                      (cons __tmp61074 __tmp61072))))
               (declare (not safe))
               (cons __tmp61075 __tmp61071)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61069
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61070 __tmp61069))))
                                         (declare (not safe))
                                         (cons __tmp61076 __tmp61068))))
                                  (declare (not safe))
                                  (cons __tmp61067 '()))))
                           (declare (not safe))
                           (cons __tmp61077 __tmp61066))))
                    (declare (not safe))
                    (cons __tmp61065 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61078
                                                           __tmp61064))))
                                              (declare (not safe))
                                              (cons __tmp61086 __tmp61063))))
                                       (declare (not safe))
                                       (cons __tmp61092 __tmp61062)))
                                    (__tmp60871
                                     (let ((__tmp60872
                                            (let ((__tmp61060
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60873
                                                   (let ((__tmp61059
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60874
                                                          (let ((__tmp61046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61055
                                (let ((__tmp61058
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61056
                                       (let ((__tmp61057
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61057 '()))))
                                  (declare (not safe))
                                  (cons __tmp61058 __tmp61056)))
                               (__tmp61047
                                (let ((__tmp61052
                                       (let ((__tmp61054
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61053
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61054 __tmp61053)))
                                      (__tmp61048
                                       (let ((__tmp61049
                                              (let ((__tmp61051
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61050
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61051 __tmp61050))))
                                         (declare (not safe))
                                         (cons __tmp61049 '()))))
                                  (declare (not safe))
                                  (cons __tmp61052 __tmp61048))))
                           (declare (not safe))
                           (cons __tmp61055 __tmp61047)))
                        (__tmp60875
                         (let ((__tmp60876
                                (let ((__tmp61045 (gx#datum->syntax '#f 'let))
                                      (__tmp60877
                                       (let ((__tmp61037
                                              (let ((__tmp61044
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61038
                                                     (let ((__tmp61039
                                                            (let ((__tmp61043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61040
                           (let ((__tmp61041
                                  (let ((__tmp61042
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61042 '()))))
                             (declare (not safe))
                             (cons _L58337_ __tmp61041))))
                      (declare (not safe))
                      (cons __tmp61043 __tmp61040))))
               (declare (not safe))
               (cons __tmp61039 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61044 __tmp61038)))
                                             (__tmp60878
                                              (let ((__tmp60879
                                                     (let ((__tmp61036
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60880
                                                            (let ((__tmp60973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61029
                                  (let ((__tmp61035
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61030
                                         (let ((__tmp61034
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61031
                                                (let ((__tmp61032
                                                       (let ((__tmp61033
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61033
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61032 '()))))
                                           (declare (not safe))
                                           (cons __tmp61034 __tmp61031))))
                                    (declare (not safe))
                                    (cons __tmp61035 __tmp61030)))
                                 (__tmp60974
                                  (let ((__tmp60975
                                         (let ((__tmp61028
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60976
                                                (let ((__tmp61027
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60977
                                                       (let ((__tmp61003
                                                              (let ((__tmp61026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61004
                             (let ((__tmp61020
                                    (let ((__tmp61025
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61021
                                           (let ((__tmp61022
                                                  (let ((__tmp61024
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61023
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61024
                                                          __tmp61023))))
                                             (declare (not safe))
                                             (cons _L58337_ __tmp61022))))
                                      (declare (not safe))
                                      (cons __tmp61025 __tmp61021)))
                                   (__tmp61005
                                    (let ((__tmp61008
                                           (let ((__tmp61019
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61009
                                                  (let ((__tmp61010
                                                         (let ((__tmp61014
                                                                (let ((__tmp61018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61015
                               (let ((__tmp61017
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61016
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61017 __tmp61016))))
                          (declare (not safe))
                          (cons __tmp61018 __tmp61015)))
                       (__tmp61011
                        (let ((__tmp61012
                               (let ((__tmp61013
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58331_ '()))))
                                 (declare (not safe))
                                 (cons _L58332_ __tmp61013))))
                          (declare (not safe))
                          (cons __tmp61012 '()))))
                   (declare (not safe))
                   (cons __tmp61014 __tmp61011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp61010))))
                                             (declare (not safe))
                                             (cons __tmp61019 __tmp61009)))
                                          (__tmp61006
                                           (let ((__tmp61007
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61007 '()))))
                                      (declare (not safe))
                                      (cons __tmp61008 __tmp61006))))
                               (declare (not safe))
                               (cons __tmp61020 __tmp61005))))
                        (declare (not safe))
                        (cons __tmp61026 __tmp61004)))
                     (__tmp60978
                      (let ((__tmp60979
                             (let ((__tmp61002 (gx#datum->syntax '#f 'begin))
                                   (__tmp60980
                                    (let ((__tmp60996
                                           (let ((__tmp61001
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60997
                                                  (let ((__tmp60998
                                                         (let ((__tmp61000
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60999
                        (let () (declare (not safe)) (cons _L58333_ '()))))
                   (declare (not safe))
                   (cons __tmp61000 __tmp60999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58337_
                                                          __tmp60998))))
                                             (declare (not safe))
                                             (cons __tmp61001 __tmp60997)))
                                          (__tmp60981
                                           (let ((__tmp60984
                                                  (let ((__tmp60995
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60985
                                                         (let ((__tmp60986
                                                                (let ((__tmp60990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60994 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60991
                                      (let ((__tmp60993
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60992
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60993 __tmp60992))))
                                 (declare (not safe))
                                 (cons __tmp60994 __tmp60991)))
                              (__tmp60987
                               (let ((__tmp60988
                                      (let ((__tmp60989
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58331_ '()))))
                                        (declare (not safe))
                                        (cons _L58332_ __tmp60989))))
                                 (declare (not safe))
                                 (cons __tmp60988 '()))))
                          (declare (not safe))
                          (cons __tmp60990 __tmp60987))))
                   (declare (not safe))
                   (cons _L58337_ __tmp60986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60995
                                                          __tmp60985)))
                                                 (__tmp60982
                                                  (let ((__tmp60983
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60983 '()))))
                                             (declare (not safe))
                                             (cons __tmp60984 __tmp60982))))
                                      (declare (not safe))
                                      (cons __tmp60996 __tmp60981))))
                               (declare (not safe))
                               (cons __tmp61002 __tmp60980))))
                        (declare (not safe))
                        (cons __tmp60979 '()))))
                 (declare (not safe))
                 (cons __tmp61003 __tmp60978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61027
                                                        __tmp60977))))
                                           (declare (not safe))
                                           (cons __tmp61028 __tmp60976))))
                                    (declare (not safe))
                                    (cons __tmp60975 '()))))
                             (declare (not safe))
                             (cons __tmp61029 __tmp60974)))
                          (__tmp60881
                           (let ((__tmp60940
                                  (let ((__tmp60966
                                         (let ((__tmp60972
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60967
                                                (let ((__tmp60971
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60968
                                                       (let ((__tmp60969
                                                              (let ((__tmp60970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60970 '()))))
                 (declare (not safe))
                 (cons __tmp60969 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60971
                                                        __tmp60968))))
                                           (declare (not safe))
                                           (cons __tmp60972 __tmp60967)))
                                        (__tmp60941
                                         (let ((__tmp60942
                                                (let ((__tmp60965
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60943
                                                       (let ((__tmp60957
                                                              (let ((__tmp60964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60958
                             (let ((__tmp60963 (gx#datum->syntax '#f 'start))
                                   (__tmp60959
                                    (let ((__tmp60962
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60960
                                           (let ((__tmp60961
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60961 '()))))
                                      (declare (not safe))
                                      (cons __tmp60962 __tmp60960))))
                               (declare (not safe))
                               (cons __tmp60963 __tmp60959))))
                        (declare (not safe))
                        (cons __tmp60964 __tmp60958)))
                     (__tmp60944
                      (let ((__tmp60952
                             (let ((__tmp60956 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60953
                                    (let ((__tmp60955
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60954
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60955 __tmp60954))))
                               (declare (not safe))
                               (cons __tmp60956 __tmp60953)))
                            (__tmp60945
                             (let ((__tmp60946
                                    (let ((__tmp60951
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60947
                                           (let ((__tmp60950
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60948
                                                  (let ((__tmp60949
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60949 '()))))
                                             (declare (not safe))
                                             (cons __tmp60950 __tmp60948))))
                                      (declare (not safe))
                                      (cons __tmp60951 __tmp60947))))
                               (declare (not safe))
                               (cons __tmp60946 '()))))
                        (declare (not safe))
                        (cons __tmp60952 __tmp60945))))
                 (declare (not safe))
                 (cons __tmp60957 __tmp60944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60965
                                                        __tmp60943))))
                                           (declare (not safe))
                                           (cons __tmp60942 '()))))
                                    (declare (not safe))
                                    (cons __tmp60966 __tmp60941)))
                                 (__tmp60882
                                  (let ((__tmp60906
                                         (let ((__tmp60936
                                                (let ((__tmp60937
                                                       (let ((__tmp60938
                                                              (let ((__tmp60939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60939 '()))))
                 (declare (not safe))
                 (cons _L58333_ __tmp60938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58334_ __tmp60937)))
                                               (__tmp60907
                                                (let ((__tmp60930
                                                       (let ((__tmp60935
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60931
                                                              (let ((__tmp60932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60934 (gx#datum->syntax '#f 'probe))
                                   (__tmp60933
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58333_ '()))))
                               (declare (not safe))
                               (cons __tmp60934 __tmp60933))))
                        (declare (not safe))
                        (cons _L58337_ __tmp60932))))
                 (declare (not safe))
                 (cons __tmp60935 __tmp60931)))
              (__tmp60908
               (let ((__tmp60909
                      (let ((__tmp60929 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60910
                             (let ((__tmp60911
                                    (let ((__tmp60924
                                           (let ((__tmp60928
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60925
                                                  (let ((__tmp60927
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60926
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60927
                                                          __tmp60926))))
                                             (declare (not safe))
                                             (cons __tmp60928 __tmp60925)))
                                          (__tmp60912
                                           (let ((__tmp60913
                                                  (let ((__tmp60914
                                                         (let ((__tmp60915
                                                                (let ((__tmp60923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60916
                               (let ((__tmp60917
                                      (let ((__tmp60918
                                             (let ((__tmp60922
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60919
                                                    (let ((__tmp60921
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60920
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60921
                                                            __tmp60920))))
                                               (declare (not safe))
                                               (cons __tmp60922 __tmp60919))))
                                        (declare (not safe))
                                        (cons __tmp60918 '()))))
                                 (declare (not safe))
                                 (cons _L58337_ __tmp60917))))
                          (declare (not safe))
                          (cons __tmp60923 __tmp60916))))
                   (declare (not safe))
                   (cons __tmp60915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58332_
                                                          __tmp60914))))
                                             (declare (not safe))
                                             (cons __tmp60913 '()))))
                                      (declare (not safe))
                                      (cons __tmp60924 __tmp60912))))
                               (declare (not safe))
                               (cons _L58337_ __tmp60911))))
                        (declare (not safe))
                        (cons __tmp60929 __tmp60910))))
                 (declare (not safe))
                 (cons __tmp60909 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60930
                                                        __tmp60908))))
                                           (declare (not safe))
                                           (cons __tmp60936 __tmp60907)))
                                        (__tmp60883
                                         (let ((__tmp60884
                                                (let ((__tmp60905
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60885
                                                       (let ((__tmp60886
                                                              (let ((__tmp60904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60887
                             (let ((__tmp60896
                                    (let ((__tmp60903
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60897
                                           (let ((__tmp60902
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60898
                                                  (let ((__tmp60901
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60899
                                                         (let ((__tmp60900
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60900 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60901
                                                          __tmp60899))))
                                             (declare (not safe))
                                             (cons __tmp60902 __tmp60898))))
                                      (declare (not safe))
                                      (cons __tmp60903 __tmp60897)))
                                   (__tmp60888
                                    (let ((__tmp60891
                                           (let ((__tmp60895
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60892
                                                  (let ((__tmp60894
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60893
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60894
                                                          __tmp60893))))
                                             (declare (not safe))
                                             (cons __tmp60895 __tmp60892)))
                                          (__tmp60889
                                           (let ((__tmp60890
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60890 '()))))
                                      (declare (not safe))
                                      (cons __tmp60891 __tmp60889))))
                               (declare (not safe))
                               (cons __tmp60896 __tmp60888))))
                        (declare (not safe))
                        (cons __tmp60904 __tmp60887))))
                 (declare (not safe))
                 (cons __tmp60886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60905
                                                        __tmp60885))))
                                           (declare (not safe))
                                           (cons __tmp60884 '()))))
                                    (declare (not safe))
                                    (cons __tmp60906 __tmp60883))))
                             (declare (not safe))
                             (cons __tmp60940 __tmp60882))))
                      (declare (not safe))
                      (cons __tmp60973 __tmp60881))))
               (declare (not safe))
               (cons __tmp61036 __tmp60880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60879 '()))))
                                         (declare (not safe))
                                         (cons __tmp61037 __tmp60878))))
                                  (declare (not safe))
                                  (cons __tmp61045 __tmp60877))))
                           (declare (not safe))
                           (cons __tmp60876 '()))))
                    (declare (not safe))
                    (cons __tmp61046 __tmp60875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61059
                                                           __tmp60874))))
                                              (declare (not safe))
                                              (cons __tmp61060 __tmp60873))))
                                       (declare (not safe))
                                       (cons __tmp60872 '()))))
                                (declare (not safe))
                                (cons __tmp61061 __tmp60871))))
                         (declare (not safe))
                         (cons __tmp61101 __tmp60870)))
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
                                       (let ((__tmp61263
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61102
                                              (let ((__tmp61223
                                                     (let ((__tmp61254
                                                            (let ((__tmp61262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61255
                           (let ((__tmp61256
                                  (let ((__tmp61261
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61257
                                         (let ((__tmp61259
                                                (let ((__tmp61260
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58495_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58497_ __tmp61260)))
                                               (__tmp61258
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58498_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61259 __tmp61258))))
                                    (declare (not safe))
                                    (cons __tmp61261 __tmp61257))))
                             (declare (not safe))
                             (cons __tmp61256 '()))))
                      (declare (not safe))
                      (cons __tmp61262 __tmp61255)))
                   (__tmp61224
                    (let ((__tmp61248
                           (let ((__tmp61253 (gx#datum->syntax '#f 'size))
                                 (__tmp61249
                                  (let ((__tmp61250
                                         (let ((__tmp61252
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61251
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58499_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61252 __tmp61251))))
                                    (declare (not safe))
                                    (cons __tmp61250 '()))))
                             (declare (not safe))
                             (cons __tmp61253 __tmp61249)))
                          (__tmp61225
                           (let ((__tmp61240
                                  (let ((__tmp61247
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61241
                                         (let ((__tmp61242
                                                (let ((__tmp61246
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61243
                                                       (let ((__tmp61245
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61244
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61245 __tmp61244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61246
                                                        __tmp61243))))
                                           (declare (not safe))
                                           (cons __tmp61242 '()))))
                                    (declare (not safe))
                                    (cons __tmp61247 __tmp61241)))
                                 (__tmp61226
                                  (let ((__tmp61227
                                         (let ((__tmp61239
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61228
                                                (let ((__tmp61229
                                                       (let ((__tmp61238
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61230
                                                              (let ((__tmp61232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61237
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61233
                                    (let ((__tmp61236
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61234
                                           (let ((__tmp61235
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61235 '()))))
                                      (declare (not safe))
                                      (cons __tmp61236 __tmp61234))))
                               (declare (not safe))
                               (cons __tmp61237 __tmp61233)))
                            (__tmp61231
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61232 __tmp61231))))
                 (declare (not safe))
                 (cons __tmp61238 __tmp61230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61229 '()))))
                                           (declare (not safe))
                                           (cons __tmp61239 __tmp61228))))
                                    (declare (not safe))
                                    (cons __tmp61227 '()))))
                             (declare (not safe))
                             (cons __tmp61240 __tmp61226))))
                      (declare (not safe))
                      (cons __tmp61248 __tmp61225))))
               (declare (not safe))
               (cons __tmp61254 __tmp61224)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61103
                                                     (let ((__tmp61104
                                                            (let ((__tmp61222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61105
                           (let ((__tmp61221 (gx#datum->syntax '#f 'loop))
                                 (__tmp61106
                                  (let ((__tmp61212
                                         (let ((__tmp61217
                                                (let ((__tmp61220
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61218
                                                       (let ((__tmp61219
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61219
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61220
                                                        __tmp61218)))
                                               (__tmp61213
                                                (let ((__tmp61214
                                                       (let ((__tmp61216
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61215
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61216 __tmp61215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61214 '()))))
                                           (declare (not safe))
                                           (cons __tmp61217 __tmp61213)))
                                        (__tmp61107
                                         (let ((__tmp61108
                                                (let ((__tmp61211
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61109
                                                       (let ((__tmp61203
                                                              (let ((__tmp61210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61204
                             (let ((__tmp61205
                                    (let ((__tmp61209
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61206
                                           (let ((__tmp61207
                                                  (let ((__tmp61208
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61208 '()))))
                                             (declare (not safe))
                                             (cons _L58499_ __tmp61207))))
                                      (declare (not safe))
                                      (cons __tmp61209 __tmp61206))))
                               (declare (not safe))
                               (cons __tmp61205 '()))))
                        (declare (not safe))
                        (cons __tmp61210 __tmp61204)))
                     (__tmp61110
                      (let ((__tmp61111
                             (let ((__tmp61202 (gx#datum->syntax '#f 'cond))
                                   (__tmp61112
                                    (let ((__tmp61191
                                           (let ((__tmp61195
                                                  (let ((__tmp61201
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61196
                                                         (let ((__tmp61200
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61197
                        (let ((__tmp61198
                               (let ((__tmp61199
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61199 '()))))
                          (declare (not safe))
                          (cons __tmp61198 '()))))
                   (declare (not safe))
                   (cons __tmp61200 __tmp61197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61201
                                                          __tmp61196)))
                                                 (__tmp61192
                                                  (let ((__tmp61193
                                                         (let ((__tmp61194
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61194 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61193 '()))))
                                             (declare (not safe))
                                             (cons __tmp61195 __tmp61192)))
                                          (__tmp61113
                                           (let ((__tmp61165
                                                  (let ((__tmp61184
                                                         (let ((__tmp61190
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61185
                        (let ((__tmp61189 (gx#datum->syntax '#f 'k))
                              (__tmp61186
                               (let ((__tmp61187
                                      (let ((__tmp61188
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61188 '()))))
                                 (declare (not safe))
                                 (cons __tmp61187 '()))))
                          (declare (not safe))
                          (cons __tmp61189 __tmp61186))))
                   (declare (not safe))
                   (cons __tmp61190 __tmp61185)))
                (__tmp61166
                 (let ((__tmp61167
                        (let ((__tmp61183 (gx#datum->syntax '#f 'loop))
                              (__tmp61168
                               (let ((__tmp61175
                                      (let ((__tmp61182
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61176
                                             (let ((__tmp61181
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61177
                                                    (let ((__tmp61180
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61178
                                                           (let ((__tmp61179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61179 '()))))
              (declare (not safe))
              (cons __tmp61180 __tmp61178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61181 __tmp61177))))
                                        (declare (not safe))
                                        (cons __tmp61182 __tmp61176)))
                                     (__tmp61169
                                      (let ((__tmp61170
                                             (let ((__tmp61174
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61171
                                                    (let ((__tmp61173
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61172
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61173
                                                            __tmp61172))))
                                               (declare (not safe))
                                               (cons __tmp61174 __tmp61171))))
                                        (declare (not safe))
                                        (cons __tmp61170 '()))))
                                 (declare (not safe))
                                 (cons __tmp61175 __tmp61169))))
                          (declare (not safe))
                          (cons __tmp61183 __tmp61168))))
                   (declare (not safe))
                   (cons __tmp61167 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61184
                                                          __tmp61166)))
                                                 (__tmp61114
                                                  (let ((__tmp61136
                                                         (let ((__tmp61161
                                                                (let ((__tmp61162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61163
                                      (let ((__tmp61164
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61164 '()))))
                                 (declare (not safe))
                                 (cons _L58495_ __tmp61163))))
                          (declare (not safe))
                          (cons _L58496_ __tmp61162)))
                       (__tmp61137
                        (let ((__tmp61153
                               (let ((__tmp61160
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61154
                                      (let ((__tmp61155
                                             (let ((__tmp61159
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61156
                                                    (let ((__tmp61157
                                                           (let ((__tmp61158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61158 '()))))
              (declare (not safe))
              (cons __tmp61157 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61159 __tmp61156))))
                                        (declare (not safe))
                                        (cons _L58499_ __tmp61155))))
                                 (declare (not safe))
                                 (cons __tmp61160 __tmp61154)))
                              (__tmp61138
                               (let ((__tmp61141
                                      (let ((__tmp61152
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61142
                                             (let ((__tmp61143
                                                    (let ((__tmp61147
                                                           (let ((__tmp61151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61148
                          (let ((__tmp61150 (gx#datum->syntax '#f 'probe))
                                (__tmp61149
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61150 __tmp61149))))
                     (declare (not safe))
                     (cons __tmp61151 __tmp61148)))
                  (__tmp61144
                   (let ((__tmp61145
                          (let ((__tmp61146
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61146 '()))))
                     (declare (not safe))
                     (cons __tmp61145 '()))))
              (declare (not safe))
              (cons __tmp61147 __tmp61144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58499_ __tmp61143))))
                                        (declare (not safe))
                                        (cons __tmp61152 __tmp61142)))
                                     (__tmp61139
                                      (let ((__tmp61140
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61140 '()))))
                                 (declare (not safe))
                                 (cons __tmp61141 __tmp61139))))
                          (declare (not safe))
                          (cons __tmp61153 __tmp61138))))
                   (declare (not safe))
                   (cons __tmp61161 __tmp61137)))
                (__tmp61115
                 (let ((__tmp61116
                        (let ((__tmp61135 (gx#datum->syntax '#f 'else))
                              (__tmp61117
                               (let ((__tmp61118
                                      (let ((__tmp61134
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61119
                                             (let ((__tmp61126
                                                    (let ((__tmp61133
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61127
                                                           (let ((__tmp61132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61128
                          (let ((__tmp61131 (gx#datum->syntax '#f 'i))
                                (__tmp61129
                                 (let ((__tmp61130
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61130 '()))))
                            (declare (not safe))
                            (cons __tmp61131 __tmp61129))))
                     (declare (not safe))
                     (cons __tmp61132 __tmp61128))))
              (declare (not safe))
              (cons __tmp61133 __tmp61127)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61120
                                                    (let ((__tmp61121
                                                           (let ((__tmp61125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61122
                          (let ((__tmp61124 (gx#datum->syntax '#f 'i))
                                (__tmp61123
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61124 __tmp61123))))
                     (declare (not safe))
                     (cons __tmp61125 __tmp61122))))
              (declare (not safe))
              (cons __tmp61121 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61126 __tmp61120))))
                                        (declare (not safe))
                                        (cons __tmp61134 __tmp61119))))
                                 (declare (not safe))
                                 (cons __tmp61118 '()))))
                          (declare (not safe))
                          (cons __tmp61135 __tmp61117))))
                   (declare (not safe))
                   (cons __tmp61116 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61136
                                                          __tmp61115))))
                                             (declare (not safe))
                                             (cons __tmp61165 __tmp61114))))
                                      (declare (not safe))
                                      (cons __tmp61191 __tmp61113))))
                               (declare (not safe))
                               (cons __tmp61202 __tmp61112))))
                        (declare (not safe))
                        (cons __tmp61111 '()))))
                 (declare (not safe))
                 (cons __tmp61203 __tmp61110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61211
                                                        __tmp61109))))
                                           (declare (not safe))
                                           (cons __tmp61108 '()))))
                                    (declare (not safe))
                                    (cons __tmp61212 __tmp61107))))
                             (declare (not safe))
                             (cons __tmp61221 __tmp61106))))
                      (declare (not safe))
                      (cons __tmp61222 __tmp61105))))
               (declare (not safe))
               (cons __tmp61104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61223 __tmp61103))))
                                         (declare (not safe))
                                         (cons __tmp61263 __tmp61102)))
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
