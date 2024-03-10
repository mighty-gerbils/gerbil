(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61512_)
      (let* ((___stx6404964050_ _$stx61512_)
             (_g6151761546_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6404964050_))))
        (let ((___kont6405264053_
               (lambda (_L61639_ _L61641_)
                 (let ((__tmp64388 (gx#datum->syntax '#f '##fx=))
                       (__tmp64382
                        (let ((__tmp64384
                               (let ((__tmp64387
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64385
                                      (let ((__tmp64386
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61639_ '()))))
                                        (declare (not safe))
                                        (cons _L61641_ __tmp64386))))
                                 (declare (not safe))
                                 (cons __tmp64387 __tmp64385)))
                              (__tmp64383
                               (let ()
                                 (declare (not safe))
                                 (cons _L61639_ '()))))
                          (declare (not safe))
                          (cons __tmp64384 __tmp64383))))
                   (declare (not safe))
                   (cons __tmp64388 __tmp64382))))
              (___kont6405464055_
               (lambda (_L61583_ _L61585_)
                 (let ((__tmp64401 (gx#datum->syntax '#f 'let))
                       (__tmp64389
                        (let ((__tmp64399
                               (let ((__tmp64400
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61583_ '()))))
                                 (declare (not safe))
                                 (cons _L61583_ __tmp64400)))
                              (__tmp64390
                               (let ((__tmp64391
                                      (let ((__tmp64398
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64392
                                             (let ((__tmp64394
                                                    (let ((__tmp64397
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64395
                                                           (let ((__tmp64396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61583_ '()))))
                     (declare (not safe))
                     (cons _L61585_ __tmp64396))))
              (declare (not safe))
              (cons __tmp64397 __tmp64395)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64393
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L61583_ '()))))
                                               (declare (not safe))
                                               (cons __tmp64394 __tmp64393))))
                                        (declare (not safe))
                                        (cons __tmp64398 __tmp64392))))
                                 (declare (not safe))
                                 (cons __tmp64391 '()))))
                          (declare (not safe))
                          (cons __tmp64399 __tmp64390))))
                   (declare (not safe))
                   (cons __tmp64401 __tmp64389)))))
          (let ((___match6407664077_
                 (lambda (_e6152361609_
                          _hd6152261613_
                          _tl6152161616_
                          _e6152661619_
                          _hd6152561623_
                          _tl6152461626_
                          _e6152961629_
                          _hd6152861633_
                          _tl6152761636_)
                   (let ((_L61639_ _hd6152861633_) (_L61641_ _hd6152561623_))
                     (if (or (gx#identifier? _L61639_)
                             (gx#stx-fixnum? _L61639_))
                         (___kont6405264053_ _L61639_ _L61641_)
                         (___kont6405464055_
                          _hd6152861633_
                          _hd6152561623_))))))
            (if (gx#stx-pair? ___stx6404964050_)
                (let ((_e6152361609_ (gx#syntax-e ___stx6404964050_)))
                  (let ((_tl6152161616_
                         (let () (declare (not safe)) (##cdr _e6152361609_)))
                        (_hd6152261613_
                         (let () (declare (not safe)) (##car _e6152361609_))))
                    (if (gx#stx-pair? _tl6152161616_)
                        (let ((_e6152661619_ (gx#syntax-e _tl6152161616_)))
                          (let ((_tl6152461626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6152661619_)))
                                (_hd6152561623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6152661619_))))
                            (if (gx#stx-pair? _tl6152461626_)
                                (let ((_e6152961629_
                                       (gx#syntax-e _tl6152461626_)))
                                  (let ((_tl6152761636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6152961629_)))
                                        (_hd6152861633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6152961629_))))
                                    (if (gx#stx-null? _tl6152761636_)
                                        (___match6407664077_
                                         _e6152361609_
                                         _hd6152261613_
                                         _tl6152161616_
                                         _e6152661619_
                                         _hd6152561623_
                                         _tl6152461626_
                                         _e6152961629_
                                         _hd6152861633_
                                         _tl6152761636_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6151761546_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6151761546_)))))
                        (let () (declare (not safe)) (_g6151761546_)))))
                (let () (declare (not safe)) (_g6151761546_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61664_)
      (let* ((___stx6409964100_ _$stx61664_)
             (_g6166961698_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6409964100_))))
        (let ((___kont6410264103_
               (lambda (_L61790_ _L61792_)
                 (let ((__tmp64408 (gx#datum->syntax '#f '##fx=))
                       (__tmp64402
                        (let ((__tmp64404
                               (let ((__tmp64407
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp64405
                                      (let ((__tmp64406
                                             (let ()
                                               (declare (not safe))
                                               (cons _L61790_ '()))))
                                        (declare (not safe))
                                        (cons _L61792_ __tmp64406))))
                                 (declare (not safe))
                                 (cons __tmp64407 __tmp64405)))
                              (__tmp64403
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp64404 __tmp64403))))
                   (declare (not safe))
                   (cons __tmp64408 __tmp64402))))
              (___kont6410464105_
               (lambda (_L61735_ _L61737_)
                 (let ((__tmp64421 (gx#datum->syntax '#f 'let))
                       (__tmp64409
                        (let ((__tmp64419
                               (let ((__tmp64420
                                      (let ()
                                        (declare (not safe))
                                        (cons _L61735_ '()))))
                                 (declare (not safe))
                                 (cons _L61735_ __tmp64420)))
                              (__tmp64410
                               (let ((__tmp64411
                                      (let ((__tmp64418
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp64412
                                             (let ((__tmp64414
                                                    (let ((__tmp64417
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp64415
                                                           (let ((__tmp64416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L61735_ '()))))
                     (declare (not safe))
                     (cons _L61737_ __tmp64416))))
              (declare (not safe))
              (cons __tmp64417 __tmp64415)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64413
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp64414 __tmp64413))))
                                        (declare (not safe))
                                        (cons __tmp64418 __tmp64412))))
                                 (declare (not safe))
                                 (cons __tmp64411 '()))))
                          (declare (not safe))
                          (cons __tmp64419 __tmp64410))))
                   (declare (not safe))
                   (cons __tmp64421 __tmp64409)))))
          (let ((___match6412664127_
                 (lambda (_e6167561760_
                          _hd6167461764_
                          _tl6167361767_
                          _e6167861770_
                          _hd6167761774_
                          _tl6167661777_
                          _e6168161780_
                          _hd6168061784_
                          _tl6167961787_)
                   (let ((_L61790_ _hd6168061784_) (_L61792_ _hd6167761774_))
                     (if (or (gx#identifier? _L61790_)
                             (gx#stx-fixnum? _L61790_))
                         (___kont6410264103_ _L61790_ _L61792_)
                         (___kont6410464105_
                          _hd6168061784_
                          _hd6167761774_))))))
            (if (gx#stx-pair? ___stx6409964100_)
                (let ((_e6167561760_ (gx#syntax-e ___stx6409964100_)))
                  (let ((_tl6167361767_
                         (let () (declare (not safe)) (##cdr _e6167561760_)))
                        (_hd6167461764_
                         (let () (declare (not safe)) (##car _e6167561760_))))
                    (if (gx#stx-pair? _tl6167361767_)
                        (let ((_e6167861770_ (gx#syntax-e _tl6167361767_)))
                          (let ((_tl6167661777_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6167861770_)))
                                (_hd6167761774_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6167861770_))))
                            (if (gx#stx-pair? _tl6167661777_)
                                (let ((_e6168161780_
                                       (gx#syntax-e _tl6167661777_)))
                                  (let ((_tl6167961787_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6168161780_)))
                                        (_hd6168061784_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6168161780_))))
                                    (if (gx#stx-null? _tl6167961787_)
                                        (___match6412664127_
                                         _e6167561760_
                                         _hd6167461764_
                                         _tl6167361767_
                                         _e6167861770_
                                         _hd6167761774_
                                         _tl6167661777_
                                         _e6168161780_
                                         _hd6168061784_
                                         _tl6167961787_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6166961698_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6166961698_)))))
                        (let () (declare (not safe)) (_g6166961698_)))))
                (let () (declare (not safe)) (_g6166961698_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61815_)
      (let* ((_g6181861839_
              (lambda (_g6181961835_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6181961835_)))
             (_g6181762067_
              (lambda (_g6181961843_)
                (if (gx#stx-pair? _g6181961843_)
                    (let ((_e6182461846_ (gx#syntax-e _g6181961843_)))
                      (let ((_hd6182361850_
                             (let ()
                               (declare (not safe))
                               (##car _e6182461846_)))
                            (_tl6182261853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6182461846_))))
                        (if (gx#stx-pair? _tl6182261853_)
                            (let ((_e6182761856_ (gx#syntax-e _tl6182261853_)))
                              (let ((_hd6182661860_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6182761856_)))
                                    (_tl6182561863_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6182761856_))))
                                (if (gx#stx-pair? _hd6182661860_)
                                    (let ((_e6183061866_
                                           (gx#syntax-e _hd6182661860_)))
                                      (let ((_hd6182961870_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6183061866_)))
                                            (_tl6182861873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6183061866_))))
                                        (if (gx#stx-pair? _tl6182861873_)
                                            (let ((_e6183361876_
                                                   (gx#syntax-e
                                                    _tl6182861873_)))
                                              (let ((_hd6183261880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6183361876_)))
                                                    (_tl6183161883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6183361876_))))
                                                (if (gx#stx-null?
                                                     _tl6183161883_)
                                                    (if (gx#stx-null?
                                                         _tl6182561863_)
                                                        ((lambda (_L61886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61888_)
                   (let* ((_g6190661914_
                           (lambda (_g6190761910_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6190761910_)))
                          (_g6190562063_
                           (lambda (_g6190761918_)
                             ((lambda (_L61921_)
                                (let ()
                                  (let* ((_g6193361941_
                                          (lambda (_g6193461937_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6193461937_)))
                                         (_g6193262059_
                                          (lambda (_g6193461945_)
                                            ((lambda (_L61948_)
                                               (let ()
                                                 (let* ((_g6196161969_
                                                         (lambda (_g6196261965_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6196261965_)))
                                                        (_g6196062055_
                                                         (lambda (_g6196261973_)
                                                           ((lambda (_L61976_)
                                                              (let ()
                                                                (let* ((_g6198961997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6199061993_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6199061993_)))
                               (_g6198862051_
                                (lambda (_g6199062001_)
                                  ((lambda (_L62004_)
                                     (let ()
                                       (let* ((_g6201762025_
                                               (lambda (_g6201862021_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6201862021_)))
                                              (_g6201662047_
                                               (lambda (_g6201862029_)
                                                 ((lambda (_L62032_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp64554
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp64422
                                                               (let ((__tmp64524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64553 (gx#datum->syntax '#f 'def))
                                    (__tmp64525
                                     (let ((__tmp64526
                                            (let ((__tmp64527
                                                   (let ((__tmp64552
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp64528
                                                          (let ((__tmp64547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64551
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp64548
                                (let ((__tmp64549
                                       (let ((__tmp64550
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L61888_ __tmp64550))))
                                  (declare (not safe))
                                  (cons _L61921_ __tmp64549))))
                           (declare (not safe))
                           (cons __tmp64551 __tmp64548)))
                        (__tmp64529
                         (let ((__tmp64530
                                (let ((__tmp64546
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64531
                                       (let ((__tmp64544
                                              (let ((__tmp64545
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp64545 '())))
                                             (__tmp64532
                                              (let ((__tmp64533
                                                     (let ((__tmp64543
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp64534
                                                            (let ((__tmp64542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64535
                           (let ((__tmp64536
                                  (let ((__tmp64541
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp64537
                                         (let ((__tmp64538
                                                (let ((__tmp64540
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp64539
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L61888_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64540
                                                        __tmp64539))))
                                           (declare (not safe))
                                           (cons __tmp64538 '()))))
                                    (declare (not safe))
                                    (cons __tmp64541 __tmp64537))))
                             (declare (not safe))
                             (cons _L61886_ __tmp64536))))
                      (declare (not safe))
                      (cons __tmp64542 __tmp64535))))
               (declare (not safe))
               (cons __tmp64543 __tmp64534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64533 '()))))
                                         (declare (not safe))
                                         (cons __tmp64544 __tmp64532))))
                                  (declare (not safe))
                                  (cons __tmp64546 __tmp64531))))
                           (declare (not safe))
                           (cons __tmp64530 '()))))
                    (declare (not safe))
                    (cons __tmp64547 __tmp64529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64552
                                                           __tmp64528))))
                                              (declare (not safe))
                                              (cons __tmp64527 '()))))
                                       (declare (not safe))
                                       (cons _L61948_ __tmp64526))))
                                (declare (not safe))
                                (cons __tmp64553 __tmp64525)))
                             (__tmp64423
                              (let ((__tmp64494
                                     (let ((__tmp64523
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp64495
                                            (let ((__tmp64496
                                                   (let ((__tmp64497
                                                          (let ((__tmp64522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp64498
                         (let ((__tmp64517
                                (let ((__tmp64521
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp64518
                                       (let ((__tmp64519
                                              (let ((__tmp64520
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L61888_ __tmp64520))))
                                         (declare (not safe))
                                         (cons _L61921_ __tmp64519))))
                                  (declare (not safe))
                                  (cons __tmp64521 __tmp64518)))
                               (__tmp64499
                                (let ((__tmp64500
                                       (let ((__tmp64516
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp64501
                                              (let ((__tmp64514
                                                     (let ((__tmp64515
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp64515 '())))
                                                    (__tmp64502
                                                     (let ((__tmp64503
                                                            (let ((__tmp64513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp64504
                           (let ((__tmp64512 (gx#datum->syntax '#f 'klass))
                                 (__tmp64505
                                  (let ((__tmp64506
                                         (let ((__tmp64511
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp64507
                                                (let ((__tmp64508
                                                       (let ((__tmp64510
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp64509
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L61888_ '()))))
                 (declare (not safe))
                 (cons __tmp64510 __tmp64509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64508 '()))))
                                           (declare (not safe))
                                           (cons __tmp64511 __tmp64507))))
                                    (declare (not safe))
                                    (cons _L61886_ __tmp64506))))
                             (declare (not safe))
                             (cons __tmp64512 __tmp64505))))
                      (declare (not safe))
                      (cons __tmp64513 __tmp64504))))
               (declare (not safe))
               (cons __tmp64503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64514 __tmp64502))))
                                         (declare (not safe))
                                         (cons __tmp64516 __tmp64501))))
                                  (declare (not safe))
                                  (cons __tmp64500 '()))))
                           (declare (not safe))
                           (cons __tmp64517 __tmp64499))))
                    (declare (not safe))
                    (cons __tmp64522 __tmp64498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64497 '()))))
                                              (declare (not safe))
                                              (cons _L61976_ __tmp64496))))
                                       (declare (not safe))
                                       (cons __tmp64523 __tmp64495)))
                                    (__tmp64424
                                     (let ((__tmp64460
                                            (let ((__tmp64493
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp64461
                                                   (let ((__tmp64462
                                                          (let ((__tmp64463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64492
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp64464
                                (let ((__tmp64487
                                       (let ((__tmp64491
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp64488
                                              (let ((__tmp64489
                                                     (let ((__tmp64490
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L61888_
                                                             __tmp64490))))
                                                (declare (not safe))
                                                (cons _L61921_ __tmp64489))))
                                         (declare (not safe))
                                         (cons __tmp64491 __tmp64488)))
                                      (__tmp64465
                                       (let ((__tmp64466
                                              (let ((__tmp64486
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp64467
                                                     (let ((__tmp64482
                                                            (let ((__tmp64485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp64483
                           (let ((__tmp64484 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp64484 '()))))
                      (declare (not safe))
                      (cons __tmp64485 __tmp64483)))
                   (__tmp64468
                    (let ((__tmp64469
                           (let ((__tmp64481
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp64470
                                  (let ((__tmp64480
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64471
                                         (let ((__tmp64479
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp64472
                                                (let ((__tmp64473
                                                       (let ((__tmp64478
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp64474
                                                              (let ((__tmp64475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64477 (gx#datum->syntax '#f 'quote))
                                   (__tmp64476
                                    (let ()
                                      (declare (not safe))
                                      (cons _L61888_ '()))))
                               (declare (not safe))
                               (cons __tmp64477 __tmp64476))))
                        (declare (not safe))
                        (cons __tmp64475 '()))))
                 (declare (not safe))
                 (cons __tmp64478 __tmp64474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L61886_ __tmp64473))))
                                           (declare (not safe))
                                           (cons __tmp64479 __tmp64472))))
                                    (declare (not safe))
                                    (cons __tmp64480 __tmp64471))))
                             (declare (not safe))
                             (cons __tmp64481 __tmp64470))))
                      (declare (not safe))
                      (cons __tmp64469 '()))))
               (declare (not safe))
               (cons __tmp64482 __tmp64468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64486 __tmp64467))))
                                         (declare (not safe))
                                         (cons __tmp64466 '()))))
                                  (declare (not safe))
                                  (cons __tmp64487 __tmp64465))))
                           (declare (not safe))
                           (cons __tmp64492 __tmp64464))))
                    (declare (not safe))
                    (cons __tmp64463 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62004_
                                                           __tmp64462))))
                                              (declare (not safe))
                                              (cons __tmp64493 __tmp64461)))
                                           (__tmp64425
                                            (let ((__tmp64426
                                                   (let ((__tmp64459
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp64427
                                                          (let ((__tmp64428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64429
                                (let ((__tmp64458
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp64430
                                       (let ((__tmp64453
                                              (let ((__tmp64457
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp64454
                                                     (let ((__tmp64455
                                                            (let ((__tmp64456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L61888_ __tmp64456))))
               (declare (not safe))
               (cons _L61921_ __tmp64455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64457 __tmp64454)))
                                             (__tmp64431
                                              (let ((__tmp64432
                                                     (let ((__tmp64452
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp64433
                                                            (let ((__tmp64448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64451 (gx#datum->syntax '#f 'klass))
                                 (__tmp64449
                                  (let ((__tmp64450
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp64450 '()))))
                             (declare (not safe))
                             (cons __tmp64451 __tmp64449)))
                          (__tmp64434
                           (let ((__tmp64435
                                  (let ((__tmp64447
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp64436
                                         (let ((__tmp64446
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp64437
                                                (let ((__tmp64445
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp64438
                                                       (let ((__tmp64439
                                                              (let ((__tmp64444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp64440
                             (let ((__tmp64441
                                    (let ((__tmp64443
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp64442
                                           (let ()
                                             (declare (not safe))
                                             (cons _L61888_ '()))))
                                      (declare (not safe))
                                      (cons __tmp64443 __tmp64442))))
                               (declare (not safe))
                               (cons __tmp64441 '()))))
                        (declare (not safe))
                        (cons __tmp64444 __tmp64440))))
                 (declare (not safe))
                 (cons _L61886_ __tmp64439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64445
                                                        __tmp64438))))
                                           (declare (not safe))
                                           (cons __tmp64446 __tmp64437))))
                                    (declare (not safe))
                                    (cons __tmp64447 __tmp64436))))
                             (declare (not safe))
                             (cons __tmp64435 '()))))
                      (declare (not safe))
                      (cons __tmp64448 __tmp64434))))
               (declare (not safe))
               (cons __tmp64452 __tmp64433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64432 '()))))
                                         (declare (not safe))
                                         (cons __tmp64453 __tmp64431))))
                                  (declare (not safe))
                                  (cons __tmp64458 __tmp64430))))
                           (declare (not safe))
                           (cons __tmp64429 '()))))
                    (declare (not safe))
                    (cons _L62032_ __tmp64428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64459
                                                           __tmp64427))))
                                              (declare (not safe))
                                              (cons __tmp64426 '()))))
                                       (declare (not safe))
                                       (cons __tmp64460 __tmp64425))))
                                (declare (not safe))
                                (cons __tmp64494 __tmp64424))))
                         (declare (not safe))
                         (cons __tmp64524 __tmp64423))))
                  (declare (not safe))
                  (cons __tmp64554 __tmp64422)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6201862029_))))
                                         (_g6201662047_
                                          (gx#stx-identifier
                                           _L61888_
                                           '"&"
                                           _L62004_)))))
                                   _g6199062001_))))
                          (_g6198862051_
                           (gx#stx-identifier _L61888_ _L61948_ '"-set!")))))
                    _g6196261973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6196062055_
                                                    (gx#stx-identifier
                                                     _L61888_
                                                     '"&"
                                                     _L61948_)))))
                                             _g6193461945_))))
                                    (_g6193262059_
                                     (gx#stx-identifier
                                      _L61888_
                                      '"class-type-"
                                      _L61888_)))))
                              _g6190761918_))))
                     (_g6190562063_ (gx#core-quote-syntax 'class::t))))
                 _hd6183261880_
                 _hd6182961870_)
                (_g6181861839_ _g6181961843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6181861839_
                                                     _g6181961843_))))
                                            (_g6181861839_ _g6181961843_))))
                                    (_g6181861839_ _g6181961843_))))
                            (_g6181861839_ _g6181961843_))))
                    (_g6181861839_ _g6181961843_)))))
        (_g6181762067_ _stx61815_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx62071_)
      (let* ((_g6207562104_
              (lambda (_g6207662100_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6207662100_)))
             (_g6207462204_
              (lambda (_g6207662108_)
                (if (gx#stx-pair? _g6207662108_)
                    (let ((_e6208162111_ (gx#syntax-e _g6207662108_)))
                      (let ((_hd6208062115_
                             (let ()
                               (declare (not safe))
                               (##car _e6208162111_)))
                            (_tl6207962118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6208162111_))))
                        (if (gx#stx-pair/null? _tl6207962118_)
                            (let ((_g64555_
                                   (gx#syntax-split-splice _tl6207962118_ '0)))
                              (begin
                                (let ((_g64556_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64555_)
                                             (##vector-length _g64555_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64556_ 2)))
                                      (error "Context expects 2 values"
                                             _g64556_)))
                                (let ((_target6208262121_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64555_ 0)))
                                      (_tl6208462124_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64555_ 1))))
                                  (if (gx#stx-null? _tl6208462124_)
                                      (letrec ((_loop6208562127_
                                                (lambda (_hd6208362131_
                                                         _field6208962134_
                                                         _slot6209062136_)
                                                  (if (gx#stx-pair?
                                                       _hd6208362131_)
                                                      (let ((_e6208662139_
                                                             (gx#syntax-e
                                                              _hd6208362131_)))
                                                        (let ((_lp-hd6208762143_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6208662139_)))
                      (_lp-tl6208862146_
                       (let () (declare (not safe)) (##cdr _e6208662139_))))
                  (if (gx#stx-pair? _lp-hd6208762143_)
                      (let ((_e6209562149_ (gx#syntax-e _lp-hd6208762143_)))
                        (let ((_hd6209462153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6209562149_)))
                              (_tl6209362156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6209562149_))))
                          (if (gx#stx-pair? _tl6209362156_)
                              (let ((_e6209862159_
                                     (gx#syntax-e _tl6209362156_)))
                                (let ((_hd6209762163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6209862159_)))
                                      (_tl6209662166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6209862159_))))
                                  (if (gx#stx-null? _tl6209662166_)
                                      (_loop6208562127_
                                       _lp-tl6208862146_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6209762163_
                                               _field6208962134_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6209462153_
                                               _slot6209062136_)))
                                      (_g6207562104_ _g6207662108_))))
                              (_g6207562104_ _g6207662108_))))
                      (_g6207562104_ _g6207662108_))))
              (let ((_field6209162169_ (reverse _field6208962134_))
                    (_slot6209262172_ (reverse _slot6209062136_)))
                ((lambda (_L62175_ _L62177_)
                   (let ((__tmp64564 (gx#datum->syntax '#f 'begin))
                         (__tmp64557
                          (begin
                            (gx#syntax-check-splice-targets _L62175_ _L62177_)
                            (let ((__tmp64558
                                   (lambda (_g6219262196_
                                            _g6219362199_
                                            _g6219462201_)
                                     (let ((__tmp64559
                                            (let ((__tmp64563
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp64560
                                                   (let ((__tmp64561
                                                          (let ((__tmp64562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g6219262196_ '()))))
                    (declare (not safe))
                    (cons _g6219362199_ __tmp64562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64561 '()))))
                                              (declare (not safe))
                                              (cons __tmp64563 __tmp64560))))
                                       (declare (not safe))
                                       (cons __tmp64559 _g6219462201_)))))
                              (declare (not safe))
                              (foldr2 __tmp64558 '() _L62175_ _L62177_)))))
                     (declare (not safe))
                     (cons __tmp64564 __tmp64557)))
                 _field6209162169_
                 _slot6209262172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6208562127_
                                         _target6208262121_
                                         '()
                                         '()))
                                      (_g6207562104_ _g6207662108_)))))
                            (_g6207562104_ _g6207662108_))))
                    (_g6207562104_ _g6207662108_)))))
        (_g6207462204_ _$stx62071_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62209_)
      (let* ((_g6221362239_
              (lambda (_g6221462235_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6221462235_)))
             (_g6221262322_
              (lambda (_g6221462243_)
                (if (gx#stx-pair? _g6221462243_)
                    (let ((_e6222162246_ (gx#syntax-e _g6221462243_)))
                      (let ((_hd6222062250_
                             (let ()
                               (declare (not safe))
                               (##car _e6222162246_)))
                            (_tl6221962253_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6222162246_))))
                        (if (gx#stx-pair? _tl6221962253_)
                            (let ((_e6222462256_ (gx#syntax-e _tl6221962253_)))
                              (let ((_hd6222362260_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6222462256_)))
                                    (_tl6222262263_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6222462256_))))
                                (if (gx#stx-pair? _tl6222262263_)
                                    (let ((_e6222762266_
                                           (gx#syntax-e _tl6222262263_)))
                                      (let ((_hd6222662270_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6222762266_)))
                                            (_tl6222562273_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6222762266_))))
                                        (if (gx#stx-pair? _tl6222562273_)
                                            (let ((_e6223062276_
                                                   (gx#syntax-e
                                                    _tl6222562273_)))
                                              (let ((_hd6222962280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6223062276_)))
                                                    (_tl6222862283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6223062276_))))
                                                (if (gx#stx-pair?
                                                     _tl6222862283_)
                                                    (let ((_e6223362286_
                                                           (gx#syntax-e
                                                            _tl6222862283_)))
                                                      (let ((_hd6223262290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6223362286_)))
                    (_tl6223162293_
                     (let () (declare (not safe)) (##cdr _e6223362286_))))
                (if (gx#stx-null? _tl6223162293_)
                    ((lambda (_L62296_ _L62298_ _L62299_ _L62300_)
                       (let ((__tmp64611 (gx#datum->syntax '#f 'if))
                             (__tmp64565
                              (let ((__tmp64608
                                     (let ((__tmp64610
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp64609
                                            (let ()
                                              (declare (not safe))
                                              (cons _L62300_ '()))))
                                       (declare (not safe))
                                       (cons __tmp64610 __tmp64609)))
                                    (__tmp64566
                                     (let ((__tmp64571
                                            (let ((__tmp64607
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp64572
                                                   (let ((__tmp64601
                                                          (let ((__tmp64606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp64602
                         (let ((__tmp64603
                                (let ((__tmp64605
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp64604
                                       (let ()
                                         (declare (not safe))
                                         (cons _L62300_ '()))))
                                  (declare (not safe))
                                  (cons __tmp64605 __tmp64604))))
                           (declare (not safe))
                           (cons __tmp64603 '()))))
                    (declare (not safe))
                    (cons __tmp64606 __tmp64602)))
                 (__tmp64573
                  (let ((__tmp64574
                         (let ((__tmp64600 (gx#datum->syntax '#f 'cond))
                               (__tmp64575
                                (let ((__tmp64583
                                       (let ((__tmp64587
                                              (let ((__tmp64599
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp64588
                                                     (let ((__tmp64595
                                                            (let ((__tmp64598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp64596
                           (let ((__tmp64597 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp64597 '()))))
                      (declare (not safe))
                      (cons __tmp64598 __tmp64596)))
                   (__tmp64589
                    (let ((__tmp64590
                           (let ((__tmp64594
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp64591
                                  (let ((__tmp64593
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp64592
                                         (let ()
                                           (declare (not safe))
                                           (cons _L62299_ '()))))
                                    (declare (not safe))
                                    (cons __tmp64593 __tmp64592))))
                             (declare (not safe))
                             (cons __tmp64594 __tmp64591))))
                      (declare (not safe))
                      (cons __tmp64590 '()))))
               (declare (not safe))
               (cons __tmp64595 __tmp64589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64599 __tmp64588)))
                                             (__tmp64584
                                              (let ((__tmp64586
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp64585
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L62298_ '()))))
                                                (declare (not safe))
                                                (cons __tmp64586 __tmp64585))))
                                         (declare (not safe))
                                         (cons __tmp64587 __tmp64584)))
                                      (__tmp64576
                                       (let ((__tmp64577
                                              (let ((__tmp64582
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64578
                                                     (let ((__tmp64579
                                                            (let ((__tmp64580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64581
                                  (let ()
                                    (declare (not safe))
                                    (cons _L62299_ '()))))
                             (declare (not safe))
                             (cons _L62300_ __tmp64581))))
                      (declare (not safe))
                      (cons _L62296_ __tmp64580))))
               (declare (not safe))
               (cons __tmp64579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64582 __tmp64578))))
                                         (declare (not safe))
                                         (cons __tmp64577 '()))))
                                  (declare (not safe))
                                  (cons __tmp64583 __tmp64576))))
                           (declare (not safe))
                           (cons __tmp64600 __tmp64575))))
                    (declare (not safe))
                    (cons __tmp64574 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64601
                                                           __tmp64573))))
                                              (declare (not safe))
                                              (cons __tmp64607 __tmp64572)))
                                           (__tmp64567
                                            (let ((__tmp64568
                                                   (let ((__tmp64569
                                                          (let ((__tmp64570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L62299_ '()))))
                    (declare (not safe))
                    (cons _L62300_ __tmp64570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L62296_
                                                           __tmp64569))))
                                              (declare (not safe))
                                              (cons __tmp64568 '()))))
                                       (declare (not safe))
                                       (cons __tmp64571 __tmp64567))))
                                (declare (not safe))
                                (cons __tmp64608 __tmp64566))))
                         (declare (not safe))
                         (cons __tmp64611 __tmp64565)))
                     _hd6223262290_
                     _hd6222962280_
                     _hd6222662270_
                     _hd6222362260_)
                    (_g6221362239_ _g6221462243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6221362239_
                                                     _g6221462243_))))
                                            (_g6221362239_ _g6221462243_))))
                                    (_g6221362239_ _g6221462243_))))
                            (_g6221362239_ _g6221462243_))))
                    (_g6221362239_ _g6221462243_)))))
        (_g6221262322_ _$stx62209_)))))
