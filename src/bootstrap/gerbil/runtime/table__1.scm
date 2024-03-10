(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx54423_)
      (let* ((_g5442754441_
              (lambda (_g5442854437_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5442854437_)))
             (_g5442654483_
              (lambda (_g5442854445_)
                (if (gx#stx-pair? _g5442854445_)
                    (let ((_e5443054448_ (gx#syntax-e _g5442854445_)))
                      (let ((_hd5443154452_
                             (let ()
                               (declare (not safe))
                               (##car _e5443054448_)))
                            (_tl5443254455_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5443054448_))))
                        (if (gx#stx-pair? _tl5443254455_)
                            (let ((_e5443354458_ (gx#syntax-e _tl5443254455_)))
                              (let ((_hd5443454462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5443354458_)))
                                    (_tl5443554465_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5443354458_))))
                                (if (gx#stx-null? _tl5443554465_)
                                    ((lambda (_L54468_)
                                       (let ((__tmp57005
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp57003
                                              (let ((__tmp57004
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L54468_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp57004))))
                                         (declare (not safe))
                                         (cons __tmp57005 __tmp57003)))
                                     _hd5443454462_)
                                    (_g5442754441_ _g5442854445_))))
                            (_g5442754441_ _g5442854445_))))
                    (_g5442754441_ _g5442854445_)))))
        (_g5442654483_ _$stx54423_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx54487_)
      (let* ((_g5449154537_
              (lambda (_g5449254533_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5449254533_)))
             (_g5449054690_
              (lambda (_g5449254541_)
                (if (gx#stx-pair? _g5449254541_)
                    (let ((_e5450254544_ (gx#syntax-e _g5449254541_)))
                      (let ((_hd5450354548_
                             (let ()
                               (declare (not safe))
                               (##car _e5450254544_)))
                            (_tl5450454551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5450254544_))))
                        (if (gx#stx-pair? _tl5450454551_)
                            (let ((_e5450554554_ (gx#syntax-e _tl5450454551_)))
                              (let ((_hd5450654558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5450554554_)))
                                    (_tl5450754561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5450554554_))))
                                (if (gx#stx-pair? _tl5450754561_)
                                    (let ((_e5450854564_
                                           (gx#syntax-e _tl5450754561_)))
                                      (let ((_hd5450954568_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5450854564_)))
                                            (_tl5451054571_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5450854564_))))
                                        (if (gx#stx-pair? _tl5451054571_)
                                            (let ((_e5451154574_
                                                   (gx#syntax-e
                                                    _tl5451054571_)))
                                              (let ((_hd5451254578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5451154574_)))
                                                    (_tl5451354581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5451154574_))))
                                                (if (gx#stx-pair?
                                                     _tl5451354581_)
                                                    (let ((_e5451454584_
                                                           (gx#syntax-e
                                                            _tl5451354581_)))
                                                      (let ((_hd5451554588_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5451454584_)))
                    (_tl5451654591_
                     (let () (declare (not safe)) (##cdr _e5451454584_))))
                (if (gx#stx-pair? _tl5451654591_)
                    (let ((_e5451754594_ (gx#syntax-e _tl5451654591_)))
                      (let ((_hd5451854598_
                             (let ()
                               (declare (not safe))
                               (##car _e5451754594_)))
                            (_tl5451954601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5451754594_))))
                        (if (gx#stx-pair? _tl5451954601_)
                            (let ((_e5452054604_ (gx#syntax-e _tl5451954601_)))
                              (let ((_hd5452154608_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5452054604_)))
                                    (_tl5452254611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5452054604_))))
                                (if (gx#stx-pair? _tl5452254611_)
                                    (let ((_e5452354614_
                                           (gx#syntax-e _tl5452254611_)))
                                      (let ((_hd5452454618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5452354614_)))
                                            (_tl5452554621_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5452354614_))))
                                        (if (gx#stx-pair? _tl5452554621_)
                                            (let ((_e5452654624_
                                                   (gx#syntax-e
                                                    _tl5452554621_)))
                                              (let ((_hd5452754628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5452654624_)))
                                                    (_tl5452854631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5452654624_))))
                                                (if (gx#stx-pair?
                                                     _tl5452854631_)
                                                    (let ((_e5452954634_
                                                           (gx#syntax-e
                                                            _tl5452854631_)))
                                                      (let ((_hd5453054638_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5452954634_)))
                    (_tl5453154641_
                     (let () (declare (not safe)) (##cdr _e5452954634_))))
                (if (gx#stx-null? _tl5453154641_)
                    ((lambda (_L54644_
                              _L54646_
                              _L54647_
                              _L54648_
                              _L54649_
                              _L54650_
                              _L54651_
                              _L54652_
                              _L54653_)
                       (let ((__tmp57437 (gx#datum->syntax '#f 'begin))
                             (__tmp57006
                              (let ((__tmp57416
                                     (let ((__tmp57436
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp57417
                                            (let ((__tmp57427
                                                   (let ((__tmp57428
                                                          (let ((__tmp57433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57435 (gx#datum->syntax '#f 'size-hint))
                               (__tmp57434
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp57435 __tmp57434)))
                        (__tmp57429
                         (let ((__tmp57430
                                (let ((__tmp57432 (gx#datum->syntax '#f 'seed))
                                      (__tmp57431
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp57432 __tmp57431))))
                           (declare (not safe))
                           (cons __tmp57430 '()))))
                    (declare (not safe))
                    (cons __tmp57433 __tmp57429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L54653_
                                                           __tmp57428)))
                                                  (__tmp57418
                                                   (let ((__tmp57419
                                                          (let ((__tmp57426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp57420
                         (let ((__tmp57425 (gx#datum->syntax '#f 'size-hint))
                               (__tmp57421
                                (let ((__tmp57422
                                       (let ((__tmp57423
                                              (let ((__tmp57424
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp57424 '()))))
                                         (declare (not safe))
                                         (cons _L54644_ __tmp57423))))
                                  (declare (not safe))
                                  (cons _L54646_ __tmp57422))))
                           (declare (not safe))
                           (cons __tmp57425 __tmp57421))))
                    (declare (not safe))
                    (cons __tmp57426 __tmp57420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57419 '()))))
                                              (declare (not safe))
                                              (cons __tmp57427 __tmp57418))))
                                       (declare (not safe))
                                       (cons __tmp57436 __tmp57417)))
                                    (__tmp57007
                                     (let ((__tmp57373
                                            (let ((__tmp57415
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp57374
                                                   (let ((__tmp57408
                                                          (let ((__tmp57409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57414 (gx#datum->syntax '#f 'tab))
                               (__tmp57410
                                (let ((__tmp57413 (gx#datum->syntax '#f 'key))
                                      (__tmp57411
                                       (let ((__tmp57412
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp57412 '()))))
                                  (declare (not safe))
                                  (cons __tmp57413 __tmp57411))))
                           (declare (not safe))
                           (cons __tmp57414 __tmp57410))))
                    (declare (not safe))
                    (cons _L54652_ __tmp57409)))
                 (__tmp57375
                  (let ((__tmp57376
                         (let ((__tmp57407 (gx#datum->syntax '#f 'let))
                               (__tmp57377
                                (let ((__tmp57391
                                       (let ((__tmp57400
                                              (let ((__tmp57406
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp57401
                                                     (let ((__tmp57402
                                                            (let ((__tmp57405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp57403
                           (let ((__tmp57404 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp57404 '()))))
                      (declare (not safe))
                      (cons __tmp57405 __tmp57403))))
               (declare (not safe))
               (cons __tmp57402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57406 __tmp57401)))
                                             (__tmp57392
                                              (let ((__tmp57393
                                                     (let ((__tmp57399
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp57394
                                                            (let ((__tmp57395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57398
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp57396
                                  (let ((__tmp57397
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57397 '()))))
                             (declare (not safe))
                             (cons __tmp57398 __tmp57396))))
                      (declare (not safe))
                      (cons __tmp57395 '()))))
               (declare (not safe))
               (cons __tmp57399 __tmp57394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57393 '()))))
                                         (declare (not safe))
                                         (cons __tmp57400 __tmp57392)))
                                      (__tmp57378
                                       (let ((__tmp57379
                                              (let ((__tmp57390
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp57380
                                                     (let ((__tmp57389
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp57381
                                                            (let ((__tmp57388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp57382
                           (let ((__tmp57383
                                  (let ((__tmp57384
                                         (let ((__tmp57387
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp57385
                                                (let ((__tmp57386
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp57386 '()))))
                                           (declare (not safe))
                                           (cons __tmp57387 __tmp57385))))
                                    (declare (not safe))
                                    (cons _L54644_ __tmp57384))))
                             (declare (not safe))
                             (cons _L54646_ __tmp57383))))
                      (declare (not safe))
                      (cons __tmp57388 __tmp57382))))
               (declare (not safe))
               (cons __tmp57389 __tmp57381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57390 __tmp57380))))
                                         (declare (not safe))
                                         (cons __tmp57379 '()))))
                                  (declare (not safe))
                                  (cons __tmp57391 __tmp57378))))
                           (declare (not safe))
                           (cons __tmp57407 __tmp57377))))
                    (declare (not safe))
                    (cons __tmp57376 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57408
                                                           __tmp57375))))
                                              (declare (not safe))
                                              (cons __tmp57415 __tmp57374)))
                                           (__tmp57008
                                            (let ((__tmp57327
                                                   (let ((__tmp57372
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp57328
                                                          (let ((__tmp57365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57366
                                (let ((__tmp57371 (gx#datum->syntax '#f 'tab))
                                      (__tmp57367
                                       (let ((__tmp57370
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57368
                                              (let ((__tmp57369
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp57369 '()))))
                                         (declare (not safe))
                                         (cons __tmp57370 __tmp57368))))
                                  (declare (not safe))
                                  (cons __tmp57371 __tmp57367))))
                           (declare (not safe))
                           (cons _L54651_ __tmp57366)))
                        (__tmp57329
                         (let ((__tmp57338
                                (let ((__tmp57364 (gx#datum->syntax '#f 'when))
                                      (__tmp57339
                                       (let ((__tmp57345
                                              (let ((__tmp57363
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp57346
                                                     (let ((__tmp57359
                                                            (let ((__tmp57362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp57360
                           (let ((__tmp57361 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp57361 '()))))
                      (declare (not safe))
                      (cons __tmp57362 __tmp57360)))
                   (__tmp57347
                    (let ((__tmp57348
                           (let ((__tmp57358
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp57349
                                  (let ((__tmp57351
                                         (let ((__tmp57357
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp57352
                                                (let ((__tmp57353
                                                       (let ((__tmp57356
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp57354
                                                              (let ((__tmp57355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57355 '()))))
                 (declare (not safe))
                 (cons __tmp57356 __tmp57354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57353 '()))))
                                           (declare (not safe))
                                           (cons __tmp57357 __tmp57352)))
                                        (__tmp57350
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp57351 __tmp57350))))
                             (declare (not safe))
                             (cons __tmp57358 __tmp57349))))
                      (declare (not safe))
                      (cons __tmp57348 '()))))
               (declare (not safe))
               (cons __tmp57359 __tmp57347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57363 __tmp57346)))
                                             (__tmp57340
                                              (let ((__tmp57341
                                                     (let ((__tmp57344
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp57342
                                                            (let ((__tmp57343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp57343 '()))))
               (declare (not safe))
               (cons __tmp57344 __tmp57342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57341 '()))))
                                         (declare (not safe))
                                         (cons __tmp57345 __tmp57340))))
                                  (declare (not safe))
                                  (cons __tmp57364 __tmp57339)))
                               (__tmp57330
                                (let ((__tmp57331
                                       (let ((__tmp57332
                                              (let ((__tmp57337
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57333
                                                     (let ((__tmp57336
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp57334
                                                            (let ((__tmp57335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp57335 '()))))
               (declare (not safe))
               (cons __tmp57336 __tmp57334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57337 __tmp57333))))
                                         (declare (not safe))
                                         (cons _L54650_ __tmp57332))))
                                  (declare (not safe))
                                  (cons __tmp57331 '()))))
                           (declare (not safe))
                           (cons __tmp57338 __tmp57330))))
                    (declare (not safe))
                    (cons __tmp57365 __tmp57329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57372
                                                           __tmp57328)))
                                                  (__tmp57009
                                                   (let ((__tmp57225
                                                          (let ((__tmp57326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp57226
                         (let ((__tmp57319
                                (let ((__tmp57320
                                       (let ((__tmp57325
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp57321
                                              (let ((__tmp57324
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp57322
                                                     (let ((__tmp57323
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp57323 '()))))
                                                (declare (not safe))
                                                (cons __tmp57324 __tmp57322))))
                                         (declare (not safe))
                                         (cons __tmp57325 __tmp57321))))
                                  (declare (not safe))
                                  (cons _L54650_ __tmp57320)))
                               (__tmp57227
                                (let ((__tmp57228
                                       (let ((__tmp57318
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp57229
                                              (let ((__tmp57302
                                                     (let ((__tmp57311
                                                            (let ((__tmp57317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp57312
                           (let ((__tmp57313
                                  (let ((__tmp57316
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp57314
                                         (let ((__tmp57315
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57315 '()))))
                                    (declare (not safe))
                                    (cons __tmp57316 __tmp57314))))
                             (declare (not safe))
                             (cons __tmp57313 '()))))
                      (declare (not safe))
                      (cons __tmp57317 __tmp57312)))
                   (__tmp57303
                    (let ((__tmp57304
                           (let ((__tmp57310 (gx#datum->syntax '#f 'seed))
                                 (__tmp57305
                                  (let ((__tmp57306
                                         (let ((__tmp57309
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp57307
                                                (let ((__tmp57308
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp57308 '()))))
                                           (declare (not safe))
                                           (cons __tmp57309 __tmp57307))))
                                    (declare (not safe))
                                    (cons __tmp57306 '()))))
                             (declare (not safe))
                             (cons __tmp57310 __tmp57305))))
                      (declare (not safe))
                      (cons __tmp57304 '()))))
               (declare (not safe))
               (cons __tmp57311 __tmp57303)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57230
                                                     (let ((__tmp57231
                                                            (let ((__tmp57301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp57232
                           (let ((__tmp57300 (gx#datum->syntax '#f 'table))
                                 (__tmp57233
                                  (let ((__tmp57299
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp57234
                                         (let ((__tmp57235
                                                (let ((__tmp57236
                                                       (let ((__tmp57298
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp57237
                                                              (let ((__tmp57297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp57238
                             (let ((__tmp57260
                                    (let ((__tmp57296
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp57261
                                           (let ((__tmp57262
                                                  (let ((__tmp57280
                                                         (let ((__tmp57295
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp57281
                        (let ((__tmp57291
                               (let ((__tmp57294
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp57292
                                      (let ((__tmp57293
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp57293 '()))))
                                 (declare (not safe))
                                 (cons __tmp57294 __tmp57292)))
                              (__tmp57282
                               (let ((__tmp57283
                                      (let ((__tmp57290
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp57284
                                             (let ((__tmp57286
                                                    (let ((__tmp57289
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57287
                                                           (let ((__tmp57288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57288 '()))))
              (declare (not safe))
              (cons __tmp57289 __tmp57287)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57285
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp57286 __tmp57285))))
                                        (declare (not safe))
                                        (cons __tmp57290 __tmp57284))))
                                 (declare (not safe))
                                 (cons __tmp57283 '()))))
                          (declare (not safe))
                          (cons __tmp57291 __tmp57282))))
                   (declare (not safe))
                   (cons __tmp57295 __tmp57281)))
                (__tmp57263
                 (let ((__tmp57264
                        (let ((__tmp57279 (gx#datum->syntax '#f 'set!))
                              (__tmp57265
                               (let ((__tmp57275
                                      (let ((__tmp57278
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp57276
                                             (let ((__tmp57277
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp57277 '()))))
                                        (declare (not safe))
                                        (cons __tmp57278 __tmp57276)))
                                     (__tmp57266
                                      (let ((__tmp57267
                                             (let ((__tmp57274
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57268
                                                    (let ((__tmp57270
                                                           (let ((__tmp57273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57271
                          (let ((__tmp57272 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57272 '()))))
                     (declare (not safe))
                     (cons __tmp57273 __tmp57271)))
                  (__tmp57269 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp57270 __tmp57269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57274 __tmp57268))))
                                        (declare (not safe))
                                        (cons __tmp57267 '()))))
                                 (declare (not safe))
                                 (cons __tmp57275 __tmp57266))))
                          (declare (not safe))
                          (cons __tmp57279 __tmp57265))))
                   (declare (not safe))
                   (cons __tmp57264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57280
                                                          __tmp57263))))
                                             (declare (not safe))
                                             (cons '() __tmp57262))))
                                      (declare (not safe))
                                      (cons __tmp57296 __tmp57261)))
                                   (__tmp57239
                                    (let ((__tmp57240
                                           (let ((__tmp57259
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp57241
                                                  (let ((__tmp57242
                                                         (let ((__tmp57243
                                                                (let ((__tmp57258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp57244
                               (let ((__tmp57254
                                      (let ((__tmp57257
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp57255
                                             (let ((__tmp57256
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp57256 '()))))
                                        (declare (not safe))
                                        (cons __tmp57257 __tmp57255)))
                                     (__tmp57245
                                      (let ((__tmp57246
                                             (let ((__tmp57253
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57247
                                                    (let ((__tmp57249
                                                           (let ((__tmp57252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57250
                          (let ((__tmp57251 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57251 '()))))
                     (declare (not safe))
                     (cons __tmp57252 __tmp57250)))
                  (__tmp57248 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp57249 __tmp57248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57253 __tmp57247))))
                                        (declare (not safe))
                                        (cons __tmp57246 '()))))
                                 (declare (not safe))
                                 (cons __tmp57254 __tmp57245))))
                          (declare (not safe))
                          (cons __tmp57258 __tmp57244))))
                   (declare (not safe))
                   (cons __tmp57243 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp57242))))
                                             (declare (not safe))
                                             (cons __tmp57259 __tmp57241))))
                                      (declare (not safe))
                                      (cons __tmp57240 '()))))
                               (declare (not safe))
                               (cons __tmp57260 __tmp57239))))
                        (declare (not safe))
                        (cons __tmp57297 __tmp57238))))
                 (declare (not safe))
                 (cons __tmp57298 __tmp57237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L54644_ __tmp57236))))
                                           (declare (not safe))
                                           (cons _L54646_ __tmp57235))))
                                    (declare (not safe))
                                    (cons __tmp57299 __tmp57234))))
                             (declare (not safe))
                             (cons __tmp57300 __tmp57233))))
                      (declare (not safe))
                      (cons __tmp57301 __tmp57232))))
               (declare (not safe))
               (cons __tmp57231 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57302 __tmp57230))))
                                         (declare (not safe))
                                         (cons __tmp57318 __tmp57229))))
                                  (declare (not safe))
                                  (cons __tmp57228 '()))))
                           (declare (not safe))
                           (cons __tmp57319 __tmp57227))))
                    (declare (not safe))
                    (cons __tmp57326 __tmp57226)))
                 (__tmp57010
                  (let ((__tmp57177
                         (let ((__tmp57224 (gx#datum->syntax '#f 'def))
                               (__tmp57178
                                (let ((__tmp57216
                                       (let ((__tmp57217
                                              (let ((__tmp57223
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp57218
                                                     (let ((__tmp57222
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp57219
                                                            (let ((__tmp57220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57221 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp57221 '()))))
                      (declare (not safe))
                      (cons _L54649_ __tmp57220))))
               (declare (not safe))
               (cons __tmp57222 __tmp57219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57223 __tmp57218))))
                                         (declare (not safe))
                                         (cons _L54649_ __tmp57217)))
                                      (__tmp57179
                                       (let ((__tmp57189
                                              (let ((__tmp57215
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp57190
                                                     (let ((__tmp57196
                                                            (let ((__tmp57214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp57197
                           (let ((__tmp57210
                                  (let ((__tmp57213
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp57211
                                         (let ((__tmp57212
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp57212 '()))))
                                    (declare (not safe))
                                    (cons __tmp57213 __tmp57211)))
                                 (__tmp57198
                                  (let ((__tmp57199
                                         (let ((__tmp57209
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp57200
                                                (let ((__tmp57202
                                                       (let ((__tmp57208
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp57203
                                                              (let ((__tmp57204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57207
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp57205
                                    (let ((__tmp57206
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp57206 '()))))
                               (declare (not safe))
                               (cons __tmp57207 __tmp57205))))
                        (declare (not safe))
                        (cons __tmp57204 '()))))
                 (declare (not safe))
                 (cons __tmp57208 __tmp57203)))
              (__tmp57201 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57202
                                                        __tmp57201))))
                                           (declare (not safe))
                                           (cons __tmp57209 __tmp57200))))
                                    (declare (not safe))
                                    (cons __tmp57199 '()))))
                             (declare (not safe))
                             (cons __tmp57210 __tmp57198))))
                      (declare (not safe))
                      (cons __tmp57214 __tmp57197)))
                   (__tmp57191
                    (let ((__tmp57192
                           (let ((__tmp57195
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp57193
                                  (let ((__tmp57194
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp57194 '()))))
                             (declare (not safe))
                             (cons __tmp57195 __tmp57193))))
                      (declare (not safe))
                      (cons __tmp57192 '()))))
               (declare (not safe))
               (cons __tmp57196 __tmp57191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57215 __tmp57190)))
                                             (__tmp57180
                                              (let ((__tmp57181
                                                     (let ((__tmp57182
                                                            (let ((__tmp57188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57183
                           (let ((__tmp57187 (gx#datum->syntax '#f 'key))
                                 (__tmp57184
                                  (let ((__tmp57185
                                         (let ((__tmp57186
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57186 '()))))
                                    (declare (not safe))
                                    (cons _L54649_ __tmp57185))))
                             (declare (not safe))
                             (cons __tmp57187 __tmp57184))))
                      (declare (not safe))
                      (cons __tmp57188 __tmp57183))))
               (declare (not safe))
               (cons _L54648_ __tmp57182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57181 '()))))
                                         (declare (not safe))
                                         (cons __tmp57189 __tmp57180))))
                                  (declare (not safe))
                                  (cons __tmp57216 __tmp57179))))
                           (declare (not safe))
                           (cons __tmp57224 __tmp57178)))
                        (__tmp57011
                         (let ((__tmp57073
                                (let ((__tmp57176 (gx#datum->syntax '#f 'def))
                                      (__tmp57074
                                       (let ((__tmp57168
                                              (let ((__tmp57169
                                                     (let ((__tmp57175
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp57170
                                                            (let ((__tmp57174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp57171
                           (let ((__tmp57172
                                  (let ((__tmp57173
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp57173 '()))))
                             (declare (not safe))
                             (cons _L54649_ __tmp57172))))
                      (declare (not safe))
                      (cons __tmp57174 __tmp57171))))
               (declare (not safe))
               (cons __tmp57175 __tmp57170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L54648_ __tmp57169)))
                                             (__tmp57075
                                              (let ((__tmp57076
                                                     (let ((__tmp57167
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp57077
                                                            (let ((__tmp57151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57160
                                  (let ((__tmp57166
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp57161
                                         (let ((__tmp57162
                                                (let ((__tmp57165
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp57163
                                                       (let ((__tmp57164
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp57164
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57165
                                                        __tmp57163))))
                                           (declare (not safe))
                                           (cons __tmp57162 '()))))
                                    (declare (not safe))
                                    (cons __tmp57166 __tmp57161)))
                                 (__tmp57152
                                  (let ((__tmp57153
                                         (let ((__tmp57159
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp57154
                                                (let ((__tmp57155
                                                       (let ((__tmp57158
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp57156
                                                              (let ((__tmp57157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57157 '()))))
                 (declare (not safe))
                 (cons __tmp57158 __tmp57156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57155 '()))))
                                           (declare (not safe))
                                           (cons __tmp57159 __tmp57154))))
                                    (declare (not safe))
                                    (cons __tmp57153 '()))))
                             (declare (not safe))
                             (cons __tmp57160 __tmp57152)))
                          (__tmp57078
                           (let ((__tmp57079
                                  (let ((__tmp57150
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp57080
                                         (let ((__tmp57149
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57081
                                                (let ((__tmp57148
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57082
                                                       (let ((__tmp57083
                                                              (let ((__tmp57084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57147 (gx#datum->syntax '#f 'key))
                                   (__tmp57085
                                    (let ((__tmp57086
                                           (let ((__tmp57146
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp57087
                                                  (let ((__tmp57109
                                                         (let ((__tmp57145
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp57110
                        (let ((__tmp57111
                               (let ((__tmp57129
                                      (let ((__tmp57144
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp57130
                                             (let ((__tmp57140
                                                    (let ((__tmp57143
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp57141
                                                           (let ((__tmp57142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp57142 '()))))
              (declare (not safe))
              (cons __tmp57143 __tmp57141)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57131
                                                    (let ((__tmp57132
                                                           (let ((__tmp57139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp57133
                          (let ((__tmp57135
                                 (let ((__tmp57138
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp57136
                                        (let ((__tmp57137
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp57137 '()))))
                                   (declare (not safe))
                                   (cons __tmp57138 __tmp57136)))
                                (__tmp57134
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57135 __tmp57134))))
                     (declare (not safe))
                     (cons __tmp57139 __tmp57133))))
              (declare (not safe))
              (cons __tmp57132 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57140 __tmp57131))))
                                        (declare (not safe))
                                        (cons __tmp57144 __tmp57130)))
                                     (__tmp57112
                                      (let ((__tmp57113
                                             (let ((__tmp57128
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57114
                                                    (let ((__tmp57124
                                                           (let ((__tmp57127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57125
                          (let ((__tmp57126 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57126 '()))))
                     (declare (not safe))
                     (cons __tmp57127 __tmp57125)))
                  (__tmp57115
                   (let ((__tmp57116
                          (let ((__tmp57123 (gx#datum->syntax '#f 'fx+))
                                (__tmp57117
                                 (let ((__tmp57119
                                        (let ((__tmp57122
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57120
                                               (let ((__tmp57121
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57121 '()))))
                                          (declare (not safe))
                                          (cons __tmp57122 __tmp57120)))
                                       (__tmp57118
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57119 __tmp57118))))
                            (declare (not safe))
                            (cons __tmp57123 __tmp57117))))
                     (declare (not safe))
                     (cons __tmp57116 '()))))
              (declare (not safe))
              (cons __tmp57124 __tmp57115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57128 __tmp57114))))
                                        (declare (not safe))
                                        (cons __tmp57113 '()))))
                                 (declare (not safe))
                                 (cons __tmp57129 __tmp57112))))
                          (declare (not safe))
                          (cons '() __tmp57111))))
                   (declare (not safe))
                   (cons __tmp57145 __tmp57110)))
                (__tmp57088
                 (let ((__tmp57089
                        (let ((__tmp57108 (gx#datum->syntax '#f 'lambda))
                              (__tmp57090
                               (let ((__tmp57091
                                      (let ((__tmp57092
                                             (let ((__tmp57107
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp57093
                                                    (let ((__tmp57103
                                                           (let ((__tmp57106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp57104
                          (let ((__tmp57105 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp57105 '()))))
                     (declare (not safe))
                     (cons __tmp57106 __tmp57104)))
                  (__tmp57094
                   (let ((__tmp57095
                          (let ((__tmp57102 (gx#datum->syntax '#f 'fx+))
                                (__tmp57096
                                 (let ((__tmp57098
                                        (let ((__tmp57101
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp57099
                                               (let ((__tmp57100
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp57100 '()))))
                                          (declare (not safe))
                                          (cons __tmp57101 __tmp57099)))
                                       (__tmp57097
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp57098 __tmp57097))))
                            (declare (not safe))
                            (cons __tmp57102 __tmp57096))))
                     (declare (not safe))
                     (cons __tmp57095 '()))))
              (declare (not safe))
              (cons __tmp57103 __tmp57094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57107 __tmp57093))))
                                        (declare (not safe))
                                        (cons __tmp57092 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp57091))))
                          (declare (not safe))
                          (cons __tmp57108 __tmp57090))))
                   (declare (not safe))
                   (cons __tmp57089 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57109
                                                          __tmp57088))))
                                             (declare (not safe))
                                             (cons __tmp57146 __tmp57087))))
                                      (declare (not safe))
                                      (cons _L54649_ __tmp57086))))
                               (declare (not safe))
                               (cons __tmp57147 __tmp57085))))
                        (declare (not safe))
                        (cons _L54644_ __tmp57084))))
                 (declare (not safe))
                 (cons _L54646_ __tmp57083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57148
                                                        __tmp57082))))
                                           (declare (not safe))
                                           (cons __tmp57149 __tmp57081))))
                                    (declare (not safe))
                                    (cons __tmp57150 __tmp57080))))
                             (declare (not safe))
                             (cons __tmp57079 '()))))
                      (declare (not safe))
                      (cons __tmp57151 __tmp57078))))
               (declare (not safe))
               (cons __tmp57167 __tmp57077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57076 '()))))
                                         (declare (not safe))
                                         (cons __tmp57168 __tmp57075))))
                                  (declare (not safe))
                                  (cons __tmp57176 __tmp57074)))
                               (__tmp57012
                                (let ((__tmp57013
                                       (let ((__tmp57072
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp57014
                                              (let ((__tmp57067
                                                     (let ((__tmp57068
                                                            (let ((__tmp57071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp57069
                           (let ((__tmp57070 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp57070 '()))))
                      (declare (not safe))
                      (cons __tmp57071 __tmp57069))))
               (declare (not safe))
               (cons _L54647_ __tmp57068)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57015
                                                     (let ((__tmp57016
                                                            (let ((__tmp57066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57017
                           (let ((__tmp57050
                                  (let ((__tmp57059
                                         (let ((__tmp57065
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp57060
                                                (let ((__tmp57061
                                                       (let ((__tmp57064
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp57062
                                                              (let ((__tmp57063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp57063 '()))))
                 (declare (not safe))
                 (cons __tmp57064 __tmp57062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57061 '()))))
                                           (declare (not safe))
                                           (cons __tmp57065 __tmp57060)))
                                        (__tmp57051
                                         (let ((__tmp57052
                                                (let ((__tmp57058
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp57053
                                                       (let ((__tmp57054
                                                              (let ((__tmp57057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp57055
                             (let ((__tmp57056 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp57056 '()))))
                        (declare (not safe))
                        (cons __tmp57057 __tmp57055))))
                 (declare (not safe))
                 (cons __tmp57054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57058
                                                        __tmp57053))))
                                           (declare (not safe))
                                           (cons __tmp57052 '()))))
                                    (declare (not safe))
                                    (cons __tmp57059 __tmp57051)))
                                 (__tmp57018
                                  (let ((__tmp57019
                                         (let ((__tmp57049
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp57020
                                                (let ((__tmp57048
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp57021
                                                       (let ((__tmp57047
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp57022
                                                              (let ((__tmp57023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57024
                                    (let ((__tmp57046
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp57025
                                           (let ((__tmp57026
                                                  (let ((__tmp57045
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp57027
                                                         (let ((__tmp57028
                                                                (let ((__tmp57029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57044 (gx#datum->syntax '#f 'set!))
                                     (__tmp57030
                                      (let ((__tmp57040
                                             (let ((__tmp57043
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp57041
                                                    (let ((__tmp57042
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp57042 '()))))
                                               (declare (not safe))
                                               (cons __tmp57043 __tmp57041)))
                                            (__tmp57031
                                             (let ((__tmp57032
                                                    (let ((__tmp57039
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp57033
                                                           (let ((__tmp57035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57038
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp57036
                                 (let ((__tmp57037
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp57037 '()))))
                            (declare (not safe))
                            (cons __tmp57038 __tmp57036)))
                         (__tmp57034
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp57035 __tmp57034))))
              (declare (not safe))
              (cons __tmp57039 __tmp57033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57032 '()))))
                                        (declare (not safe))
                                        (cons __tmp57040 __tmp57031))))
                                 (declare (not safe))
                                 (cons __tmp57044 __tmp57030))))
                          (declare (not safe))
                          (cons __tmp57029 '()))))
                   (declare (not safe))
                   (cons '() __tmp57028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57045
                                                          __tmp57027))))
                                             (declare (not safe))
                                             (cons __tmp57026 '()))))
                                      (declare (not safe))
                                      (cons __tmp57046 __tmp57025))))
                               (declare (not safe))
                               (cons _L54644_ __tmp57024))))
                        (declare (not safe))
                        (cons _L54646_ __tmp57023))))
                 (declare (not safe))
                 (cons __tmp57047 __tmp57022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57048
                                                        __tmp57021))))
                                           (declare (not safe))
                                           (cons __tmp57049 __tmp57020))))
                                    (declare (not safe))
                                    (cons __tmp57019 '()))))
                             (declare (not safe))
                             (cons __tmp57050 __tmp57018))))
                      (declare (not safe))
                      (cons __tmp57066 __tmp57017))))
               (declare (not safe))
               (cons __tmp57016 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57067 __tmp57015))))
                                         (declare (not safe))
                                         (cons __tmp57072 __tmp57014))))
                                  (declare (not safe))
                                  (cons __tmp57013 '()))))
                           (declare (not safe))
                           (cons __tmp57073 __tmp57012))))
                    (declare (not safe))
                    (cons __tmp57177 __tmp57011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57225
                                                           __tmp57010))))
                                              (declare (not safe))
                                              (cons __tmp57327 __tmp57009))))
                                       (declare (not safe))
                                       (cons __tmp57373 __tmp57008))))
                                (declare (not safe))
                                (cons __tmp57416 __tmp57007))))
                         (declare (not safe))
                         (cons __tmp57437 __tmp57006)))
                     _hd5453054638_
                     _hd5452754628_
                     _hd5452454618_
                     _hd5452154608_
                     _hd5451854598_
                     _hd5451554588_
                     _hd5451254578_
                     _hd5450954568_
                     _hd5450654558_)
                    (_g5449154537_ _g5449254541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5449154537_
                                                     _g5449254541_))))
                                            (_g5449154537_ _g5449254541_))))
                                    (_g5449154537_ _g5449254541_))))
                            (_g5449154537_ _g5449254541_))))
                    (_g5449154537_ _g5449254541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5449154537_
                                                     _g5449254541_))))
                                            (_g5449154537_ _g5449254541_))))
                                    (_g5449154537_ _g5449254541_))))
                            (_g5449154537_ _g5449254541_))))
                    (_g5449154537_ _g5449254541_)))))
        (_g5449054690_ _$stx54487_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx54694_)
      (let* ((_g5469854720_
              (lambda (_g5469954716_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5469954716_)))
             (_g5469754789_
              (lambda (_g5469954724_)
                (if (gx#stx-pair? _g5469954724_)
                    (let ((_e5470354727_ (gx#syntax-e _g5469954724_)))
                      (let ((_hd5470454731_
                             (let ()
                               (declare (not safe))
                               (##car _e5470354727_)))
                            (_tl5470554734_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5470354727_))))
                        (if (gx#stx-pair? _tl5470554734_)
                            (let ((_e5470654737_ (gx#syntax-e _tl5470554734_)))
                              (let ((_hd5470754741_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5470654737_)))
                                    (_tl5470854744_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5470654737_))))
                                (if (gx#stx-pair? _tl5470854744_)
                                    (let ((_e5470954747_
                                           (gx#syntax-e _tl5470854744_)))
                                      (let ((_hd5471054751_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5470954747_)))
                                            (_tl5471154754_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5470954747_))))
                                        (if (gx#stx-pair? _tl5471154754_)
                                            (let ((_e5471254757_
                                                   (gx#syntax-e
                                                    _tl5471154754_)))
                                              (let ((_hd5471354761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5471254757_)))
                                                    (_tl5471454764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5471254757_))))
                                                (if (gx#stx-null?
                                                     _tl5471454764_)
                                                    ((lambda (_L54767_
                                                              _L54769_
                                                              _L54770_)
                                                       (let ((__tmp57457
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp57438
                                                              (let ((__tmp57445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57456
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp57446
                                    (let ((__tmp57447
                                           (let ((__tmp57455
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57448
                                                  (let ((__tmp57449
                                                         (let ((__tmp57450
                                                                (let ((__tmp57451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57454 (gx#datum->syntax '#f 'fx*))
                                     (__tmp57452
                                      (let ((__tmp57453
                                             (let ()
                                               (declare (not safe))
                                               (cons _L54769_ '()))))
                                        (declare (not safe))
                                        (cons _L54769_ __tmp57453))))
                                 (declare (not safe))
                                 (cons __tmp57454 __tmp57452))))
                          (declare (not safe))
                          (cons __tmp57451 '()))))
                   (declare (not safe))
                   (cons _L54769_ __tmp57450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L54770_
                                                          __tmp57449))))
                                             (declare (not safe))
                                             (cons __tmp57455 __tmp57448))))
                                      (declare (not safe))
                                      (cons __tmp57447 '()))))
                               (declare (not safe))
                               (cons __tmp57456 __tmp57446)))
                            (__tmp57439
                             (let ((__tmp57440
                                    (let ((__tmp57444
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp57441
                                           (let ((__tmp57443
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp57442
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L54767_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57443 __tmp57442))))
                                      (declare (not safe))
                                      (cons __tmp57444 __tmp57441))))
                               (declare (not safe))
                               (cons __tmp57440 '()))))
                        (declare (not safe))
                        (cons __tmp57445 __tmp57439))))
                 (declare (not safe))
                 (cons __tmp57457 __tmp57438)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5471354761_
                                                     _hd5471054751_
                                                     _hd5470754741_)
                                                    (_g5469854720_
                                                     _g5469954724_))))
                                            (_g5469854720_ _g5469954724_))))
                                    (_g5469854720_ _g5469954724_))))
                            (_g5469854720_ _g5469954724_))))
                    (_g5469854720_ _g5469954724_)))))
        (_g5469754789_ _$stx54694_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx54793_)
      (let* ((_g5479754831_
              (lambda (_g5479854827_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5479854827_)))
             (_g5479654942_
              (lambda (_g5479854835_)
                (if (gx#stx-pair? _g5479854835_)
                    (let ((_e5480554838_ (gx#syntax-e _g5479854835_)))
                      (let ((_hd5480654842_
                             (let ()
                               (declare (not safe))
                               (##car _e5480554838_)))
                            (_tl5480754845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5480554838_))))
                        (if (gx#stx-pair? _tl5480754845_)
                            (let ((_e5480854848_ (gx#syntax-e _tl5480754845_)))
                              (let ((_hd5480954852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5480854848_)))
                                    (_tl5481054855_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5480854848_))))
                                (if (gx#stx-pair? _tl5481054855_)
                                    (let ((_e5481154858_
                                           (gx#syntax-e _tl5481054855_)))
                                      (let ((_hd5481254862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5481154858_)))
                                            (_tl5481354865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5481154858_))))
                                        (if (gx#stx-pair? _tl5481354865_)
                                            (let ((_e5481454868_
                                                   (gx#syntax-e
                                                    _tl5481354865_)))
                                              (let ((_hd5481554872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5481454868_)))
                                                    (_tl5481654875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5481454868_))))
                                                (if (gx#stx-pair?
                                                     _tl5481654875_)
                                                    (let ((_e5481754878_
                                                           (gx#syntax-e
                                                            _tl5481654875_)))
                                                      (let ((_hd5481854882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5481754878_)))
                    (_tl5481954885_
                     (let () (declare (not safe)) (##cdr _e5481754878_))))
                (if (gx#stx-pair? _tl5481954885_)
                    (let ((_e5482054888_ (gx#syntax-e _tl5481954885_)))
                      (let ((_hd5482154892_
                             (let ()
                               (declare (not safe))
                               (##car _e5482054888_)))
                            (_tl5482254895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5482054888_))))
                        (if (gx#stx-pair? _tl5482254895_)
                            (let ((_e5482354898_ (gx#syntax-e _tl5482254895_)))
                              (let ((_hd5482454902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5482354898_)))
                                    (_tl5482554905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5482354898_))))
                                (if (gx#stx-null? _tl5482554905_)
                                    ((lambda (_L54908_
                                              _L54910_
                                              _L54911_
                                              _L54912_
                                              _L54913_
                                              _L54914_)
                                       (let ((__tmp57616
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp57458
                                              (let ((__tmp57576
                                                     (let ((__tmp57607
                                                            (let ((__tmp57615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp57608
                           (let ((__tmp57609
                                  (let ((__tmp57614
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp57610
                                         (let ((__tmp57612
                                                (let ((__tmp57613
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L54910_ '()))))
                                                  (declare (not safe))
                                                  (cons _L54912_ __tmp57613)))
                                               (__tmp57611
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L54913_ '()))))
                                           (declare (not safe))
                                           (cons __tmp57612 __tmp57611))))
                                    (declare (not safe))
                                    (cons __tmp57614 __tmp57610))))
                             (declare (not safe))
                             (cons __tmp57609 '()))))
                      (declare (not safe))
                      (cons __tmp57615 __tmp57608)))
                   (__tmp57577
                    (let ((__tmp57601
                           (let ((__tmp57606 (gx#datum->syntax '#f 'size))
                                 (__tmp57602
                                  (let ((__tmp57603
                                         (let ((__tmp57605
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp57604
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L54914_ '()))))
                                           (declare (not safe))
                                           (cons __tmp57605 __tmp57604))))
                                    (declare (not safe))
                                    (cons __tmp57603 '()))))
                             (declare (not safe))
                             (cons __tmp57606 __tmp57602)))
                          (__tmp57578
                           (let ((__tmp57593
                                  (let ((__tmp57600
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp57594
                                         (let ((__tmp57595
                                                (let ((__tmp57599
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp57596
                                                       (let ((__tmp57598
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp57597
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp57598 __tmp57597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57599
                                                        __tmp57596))))
                                           (declare (not safe))
                                           (cons __tmp57595 '()))))
                                    (declare (not safe))
                                    (cons __tmp57600 __tmp57594)))
                                 (__tmp57579
                                  (let ((__tmp57580
                                         (let ((__tmp57592
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp57581
                                                (let ((__tmp57582
                                                       (let ((__tmp57591
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp57583
                                                              (let ((__tmp57585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57590
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp57586
                                    (let ((__tmp57589
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp57587
                                           (let ((__tmp57588
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp57588 '()))))
                                      (declare (not safe))
                                      (cons __tmp57589 __tmp57587))))
                               (declare (not safe))
                               (cons __tmp57590 __tmp57586)))
                            (__tmp57584
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp57585 __tmp57584))))
                 (declare (not safe))
                 (cons __tmp57591 __tmp57583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57582 '()))))
                                           (declare (not safe))
                                           (cons __tmp57592 __tmp57581))))
                                    (declare (not safe))
                                    (cons __tmp57580 '()))))
                             (declare (not safe))
                             (cons __tmp57593 __tmp57579))))
                      (declare (not safe))
                      (cons __tmp57601 __tmp57578))))
               (declare (not safe))
               (cons __tmp57607 __tmp57577)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp57459
                                                     (let ((__tmp57460
                                                            (let ((__tmp57575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp57461
                           (let ((__tmp57574 (gx#datum->syntax '#f 'loop))
                                 (__tmp57462
                                  (let ((__tmp57561
                                         (let ((__tmp57570
                                                (let ((__tmp57573
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp57571
                                                       (let ((__tmp57572
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp57572
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57573
                                                        __tmp57571)))
                                               (__tmp57562
                                                (let ((__tmp57567
                                                       (let ((__tmp57569
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp57568
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp57569 __tmp57568)))
              (__tmp57563
               (let ((__tmp57564
                      (let ((__tmp57566 (gx#datum->syntax '#f 'deleted))
                            (__tmp57565
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp57566 __tmp57565))))
                 (declare (not safe))
                 (cons __tmp57564 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57567
                                                        __tmp57563))))
                                           (declare (not safe))
                                           (cons __tmp57570 __tmp57562)))
                                        (__tmp57463
                                         (let ((__tmp57464
                                                (let ((__tmp57560
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp57465
                                                       (let ((__tmp57552
                                                              (let ((__tmp57559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp57553
                             (let ((__tmp57554
                                    (let ((__tmp57558
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp57555
                                           (let ((__tmp57556
                                                  (let ((__tmp57557
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp57557 '()))))
                                             (declare (not safe))
                                             (cons _L54914_ __tmp57556))))
                                      (declare (not safe))
                                      (cons __tmp57558 __tmp57555))))
                               (declare (not safe))
                               (cons __tmp57554 '()))))
                        (declare (not safe))
                        (cons __tmp57559 __tmp57553)))
                     (__tmp57466
                      (let ((__tmp57467
                             (let ((__tmp57551 (gx#datum->syntax '#f 'cond))
                                   (__tmp57468
                                    (let ((__tmp57542
                                           (let ((__tmp57544
                                                  (let ((__tmp57550
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp57545
                                                         (let ((__tmp57549
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp57546
                        (let ((__tmp57547
                               (let ((__tmp57548
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp57548 '()))))
                          (declare (not safe))
                          (cons __tmp57547 '()))))
                   (declare (not safe))
                   (cons __tmp57549 __tmp57546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57550
                                                          __tmp57545)))
                                                 (__tmp57543
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L54908_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57544 __tmp57543)))
                                          (__tmp57469
                                           (let ((__tmp57509
                                                  (let ((__tmp57535
                                                         (let ((__tmp57541
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp57536
                        (let ((__tmp57540 (gx#datum->syntax '#f 'k))
                              (__tmp57537
                               (let ((__tmp57538
                                      (let ((__tmp57539
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp57539 '()))))
                                 (declare (not safe))
                                 (cons __tmp57538 '()))))
                          (declare (not safe))
                          (cons __tmp57540 __tmp57537))))
                   (declare (not safe))
                   (cons __tmp57541 __tmp57536)))
                (__tmp57510
                 (let ((__tmp57511
                        (let ((__tmp57534 (gx#datum->syntax '#f 'loop))
                              (__tmp57512
                               (let ((__tmp57526
                                      (let ((__tmp57533
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp57527
                                             (let ((__tmp57532
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp57528
                                                    (let ((__tmp57531
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp57529
                                                           (let ((__tmp57530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp57530 '()))))
              (declare (not safe))
              (cons __tmp57531 __tmp57529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57532 __tmp57528))))
                                        (declare (not safe))
                                        (cons __tmp57533 __tmp57527)))
                                     (__tmp57513
                                      (let ((__tmp57521
                                             (let ((__tmp57525
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57522
                                                    (let ((__tmp57524
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp57523
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp57524
                                                            __tmp57523))))
                                               (declare (not safe))
                                               (cons __tmp57525 __tmp57522)))
                                            (__tmp57514
                                             (let ((__tmp57515
                                                    (let ((__tmp57520
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp57516
                                                           (let ((__tmp57519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp57517
                          (let ((__tmp57518 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp57518 '()))))
                     (declare (not safe))
                     (cons __tmp57519 __tmp57517))))
              (declare (not safe))
              (cons __tmp57520 __tmp57516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57515 '()))))
                                        (declare (not safe))
                                        (cons __tmp57521 __tmp57514))))
                                 (declare (not safe))
                                 (cons __tmp57526 __tmp57513))))
                          (declare (not safe))
                          (cons __tmp57534 __tmp57512))))
                   (declare (not safe))
                   (cons __tmp57511 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57535
                                                          __tmp57510)))
                                                 (__tmp57470
                                                  (let ((__tmp57494
                                                         (let ((__tmp57505
                                                                (let ((__tmp57506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57507
                                      (let ((__tmp57508
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp57508 '()))))
                                 (declare (not safe))
                                 (cons _L54910_ __tmp57507))))
                          (declare (not safe))
                          (cons _L54911_ __tmp57506)))
                       (__tmp57495
                        (let ((__tmp57496
                               (let ((__tmp57504
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp57497
                                      (let ((__tmp57498
                                             (let ((__tmp57499
                                                    (let ((__tmp57503
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp57500
                                                           (let ((__tmp57502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp57501
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp57502 __tmp57501))))
              (declare (not safe))
              (cons __tmp57503 __tmp57500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57499 '()))))
                                        (declare (not safe))
                                        (cons _L54914_ __tmp57498))))
                                 (declare (not safe))
                                 (cons __tmp57504 __tmp57497))))
                          (declare (not safe))
                          (cons __tmp57496 '()))))
                   (declare (not safe))
                   (cons __tmp57505 __tmp57495)))
                (__tmp57471
                 (let ((__tmp57472
                        (let ((__tmp57493 (gx#datum->syntax '#f 'else))
                              (__tmp57473
                               (let ((__tmp57474
                                      (let ((__tmp57492
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp57475
                                             (let ((__tmp57484
                                                    (let ((__tmp57491
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp57485
                                                           (let ((__tmp57490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp57486
                          (let ((__tmp57489 (gx#datum->syntax '#f 'i))
                                (__tmp57487
                                 (let ((__tmp57488
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp57488 '()))))
                            (declare (not safe))
                            (cons __tmp57489 __tmp57487))))
                     (declare (not safe))
                     (cons __tmp57490 __tmp57486))))
              (declare (not safe))
              (cons __tmp57491 __tmp57485)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp57476
                                                    (let ((__tmp57479
                                                           (let ((__tmp57483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp57480
                          (let ((__tmp57482 (gx#datum->syntax '#f 'i))
                                (__tmp57481
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp57482 __tmp57481))))
                     (declare (not safe))
                     (cons __tmp57483 __tmp57480)))
                  (__tmp57477
                   (let ((__tmp57478 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp57478 '()))))
              (declare (not safe))
              (cons __tmp57479 __tmp57477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57484 __tmp57476))))
                                        (declare (not safe))
                                        (cons __tmp57492 __tmp57475))))
                                 (declare (not safe))
                                 (cons __tmp57474 '()))))
                          (declare (not safe))
                          (cons __tmp57493 __tmp57473))))
                   (declare (not safe))
                   (cons __tmp57472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57494
                                                          __tmp57471))))
                                             (declare (not safe))
                                             (cons __tmp57509 __tmp57470))))
                                      (declare (not safe))
                                      (cons __tmp57542 __tmp57469))))
                               (declare (not safe))
                               (cons __tmp57551 __tmp57468))))
                        (declare (not safe))
                        (cons __tmp57467 '()))))
                 (declare (not safe))
                 (cons __tmp57552 __tmp57466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57560
                                                        __tmp57465))))
                                           (declare (not safe))
                                           (cons __tmp57464 '()))))
                                    (declare (not safe))
                                    (cons __tmp57561 __tmp57463))))
                             (declare (not safe))
                             (cons __tmp57574 __tmp57462))))
                      (declare (not safe))
                      (cons __tmp57575 __tmp57461))))
               (declare (not safe))
               (cons __tmp57460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57576 __tmp57459))))
                                         (declare (not safe))
                                         (cons __tmp57616 __tmp57458)))
                                     _hd5482454902_
                                     _hd5482154892_
                                     _hd5481854882_
                                     _hd5481554872_
                                     _hd5481254862_
                                     _hd5480954852_)
                                    (_g5479754831_ _g5479854835_))))
                            (_g5479754831_ _g5479854835_))))
                    (_g5479754831_ _g5479854835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5479754831_
                                                     _g5479854835_))))
                                            (_g5479754831_ _g5479854835_))))
                                    (_g5479754831_ _g5479854835_))))
                            (_g5479754831_ _g5479854835_))))
                    (_g5479754831_ _g5479854835_)))))
        (_g5479654942_ _$stx54793_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx54946_)
      (let* ((_g5495054992_
              (lambda (_g5495154988_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5495154988_)))
             (_g5494955131_
              (lambda (_g5495154996_)
                (if (gx#stx-pair? _g5495154996_)
                    (let ((_e5496054999_ (gx#syntax-e _g5495154996_)))
                      (let ((_hd5496155003_
                             (let ()
                               (declare (not safe))
                               (##car _e5496054999_)))
                            (_tl5496255006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5496054999_))))
                        (if (gx#stx-pair? _tl5496255006_)
                            (let ((_e5496355009_ (gx#syntax-e _tl5496255006_)))
                              (let ((_hd5496455013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5496355009_)))
                                    (_tl5496555016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5496355009_))))
                                (if (gx#stx-pair? _tl5496555016_)
                                    (let ((_e5496655019_
                                           (gx#syntax-e _tl5496555016_)))
                                      (let ((_hd5496755023_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5496655019_)))
                                            (_tl5496855026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5496655019_))))
                                        (if (gx#stx-pair? _tl5496855026_)
                                            (let ((_e5496955029_
                                                   (gx#syntax-e
                                                    _tl5496855026_)))
                                              (let ((_hd5497055033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5496955029_)))
                                                    (_tl5497155036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5496955029_))))
                                                (if (gx#stx-pair?
                                                     _tl5497155036_)
                                                    (let ((_e5497255039_
                                                           (gx#syntax-e
                                                            _tl5497155036_)))
                                                      (let ((_hd5497355043_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5497255039_)))
                    (_tl5497455046_
                     (let () (declare (not safe)) (##cdr _e5497255039_))))
                (if (gx#stx-pair? _tl5497455046_)
                    (let ((_e5497555049_ (gx#syntax-e _tl5497455046_)))
                      (let ((_hd5497655053_
                             (let ()
                               (declare (not safe))
                               (##car _e5497555049_)))
                            (_tl5497755056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5497555049_))))
                        (if (gx#stx-pair? _tl5497755056_)
                            (let ((_e5497855059_ (gx#syntax-e _tl5497755056_)))
                              (let ((_hd5497955063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5497855059_)))
                                    (_tl5498055066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5497855059_))))
                                (if (gx#stx-pair? _tl5498055066_)
                                    (let ((_e5498155069_
                                           (gx#syntax-e _tl5498055066_)))
                                      (let ((_hd5498255073_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5498155069_)))
                                            (_tl5498355076_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5498155069_))))
                                        (if (gx#stx-pair? _tl5498355076_)
                                            (let ((_e5498455079_
                                                   (gx#syntax-e
                                                    _tl5498355076_)))
                                              (let ((_hd5498555083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5498455079_)))
                                                    (_tl5498655086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5498455079_))))
                                                (if (gx#stx-null?
                                                     _tl5498655086_)
                                                    ((lambda (_L55089_
                                                              _L55091_
                                                              _L55092_
                                                              _L55093_
                                                              _L55094_
                                                              _L55095_
                                                              _L55096_
                                                              _L55097_)
                                                       (let ((__tmp57833
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp57617
                                                              (let ((__tmp57793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57824
                                    (let ((__tmp57832
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp57825
                                           (let ((__tmp57826
                                                  (let ((__tmp57831
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp57827
                                                         (let ((__tmp57829
                                                                (let ((__tmp57830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L55093_ '()))))
                          (declare (not safe))
                          (cons _L55095_ __tmp57830)))
                       (__tmp57828
                        (let () (declare (not safe)) (cons _L55096_ '()))))
                   (declare (not safe))
                   (cons __tmp57829 __tmp57828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57831
                                                          __tmp57827))))
                                             (declare (not safe))
                                             (cons __tmp57826 '()))))
                                      (declare (not safe))
                                      (cons __tmp57832 __tmp57825)))
                                   (__tmp57794
                                    (let ((__tmp57818
                                           (let ((__tmp57823
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp57819
                                                  (let ((__tmp57820
                                                         (let ((__tmp57822
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp57821
                        (let () (declare (not safe)) (cons _L55097_ '()))))
                   (declare (not safe))
                   (cons __tmp57822 __tmp57821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57820 '()))))
                                             (declare (not safe))
                                             (cons __tmp57823 __tmp57819)))
                                          (__tmp57795
                                           (let ((__tmp57810
                                                  (let ((__tmp57817
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp57811
                                                         (let ((__tmp57812
                                                                (let ((__tmp57816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp57813
                               (let ((__tmp57815 (gx#datum->syntax '#f 'size))
                                     (__tmp57814
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp57815 __tmp57814))))
                          (declare (not safe))
                          (cons __tmp57816 __tmp57813))))
                   (declare (not safe))
                   (cons __tmp57812 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57817
                                                          __tmp57811)))
                                                 (__tmp57796
                                                  (let ((__tmp57797
                                                         (let ((__tmp57809
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp57798
                        (let ((__tmp57799
                               (let ((__tmp57808
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp57800
                                      (let ((__tmp57802
                                             (let ((__tmp57807
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp57803
                                                    (let ((__tmp57806
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp57804
                                                           (let ((__tmp57805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp57805 '()))))
              (declare (not safe))
              (cons __tmp57806 __tmp57804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57807 __tmp57803)))
                                            (__tmp57801
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp57802 __tmp57801))))
                                 (declare (not safe))
                                 (cons __tmp57808 __tmp57800))))
                          (declare (not safe))
                          (cons __tmp57799 '()))))
                   (declare (not safe))
                   (cons __tmp57809 __tmp57798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57797 '()))))
                                             (declare (not safe))
                                             (cons __tmp57810 __tmp57796))))
                                      (declare (not safe))
                                      (cons __tmp57818 __tmp57795))))
                               (declare (not safe))
                               (cons __tmp57824 __tmp57794)))
                            (__tmp57618
                             (let ((__tmp57619
                                    (let ((__tmp57792
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp57620
                                           (let ((__tmp57791
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp57621
                                                  (let ((__tmp57778
                                                         (let ((__tmp57787
                                                                (let ((__tmp57790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp57788
                               (let ((__tmp57789
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp57789 '()))))
                          (declare (not safe))
                          (cons __tmp57790 __tmp57788)))
                       (__tmp57779
                        (let ((__tmp57784
                               (let ((__tmp57786 (gx#datum->syntax '#f 'i))
                                     (__tmp57785
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp57786 __tmp57785)))
                              (__tmp57780
                               (let ((__tmp57781
                                      (let ((__tmp57783
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp57782
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp57783 __tmp57782))))
                                 (declare (not safe))
                                 (cons __tmp57781 '()))))
                          (declare (not safe))
                          (cons __tmp57784 __tmp57780))))
                   (declare (not safe))
                   (cons __tmp57787 __tmp57779)))
                (__tmp57622
                 (let ((__tmp57623
                        (let ((__tmp57777 (gx#datum->syntax '#f 'let))
                              (__tmp57624
                               (let ((__tmp57769
                                      (let ((__tmp57776
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp57770
                                             (let ((__tmp57771
                                                    (let ((__tmp57775
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp57772
                                                           (let ((__tmp57773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57774 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp57774 '()))))
                     (declare (not safe))
                     (cons _L55097_ __tmp57773))))
              (declare (not safe))
              (cons __tmp57775 __tmp57772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57771 '()))))
                                        (declare (not safe))
                                        (cons __tmp57776 __tmp57770)))
                                     (__tmp57625
                                      (let ((__tmp57626
                                             (let ((__tmp57768
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp57627
                                                    (let ((__tmp57709
                                                           (let ((__tmp57761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57767 (gx#datum->syntax '#f 'eq?))
                                (__tmp57762
                                 (let ((__tmp57766 (gx#datum->syntax '#f 'k))
                                       (__tmp57763
                                        (let ((__tmp57764
                                               (let ((__tmp57765
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp57765 '()))))
                                          (declare (not safe))
                                          (cons __tmp57764 '()))))
                                   (declare (not safe))
                                   (cons __tmp57766 __tmp57763))))
                            (declare (not safe))
                            (cons __tmp57767 __tmp57762)))
                         (__tmp57710
                          (let ((__tmp57711
                                 (let ((__tmp57760 (gx#datum->syntax '#f 'if))
                                       (__tmp57712
                                        (let ((__tmp57759
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp57713
                                               (let ((__tmp57737
                                                      (let ((__tmp57758
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp57738
                                                             (let ((__tmp57752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57757
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp57753
                                   (let ((__tmp57754
                                          (let ((__tmp57756
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp57755
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55093_ '()))))
                                            (declare (not safe))
                                            (cons __tmp57756 __tmp57755))))
                                     (declare (not safe))
                                     (cons _L55097_ __tmp57754))))
                              (declare (not safe))
                              (cons __tmp57757 __tmp57753)))
                           (__tmp57739
                            (let ((__tmp57742
                                   (let ((__tmp57751
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp57743
                                          (let ((__tmp57744
                                                 (let ((__tmp57746
                                                        (let ((__tmp57750
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp57747
                                                               (let ((__tmp57749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp57748
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp57749 __tmp57748))))
                  (declare (not safe))
                  (cons __tmp57750 __tmp57747)))
               (__tmp57745 (let () (declare (not safe)) (cons _L55092_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57746
                                                         __tmp57745))))
                                            (declare (not safe))
                                            (cons _L55097_ __tmp57744))))
                                     (declare (not safe))
                                     (cons __tmp57751 __tmp57743)))
                                  (__tmp57740
                                   (let ((__tmp57741
                                          (let ()
                                            (declare (not safe))
                                            (cons _L55089_ '()))))
                                     (declare (not safe))
                                     (cons __tmp57741 '()))))
                              (declare (not safe))
                              (cons __tmp57742 __tmp57740))))
                       (declare (not safe))
                       (cons __tmp57752 __tmp57739))))
                (declare (not safe))
                (cons __tmp57758 __tmp57738)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp57714
                                                      (let ((__tmp57715
                                                             (let ((__tmp57736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp57716
                            (let ((__tmp57730
                                   (let ((__tmp57735
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp57731
                                          (let ((__tmp57732
                                                 (let ((__tmp57734
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp57733
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L55093_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp57734
                                                         __tmp57733))))
                                            (declare (not safe))
                                            (cons _L55097_ __tmp57732))))
                                     (declare (not safe))
                                     (cons __tmp57735 __tmp57731)))
                                  (__tmp57717
                                   (let ((__tmp57720
                                          (let ((__tmp57729
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp57721
                                                 (let ((__tmp57722
                                                        (let ((__tmp57724
                                                               (let ((__tmp57728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp57725
                              (let ((__tmp57727 (gx#datum->syntax '#f 'probe))
                                    (__tmp57726
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp57727 __tmp57726))))
                         (declare (not safe))
                         (cons __tmp57728 __tmp57725)))
                      (__tmp57723
                       (let () (declare (not safe)) (cons _L55092_ '()))))
                  (declare (not safe))
                  (cons __tmp57724 __tmp57723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L55097_
                                                         __tmp57722))))
                                            (declare (not safe))
                                            (cons __tmp57729 __tmp57721)))
                                         (__tmp57718
                                          (let ((__tmp57719
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L55091_ '()))))
                                            (declare (not safe))
                                            (cons __tmp57719 '()))))
                                     (declare (not safe))
                                     (cons __tmp57720 __tmp57718))))
                              (declare (not safe))
                              (cons __tmp57730 __tmp57717))))
                       (declare (not safe))
                       (cons __tmp57736 __tmp57716))))
                (declare (not safe))
                (cons __tmp57715 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57737
                                                       __tmp57714))))
                                          (declare (not safe))
                                          (cons __tmp57759 __tmp57713))))
                                   (declare (not safe))
                                   (cons __tmp57760 __tmp57712))))
                            (declare (not safe))
                            (cons __tmp57711 '()))))
                     (declare (not safe))
                     (cons __tmp57761 __tmp57710)))
                  (__tmp57628
                   (let ((__tmp57676
                          (let ((__tmp57702
                                 (let ((__tmp57708 (gx#datum->syntax '#f 'eq?))
                                       (__tmp57703
                                        (let ((__tmp57707
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp57704
                                               (let ((__tmp57705
                                                      (let ((__tmp57706
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp57706
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57705 '()))))
                                          (declare (not safe))
                                          (cons __tmp57707 __tmp57704))))
                                   (declare (not safe))
                                   (cons __tmp57708 __tmp57703)))
                                (__tmp57677
                                 (let ((__tmp57678
                                        (let ((__tmp57701
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp57679
                                               (let ((__tmp57693
                                                      (let ((__tmp57700
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp57694
                                                             (let ((__tmp57699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp57695
                            (let ((__tmp57698 (gx#datum->syntax '#f 'i))
                                  (__tmp57696
                                   (let ((__tmp57697
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp57697 '()))))
                              (declare (not safe))
                              (cons __tmp57698 __tmp57696))))
                       (declare (not safe))
                       (cons __tmp57699 __tmp57695))))
                (declare (not safe))
                (cons __tmp57700 __tmp57694)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp57680
                                                      (let ((__tmp57688
                                                             (let ((__tmp57692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp57689
                            (let ((__tmp57691 (gx#datum->syntax '#f 'i))
                                  (__tmp57690
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp57691 __tmp57690))))
                       (declare (not safe))
                       (cons __tmp57692 __tmp57689)))
                    (__tmp57681
                     (let ((__tmp57682
                            (let ((__tmp57687 (gx#datum->syntax '#f 'or))
                                  (__tmp57683
                                   (let ((__tmp57686
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp57684
                                          (let ((__tmp57685
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp57685 '()))))
                                     (declare (not safe))
                                     (cons __tmp57686 __tmp57684))))
                              (declare (not safe))
                              (cons __tmp57687 __tmp57683))))
                       (declare (not safe))
                       (cons __tmp57682 '()))))
                (declare (not safe))
                (cons __tmp57688 __tmp57681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57693
                                                       __tmp57680))))
                                          (declare (not safe))
                                          (cons __tmp57701 __tmp57679))))
                                   (declare (not safe))
                                   (cons __tmp57678 '()))))
                            (declare (not safe))
                            (cons __tmp57702 __tmp57677)))
                         (__tmp57629
                          (let ((__tmp57653
                                 (let ((__tmp57672
                                        (let ((__tmp57673
                                               (let ((__tmp57674
                                                      (let ((__tmp57675
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp57675
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L55093_ __tmp57674))))
                                          (declare (not safe))
                                          (cons _L55094_ __tmp57673)))
                                       (__tmp57654
                                        (let ((__tmp57666
                                               (let ((__tmp57671
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp57667
                                                      (let ((__tmp57668
                                                             (let ((__tmp57670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp57669
                            (let () (declare (not safe)) (cons _L55093_ '()))))
                       (declare (not safe))
                       (cons __tmp57670 __tmp57669))))
                (declare (not safe))
                (cons _L55097_ __tmp57668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57671 __tmp57667)))
                                              (__tmp57655
                                               (let ((__tmp57656
                                                      (let ((__tmp57665
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp57657
                                                             (let ((__tmp57658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57660
                                   (let ((__tmp57664
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp57661
                                          (let ((__tmp57663
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp57662
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp57663 __tmp57662))))
                                     (declare (not safe))
                                     (cons __tmp57664 __tmp57661)))
                                  (__tmp57659
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55092_ '()))))
                              (declare (not safe))
                              (cons __tmp57660 __tmp57659))))
                       (declare (not safe))
                       (cons _L55097_ __tmp57658))))
                (declare (not safe))
                (cons __tmp57665 __tmp57657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57656 '()))))
                                          (declare (not safe))
                                          (cons __tmp57666 __tmp57655))))
                                   (declare (not safe))
                                   (cons __tmp57672 __tmp57654)))
                                (__tmp57630
                                 (let ((__tmp57631
                                        (let ((__tmp57652
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp57632
                                               (let ((__tmp57633
                                                      (let ((__tmp57651
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp57634
                                                             (let ((__tmp57643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp57650
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp57644
                                   (let ((__tmp57649
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp57645
                                          (let ((__tmp57648
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp57646
                                                 (let ((__tmp57647
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp57647 '()))))
                                            (declare (not safe))
                                            (cons __tmp57648 __tmp57646))))
                                     (declare (not safe))
                                     (cons __tmp57649 __tmp57645))))
                              (declare (not safe))
                              (cons __tmp57650 __tmp57644)))
                           (__tmp57635
                            (let ((__tmp57638
                                   (let ((__tmp57642
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp57639
                                          (let ((__tmp57641
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp57640
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp57641 __tmp57640))))
                                     (declare (not safe))
                                     (cons __tmp57642 __tmp57639)))
                                  (__tmp57636
                                   (let ((__tmp57637
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp57637 '()))))
                              (declare (not safe))
                              (cons __tmp57638 __tmp57636))))
                       (declare (not safe))
                       (cons __tmp57643 __tmp57635))))
                (declare (not safe))
                (cons __tmp57651 __tmp57634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57633 '()))))
                                          (declare (not safe))
                                          (cons __tmp57652 __tmp57632))))
                                   (declare (not safe))
                                   (cons __tmp57631 '()))))
                            (declare (not safe))
                            (cons __tmp57653 __tmp57630))))
                     (declare (not safe))
                     (cons __tmp57676 __tmp57629))))
              (declare (not safe))
              (cons __tmp57709 __tmp57628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57768 __tmp57627))))
                                        (declare (not safe))
                                        (cons __tmp57626 '()))))
                                 (declare (not safe))
                                 (cons __tmp57769 __tmp57625))))
                          (declare (not safe))
                          (cons __tmp57777 __tmp57624))))
                   (declare (not safe))
                   (cons __tmp57623 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57778
                                                          __tmp57622))))
                                             (declare (not safe))
                                             (cons __tmp57791 __tmp57621))))
                                      (declare (not safe))
                                      (cons __tmp57792 __tmp57620))))
                               (declare (not safe))
                               (cons __tmp57619 '()))))
                        (declare (not safe))
                        (cons __tmp57793 __tmp57618))))
                 (declare (not safe))
                 (cons __tmp57833 __tmp57617)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5498555083_
                                                     _hd5498255073_
                                                     _hd5497955063_
                                                     _hd5497655053_
                                                     _hd5497355043_
                                                     _hd5497055033_
                                                     _hd5496755023_
                                                     _hd5496455013_)
                                                    (_g5495054992_
                                                     _g5495154996_))))
                                            (_g5495054992_ _g5495154996_))))
                                    (_g5495054992_ _g5495154996_))))
                            (_g5495054992_ _g5495154996_))))
                    (_g5495054992_ _g5495154996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5495054992_
                                                     _g5495154996_))))
                                            (_g5495054992_ _g5495154996_))))
                                    (_g5495054992_ _g5495154996_))))
                            (_g5495054992_ _g5495154996_))))
                    (_g5495054992_ _g5495154996_)))))
        (_g5494955131_ _$stx54946_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx55135_)
      (let* ((_g5513955185_
              (lambda (_g5514055181_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5514055181_)))
             (_g5513855338_
              (lambda (_g5514055189_)
                (if (gx#stx-pair? _g5514055189_)
                    (let ((_e5515055192_ (gx#syntax-e _g5514055189_)))
                      (let ((_hd5515155196_
                             (let ()
                               (declare (not safe))
                               (##car _e5515055192_)))
                            (_tl5515255199_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5515055192_))))
                        (if (gx#stx-pair? _tl5515255199_)
                            (let ((_e5515355202_ (gx#syntax-e _tl5515255199_)))
                              (let ((_hd5515455206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5515355202_)))
                                    (_tl5515555209_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5515355202_))))
                                (if (gx#stx-pair? _tl5515555209_)
                                    (let ((_e5515655212_
                                           (gx#syntax-e _tl5515555209_)))
                                      (let ((_hd5515755216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5515655212_)))
                                            (_tl5515855219_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5515655212_))))
                                        (if (gx#stx-pair? _tl5515855219_)
                                            (let ((_e5515955222_
                                                   (gx#syntax-e
                                                    _tl5515855219_)))
                                              (let ((_hd5516055226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5515955222_)))
                                                    (_tl5516155229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5515955222_))))
                                                (if (gx#stx-pair?
                                                     _tl5516155229_)
                                                    (let ((_e5516255232_
                                                           (gx#syntax-e
                                                            _tl5516155229_)))
                                                      (let ((_hd5516355236_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5516255232_)))
                    (_tl5516455239_
                     (let () (declare (not safe)) (##cdr _e5516255232_))))
                (if (gx#stx-pair? _tl5516455239_)
                    (let ((_e5516555242_ (gx#syntax-e _tl5516455239_)))
                      (let ((_hd5516655246_
                             (let ()
                               (declare (not safe))
                               (##car _e5516555242_)))
                            (_tl5516755249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5516555242_))))
                        (if (gx#stx-pair? _tl5516755249_)
                            (let ((_e5516855252_ (gx#syntax-e _tl5516755249_)))
                              (let ((_hd5516955256_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5516855252_)))
                                    (_tl5517055259_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5516855252_))))
                                (if (gx#stx-pair? _tl5517055259_)
                                    (let ((_e5517155262_
                                           (gx#syntax-e _tl5517055259_)))
                                      (let ((_hd5517255266_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5517155262_)))
                                            (_tl5517355269_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5517155262_))))
                                        (if (gx#stx-pair? _tl5517355269_)
                                            (let ((_e5517455272_
                                                   (gx#syntax-e
                                                    _tl5517355269_)))
                                              (let ((_hd5517555276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5517455272_)))
                                                    (_tl5517655279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5517455272_))))
                                                (if (gx#stx-pair?
                                                     _tl5517655279_)
                                                    (let ((_e5517755282_
                                                           (gx#syntax-e
                                                            _tl5517655279_)))
                                                      (let ((_hd5517855286_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5517755282_)))
                    (_tl5517955289_
                     (let () (declare (not safe)) (##cdr _e5517755282_))))
                (if (gx#stx-null? _tl5517955289_)
                    ((lambda (_L55292_
                              _L55294_
                              _L55295_
                              _L55296_
                              _L55297_
                              _L55298_
                              _L55299_
                              _L55300_
                              _L55301_)
                       (let ((__tmp58065 (gx#datum->syntax '#f 'let*))
                             (__tmp57834
                              (let ((__tmp58025
                                     (let ((__tmp58056
                                            (let ((__tmp58064
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp58057
                                                   (let ((__tmp58058
                                                          (let ((__tmp58063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp58059
                         (let ((__tmp58061
                                (let ((__tmp58062
                                       (let ()
                                         (declare (not safe))
                                         (cons _L55297_ '()))))
                                  (declare (not safe))
                                  (cons _L55299_ __tmp58062)))
                               (__tmp58060
                                (let ()
                                  (declare (not safe))
                                  (cons _L55300_ '()))))
                           (declare (not safe))
                           (cons __tmp58061 __tmp58060))))
                    (declare (not safe))
                    (cons __tmp58063 __tmp58059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58058 '()))))
                                              (declare (not safe))
                                              (cons __tmp58064 __tmp58057)))
                                           (__tmp58026
                                            (let ((__tmp58050
                                                   (let ((__tmp58055
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp58051
                                                          (let ((__tmp58052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58054
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp58053
                                (let ()
                                  (declare (not safe))
                                  (cons _L55301_ '()))))
                           (declare (not safe))
                           (cons __tmp58054 __tmp58053))))
                    (declare (not safe))
                    (cons __tmp58052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58055
                                                           __tmp58051)))
                                                  (__tmp58027
                                                   (let ((__tmp58042
                                                          (let ((__tmp58049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp58043
                         (let ((__tmp58044
                                (let ((__tmp58048
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp58045
                                       (let ((__tmp58047
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp58046
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp58047 __tmp58046))))
                                  (declare (not safe))
                                  (cons __tmp58048 __tmp58045))))
                           (declare (not safe))
                           (cons __tmp58044 '()))))
                    (declare (not safe))
                    (cons __tmp58049 __tmp58043)))
                 (__tmp58028
                  (let ((__tmp58029
                         (let ((__tmp58041 (gx#datum->syntax '#f 'start))
                               (__tmp58030
                                (let ((__tmp58031
                                       (let ((__tmp58040
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp58032
                                              (let ((__tmp58034
                                                     (let ((__tmp58039
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp58035
                                                            (let ((__tmp58038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58036
                           (let ((__tmp58037 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp58037 '()))))
                      (declare (not safe))
                      (cons __tmp58038 __tmp58036))))
               (declare (not safe))
               (cons __tmp58039 __tmp58035)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp58034 __tmp58033))))
                                         (declare (not safe))
                                         (cons __tmp58040 __tmp58032))))
                                  (declare (not safe))
                                  (cons __tmp58031 '()))))
                           (declare (not safe))
                           (cons __tmp58041 __tmp58030))))
                    (declare (not safe))
                    (cons __tmp58029 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58042
                                                           __tmp58028))))
                                              (declare (not safe))
                                              (cons __tmp58050 __tmp58027))))
                                       (declare (not safe))
                                       (cons __tmp58056 __tmp58026)))
                                    (__tmp57835
                                     (let ((__tmp57836
                                            (let ((__tmp58024
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp57837
                                                   (let ((__tmp58023
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp57838
                                                          (let ((__tmp58010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp58019
                                (let ((__tmp58022
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp58020
                                       (let ((__tmp58021
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp58021 '()))))
                                  (declare (not safe))
                                  (cons __tmp58022 __tmp58020)))
                               (__tmp58011
                                (let ((__tmp58016
                                       (let ((__tmp58018
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp58017
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp58018 __tmp58017)))
                                      (__tmp58012
                                       (let ((__tmp58013
                                              (let ((__tmp58015
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp58014
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp58015 __tmp58014))))
                                         (declare (not safe))
                                         (cons __tmp58013 '()))))
                                  (declare (not safe))
                                  (cons __tmp58016 __tmp58012))))
                           (declare (not safe))
                           (cons __tmp58019 __tmp58011)))
                        (__tmp57839
                         (let ((__tmp57840
                                (let ((__tmp58009 (gx#datum->syntax '#f 'let))
                                      (__tmp57841
                                       (let ((__tmp58001
                                              (let ((__tmp58008
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp58002
                                                     (let ((__tmp58003
                                                            (let ((__tmp58007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp58004
                           (let ((__tmp58005
                                  (let ((__tmp58006
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp58006 '()))))
                             (declare (not safe))
                             (cons _L55301_ __tmp58005))))
                      (declare (not safe))
                      (cons __tmp58007 __tmp58004))))
               (declare (not safe))
               (cons __tmp58003 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58008 __tmp58002)))
                                             (__tmp57842
                                              (let ((__tmp57843
                                                     (let ((__tmp58000
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp57844
                                                            (let ((__tmp57937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57993
                                  (let ((__tmp57999
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp57994
                                         (let ((__tmp57998
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp57995
                                                (let ((__tmp57996
                                                       (let ((__tmp57997
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp57997
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57996 '()))))
                                           (declare (not safe))
                                           (cons __tmp57998 __tmp57995))))
                                    (declare (not safe))
                                    (cons __tmp57999 __tmp57994)))
                                 (__tmp57938
                                  (let ((__tmp57939
                                         (let ((__tmp57992
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp57940
                                                (let ((__tmp57991
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp57941
                                                       (let ((__tmp57967
                                                              (let ((__tmp57990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp57968
                             (let ((__tmp57984
                                    (let ((__tmp57989
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp57985
                                           (let ((__tmp57986
                                                  (let ((__tmp57988
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp57987
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L55297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57988
                                                          __tmp57987))))
                                             (declare (not safe))
                                             (cons _L55301_ __tmp57986))))
                                      (declare (not safe))
                                      (cons __tmp57989 __tmp57985)))
                                   (__tmp57969
                                    (let ((__tmp57972
                                           (let ((__tmp57983
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp57973
                                                  (let ((__tmp57974
                                                         (let ((__tmp57978
                                                                (let ((__tmp57982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp57979
                               (let ((__tmp57981
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp57980
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp57981 __tmp57980))))
                          (declare (not safe))
                          (cons __tmp57982 __tmp57979)))
                       (__tmp57975
                        (let ((__tmp57976
                               (let ((__tmp57977
                                      (let ()
                                        (declare (not safe))
                                        (cons _L55295_ '()))))
                                 (declare (not safe))
                                 (cons _L55296_ __tmp57977))))
                          (declare (not safe))
                          (cons __tmp57976 '()))))
                   (declare (not safe))
                   (cons __tmp57978 __tmp57975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55301_
                                                          __tmp57974))))
                                             (declare (not safe))
                                             (cons __tmp57983 __tmp57973)))
                                          (__tmp57970
                                           (let ((__tmp57971
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L55292_ '()))))
                                             (declare (not safe))
                                             (cons __tmp57971 '()))))
                                      (declare (not safe))
                                      (cons __tmp57972 __tmp57970))))
                               (declare (not safe))
                               (cons __tmp57984 __tmp57969))))
                        (declare (not safe))
                        (cons __tmp57990 __tmp57968)))
                     (__tmp57942
                      (let ((__tmp57943
                             (let ((__tmp57966 (gx#datum->syntax '#f 'begin))
                                   (__tmp57944
                                    (let ((__tmp57960
                                           (let ((__tmp57965
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp57961
                                                  (let ((__tmp57962
                                                         (let ((__tmp57964
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp57963
                        (let () (declare (not safe)) (cons _L55297_ '()))))
                   (declare (not safe))
                   (cons __tmp57964 __tmp57963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55301_
                                                          __tmp57962))))
                                             (declare (not safe))
                                             (cons __tmp57965 __tmp57961)))
                                          (__tmp57945
                                           (let ((__tmp57948
                                                  (let ((__tmp57959
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp57949
                                                         (let ((__tmp57950
                                                                (let ((__tmp57954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp57958 (gx#datum->syntax '#f 'fx+))
                                     (__tmp57955
                                      (let ((__tmp57957
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp57956
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp57957 __tmp57956))))
                                 (declare (not safe))
                                 (cons __tmp57958 __tmp57955)))
                              (__tmp57951
                               (let ((__tmp57952
                                      (let ((__tmp57953
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55295_ '()))))
                                        (declare (not safe))
                                        (cons _L55296_ __tmp57953))))
                                 (declare (not safe))
                                 (cons __tmp57952 '()))))
                          (declare (not safe))
                          (cons __tmp57954 __tmp57951))))
                   (declare (not safe))
                   (cons _L55301_ __tmp57950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57959
                                                          __tmp57949)))
                                                 (__tmp57946
                                                  (let ((__tmp57947
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L55294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57947 '()))))
                                             (declare (not safe))
                                             (cons __tmp57948 __tmp57946))))
                                      (declare (not safe))
                                      (cons __tmp57960 __tmp57945))))
                               (declare (not safe))
                               (cons __tmp57966 __tmp57944))))
                        (declare (not safe))
                        (cons __tmp57943 '()))))
                 (declare (not safe))
                 (cons __tmp57967 __tmp57942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57991
                                                        __tmp57941))))
                                           (declare (not safe))
                                           (cons __tmp57992 __tmp57940))))
                                    (declare (not safe))
                                    (cons __tmp57939 '()))))
                             (declare (not safe))
                             (cons __tmp57993 __tmp57938)))
                          (__tmp57845
                           (let ((__tmp57904
                                  (let ((__tmp57930
                                         (let ((__tmp57936
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp57931
                                                (let ((__tmp57935
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp57932
                                                       (let ((__tmp57933
                                                              (let ((__tmp57934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp57934 '()))))
                 (declare (not safe))
                 (cons __tmp57933 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57935
                                                        __tmp57932))))
                                           (declare (not safe))
                                           (cons __tmp57936 __tmp57931)))
                                        (__tmp57905
                                         (let ((__tmp57906
                                                (let ((__tmp57929
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp57907
                                                       (let ((__tmp57921
                                                              (let ((__tmp57928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp57922
                             (let ((__tmp57927 (gx#datum->syntax '#f 'start))
                                   (__tmp57923
                                    (let ((__tmp57926
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp57924
                                           (let ((__tmp57925
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp57925 '()))))
                                      (declare (not safe))
                                      (cons __tmp57926 __tmp57924))))
                               (declare (not safe))
                               (cons __tmp57927 __tmp57923))))
                        (declare (not safe))
                        (cons __tmp57928 __tmp57922)))
                     (__tmp57908
                      (let ((__tmp57916
                             (let ((__tmp57920 (gx#datum->syntax '#f 'fx+))
                                   (__tmp57917
                                    (let ((__tmp57919
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp57918
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp57919 __tmp57918))))
                               (declare (not safe))
                               (cons __tmp57920 __tmp57917)))
                            (__tmp57909
                             (let ((__tmp57910
                                    (let ((__tmp57915
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp57911
                                           (let ((__tmp57914
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp57912
                                                  (let ((__tmp57913
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp57913 '()))))
                                             (declare (not safe))
                                             (cons __tmp57914 __tmp57912))))
                                      (declare (not safe))
                                      (cons __tmp57915 __tmp57911))))
                               (declare (not safe))
                               (cons __tmp57910 '()))))
                        (declare (not safe))
                        (cons __tmp57916 __tmp57909))))
                 (declare (not safe))
                 (cons __tmp57921 __tmp57908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57929
                                                        __tmp57907))))
                                           (declare (not safe))
                                           (cons __tmp57906 '()))))
                                    (declare (not safe))
                                    (cons __tmp57930 __tmp57905)))
                                 (__tmp57846
                                  (let ((__tmp57870
                                         (let ((__tmp57900
                                                (let ((__tmp57901
                                                       (let ((__tmp57902
                                                              (let ((__tmp57903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp57903 '()))))
                 (declare (not safe))
                 (cons _L55297_ __tmp57902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L55298_ __tmp57901)))
                                               (__tmp57871
                                                (let ((__tmp57894
                                                       (let ((__tmp57899
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp57895
                                                              (let ((__tmp57896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp57898 (gx#datum->syntax '#f 'probe))
                                   (__tmp57897
                                    (let ()
                                      (declare (not safe))
                                      (cons _L55297_ '()))))
                               (declare (not safe))
                               (cons __tmp57898 __tmp57897))))
                        (declare (not safe))
                        (cons _L55301_ __tmp57896))))
                 (declare (not safe))
                 (cons __tmp57899 __tmp57895)))
              (__tmp57872
               (let ((__tmp57873
                      (let ((__tmp57893 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp57874
                             (let ((__tmp57875
                                    (let ((__tmp57888
                                           (let ((__tmp57892
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57889
                                                  (let ((__tmp57891
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp57890
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp57891
                                                          __tmp57890))))
                                             (declare (not safe))
                                             (cons __tmp57892 __tmp57889)))
                                          (__tmp57876
                                           (let ((__tmp57877
                                                  (let ((__tmp57878
                                                         (let ((__tmp57879
                                                                (let ((__tmp57887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp57880
                               (let ((__tmp57881
                                      (let ((__tmp57882
                                             (let ((__tmp57886
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp57883
                                                    (let ((__tmp57885
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp57884
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp57885
                                                            __tmp57884))))
                                               (declare (not safe))
                                               (cons __tmp57886 __tmp57883))))
                                        (declare (not safe))
                                        (cons __tmp57882 '()))))
                                 (declare (not safe))
                                 (cons _L55301_ __tmp57881))))
                          (declare (not safe))
                          (cons __tmp57887 __tmp57880))))
                   (declare (not safe))
                   (cons __tmp57879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L55296_
                                                          __tmp57878))))
                                             (declare (not safe))
                                             (cons __tmp57877 '()))))
                                      (declare (not safe))
                                      (cons __tmp57888 __tmp57876))))
                               (declare (not safe))
                               (cons _L55301_ __tmp57875))))
                        (declare (not safe))
                        (cons __tmp57893 __tmp57874))))
                 (declare (not safe))
                 (cons __tmp57873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57894
                                                        __tmp57872))))
                                           (declare (not safe))
                                           (cons __tmp57900 __tmp57871)))
                                        (__tmp57847
                                         (let ((__tmp57848
                                                (let ((__tmp57869
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp57849
                                                       (let ((__tmp57850
                                                              (let ((__tmp57868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp57851
                             (let ((__tmp57860
                                    (let ((__tmp57867
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp57861
                                           (let ((__tmp57866
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp57862
                                                  (let ((__tmp57865
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp57863
                                                         (let ((__tmp57864
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp57864 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57865
                                                          __tmp57863))))
                                             (declare (not safe))
                                             (cons __tmp57866 __tmp57862))))
                                      (declare (not safe))
                                      (cons __tmp57867 __tmp57861)))
                                   (__tmp57852
                                    (let ((__tmp57855
                                           (let ((__tmp57859
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp57856
                                                  (let ((__tmp57858
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp57857
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp57858
                                                          __tmp57857))))
                                             (declare (not safe))
                                             (cons __tmp57859 __tmp57856)))
                                          (__tmp57853
                                           (let ((__tmp57854
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp57854 '()))))
                                      (declare (not safe))
                                      (cons __tmp57855 __tmp57853))))
                               (declare (not safe))
                               (cons __tmp57860 __tmp57852))))
                        (declare (not safe))
                        (cons __tmp57868 __tmp57851))))
                 (declare (not safe))
                 (cons __tmp57850 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57869
                                                        __tmp57849))))
                                           (declare (not safe))
                                           (cons __tmp57848 '()))))
                                    (declare (not safe))
                                    (cons __tmp57870 __tmp57847))))
                             (declare (not safe))
                             (cons __tmp57904 __tmp57846))))
                      (declare (not safe))
                      (cons __tmp57937 __tmp57845))))
               (declare (not safe))
               (cons __tmp58000 __tmp57844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57843 '()))))
                                         (declare (not safe))
                                         (cons __tmp58001 __tmp57842))))
                                  (declare (not safe))
                                  (cons __tmp58009 __tmp57841))))
                           (declare (not safe))
                           (cons __tmp57840 '()))))
                    (declare (not safe))
                    (cons __tmp58010 __tmp57839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58023
                                                           __tmp57838))))
                                              (declare (not safe))
                                              (cons __tmp58024 __tmp57837))))
                                       (declare (not safe))
                                       (cons __tmp57836 '()))))
                                (declare (not safe))
                                (cons __tmp58025 __tmp57835))))
                         (declare (not safe))
                         (cons __tmp58065 __tmp57834)))
                     _hd5517855286_
                     _hd5517555276_
                     _hd5517255266_
                     _hd5516955256_
                     _hd5516655246_
                     _hd5516355236_
                     _hd5516055226_
                     _hd5515755216_
                     _hd5515455206_)
                    (_g5513955185_ _g5514055189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5513955185_
                                                     _g5514055189_))))
                                            (_g5513955185_ _g5514055189_))))
                                    (_g5513955185_ _g5514055189_))))
                            (_g5513955185_ _g5514055189_))))
                    (_g5513955185_ _g5514055189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5513955185_
                                                     _g5514055189_))))
                                            (_g5513955185_ _g5514055189_))))
                                    (_g5513955185_ _g5514055189_))))
                            (_g5513955185_ _g5514055189_))))
                    (_g5513955185_ _g5514055189_)))))
        (_g5513855338_ _$stx55135_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx55342_)
      (let* ((_g5534655380_
              (lambda (_g5534755376_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5534755376_)))
             (_g5534555491_
              (lambda (_g5534755384_)
                (if (gx#stx-pair? _g5534755384_)
                    (let ((_e5535455387_ (gx#syntax-e _g5534755384_)))
                      (let ((_hd5535555391_
                             (let ()
                               (declare (not safe))
                               (##car _e5535455387_)))
                            (_tl5535655394_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5535455387_))))
                        (if (gx#stx-pair? _tl5535655394_)
                            (let ((_e5535755397_ (gx#syntax-e _tl5535655394_)))
                              (let ((_hd5535855401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5535755397_)))
                                    (_tl5535955404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5535755397_))))
                                (if (gx#stx-pair? _tl5535955404_)
                                    (let ((_e5536055407_
                                           (gx#syntax-e _tl5535955404_)))
                                      (let ((_hd5536155411_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5536055407_)))
                                            (_tl5536255414_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5536055407_))))
                                        (if (gx#stx-pair? _tl5536255414_)
                                            (let ((_e5536355417_
                                                   (gx#syntax-e
                                                    _tl5536255414_)))
                                              (let ((_hd5536455421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5536355417_)))
                                                    (_tl5536555424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5536355417_))))
                                                (if (gx#stx-pair?
                                                     _tl5536555424_)
                                                    (let ((_e5536655427_
                                                           (gx#syntax-e
                                                            _tl5536555424_)))
                                                      (let ((_hd5536755431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5536655427_)))
                    (_tl5536855434_
                     (let () (declare (not safe)) (##cdr _e5536655427_))))
                (if (gx#stx-pair? _tl5536855434_)
                    (let ((_e5536955437_ (gx#syntax-e _tl5536855434_)))
                      (let ((_hd5537055441_
                             (let ()
                               (declare (not safe))
                               (##car _e5536955437_)))
                            (_tl5537155444_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5536955437_))))
                        (if (gx#stx-pair? _tl5537155444_)
                            (let ((_e5537255447_ (gx#syntax-e _tl5537155444_)))
                              (let ((_hd5537355451_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5537255447_)))
                                    (_tl5537455454_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5537255447_))))
                                (if (gx#stx-null? _tl5537455454_)
                                    ((lambda (_L55457_
                                              _L55459_
                                              _L55460_
                                              _L55461_
                                              _L55462_
                                              _L55463_)
                                       (let ((__tmp58227
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp58066
                                              (let ((__tmp58187
                                                     (let ((__tmp58218
                                                            (let ((__tmp58226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp58219
                           (let ((__tmp58220
                                  (let ((__tmp58225
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp58221
                                         (let ((__tmp58223
                                                (let ((__tmp58224
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L55459_ '()))))
                                                  (declare (not safe))
                                                  (cons _L55461_ __tmp58224)))
                                               (__tmp58222
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55462_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58223 __tmp58222))))
                                    (declare (not safe))
                                    (cons __tmp58225 __tmp58221))))
                             (declare (not safe))
                             (cons __tmp58220 '()))))
                      (declare (not safe))
                      (cons __tmp58226 __tmp58219)))
                   (__tmp58188
                    (let ((__tmp58212
                           (let ((__tmp58217 (gx#datum->syntax '#f 'size))
                                 (__tmp58213
                                  (let ((__tmp58214
                                         (let ((__tmp58216
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp58215
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L55463_ '()))))
                                           (declare (not safe))
                                           (cons __tmp58216 __tmp58215))))
                                    (declare (not safe))
                                    (cons __tmp58214 '()))))
                             (declare (not safe))
                             (cons __tmp58217 __tmp58213)))
                          (__tmp58189
                           (let ((__tmp58204
                                  (let ((__tmp58211
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp58205
                                         (let ((__tmp58206
                                                (let ((__tmp58210
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp58207
                                                       (let ((__tmp58209
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp58208
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp58209 __tmp58208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58210
                                                        __tmp58207))))
                                           (declare (not safe))
                                           (cons __tmp58206 '()))))
                                    (declare (not safe))
                                    (cons __tmp58211 __tmp58205)))
                                 (__tmp58190
                                  (let ((__tmp58191
                                         (let ((__tmp58203
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp58192
                                                (let ((__tmp58193
                                                       (let ((__tmp58202
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp58194
                                                              (let ((__tmp58196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp58201
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp58197
                                    (let ((__tmp58200
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp58198
                                           (let ((__tmp58199
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp58199 '()))))
                                      (declare (not safe))
                                      (cons __tmp58200 __tmp58198))))
                               (declare (not safe))
                               (cons __tmp58201 __tmp58197)))
                            (__tmp58195
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp58196 __tmp58195))))
                 (declare (not safe))
                 (cons __tmp58202 __tmp58194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58193 '()))))
                                           (declare (not safe))
                                           (cons __tmp58203 __tmp58192))))
                                    (declare (not safe))
                                    (cons __tmp58191 '()))))
                             (declare (not safe))
                             (cons __tmp58204 __tmp58190))))
                      (declare (not safe))
                      (cons __tmp58212 __tmp58189))))
               (declare (not safe))
               (cons __tmp58218 __tmp58188)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp58067
                                                     (let ((__tmp58068
                                                            (let ((__tmp58186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp58069
                           (let ((__tmp58185 (gx#datum->syntax '#f 'loop))
                                 (__tmp58070
                                  (let ((__tmp58176
                                         (let ((__tmp58181
                                                (let ((__tmp58184
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp58182
                                                       (let ((__tmp58183
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp58183
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58184
                                                        __tmp58182)))
                                               (__tmp58177
                                                (let ((__tmp58178
                                                       (let ((__tmp58180
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp58179
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp58180 __tmp58179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58178 '()))))
                                           (declare (not safe))
                                           (cons __tmp58181 __tmp58177)))
                                        (__tmp58071
                                         (let ((__tmp58072
                                                (let ((__tmp58175
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp58073
                                                       (let ((__tmp58167
                                                              (let ((__tmp58174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp58168
                             (let ((__tmp58169
                                    (let ((__tmp58173
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp58170
                                           (let ((__tmp58171
                                                  (let ((__tmp58172
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp58172 '()))))
                                             (declare (not safe))
                                             (cons _L55463_ __tmp58171))))
                                      (declare (not safe))
                                      (cons __tmp58173 __tmp58170))))
                               (declare (not safe))
                               (cons __tmp58169 '()))))
                        (declare (not safe))
                        (cons __tmp58174 __tmp58168)))
                     (__tmp58074
                      (let ((__tmp58075
                             (let ((__tmp58166 (gx#datum->syntax '#f 'cond))
                                   (__tmp58076
                                    (let ((__tmp58155
                                           (let ((__tmp58159
                                                  (let ((__tmp58165
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp58160
                                                         (let ((__tmp58164
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp58161
                        (let ((__tmp58162
                               (let ((__tmp58163
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp58163 '()))))
                          (declare (not safe))
                          (cons __tmp58162 '()))))
                   (declare (not safe))
                   (cons __tmp58164 __tmp58161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58165
                                                          __tmp58160)))
                                                 (__tmp58156
                                                  (let ((__tmp58157
                                                         (let ((__tmp58158
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp58158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58157 '()))))
                                             (declare (not safe))
                                             (cons __tmp58159 __tmp58156)))
                                          (__tmp58077
                                           (let ((__tmp58129
                                                  (let ((__tmp58148
                                                         (let ((__tmp58154
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp58149
                        (let ((__tmp58153 (gx#datum->syntax '#f 'k))
                              (__tmp58150
                               (let ((__tmp58151
                                      (let ((__tmp58152
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp58152 '()))))
                                 (declare (not safe))
                                 (cons __tmp58151 '()))))
                          (declare (not safe))
                          (cons __tmp58153 __tmp58150))))
                   (declare (not safe))
                   (cons __tmp58154 __tmp58149)))
                (__tmp58130
                 (let ((__tmp58131
                        (let ((__tmp58147 (gx#datum->syntax '#f 'loop))
                              (__tmp58132
                               (let ((__tmp58139
                                      (let ((__tmp58146
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp58140
                                             (let ((__tmp58145
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp58141
                                                    (let ((__tmp58144
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58142
                                                           (let ((__tmp58143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp58143 '()))))
              (declare (not safe))
              (cons __tmp58144 __tmp58142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58145 __tmp58141))))
                                        (declare (not safe))
                                        (cons __tmp58146 __tmp58140)))
                                     (__tmp58133
                                      (let ((__tmp58134
                                             (let ((__tmp58138
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp58135
                                                    (let ((__tmp58137
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp58136
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp58137
                                                            __tmp58136))))
                                               (declare (not safe))
                                               (cons __tmp58138 __tmp58135))))
                                        (declare (not safe))
                                        (cons __tmp58134 '()))))
                                 (declare (not safe))
                                 (cons __tmp58139 __tmp58133))))
                          (declare (not safe))
                          (cons __tmp58147 __tmp58132))))
                   (declare (not safe))
                   (cons __tmp58131 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58148
                                                          __tmp58130)))
                                                 (__tmp58078
                                                  (let ((__tmp58100
                                                         (let ((__tmp58125
                                                                (let ((__tmp58126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp58127
                                      (let ((__tmp58128
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp58128 '()))))
                                 (declare (not safe))
                                 (cons _L55459_ __tmp58127))))
                          (declare (not safe))
                          (cons _L55460_ __tmp58126)))
                       (__tmp58101
                        (let ((__tmp58117
                               (let ((__tmp58124
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp58118
                                      (let ((__tmp58119
                                             (let ((__tmp58123
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp58120
                                                    (let ((__tmp58121
                                                           (let ((__tmp58122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp58122 '()))))
              (declare (not safe))
              (cons __tmp58121 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58123 __tmp58120))))
                                        (declare (not safe))
                                        (cons _L55463_ __tmp58119))))
                                 (declare (not safe))
                                 (cons __tmp58124 __tmp58118)))
                              (__tmp58102
                               (let ((__tmp58105
                                      (let ((__tmp58116
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp58106
                                             (let ((__tmp58107
                                                    (let ((__tmp58111
                                                           (let ((__tmp58115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58112
                          (let ((__tmp58114 (gx#datum->syntax '#f 'probe))
                                (__tmp58113
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58114 __tmp58113))))
                     (declare (not safe))
                     (cons __tmp58115 __tmp58112)))
                  (__tmp58108
                   (let ((__tmp58109
                          (let ((__tmp58110
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp58110 '()))))
                     (declare (not safe))
                     (cons __tmp58109 '()))))
              (declare (not safe))
              (cons __tmp58111 __tmp58108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L55463_ __tmp58107))))
                                        (declare (not safe))
                                        (cons __tmp58116 __tmp58106)))
                                     (__tmp58103
                                      (let ((__tmp58104
                                             (let ()
                                               (declare (not safe))
                                               (cons _L55457_ '()))))
                                        (declare (not safe))
                                        (cons __tmp58104 '()))))
                                 (declare (not safe))
                                 (cons __tmp58105 __tmp58103))))
                          (declare (not safe))
                          (cons __tmp58117 __tmp58102))))
                   (declare (not safe))
                   (cons __tmp58125 __tmp58101)))
                (__tmp58079
                 (let ((__tmp58080
                        (let ((__tmp58099 (gx#datum->syntax '#f 'else))
                              (__tmp58081
                               (let ((__tmp58082
                                      (let ((__tmp58098
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp58083
                                             (let ((__tmp58090
                                                    (let ((__tmp58097
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp58091
                                                           (let ((__tmp58096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp58092
                          (let ((__tmp58095 (gx#datum->syntax '#f 'i))
                                (__tmp58093
                                 (let ((__tmp58094
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp58094 '()))))
                            (declare (not safe))
                            (cons __tmp58095 __tmp58093))))
                     (declare (not safe))
                     (cons __tmp58096 __tmp58092))))
              (declare (not safe))
              (cons __tmp58097 __tmp58091)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp58084
                                                    (let ((__tmp58085
                                                           (let ((__tmp58089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp58086
                          (let ((__tmp58088 (gx#datum->syntax '#f 'i))
                                (__tmp58087
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp58088 __tmp58087))))
                     (declare (not safe))
                     (cons __tmp58089 __tmp58086))))
              (declare (not safe))
              (cons __tmp58085 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp58090 __tmp58084))))
                                        (declare (not safe))
                                        (cons __tmp58098 __tmp58083))))
                                 (declare (not safe))
                                 (cons __tmp58082 '()))))
                          (declare (not safe))
                          (cons __tmp58099 __tmp58081))))
                   (declare (not safe))
                   (cons __tmp58080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp58100
                                                          __tmp58079))))
                                             (declare (not safe))
                                             (cons __tmp58129 __tmp58078))))
                                      (declare (not safe))
                                      (cons __tmp58155 __tmp58077))))
                               (declare (not safe))
                               (cons __tmp58166 __tmp58076))))
                        (declare (not safe))
                        (cons __tmp58075 '()))))
                 (declare (not safe))
                 (cons __tmp58167 __tmp58074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58175
                                                        __tmp58073))))
                                           (declare (not safe))
                                           (cons __tmp58072 '()))))
                                    (declare (not safe))
                                    (cons __tmp58176 __tmp58071))))
                             (declare (not safe))
                             (cons __tmp58185 __tmp58070))))
                      (declare (not safe))
                      (cons __tmp58186 __tmp58069))))
               (declare (not safe))
               (cons __tmp58068 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58187 __tmp58067))))
                                         (declare (not safe))
                                         (cons __tmp58227 __tmp58066)))
                                     _hd5537355451_
                                     _hd5537055441_
                                     _hd5536755431_
                                     _hd5536455421_
                                     _hd5536155411_
                                     _hd5535855401_)
                                    (_g5534655380_ _g5534755384_))))
                            (_g5534655380_ _g5534755384_))))
                    (_g5534655380_ _g5534755384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5534655380_
                                                     _g5534755384_))))
                                            (_g5534655380_ _g5534755384_))))
                                    (_g5534655380_ _g5534755384_))))
                            (_g5534655380_ _g5534755384_))))
                    (_g5534655380_ _g5534755384_)))))
        (_g5534555491_ _$stx55342_)))))
