(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g54713_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g54714_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx50342_)
        (let* ((_g5034650360_
                (lambda (_g5034750356_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5034750356_)))
               (_g5034550402_
                (lambda (_g5034750364_)
                  (if (gx#stx-pair? _g5034750364_)
                      (let ((_e5034950367_ (gx#syntax-e _g5034750364_)))
                        (let ((_hd5035050371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5034950367_)))
                              (_tl5035150374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5034950367_))))
                          (if (gx#stx-pair? _tl5035150374_)
                              (let ((_e5035250377_
                                     (gx#syntax-e _tl5035150374_)))
                                (let ((_hd5035350381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5035250377_)))
                                      (_tl5035450384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5035250377_))))
                                  (if (gx#stx-null? _tl5035450384_)
                                      ((lambda (_L50387_)
                                         (let ((__tmp54420
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp54385
                                                (let ((__tmp54386
                                                       (let ((__tmp54413
                                                              (let ((__tmp54419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp54414
                             (let ((__tmp54415
                                    (let ((__tmp54418
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp54416
                                           (let ((__tmp54417
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp54417 '()))))
                                      (declare (not safe))
                                      (cons __tmp54418 __tmp54416))))
                               (declare (not safe))
                               (cons __tmp54415 '()))))
                        (declare (not safe))
                        (cons __tmp54419 __tmp54414)))
                     (__tmp54387
                      (let ((__tmp54388
                             (let ((__tmp54412 (gx#datum->syntax '#f 'let))
                                   (__tmp54389
                                    (let ((__tmp54411
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp54390
                                           (let ((__tmp54391
                                                  (let ((__tmp54392
                                                         (let ((__tmp54410
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp54393
                        (let ((__tmp54400
                               (let ((__tmp54409 (gx#datum->syntax '#f '##fx=))
                                     (__tmp54401
                                      (let ((__tmp54403
                                             (let ((__tmp54408
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp54404
                                                    (let ((__tmp54405
                                                           (let ((__tmp54406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp54407
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp54407))))
                     (declare (not safe))
                     (cons '0 __tmp54406))))
              (declare (not safe))
              (cons _L50387_ __tmp54405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp54408 __tmp54404)))
                                            (__tmp54402
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp54403 __tmp54402))))
                                 (declare (not safe))
                                 (cons __tmp54409 __tmp54401)))
                              (__tmp54394
                               (let ((__tmp54398
                                      (let ((__tmp54399
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp54399 '())))
                                     (__tmp54395
                                      (let ((__tmp54396
                                             (let ((__tmp54397
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp54397 '()))))
                                        (declare (not safe))
                                        (cons __tmp54396 '()))))
                                 (declare (not safe))
                                 (cons __tmp54398 __tmp54395))))
                          (declare (not safe))
                          (cons __tmp54400 __tmp54394))))
                   (declare (not safe))
                   (cons __tmp54410 __tmp54393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp54392 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp54391))))
                                      (declare (not safe))
                                      (cons __tmp54411 __tmp54390))))
                               (declare (not safe))
                               (cons __tmp54412 __tmp54389))))
                        (declare (not safe))
                        (cons __tmp54388 '()))))
                 (declare (not safe))
                 (cons __tmp54413 __tmp54387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp54386))))
                                           (declare (not safe))
                                           (cons __tmp54420 __tmp54385)))
                                       _hd5035350381_)
                                      (_g5034650360_ _g5034750364_))))
                              (_g5034650360_ _g5034750364_))))
                      (_g5034650360_ _g5034750364_)))))
          (_g5034550402_ _$stx50342_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx50406_)
        (let* ((_g5041050424_
                (lambda (_g5041150420_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5041150420_)))
               (_g5040950465_
                (lambda (_g5041150428_)
                  (if (gx#stx-pair? _g5041150428_)
                      (let ((_e5041350431_ (gx#syntax-e _g5041150428_)))
                        (let ((_hd5041450435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5041350431_)))
                              (_tl5041550438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5041350431_))))
                          (if (gx#stx-pair? _tl5041550438_)
                              (let ((_e5041650441_
                                     (gx#syntax-e _tl5041550438_)))
                                (let ((_hd5041750445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5041650441_)))
                                      (_tl5041850448_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5041650441_))))
                                  (if (gx#stx-null? _tl5041850448_)
                                      ((lambda (_L50451_)
                                         (let ((__tmp54425
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp54421
                                                (let ((__tmp54422
                                                       (let ((__tmp54423
                                                              (let ((__tmp54424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp54424))))
                 (declare (not safe))
                 (cons '0 __tmp54423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L50451_ __tmp54422))))
                                           (declare (not safe))
                                           (cons __tmp54425 __tmp54421)))
                                       _hd5041750445_)
                                      (_g5041050424_ _g5041150428_))))
                              (_g5041050424_ _g5041150428_))))
                      (_g5041050424_ _g5041150428_)))))
          (_g5040950465_ _$stx50406_))))
    (define |[:0:]#defassget|
      (lambda (_$stx50469_)
        (let* ((_g5047350491_
                (lambda (_g5047450487_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5047450487_)))
               (_g5047250546_
                (lambda (_g5047450495_)
                  (if (gx#stx-pair? _g5047450495_)
                      (let ((_e5047750498_ (gx#syntax-e _g5047450495_)))
                        (let ((_hd5047850502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5047750498_)))
                              (_tl5047950505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5047750498_))))
                          (if (gx#stx-pair? _tl5047950505_)
                              (let ((_e5048050508_
                                     (gx#syntax-e _tl5047950505_)))
                                (let ((_hd5048150512_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5048050508_)))
                                      (_tl5048250515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5048050508_))))
                                  (if (gx#stx-pair? _tl5048250515_)
                                      (let ((_e5048350518_
                                             (gx#syntax-e _tl5048250515_)))
                                        (let ((_hd5048450522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5048350518_)))
                                              (_tl5048550525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5048350518_))))
                                          (if (gx#stx-null? _tl5048550525_)
                                              ((lambda (_L50528_ _L50530_)
                                                 (let ((__tmp54474
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54426
                                                        (let ((__tmp54465
                                                               (let ((__tmp54466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54473 (gx#datum->syntax '#f 'key))
                                    (__tmp54467
                                     (let ((__tmp54472
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54468
                                            (let ((__tmp54469
                                                   (let ((__tmp54471
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54470
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54471
                                                           __tmp54470))))
                                              (declare (not safe))
                                              (cons __tmp54469 '()))))
                                       (declare (not safe))
                                       (cons __tmp54472 __tmp54468))))
                                (declare (not safe))
                                (cons __tmp54473 __tmp54467))))
                         (declare (not safe))
                         (cons _L50530_ __tmp54466)))
                      (__tmp54427
                       (let ((__tmp54428
                              (let ((__tmp54464 (gx#datum->syntax '#f 'cond))
                                    (__tmp54429
                                     (let ((__tmp54446
                                            (let ((__tmp54451
                                                   (let ((__tmp54463
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp54452
                                                          (let ((__tmp54459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp54462 (gx#datum->syntax '#f 'pair?))
                               (__tmp54460
                                (let ((__tmp54461 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp54461 '()))))
                           (declare (not safe))
                           (cons __tmp54462 __tmp54460)))
                        (__tmp54453
                         (let ((__tmp54454
                                (let ((__tmp54455
                                       (let ((__tmp54458
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp54456
                                              (let ((__tmp54457
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp54457 '()))))
                                         (declare (not safe))
                                         (cons __tmp54458 __tmp54456))))
                                  (declare (not safe))
                                  (cons _L50528_ __tmp54455))))
                           (declare (not safe))
                           (cons __tmp54454 '()))))
                    (declare (not safe))
                    (cons __tmp54459 __tmp54453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54463
                                                           __tmp54452)))
                                                  (__tmp54447
                                                   (let ((__tmp54450
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp54448
                                                          (let ((__tmp54449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp54449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54450
                                                           __tmp54448))))
                                              (declare (not safe))
                                              (cons __tmp54451 __tmp54447)))
                                           (__tmp54430
                                            (let ((__tmp54436
                                                   (let ((__tmp54442
                                                          (let ((__tmp54445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp54443
                         (let ((__tmp54444 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54444 '()))))
                    (declare (not safe))
                    (cons __tmp54445 __tmp54443)))
                 (__tmp54437
                  (let ((__tmp54438
                         (let ((__tmp54441 (gx#datum->syntax '#f 'default))
                               (__tmp54439
                                (let ((__tmp54440 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp54440 '()))))
                           (declare (not safe))
                           (cons __tmp54441 __tmp54439))))
                    (declare (not safe))
                    (cons __tmp54438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54442
                                                           __tmp54437)))
                                                  (__tmp54431
                                                   (let ((__tmp54432
                                                          (let ((__tmp54435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp54433
                         (let ((__tmp54434 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp54434 '()))))
                    (declare (not safe))
                    (cons __tmp54435 __tmp54433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54432 '()))))
                                              (declare (not safe))
                                              (cons __tmp54436 __tmp54431))))
                                       (declare (not safe))
                                       (cons __tmp54446 __tmp54430))))
                                (declare (not safe))
                                (cons __tmp54464 __tmp54429))))
                         (declare (not safe))
                         (cons __tmp54428 '()))))
                  (declare (not safe))
                  (cons __tmp54465 __tmp54427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54474
                                                         __tmp54426)))
                                               _hd5048450522_
                                               _hd5048150512_)
                                              (_g5047350491_ _g5047450495_))))
                                      (_g5047350491_ _g5047450495_))))
                              (_g5047350491_ _g5047450495_))))
                      (_g5047350491_ _g5047450495_)))))
          (_g5047250546_ _$stx50469_))))
    (define |[:0:]#defpget|
      (lambda (_$stx50550_)
        (let* ((_g5055450572_
                (lambda (_g5055550568_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5055550568_)))
               (_g5055350627_
                (lambda (_g5055550576_)
                  (if (gx#stx-pair? _g5055550576_)
                      (let ((_e5055850579_ (gx#syntax-e _g5055550576_)))
                        (let ((_hd5055950583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5055850579_)))
                              (_tl5056050586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5055850579_))))
                          (if (gx#stx-pair? _tl5056050586_)
                              (let ((_e5056150589_
                                     (gx#syntax-e _tl5056050586_)))
                                (let ((_hd5056250593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5056150589_)))
                                      (_tl5056350596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5056150589_))))
                                  (if (gx#stx-pair? _tl5056350596_)
                                      (let ((_e5056450599_
                                             (gx#syntax-e _tl5056350596_)))
                                        (let ((_hd5056550603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5056450599_)))
                                              (_tl5056650606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5056450599_))))
                                          (if (gx#stx-null? _tl5056650606_)
                                              ((lambda (_L50609_ _L50611_)
                                                 (let ((__tmp54544
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54475
                                                        (let ((__tmp54535
                                                               (let ((__tmp54536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54543 (gx#datum->syntax '#f 'key))
                                    (__tmp54537
                                     (let ((__tmp54542
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp54538
                                            (let ((__tmp54539
                                                   (let ((__tmp54541
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp54540
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp54541
                                                           __tmp54540))))
                                              (declare (not safe))
                                              (cons __tmp54539 '()))))
                                       (declare (not safe))
                                       (cons __tmp54542 __tmp54538))))
                                (declare (not safe))
                                (cons __tmp54543 __tmp54537))))
                         (declare (not safe))
                         (cons _L50611_ __tmp54536)))
                      (__tmp54476
                       (let ((__tmp54477
                              (let ((__tmp54534 (gx#datum->syntax '#f 'let))
                                    (__tmp54478
                                     (let ((__tmp54533
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54479
                                            (let ((__tmp54528
                                                   (let ((__tmp54529
                                                          (let ((__tmp54532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp54530
                         (let ((__tmp54531 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp54531 '()))))
                    (declare (not safe))
                    (cons __tmp54532 __tmp54530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54529 '())))
                                                  (__tmp54480
                                                   (let ((__tmp54481
                                                          (let ((__tmp54527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54482
                         (let ((__tmp54526 (gx#datum->syntax '#f 'rest))
                               (__tmp54483
                                (let ((__tmp54502
                                       (let ((__tmp54519
                                              (let ((__tmp54525
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp54520
                                                     (let ((__tmp54524
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp54521
                                                            (let ((__tmp54523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp54522 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp54523 __tmp54522))))
               (declare (not safe))
               (cons __tmp54524 __tmp54521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54525 __tmp54520)))
                                             (__tmp54503
                                              (let ((__tmp54504
                                                     (let ((__tmp54518
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54505
                                                            (let ((__tmp54513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp54514
                                  (let ((__tmp54517 (gx#datum->syntax '#f 'k))
                                        (__tmp54515
                                         (let ((__tmp54516
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp54516 '()))))
                                    (declare (not safe))
                                    (cons __tmp54517 __tmp54515))))
                             (declare (not safe))
                             (cons _L50609_ __tmp54514)))
                          (__tmp54506
                           (let ((__tmp54512 (gx#datum->syntax '#f 'v))
                                 (__tmp54507
                                  (let ((__tmp54508
                                         (let ((__tmp54511
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54509
                                                (let ((__tmp54510
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp54510 '()))))
                                           (declare (not safe))
                                           (cons __tmp54511 __tmp54509))))
                                    (declare (not safe))
                                    (cons __tmp54508 '()))))
                             (declare (not safe))
                             (cons __tmp54512 __tmp54507))))
                      (declare (not safe))
                      (cons __tmp54513 __tmp54506))))
               (declare (not safe))
               (cons __tmp54518 __tmp54505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54504 '()))))
                                         (declare (not safe))
                                         (cons __tmp54519 __tmp54503)))
                                      (__tmp54484
                                       (let ((__tmp54485
                                              (let ((__tmp54501
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54486
                                                     (let ((__tmp54487
                                                            (let ((__tmp54500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp54488
                           (let ((__tmp54496
                                  (let ((__tmp54499
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp54497
                                         (let ((__tmp54498
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54498 '()))))
                                    (declare (not safe))
                                    (cons __tmp54499 __tmp54497)))
                                 (__tmp54489
                                  (let ((__tmp54492
                                         (let ((__tmp54495
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp54493
                                                (let ((__tmp54494
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp54494 '()))))
                                           (declare (not safe))
                                           (cons __tmp54495 __tmp54493)))
                                        (__tmp54490
                                         (let ((__tmp54491
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp54491 '()))))
                                    (declare (not safe))
                                    (cons __tmp54492 __tmp54490))))
                             (declare (not safe))
                             (cons __tmp54496 __tmp54489))))
                      (declare (not safe))
                      (cons __tmp54500 __tmp54488))))
               (declare (not safe))
               (cons __tmp54487 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54501 __tmp54486))))
                                         (declare (not safe))
                                         (cons __tmp54485 '()))))
                                  (declare (not safe))
                                  (cons __tmp54502 __tmp54484))))
                           (declare (not safe))
                           (cons __tmp54526 __tmp54483))))
                    (declare (not safe))
                    (cons __tmp54527 __tmp54482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54481 '()))))
                                              (declare (not safe))
                                              (cons __tmp54528 __tmp54480))))
                                       (declare (not safe))
                                       (cons __tmp54533 __tmp54479))))
                                (declare (not safe))
                                (cons __tmp54534 __tmp54478))))
                         (declare (not safe))
                         (cons __tmp54477 '()))))
                  (declare (not safe))
                  (cons __tmp54535 __tmp54476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54544
                                                         __tmp54475)))
                                               _hd5056550603_
                                               _hd5056250593_)
                                              (_g5055450572_ _g5055550576_))))
                                      (_g5055450572_ _g5055550576_))))
                              (_g5055450572_ _g5055550576_))))
                      (_g5055450572_ _g5055550576_)))))
          (_g5055350627_ _$stx50550_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx50631_)
        (let* ((_g5063550653_
                (lambda (_g5063650649_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5063650649_)))
               (_g5063450708_
                (lambda (_g5063650657_)
                  (if (gx#stx-pair? _g5063650657_)
                      (let ((_e5063950660_ (gx#syntax-e _g5063650657_)))
                        (let ((_hd5064050664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5063950660_)))
                              (_tl5064150667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5063950660_))))
                          (if (gx#stx-pair? _tl5064150667_)
                              (let ((_e5064250670_
                                     (gx#syntax-e _tl5064150667_)))
                                (let ((_hd5064350674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5064250670_)))
                                      (_tl5064450677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5064250670_))))
                                  (if (gx#stx-pair? _tl5064450677_)
                                      (let ((_e5064550680_
                                             (gx#syntax-e _tl5064450677_)))
                                        (let ((_hd5064650684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5064550680_)))
                                              (_tl5064750687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5064550680_))))
                                          (if (gx#stx-null? _tl5064750687_)
                                              ((lambda (_L50690_ _L50692_)
                                                 (let ((__tmp54615
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp54545
                                                        (let ((__tmp54610
                                                               (let ((__tmp54611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp54614 (gx#datum->syntax '#f 'el))
                                    (__tmp54612
                                     (let ((__tmp54613
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp54613 '()))))
                                (declare (not safe))
                                (cons __tmp54614 __tmp54612))))
                         (declare (not safe))
                         (cons _L50692_ __tmp54611)))
                      (__tmp54546
                       (let ((__tmp54547
                              (let ((__tmp54609 (gx#datum->syntax '#f 'let))
                                    (__tmp54548
                                     (let ((__tmp54608
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp54549
                                            (let ((__tmp54597
                                                   (let ((__tmp54604
                                                          (let ((__tmp54607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp54605
                         (let ((__tmp54606 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp54606 '()))))
                    (declare (not safe))
                    (cons __tmp54607 __tmp54605)))
                 (__tmp54598
                  (let ((__tmp54599
                         (let ((__tmp54603 (gx#datum->syntax '#f 'r))
                               (__tmp54600
                                (let ((__tmp54601
                                       (let ((__tmp54602
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp54602 '()))))
                                  (declare (not safe))
                                  (cons __tmp54601 '()))))
                           (declare (not safe))
                           (cons __tmp54603 __tmp54600))))
                    (declare (not safe))
                    (cons __tmp54599 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54604
                                                           __tmp54598)))
                                                  (__tmp54550
                                                   (let ((__tmp54551
                                                          (let ((__tmp54596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp54552
                         (let ((__tmp54595 (gx#datum->syntax '#f 'rest))
                               (__tmp54553
                                (let ((__tmp54559
                                       (let ((__tmp54590
                                              (let ((__tmp54594
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp54591
                                                     (let ((__tmp54593
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp54592
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp54593
                                                             __tmp54592))))
                                                (declare (not safe))
                                                (cons __tmp54594 __tmp54591)))
                                             (__tmp54560
                                              (let ((__tmp54561
                                                     (let ((__tmp54589
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp54562
                                                            (let ((__tmp54584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp54585
                                  (let ((__tmp54588 (gx#datum->syntax '#f 'el))
                                        (__tmp54586
                                         (let ((__tmp54587
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp54587 '()))))
                                    (declare (not safe))
                                    (cons __tmp54588 __tmp54586))))
                             (declare (not safe))
                             (cons _L50690_ __tmp54585)))
                          (__tmp54563
                           (let ((__tmp54576
                                  (let ((__tmp54583
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp54577
                                         (let ((__tmp54582
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp54578
                                                (let ((__tmp54581
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp54579
                                                       (let ((__tmp54580
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp54580
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp54581
                                                        __tmp54579))))
                                           (declare (not safe))
                                           (cons __tmp54582 __tmp54578))))
                                    (declare (not safe))
                                    (cons __tmp54583 __tmp54577)))
                                 (__tmp54564
                                  (let ((__tmp54565
                                         (let ((__tmp54575
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp54566
                                                (let ((__tmp54574
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp54567
                                                       (let ((__tmp54568
                                                              (let ((__tmp54573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp54569
                             (let ((__tmp54572 (gx#datum->syntax '#f 'hd))
                                   (__tmp54570
                                    (let ((__tmp54571
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp54571 '()))))
                               (declare (not safe))
                               (cons __tmp54572 __tmp54570))))
                        (declare (not safe))
                        (cons __tmp54573 __tmp54569))))
                 (declare (not safe))
                 (cons __tmp54568 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp54574
                                                        __tmp54567))))
                                           (declare (not safe))
                                           (cons __tmp54575 __tmp54566))))
                                    (declare (not safe))
                                    (cons __tmp54565 '()))))
                             (declare (not safe))
                             (cons __tmp54576 __tmp54564))))
                      (declare (not safe))
                      (cons __tmp54584 __tmp54563))))
               (declare (not safe))
               (cons __tmp54589 __tmp54562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp54561 '()))))
                                         (declare (not safe))
                                         (cons __tmp54590 __tmp54560)))
                                      (__tmp54554
                                       (let ((__tmp54555
                                              (let ((__tmp54558
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp54556
                                                     (let ((__tmp54557
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp54557 '()))))
                                                (declare (not safe))
                                                (cons __tmp54558 __tmp54556))))
                                         (declare (not safe))
                                         (cons __tmp54555 '()))))
                                  (declare (not safe))
                                  (cons __tmp54559 __tmp54554))))
                           (declare (not safe))
                           (cons __tmp54595 __tmp54553))))
                    (declare (not safe))
                    (cons __tmp54596 __tmp54552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp54551 '()))))
                                              (declare (not safe))
                                              (cons __tmp54597 __tmp54550))))
                                       (declare (not safe))
                                       (cons __tmp54608 __tmp54549))))
                                (declare (not safe))
                                (cons __tmp54609 __tmp54548))))
                         (declare (not safe))
                         (cons __tmp54547 '()))))
                  (declare (not safe))
                  (cons __tmp54610 __tmp54546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54615
                                                         __tmp54545)))
                                               _hd5064650684_
                                               _hd5064350674_)
                                              (_g5063550653_ _g5063650657_))))
                                      (_g5063550653_ _g5063650657_))))
                              (_g5063550653_ _g5063650657_))))
                      (_g5063550653_ _g5063650657_)))))
          (_g5063450708_ _$stx50631_))))
    (define |[:0:]#DBG|
      (lambda (_$stx50712_)
        (let* ((_g5071650727_
                (lambda (_g5071750723_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5071750723_)))
               (_g5071550756_
                (lambda (_g5071750731_)
                  (if (gx#stx-pair? _g5071750731_)
                      (let ((_e5071950734_ (gx#syntax-e _g5071750731_)))
                        (let ((_hd5072050738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5071950734_)))
                              (_tl5072150741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5071950734_))))
                          ((lambda (_L50744_)
                             (let ((__tmp54617 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp54616
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L50744_))))
                               (declare (not safe))
                               (cons __tmp54617 __tmp54616)))
                           _tl5072150741_)))
                      (_g5071650727_ _g5071750731_)))))
          (_g5071550756_ _$stx50712_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx50760_)
        (let* ((___stx5391653917_ _$stx50760_)
               (_g5077150985_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5391653917_))))
          (let ((___kont5391953920_
                 (lambda (_L51838_ _L51840_ _L51841_ _L51842_ _L51843_)
                   (let ((__tmp54618
                          (let ((__tmp54619
                                 (let ((__tmp54620
                                        (let ((__tmp54624
                                               (let ((__tmp54625
                                                      (lambda (_g5187351876_
                                                               _g5187451879_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5187351876_
                                                                _g5187451879_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp54625
                                                         '()
                                                         _L51841_)))
                                              (__tmp54621
                                               (let ((__tmp54622
                                                      (let ((__tmp54623
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L51838_ '()))))
                (declare (not safe))
                (cons _L51840_ __tmp54623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L51842_ __tmp54622))))
                                          (declare (not safe))
                                          (cons __tmp54624 __tmp54621))))
                                   (declare (not safe))
                                   (cons '() __tmp54620))))
                            (declare (not safe))
                            (cons '2 __tmp54619))))
                     (declare (not safe))
                     (cons _L51843_ __tmp54618))))
                (___kont5392353924_
                 (lambda (_L51691_ _L51693_ _L51694_ _L51695_)
                   (let ((__tmp54626
                          (let ((__tmp54627
                                 (let ((__tmp54628
                                        (let ((__tmp54632
                                               (let ((__tmp54633
                                                      (lambda (_g5171851721_
                                                               _g5171951724_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5171851721_
                                                                _g5171951724_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp54633
                                                         '()
                                                         _L51693_)))
                                              (__tmp54629
                                               (let ((__tmp54630
                                                      (let ((__tmp54631
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L51691_ '()))))
                (declare (not safe))
                (cons _L51691_ __tmp54631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L51694_ __tmp54630))))
                                          (declare (not safe))
                                          (cons __tmp54632 __tmp54629))))
                                   (declare (not safe))
                                   (cons '() __tmp54628))))
                            (declare (not safe))
                            (cons '2 __tmp54627))))
                     (declare (not safe))
                     (cons _L51695_ __tmp54626))))
                (___kont5392753928_
                 (lambda (_L51594_)
                   (let ((__tmp54645 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp54634
                          (let ((__tmp54635
                                 (let ((__tmp54642
                                        (let ((__tmp54644
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp54643
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp54644 __tmp54643)))
                                       (__tmp54636
                                        (let ((__tmp54639
                                               (let ((__tmp54641
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp54640
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp54641 __tmp54640)))
                                              (__tmp54637
                                               (let ((__tmp54638
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp54638))))
                                          (declare (not safe))
                                          (cons __tmp54639 __tmp54637))))
                                   (declare (not safe))
                                   (cons __tmp54642 __tmp54636))))
                            (declare (not safe))
                            (cons _L51594_ __tmp54635))))
                     (declare (not safe))
                     (cons __tmp54645 __tmp54634))))
                (___kont5392953930_
                 (lambda (_L51517_
                          _L51519_
                          _L51520_
                          _L51521_
                          _L51522_
                          _L51523_)
                   (let ((__tmp54646
                          (let ((__tmp54647
                                 (let ((__tmp54649
                                        (let ((__tmp54650
                                               (let ((__tmp54651
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L51520_ '()))))
                                                 (declare (not safe))
                                                 (cons _L51521_ __tmp54651))))
                                          (declare (not safe))
                                          (cons __tmp54650 _L51522_)))
                                       (__tmp54648
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51519_ _L51517_))))
                                   (declare (not safe))
                                   (cons __tmp54649 __tmp54648))))
                            (declare (not safe))
                            (cons '2 __tmp54647))))
                     (declare (not safe))
                     (cons _L51523_ __tmp54646))))
                (___kont5393153932_
                 (lambda (_L51398_ _L51400_ _L51401_ _L51402_ _L51403_)
                   (let ((__tmp54652
                          (let ((__tmp54653
                                 (let ((__tmp54655
                                        (let ((__tmp54656
                                               (let ((__tmp54657
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L51401_ '()))))
                                                 (declare (not safe))
                                                 (cons _L51401_ __tmp54657))))
                                          (declare (not safe))
                                          (cons __tmp54656 _L51402_)))
                                       (__tmp54654
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51400_ _L51398_))))
                                   (declare (not safe))
                                   (cons __tmp54655 __tmp54654))))
                            (declare (not safe))
                            (cons '2 __tmp54653))))
                     (declare (not safe))
                     (cons _L51403_ __tmp54652))))
                (___kont5393353934_
                 (lambda (_L51315_ _L51317_ _L51318_)
                   (let ((__tmp54658
                          (let ((__tmp54659
                                 (let ((__tmp54660
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51317_ _L51315_))))
                                   (declare (not safe))
                                   (cons '() __tmp54660))))
                            (declare (not safe))
                            (cons '3 __tmp54659))))
                     (declare (not safe))
                     (cons _L51318_ __tmp54658))))
                (___kont5393553936_
                 (lambda (_L51236_ _L51238_ _L51239_ _L51240_ _L51241_)
                   (let ((__tmp54661
                          (let ((__tmp54662
                                 (let ((__tmp54664
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51239_ _L51240_)))
                                       (__tmp54663
                                        (let ()
                                          (declare (not safe))
                                          (cons _L51238_ _L51236_))))
                                   (declare (not safe))
                                   (cons __tmp54664 __tmp54663))))
                            (declare (not safe))
                            (cons '3 __tmp54662))))
                     (declare (not safe))
                     (cons _L51241_ __tmp54661))))
                (___kont5393753938_
                 (lambda (_L51120_
                          _L51122_
                          _L51123_
                          _L51124_
                          _L51125_
                          _L51126_)
                   (let ((__tmp54712 (gx#datum->syntax '#f 'let))
                         (__tmp54665
                          (let ((__tmp54700
                                 (let ((__tmp54709
                                        (let ((__tmp54711
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp54710
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L51123_ '()))))
                                          (declare (not safe))
                                          (cons __tmp54711 __tmp54710)))
                                       (__tmp54701
                                        (let ((__tmp54702
                                               (let ((__tmp54708
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp54703
                                                      (let ((__tmp54704
                                                             (let ((__tmp54707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp54705
                            (let ((__tmp54706
                                   (let ()
                                     (declare (not safe))
                                     (cons _L51120_ '()))))
                              (declare (not safe))
                              (cons '() __tmp54706))))
                       (declare (not safe))
                       (cons __tmp54707 __tmp54705))))
                (declare (not safe))
                (cons __tmp54704 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp54708
                                                       __tmp54703))))
                                          (declare (not safe))
                                          (cons __tmp54702 '()))))
                                   (declare (not safe))
                                   (cons __tmp54709 __tmp54701)))
                                (__tmp54666
                                 (let ((__tmp54667
                                        (let ((__tmp54699
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp54668
                                               (let ((__tmp54698
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp54669
                                                      (let ((__tmp54673
                                                             (let ((__tmp54697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp54674
                            (let ((__tmp54696 (gx#datum->syntax '#f 'tagval))
                                  (__tmp54675
                                   (let ((__tmp54691
                                          (let ((__tmp54695
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp54692
                                                 (let ((__tmp54693
                                                        (let ((__tmp54694
                                                               (lambda (_g5115851163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5115951166_)
                         (let ()
                           (declare (not safe))
                           (cons _g5115851163_ _g5115951166_)))))
                  (declare (not safe))
                  (foldr1 __tmp54694 '() _L51125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54693 '()))))
                                            (declare (not safe))
                                            (cons __tmp54695 __tmp54692)))
                                         (__tmp54676
                                          (let ((__tmp54683
                                                 (let ((__tmp54690
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp54684
                                                        (let ((__tmp54685
                                                               (lambda (_g5116051169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5116151172_)
                         (let ((__tmp54686
                                (let ((__tmp54689
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp54687
                                       (let ((__tmp54688
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5116051169_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp54688))))
                                  (declare (not safe))
                                  (cons __tmp54689 __tmp54687))))
                           (declare (not safe))
                           (cons __tmp54686 _g5116151172_)))))
                  (declare (not safe))
                  (foldr1 __tmp54685 '() _L51124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54690
                                                         __tmp54684)))
                                                (__tmp54677
                                                 (let ((__tmp54680
                                                        (let ((__tmp54682
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp54681
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L51122_ '()))))
                  (declare (not safe))
                  (cons __tmp54682 __tmp54681)))
               (__tmp54678
                (let ((__tmp54679 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp54679 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp54680
                                                         __tmp54678))))
                                            (declare (not safe))
                                            (cons __tmp54683 __tmp54677))))
                                     (declare (not safe))
                                     (cons __tmp54691 __tmp54676))))
                              (declare (not safe))
                              (cons __tmp54696 __tmp54675))))
                       (declare (not safe))
                       (cons __tmp54697 __tmp54674)))
                    (__tmp54670
                     (let ((__tmp54671
                            (let ((__tmp54672 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp54672 '()))))
                       (declare (not safe))
                       (cons __tmp54671 '()))))
                (declare (not safe))
                (cons __tmp54673 __tmp54670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp54698
                                                       __tmp54669))))
                                          (declare (not safe))
                                          (cons __tmp54699 __tmp54668))))
                                   (declare (not safe))
                                   (cons __tmp54667 '()))))
                            (declare (not safe))
                            (cons __tmp54700 __tmp54666))))
                     (declare (not safe))
                     (cons __tmp54712 __tmp54665)))))
            (let* ((___match5426754268_
                    (lambda (_e5094150992_
                             _hd5094250996_
                             _tl5094350999_
                             _e5094451002_
                             _hd5094551006_
                             _tl5094651009_
                             _e5094751012_
                             _e5094851016_
                             _hd5094951020_
                             _tl5095051023_
                             ___splice5393953940_
                             _target5095151026_
                             _tl5095351029_)
                      (letrec ((_loop5095451032_
                                (lambda (_hd5095251036_
                                         _exprs5095851039_
                                         _names5095951041_)
                                  (if (gx#stx-pair? _hd5095251036_)
                                      (let ((_e5095551044_
                                             (gx#syntax-e _hd5095251036_)))
                                        (let ((_lp-tl5095751051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5095551044_)))
                                              (_lp-hd5095651048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5095551044_))))
                                          (if (gx#stx-pair? _lp-hd5095651048_)
                                              (let ((_e5096251054_
                                                     (gx#syntax-e
                                                      _lp-hd5095651048_)))
                                                (let ((_tl5096451061_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5096251054_)))
                                                      (_hd5096351058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5096251054_))))
                                                  (if (gx#stx-pair?
                                                       _tl5096451061_)
                                                      (let ((_e5096551064_
                                                             (gx#syntax-e
                                                              _tl5096451061_)))
                                                        (let ((_tl5096751071_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5096551064_)))
                      (_hd5096651068_
                       (let () (declare (not safe)) (##car _e5096551064_))))
                  (if (gx#stx-null? _tl5096751071_)
                      (_loop5095451032_
                       _lp-tl5095751051_
                       (let ()
                         (declare (not safe))
                         (cons _hd5096651068_ _exprs5095851039_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5096351058_ _names5095951041_)))
                      (let () (declare (not safe)) (_g5077150985_)))))
              (let () (declare (not safe)) (_g5077150985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5077150985_)))))
                                      (let ((_names5096151077_
                                             (reverse _names5095951041_))
                                            (_exprs5096051074_
                                             (reverse _exprs5095851039_)))
                                        (if (gx#stx-pair? _tl5095051023_)
                                            (let ((_e5096851080_
                                                   (gx#syntax-e
                                                    _tl5095051023_)))
                                              (let ((_tl5097051087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5096851080_)))
                                                    (_hd5096951084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5096851080_))))
                                                (if (gx#stx-null?
                                                     _hd5096951084_)
                                                    (if (gx#stx-pair?
                                                         _tl5097051087_)
                                                        (let ((_e5097151090_
                                                               (gx#syntax-e
                                                                _tl5097051087_)))
                                                          (let ((_tl5097351097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5097151090_)))
                        (_hd5097251094_
                         (let () (declare (not safe)) (##car _e5097151090_))))
                    (if (gx#stx-pair? _tl5097351097_)
                        (let ((_e5097451100_ (gx#syntax-e _tl5097351097_)))
                          (let ((_tl5097651107_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5097451100_)))
                                (_hd5097551104_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5097451100_))))
                            (if (gx#stx-pair? _tl5097651107_)
                                (let ((_e5097751110_
                                       (gx#syntax-e _tl5097651107_)))
                                  (let ((_tl5097951117_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5097751110_)))
                                        (_hd5097851114_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5097751110_))))
                                    (if (gx#stx-null? _tl5097951117_)
                                        (___kont5393753938_
                                         _hd5097851114_
                                         _hd5097551104_
                                         _hd5097251094_
                                         _exprs5096051074_
                                         _names5096151077_
                                         _hd5094250996_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_)))))
                        (let () (declare (not safe)) (_g5077150985_)))))
                (let () (declare (not safe)) (_g5077150985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5077150985_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5077150985_))))))))
                        (_loop5095451032_ _target5095151026_ '() '()))))
                   (___match5404554046_
                    (lambda (_e5081351617_
                             _hd5081451621_
                             _tl5081551624_
                             _e5081651627_
                             _hd5081751631_
                             _tl5081851634_
                             _e5081951637_
                             _e5082051641_
                             _hd5082151645_
                             _tl5082251648_
                             ___splice5392553926_
                             _target5082351651_
                             _tl5082551654_
                             _e5083251657_
                             _hd5083351661_
                             _tl5083451664_)
                      (letrec ((_loop5082651667_
                                (lambda (_hd5082451671_ _exprs5083051674_)
                                  (if (gx#stx-pair? _hd5082451671_)
                                      (let ((_e5082751677_
                                             (gx#syntax-e _hd5082451671_)))
                                        (let ((_lp-tl5082951684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5082751677_)))
                                              (_lp-hd5082851681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5082751677_))))
                                          (_loop5082651667_
                                           _lp-tl5082951684_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5082851681_
                                                   _exprs5083051674_)))))
                                      (let ((_exprs5083151687_
                                             (reverse _exprs5083051674_)))
                                        (___kont5392353924_
                                         _hd5083351661_
                                         _exprs5083151687_
                                         _hd5082151645_
                                         _hd5081451621_))))))
                        (_loop5082651667_ _target5082351651_ '()))))
                   (___match5400554006_
                    (lambda (_e5077851734_
                             _hd5077951738_
                             _tl5078051741_
                             _e5078151744_
                             _hd5078251748_
                             _tl5078351751_
                             _e5078451754_
                             _e5078551758_
                             _hd5078651762_
                             _tl5078751765_
                             ___splice5392153922_
                             _target5078851768_
                             _tl5079051771_
                             _e5079751774_
                             _hd5079851778_
                             _tl5079951781_
                             _e5080051784_
                             _hd5080151788_
                             _tl5080251791_
                             _e5080351794_
                             _hd5080451798_
                             _tl5080551801_
                             _e5080651804_
                             _hd5080751808_
                             _tl5080851811_)
                      (letrec ((_loop5079151814_
                                (lambda (_hd5078951818_ _exprs5079551821_)
                                  (if (gx#stx-pair? _hd5078951818_)
                                      (let ((_e5079251824_
                                             (gx#syntax-e _hd5078951818_)))
                                        (let ((_lp-tl5079451831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5079251824_)))
                                              (_lp-hd5079351828_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5079251824_))))
                                          (_loop5079151814_
                                           _lp-tl5079451831_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5079351828_
                                                   _exprs5079551821_)))))
                                      (let ((_exprs5079651834_
                                             (reverse _exprs5079551821_)))
                                        (___kont5391953920_
                                         _hd5080751808_
                                         _hd5080451798_
                                         _exprs5079651834_
                                         _hd5078651762_
                                         _hd5077951738_))))))
                        (_loop5079151814_ _target5078851768_ '())))))
              (if (gx#stx-pair? ___stx5391653917_)
                  (let ((_e5077851734_ (gx#syntax-e ___stx5391653917_)))
                    (let ((_tl5078051741_
                           (let () (declare (not safe)) (##cdr _e5077851734_)))
                          (_hd5077951738_
                           (let ()
                             (declare (not safe))
                             (##car _e5077851734_))))
                      (if (gx#stx-pair? _tl5078051741_)
                          (let ((_e5078151744_ (gx#syntax-e _tl5078051741_)))
                            (let ((_tl5078351751_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5078151744_)))
                                  (_hd5078251748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5078151744_))))
                              (if (gx#stx-datum? _hd5078251748_)
                                  (let ((_e5078451754_
                                         (gx#stx-e _hd5078251748_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5078451754_ '1))
                                        (if (gx#stx-pair? _tl5078351751_)
                                            (let ((_e5078551758_
                                                   (gx#syntax-e
                                                    _tl5078351751_)))
                                              (let ((_tl5078751765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5078551758_)))
                                                    (_hd5078651762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5078551758_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5078751765_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5078751765_)
                                                              '2)
                                                        (let ((___splice5392153922_
                                                               (gx#syntax-split-splice
                                                                _tl5078751765_
                                                                '2)))
                                                          (let ((_tl5079051771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5392153922_ '1)))
                        (_target5078851768_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5392153922_ '0))))
                    (if (gx#stx-pair? _tl5079051771_)
                        (let ((_e5079751774_ (gx#syntax-e _tl5079051771_)))
                          (let ((_tl5079951781_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5079751774_)))
                                (_hd5079851778_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5079751774_))))
                            (if (gx#stx-pair? _hd5079851778_)
                                (let ((_e5080051784_
                                       (gx#syntax-e _hd5079851778_)))
                                  (let ((_tl5080251791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5080051784_)))
                                        (_hd5080151788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5080051784_))))
                                    (if (gx#identifier? _hd5080151788_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g54713_|
                                             _hd5080151788_)
                                            (if (gx#stx-pair? _tl5080251791_)
                                                (let ((_e5080351794_
                                                       (gx#syntax-e
                                                        _tl5080251791_)))
                                                  (let ((_tl5080551801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5080351794_)))
                                                        (_hd5080451798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5080351794_))))
                                                    (if (gx#stx-null?
                                                         _tl5080551801_)
                                                        (if (gx#stx-pair?
                                                             _tl5079951781_)
                                                            (let ((_e5080651804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5079951781_)))
                      (let ((_tl5080851811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5080651804_)))
                            (_hd5080751808_
                             (let ()
                               (declare (not safe))
                               (##car _e5080651804_))))
                        (if (gx#stx-null? _tl5080851811_)
                            (___match5400554006_
                             _e5077851734_
                             _hd5077951738_
                             _tl5078051741_
                             _e5078151744_
                             _hd5078251748_
                             _tl5078351751_
                             _e5078451754_
                             _e5078551758_
                             _hd5078651762_
                             _tl5078751765_
                             ___splice5392153922_
                             _target5078851768_
                             _tl5079051771_
                             _e5079751774_
                             _hd5079851778_
                             _tl5079951781_
                             _e5080051784_
                             _hd5080151788_
                             _tl5080251791_
                             _e5080351794_
                             _hd5080451798_
                             _tl5080551801_
                             _e5080651804_
                             _hd5080751808_
                             _tl5080851811_)
                            (if (fx>= (gx#stx-length _tl5078751765_) '1)
                                (let ((___splice5392553926_
                                       (gx#syntax-split-splice
                                        _tl5078751765_
                                        '1)))
                                  (let ((_tl5082551654_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5392553926_
                                            '1)))
                                        (_target5082351651_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5392553926_
                                            '0))))
                                    (if (gx#stx-pair? _tl5082551654_)
                                        (let ((_e5083251657_
                                               (gx#syntax-e _tl5082551654_)))
                                          (let ((_tl5083451664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5083251657_)))
                                                (_hd5083351661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5083251657_))))
                                            (if (gx#stx-null? _tl5083451664_)
                                                (___match5404554046_
                                                 _e5077851734_
                                                 _hd5077951738_
                                                 _tl5078051741_
                                                 _e5078151744_
                                                 _hd5078251748_
                                                 _tl5078351751_
                                                 _e5078451754_
                                                 _e5078551758_
                                                 _hd5078651762_
                                                 _tl5078751765_
                                                 ___splice5392553926_
                                                 _target5082351651_
                                                 _tl5082551654_
                                                 _e5083251657_
                                                 _hd5083351661_
                                                 _tl5083451664_)
                                                (if (gx#stx-null?
                                                     _tl5078751765_)
                                                    (___kont5392753928_
                                                     _hd5078651762_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5077150985_))))))
                                        (if (gx#stx-null? _tl5078751765_)
                                            (___kont5392753928_ _hd5078651762_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5077150985_))))))
                                (if (gx#stx-null? _tl5078751765_)
                                    (___kont5392753928_ _hd5078651762_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5077150985_)))))))
                    (if (fx>= (gx#stx-length _tl5078751765_) '1)
                        (let ((___splice5392553926_
                               (gx#syntax-split-splice _tl5078751765_ '1)))
                          (let ((_tl5082551654_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5392553926_ '1)))
                                (_target5082351651_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5392553926_ '0))))
                            (if (gx#stx-pair? _tl5082551654_)
                                (let ((_e5083251657_
                                       (gx#syntax-e _tl5082551654_)))
                                  (let ((_tl5083451664_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5083251657_)))
                                        (_hd5083351661_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5083251657_))))
                                    (if (gx#stx-null? _tl5083451664_)
                                        (___match5404554046_
                                         _e5077851734_
                                         _hd5077951738_
                                         _tl5078051741_
                                         _e5078151744_
                                         _hd5078251748_
                                         _tl5078351751_
                                         _e5078451754_
                                         _e5078551758_
                                         _hd5078651762_
                                         _tl5078751765_
                                         ___splice5392553926_
                                         _target5082351651_
                                         _tl5082551654_
                                         _e5083251657_
                                         _hd5083351661_
                                         _tl5083451664_)
                                        (if (gx#stx-null? _tl5078751765_)
                                            (___kont5392753928_ _hd5078651762_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5077150985_))))))
                                (if (gx#stx-null? _tl5078751765_)
                                    (___kont5392753928_ _hd5078651762_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5077150985_))))))
                        (if (gx#stx-null? _tl5078751765_)
                            (___kont5392753928_ _hd5078651762_)
                            (let () (declare (not safe)) (_g5077150985_)))))
                (if (fx>= (gx#stx-length _tl5078751765_) '1)
                    (let ((___splice5392553926_
                           (gx#syntax-split-splice _tl5078751765_ '1)))
                      (let ((_tl5082551654_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5392553926_ '1)))
                            (_target5082351651_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5392553926_ '0))))
                        (if (gx#stx-pair? _tl5082551654_)
                            (let ((_e5083251657_ (gx#syntax-e _tl5082551654_)))
                              (let ((_tl5083451664_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5083251657_)))
                                    (_hd5083351661_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5083251657_))))
                                (if (gx#stx-null? _tl5083451664_)
                                    (___match5404554046_
                                     _e5077851734_
                                     _hd5077951738_
                                     _tl5078051741_
                                     _e5078151744_
                                     _hd5078251748_
                                     _tl5078351751_
                                     _e5078451754_
                                     _e5078551758_
                                     _hd5078651762_
                                     _tl5078751765_
                                     ___splice5392553926_
                                     _target5082351651_
                                     _tl5082551654_
                                     _e5083251657_
                                     _hd5083351661_
                                     _tl5083451664_)
                                    (if (gx#stx-null? _tl5078751765_)
                                        (___kont5392753928_ _hd5078651762_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_))))))
                            (if (gx#stx-null? _tl5078751765_)
                                (___kont5392753928_ _hd5078651762_)
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_))))))
                    (if (gx#stx-null? _tl5078751765_)
                        (___kont5392753928_ _hd5078651762_)
                        (let () (declare (not safe)) (_g5077150985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5078751765_)
                                                          '1)
                                                    (let ((___splice5392553926_
                                                           (gx#syntax-split-splice
                                                            _tl5078751765_
                                                            '1)))
                                                      (let ((_tl5082551654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5392553926_ '1)))
                    (_target5082351651_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5392553926_ '0))))
                (if (gx#stx-pair? _tl5082551654_)
                    (let ((_e5083251657_ (gx#syntax-e _tl5082551654_)))
                      (let ((_tl5083451664_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5083251657_)))
                            (_hd5083351661_
                             (let ()
                               (declare (not safe))
                               (##car _e5083251657_))))
                        (if (gx#stx-null? _tl5083451664_)
                            (___match5404554046_
                             _e5077851734_
                             _hd5077951738_
                             _tl5078051741_
                             _e5078151744_
                             _hd5078251748_
                             _tl5078351751_
                             _e5078451754_
                             _e5078551758_
                             _hd5078651762_
                             _tl5078751765_
                             ___splice5392553926_
                             _target5082351651_
                             _tl5082551654_
                             _e5083251657_
                             _hd5083351661_
                             _tl5083451664_)
                            (if (gx#stx-null? _tl5078751765_)
                                (___kont5392753928_ _hd5078651762_)
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_))))))
                    (if (gx#stx-null? _tl5078751765_)
                        (___kont5392753928_ _hd5078651762_)
                        (let () (declare (not safe)) (_g5077150985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5078751765_)
                                                        (___kont5392753928_
                                                         _hd5078651762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5077150985_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5078751765_)
                                                      '1)
                                                (let ((___splice5392553926_
                                                       (gx#syntax-split-splice
                                                        _tl5078751765_
                                                        '1)))
                                                  (let ((_tl5082551654_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5392553926_
                                                            '1)))
                                                        (_target5082351651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5392553926_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5082551654_)
                                                        (let ((_e5083251657_
                                                               (gx#syntax-e
                                                                _tl5082551654_)))
                                                          (let ((_tl5083451664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5083251657_)))
                        (_hd5083351661_
                         (let () (declare (not safe)) (##car _e5083251657_))))
                    (if (gx#stx-null? _tl5083451664_)
                        (___match5404554046_
                         _e5077851734_
                         _hd5077951738_
                         _tl5078051741_
                         _e5078151744_
                         _hd5078251748_
                         _tl5078351751_
                         _e5078451754_
                         _e5078551758_
                         _hd5078651762_
                         _tl5078751765_
                         ___splice5392553926_
                         _target5082351651_
                         _tl5082551654_
                         _e5083251657_
                         _hd5083351661_
                         _tl5083451664_)
                        (if (gx#stx-null? _tl5078751765_)
                            (___kont5392753928_ _hd5078651762_)
                            (let () (declare (not safe)) (_g5077150985_))))))
                (if (gx#stx-null? _tl5078751765_)
                    (___kont5392753928_ _hd5078651762_)
                    (let () (declare (not safe)) (_g5077150985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5078751765_)
                                                    (___kont5392753928_
                                                     _hd5078651762_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5077150985_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5078751765_)
                                                  '1)
                                            (let ((___splice5392553926_
                                                   (gx#syntax-split-splice
                                                    _tl5078751765_
                                                    '1)))
                                              (let ((_tl5082551654_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5392553926_
                                                        '1)))
                                                    (_target5082351651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5392553926_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5082551654_)
                                                    (let ((_e5083251657_
                                                           (gx#syntax-e
                                                            _tl5082551654_)))
                                                      (let ((_tl5083451664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5083251657_)))
                    (_hd5083351661_
                     (let () (declare (not safe)) (##car _e5083251657_))))
                (if (gx#stx-null? _tl5083451664_)
                    (___match5404554046_
                     _e5077851734_
                     _hd5077951738_
                     _tl5078051741_
                     _e5078151744_
                     _hd5078251748_
                     _tl5078351751_
                     _e5078451754_
                     _e5078551758_
                     _hd5078651762_
                     _tl5078751765_
                     ___splice5392553926_
                     _target5082351651_
                     _tl5082551654_
                     _e5083251657_
                     _hd5083351661_
                     _tl5083451664_)
                    (if (gx#stx-null? _tl5078751765_)
                        (___kont5392753928_ _hd5078651762_)
                        (let () (declare (not safe)) (_g5077150985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5078751765_)
                                                        (___kont5392753928_
                                                         _hd5078651762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5077150985_))))))
                                            (if (gx#stx-null? _tl5078751765_)
                                                (___kont5392753928_
                                                 _hd5078651762_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5077150985_)))))))
                                (if (fx>= (gx#stx-length _tl5078751765_) '1)
                                    (let ((___splice5392553926_
                                           (gx#syntax-split-splice
                                            _tl5078751765_
                                            '1)))
                                      (let ((_tl5082551654_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5392553926_
                                                '1)))
                                            (_target5082351651_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5392553926_
                                                '0))))
                                        (if (gx#stx-pair? _tl5082551654_)
                                            (let ((_e5083251657_
                                                   (gx#syntax-e
                                                    _tl5082551654_)))
                                              (let ((_tl5083451664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5083251657_)))
                                                    (_hd5083351661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5083251657_))))
                                                (if (gx#stx-null?
                                                     _tl5083451664_)
                                                    (___match5404554046_
                                                     _e5077851734_
                                                     _hd5077951738_
                                                     _tl5078051741_
                                                     _e5078151744_
                                                     _hd5078251748_
                                                     _tl5078351751_
                                                     _e5078451754_
                                                     _e5078551758_
                                                     _hd5078651762_
                                                     _tl5078751765_
                                                     ___splice5392553926_
                                                     _target5082351651_
                                                     _tl5082551654_
                                                     _e5083251657_
                                                     _hd5083351661_
                                                     _tl5083451664_)
                                                    (if (gx#stx-null?
                                                         _tl5078751765_)
                                                        (___kont5392753928_
                                                         _hd5078651762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5077150985_))))))
                                            (if (gx#stx-null? _tl5078751765_)
                                                (___kont5392753928_
                                                 _hd5078651762_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5077150985_))))))
                                    (if (gx#stx-null? _tl5078751765_)
                                        (___kont5392753928_ _hd5078651762_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_)))))))
                        (if (fx>= (gx#stx-length _tl5078751765_) '1)
                            (let ((___splice5392553926_
                                   (gx#syntax-split-splice _tl5078751765_ '1)))
                              (let ((_tl5082551654_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5392553926_ '1)))
                                    (_target5082351651_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5392553926_
                                        '0))))
                                (if (gx#stx-pair? _tl5082551654_)
                                    (let ((_e5083251657_
                                           (gx#syntax-e _tl5082551654_)))
                                      (let ((_tl5083451664_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5083251657_)))
                                            (_hd5083351661_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5083251657_))))
                                        (if (gx#stx-null? _tl5083451664_)
                                            (___match5404554046_
                                             _e5077851734_
                                             _hd5077951738_
                                             _tl5078051741_
                                             _e5078151744_
                                             _hd5078251748_
                                             _tl5078351751_
                                             _e5078451754_
                                             _e5078551758_
                                             _hd5078651762_
                                             _tl5078751765_
                                             ___splice5392553926_
                                             _target5082351651_
                                             _tl5082551654_
                                             _e5083251657_
                                             _hd5083351661_
                                             _tl5083451664_)
                                            (if (gx#stx-null? _tl5078751765_)
                                                (___kont5392753928_
                                                 _hd5078651762_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5077150985_))))))
                                    (if (gx#stx-null? _tl5078751765_)
                                        (___kont5392753928_ _hd5078651762_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_))))))
                            (if (gx#stx-null? _tl5078751765_)
                                (___kont5392753928_ _hd5078651762_)
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_)))))))
                (if (fx>= (gx#stx-length _tl5078751765_) '1)
                    (let ((___splice5392553926_
                           (gx#syntax-split-splice _tl5078751765_ '1)))
                      (let ((_tl5082551654_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5392553926_ '1)))
                            (_target5082351651_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5392553926_ '0))))
                        (if (gx#stx-pair? _tl5082551654_)
                            (let ((_e5083251657_ (gx#syntax-e _tl5082551654_)))
                              (let ((_tl5083451664_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5083251657_)))
                                    (_hd5083351661_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5083251657_))))
                                (if (gx#stx-null? _tl5083451664_)
                                    (___match5404554046_
                                     _e5077851734_
                                     _hd5077951738_
                                     _tl5078051741_
                                     _e5078151744_
                                     _hd5078251748_
                                     _tl5078351751_
                                     _e5078451754_
                                     _e5078551758_
                                     _hd5078651762_
                                     _tl5078751765_
                                     ___splice5392553926_
                                     _target5082351651_
                                     _tl5082551654_
                                     _e5083251657_
                                     _hd5083351661_
                                     _tl5083451664_)
                                    (if (gx#stx-null? _tl5078751765_)
                                        (___kont5392753928_ _hd5078651762_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_))))))
                            (if (gx#stx-null? _tl5078751765_)
                                (___kont5392753928_ _hd5078651762_)
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_))))))
                    (if (gx#stx-null? _tl5078751765_)
                        (___kont5392753928_ _hd5078651762_)
                        (let () (declare (not safe)) (_g5077150985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5078751765_)
                                                        (___kont5392753928_
                                                         _hd5078651762_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5077150985_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5077150985_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5078451754_ '2))
                                            (if (gx#stx-pair? _tl5078351751_)
                                                (let ((_e5085951457_
                                                       (gx#syntax-e
                                                        _tl5078351751_)))
                                                  (let ((_tl5086151464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5085951457_)))
                                                        (_hd5086051461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5085951457_))))
                                                    (if (gx#stx-pair?
                                                         _tl5086151464_)
                                                        (let ((_e5086251467_
                                                               (gx#syntax-e
                                                                _tl5086151464_)))
                                                          (let ((_tl5086451474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5086251467_)))
                        (_hd5086351471_
                         (let () (declare (not safe)) (##car _e5086251467_))))
                    (if (gx#stx-pair? _hd5086351471_)
                        (let ((_e5086551477_ (gx#syntax-e _hd5086351471_)))
                          (let ((_tl5086751484_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5086551477_)))
                                (_hd5086651481_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5086551477_))))
                            (if (gx#stx-pair? _hd5086651481_)
                                (let ((_e5086851487_
                                       (gx#syntax-e _hd5086651481_)))
                                  (let ((_tl5087051494_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5086851487_)))
                                        (_hd5086951491_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5086851487_))))
                                    (if (gx#identifier? _hd5086951491_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g54714_|
                                             _hd5086951491_)
                                            (if (gx#stx-pair? _tl5087051494_)
                                                (let ((_e5087151497_
                                                       (gx#syntax-e
                                                        _tl5087051494_)))
                                                  (let ((_tl5087351504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5087151497_)))
                                                        (_hd5087251501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5087151497_))))
                                                    (if (gx#stx-null?
                                                         _tl5087351504_)
                                                        (if (gx#stx-pair?
                                                             _tl5086751484_)
                                                            (let ((_e5087451507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5086751484_)))
                      (let ((_tl5087651514_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5087451507_)))
                            (_hd5087551511_
                             (let ()
                               (declare (not safe))
                               (##car _e5087451507_))))
                        (___kont5392953930_
                         _tl5086451474_
                         _tl5087651514_
                         _hd5087551511_
                         _hd5087251501_
                         _hd5086051461_
                         _hd5077951738_)))
                    (___kont5393153932_
                     _tl5086451474_
                     _tl5086751484_
                     _hd5086651481_
                     _hd5086051461_
                     _hd5077951738_))
                (___kont5393153932_
                 _tl5086451474_
                 _tl5086751484_
                 _hd5086651481_
                 _hd5086051461_
                 _hd5077951738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5393153932_
                                                 _tl5086451474_
                                                 _tl5086751484_
                                                 _hd5086651481_
                                                 _hd5086051461_
                                                 _hd5077951738_))
                                            (___kont5393153932_
                                             _tl5086451474_
                                             _tl5086751484_
                                             _hd5086651481_
                                             _hd5086051461_
                                             _hd5077951738_))
                                        (___kont5393153932_
                                         _tl5086451474_
                                         _tl5086751484_
                                         _hd5086651481_
                                         _hd5086051461_
                                         _hd5077951738_))))
                                (___kont5393153932_
                                 _tl5086451474_
                                 _tl5086751484_
                                 _hd5086651481_
                                 _hd5086051461_
                                 _hd5077951738_))))
                        (if (gx#stx-null? _hd5086351471_)
                            (___kont5393353934_
                             _tl5086451474_
                             _hd5086051461_
                             _hd5077951738_)
                            (let () (declare (not safe)) (_g5077150985_))))))
                (let () (declare (not safe)) (_g5077150985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5077150985_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5078451754_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5078351751_)
                                                    (let ((_e5092651206_
                                                           (gx#syntax-e
                                                            _tl5078351751_)))
                                                      (let ((_tl5092851213_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5092651206_)))
                    (_hd5092751210_
                     (let () (declare (not safe)) (##car _e5092651206_))))
                (if (gx#stx-pair? _tl5092851213_)
                    (let ((_e5092951216_ (gx#syntax-e _tl5092851213_)))
                      (let ((_tl5093151223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5092951216_)))
                            (_hd5093051220_
                             (let ()
                               (declare (not safe))
                               (##car _e5092951216_))))
                        (if (gx#stx-pair? _hd5093051220_)
                            (let ((_e5093251226_ (gx#syntax-e _hd5093051220_)))
                              (let ((_tl5093451233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5093251226_)))
                                    (_hd5093351230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5093251226_))))
                                (___kont5393553936_
                                 _tl5093151223_
                                 _tl5093451233_
                                 _hd5093351230_
                                 _hd5092751210_
                                 _hd5077951738_)))
                            (if (gx#stx-pair/null? _hd5092751210_)
                                (let ((___splice5393953940_
                                       (gx#syntax-split-splice
                                        _hd5092751210_
                                        '0)))
                                  (let ((_tl5095351029_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5393953940_
                                            '1)))
                                        (_target5095151026_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5393953940_
                                            '0))))
                                    (if (gx#stx-null? _tl5095351029_)
                                        (___match5426754268_
                                         _e5077851734_
                                         _hd5077951738_
                                         _tl5078051741_
                                         _e5078151744_
                                         _hd5078251748_
                                         _tl5078351751_
                                         _e5078451754_
                                         _e5092651206_
                                         _hd5092751210_
                                         _tl5092851213_
                                         ___splice5393953940_
                                         _target5095151026_
                                         _tl5095351029_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5077150985_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_))))))
                    (if (gx#stx-pair/null? _hd5092751210_)
                        (let ((___splice5393953940_
                               (gx#syntax-split-splice _hd5092751210_ '0)))
                          (let ((_tl5095351029_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5393953940_ '1)))
                                (_target5095151026_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5393953940_ '0))))
                            (if (gx#stx-null? _tl5095351029_)
                                (___match5426754268_
                                 _e5077851734_
                                 _hd5077951738_
                                 _tl5078051741_
                                 _e5078151744_
                                 _hd5078251748_
                                 _tl5078351751_
                                 _e5078451754_
                                 _e5092651206_
                                 _hd5092751210_
                                 _tl5092851213_
                                 ___splice5393953940_
                                 _target5095151026_
                                 _tl5095351029_)
                                (let ()
                                  (declare (not safe))
                                  (_g5077150985_)))))
                        (let () (declare (not safe)) (_g5077150985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5077150985_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5077150985_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5077150985_)))))
                          (let () (declare (not safe)) (_g5077150985_)))))
                  (let () (declare (not safe)) (_g5077150985_))))))))))
