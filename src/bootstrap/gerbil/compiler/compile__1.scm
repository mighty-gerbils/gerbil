(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g18639_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18650_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18652_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18654_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18656_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18662_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18664_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18666_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18668_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18670_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18672_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18674_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18685_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18687_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18689_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18691_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18697_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18699_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18701_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18703_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18705_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18707_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx5408_)
        (let* ((___stx1621316214_ _$stx5408_)
               (_g54145494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1621316214_)))))
          (let ((___kont1621616217_
                 (lambda (_L5791_ _L5793_ _L5794_ _L5795_)
                   (let ((__tmp18415
                          (let ((__tmp18416
                                 (let ((__tmp18417
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5793_ '()))))
                                   (declare (not safe))
                                   (cons __tmp18417 _L5791_))))
                            (declare (not safe))
                            (cons _L5794_ __tmp18416))))
                     (declare (not safe))
                     (cons _L5795_ __tmp18415))))
                (___kont1621816219_
                 (lambda (_L5703_ _L5705_ _L5706_ _L5707_)
                   (let ((__tmp18454
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'define)))
                         (__tmp18418
                          (let ((__tmp18419
                                 (let ((__tmp18420
                                        (let ((__tmp18453
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'delay)))
                                              (__tmp18421
                                               (let ((__tmp18422
                                                      (let ((__tmp18452
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'let)))
                    (__tmp18423
                     (let ((__tmp18447
                            (let ((__tmp18451
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'tbl)))
                                  (__tmp18448
                                   (let ((__tmp18449
                                          (let ((__tmp18450
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-hash-table-eq))))
                                            (declare (not safe))
                                            (cons __tmp18450 '()))))
                                     (declare (not safe))
                                     (cons __tmp18449 '()))))
                              (declare (not safe))
                              (cons __tmp18451 __tmp18448)))
                           (__tmp18424
                            (let ((__tmp18438
                                   (lambda (_g57345740_ _g57355743_)
                                     (let ((__tmp18439
                                            (let ((__tmp18446
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-copy!)))
                                                  (__tmp18440
                                                   (let ((__tmp18445
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'tbl)))
                                                         (__tmp18441
                                                          (let ((__tmp18442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18444
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'force)))
                               (__tmp18443
                                (let ()
                                  (declare (not safe))
                                  (cons _g57345740_ '()))))
                           (declare (not safe))
                           (cons __tmp18444 __tmp18443))))
                    (declare (not safe))
                    (cons __tmp18442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18445
                                                           __tmp18441))))
                                              (declare (not safe))
                                              (cons __tmp18446 __tmp18440))))
                                       (declare (not safe))
                                       (cons __tmp18439 _g57355743_))))
                                  (__tmp18425
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L5703_
                                        _L5705_))
                                     (let ((__tmp18428
                                            (lambda (_g57365746_
                                                     _g57375749_
                                                     _g57385751_)
                                              (let ((__tmp18429
                                                     (let ((__tmp18437
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'hash-put!)))
                                                           (__tmp18430
                                                            (let ((__tmp18436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'tbl)))
                          (__tmp18431
                           (let ((__tmp18433
                                  (let ((__tmp18435
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp18434
                                         (let ()
                                           (declare (not safe))
                                           (cons _g57375749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp18435 __tmp18434)))
                                 (__tmp18432
                                  (let ()
                                    (declare (not safe))
                                    (cons _g57365746_ '()))))
                             (declare (not safe))
                             (cons __tmp18433 __tmp18432))))
                      (declare (not safe))
                      (cons __tmp18436 __tmp18431))))
               (declare (not safe))
               (cons __tmp18437 __tmp18430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18429
                                                      _g57385751_))))
                                           (__tmp18426
                                            (let ((__tmp18427
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'tbl))))
                                              (declare (not safe))
                                              (cons __tmp18427 '()))))
                                       (declare (not safe))
                                       (foldr2 __tmp18428
                                               __tmp18426
                                               _L5703_
                                               _L5705_)))))
                              (declare (not safe))
                              (foldr1 __tmp18438 __tmp18425 _L5706_))))
                       (declare (not safe))
                       (cons __tmp18447 __tmp18424))))
                (declare (not safe))
                (cons __tmp18452 __tmp18423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18422 '()))))
                                          (declare (not safe))
                                          (cons __tmp18453 __tmp18421))))
                                   (declare (not safe))
                                   (cons __tmp18420 '()))))
                            (declare (not safe))
                            (cons _L5707_ __tmp18419))))
                     (declare (not safe))
                     (cons __tmp18454 __tmp18418))))
                (___kont1622416225_
                 (lambda (_L5541_ _L5543_ _L5544_ _L5545_ _L5546_)
                   (let ((__tmp18488
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp18455
                          (let ((__tmp18484
                                 (let ((__tmp18485
                                        (let ((__tmp18486
                                               (let ((__tmp18487
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5544_
                                                              _L5543_))))
                                                 (declare (not safe))
                                                 (cons __tmp18487 _L5541_))))
                                          (declare (not safe))
                                          (cons '#f __tmp18486))))
                                   (declare (not safe))
                                   (cons _L5546_ __tmp18485)))
                                (__tmp18456
                                 (let ((__tmp18457
                                        (let ((__tmp18483
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'define)))
                                              (__tmp18458
                                               (let ((__tmp18479
                                                      (let ((__tmp18480
                                                             (let ((__tmp18482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx)))
                           (__tmp18481
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'args))))
                       (declare (not safe))
                       (cons __tmp18482 __tmp18481))))
                (declare (not safe))
                (cons _L5545_ __tmp18480)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18459
                                                      (let ((__tmp18460
                                                             (let ((__tmp18478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'parameterize)))
                           (__tmp18461
                            (let ((__tmp18471
                                   (let ((__tmp18472
                                          (let ((__tmp18477
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'current-compile-methods)))
                                                (__tmp18473
                                                 (let ((__tmp18474
                                                        (let ((__tmp18476
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'force)))
                      (__tmp18475
                       (let () (declare (not safe)) (cons _L5544_ '()))))
                  (declare (not safe))
                  (cons __tmp18476 __tmp18475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18474 '()))))
                                            (declare (not safe))
                                            (cons __tmp18477 __tmp18473))))
                                     (declare (not safe))
                                     (cons __tmp18472 '())))
                                  (__tmp18462
                                   (let ((__tmp18463
                                          (let ((__tmp18470
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'apply)))
                                                (__tmp18464
                                                 (let ((__tmp18469
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'compile-e)))
                                                       (__tmp18465
                                                        (let ((__tmp18468
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'stx)))
                      (__tmp18466
                       (let ((__tmp18467
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'args))))
                         (declare (not safe))
                         (cons __tmp18467 '()))))
                  (declare (not safe))
                  (cons __tmp18468 __tmp18466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18469
                                                         __tmp18465))))
                                            (declare (not safe))
                                            (cons __tmp18470 __tmp18464))))
                                     (declare (not safe))
                                     (cons __tmp18463 '()))))
                              (declare (not safe))
                              (cons __tmp18471 __tmp18462))))
                       (declare (not safe))
                       (cons __tmp18478 __tmp18461))))
                (declare (not safe))
                (cons __tmp18460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18479
                                                       __tmp18459))))
                                          (declare (not safe))
                                          (cons __tmp18483 __tmp18458))))
                                   (declare (not safe))
                                   (cons __tmp18457 '()))))
                            (declare (not safe))
                            (cons __tmp18484 __tmp18456))))
                     (declare (not safe))
                     (cons __tmp18488 __tmp18455)))))
            (let* ((___match1630616307_
                    (lambda (_e54795501_
                             _hd54785505_
                             _tl54775508_
                             _e54825511_
                             _hd54815515_
                             _tl54805518_
                             _e54855521_
                             _hd54845525_
                             _tl54835528_
                             _e54885531_
                             _hd54875535_
                             _tl54865538_)
                      (let ((_L5541_ _tl54835528_)
                            (_L5543_ _tl54865538_)
                            (_L5544_ _hd54875535_)
                            (_L5545_ _hd54815515_)
                            (_L5546_ _hd54785505_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5545_))
                            (___kont1622416225_
                             _L5541_
                             _L5543_
                             _L5544_
                             _L5545_
                             _L5546_)
                            (let () (declare (not safe)) (_g54145494_))))))
                   (___match1628216283_
                    (lambda (_e54355575_
                             _hd54345579_
                             _tl54335582_
                             _e54385585_
                             _hd54375589_
                             _tl54365592_
                             _e54395595_
                             _e54425599_
                             _hd54415603_
                             _tl54405606_
                             _e54455609_
                             _hd54445613_
                             _tl54435616_
                             ___splice1622016221_
                             _target54465619_
                             _tl54485622_)
                      (letrec ((_loop54495625_
                                (lambda (_hd54475629_ _super54535632_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd54475629_))
                                      (let ((_e54505635_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd54475629_))))
                                        (let ((_lp-tl54525642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54505635_)))
                                              (_lp-hd54515639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54505635_))))
                                          (_loop54495625_
                                           _lp-tl54525642_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd54515639_
                                                   _super54535632_)))))
                                      (let ((_super54545645_
                                             (reverse _super54535632_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null? _tl54405606_))
                                            (let ((___splice1622216223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl54405606_
                                                      '0))))
                                              (let ((_tl54575652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1622216223_
                                                        '1)))
                                                    (_target54555649_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1622216223_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl54575652_))
                                                    (letrec ((_loop54585655_
                                                              (lambda (_hd54565659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method54625662_
                               _symbol54635664_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd54565659_))
                            (let ((_e54595667_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _hd54565659_))))
                              (let ((_lp-tl54615674_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e54595667_)))
                                    (_lp-hd54605671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e54595667_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _lp-hd54605671_))
                                    (let ((_e54685677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _lp-hd54605671_))))
                                      (let ((_tl54665684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e54685677_)))
                                            (_hd54675681_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e54685677_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl54665684_))
                                            (let ((_e54715687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl54665684_))))
                                              (let ((_tl54695694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e54715687_)))
                                                    (_hd54705691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e54715687_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl54695694_))
                                                    (_loop54585655_
                                                     _lp-tl54615674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd54705691_
                                                             _method54625662_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd54675681_
                                                             _symbol54635664_)))
                                                    (___match1630616307_
                                                     _e54355575_
                                                     _hd54345579_
                                                     _tl54335582_
                                                     _e54385585_
                                                     _hd54375589_
                                                     _tl54365592_
                                                     _e54425599_
                                                     _hd54415603_
                                                     _tl54405606_
                                                     _e54455609_
                                                     _hd54445613_
                                                     _tl54435616_))))
                                            (___match1630616307_
                                             _e54355575_
                                             _hd54345579_
                                             _tl54335582_
                                             _e54385585_
                                             _hd54375589_
                                             _tl54365592_
                                             _e54425599_
                                             _hd54415603_
                                             _tl54405606_
                                             _e54455609_
                                             _hd54445613_
                                             _tl54435616_))))
                                    (___match1630616307_
                                     _e54355575_
                                     _hd54345579_
                                     _tl54335582_
                                     _e54385585_
                                     _hd54375589_
                                     _tl54365592_
                                     _e54425599_
                                     _hd54415603_
                                     _tl54405606_
                                     _e54455609_
                                     _hd54445613_
                                     _tl54435616_))))
                            (let ((_symbol54655700_ (reverse _symbol54635664_))
                                  (_method54645697_
                                   (reverse _method54625662_)))
                              (___kont1621816219_
                               _method54645697_
                               _symbol54655700_
                               _super54545645_
                               _hd54445613_))))))
              (_loop54585655_ _target54555649_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1630616307_
                                                     _e54355575_
                                                     _hd54345579_
                                                     _tl54335582_
                                                     _e54385585_
                                                     _hd54375589_
                                                     _tl54365592_
                                                     _e54425599_
                                                     _hd54415603_
                                                     _tl54405606_
                                                     _e54455609_
                                                     _hd54445613_
                                                     _tl54435616_))))
                                            (___match1630616307_
                                             _e54355575_
                                             _hd54345579_
                                             _tl54335582_
                                             _e54385585_
                                             _hd54375589_
                                             _tl54365592_
                                             _e54425599_
                                             _hd54415603_
                                             _tl54405606_
                                             _e54455609_
                                             _hd54445613_
                                             _tl54435616_)))))))
                        (_loop54495625_ _target54465619_ '()))))
                   (___match1624416245_
                    (lambda (_e54225761_
                             _hd54215765_
                             _tl54205768_
                             _e54255771_
                             _hd54245775_
                             _tl54235778_
                             _e54285781_
                             _hd54275785_
                             _tl54265788_)
                      (let ((_L5791_ _tl54265788_)
                            (_L5793_ _hd54275785_)
                            (_L5794_ _hd54245775_)
                            (_L5795_ _hd54215765_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5793_))
                            (___kont1621616217_
                             _L5791_
                             _L5793_
                             _L5794_
                             _L5795_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd54245775_))
                                (let ((_e54395595_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd54245775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e54395595_ '#f))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd54275785_))
                                          (let ((_e54455609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd54275785_))))
                                            (let ((_tl54435616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e54455609_)))
                                                  (_hd54445613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e54455609_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl54435616_))
                                                  (let ((___splice1622016221_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl54435616_
                                                            '0))))
                                                    (let ((_tl54485622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1622016221_
                                                              '1)))
                                                          (_target54465619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1622016221_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl54485622_))
                                                          (___match1628216283_
                                                           _e54225761_
                                                           _hd54215765_
                                                           _tl54205768_
                                                           _e54255771_
                                                           _hd54245775_
                                                           _tl54235778_
                                                           _e54395595_
                                                           _e54285781_
                                                           _hd54275785_
                                                           _tl54265788_
                                                           _e54455609_
                                                           _hd54445613_
                                                           _tl54435616_
                                                           ___splice1622016221_
                                                           _target54465619_
                                                           _tl54485622_)
                                                          (___match1630616307_
                                                           _e54225761_
                                                           _hd54215765_
                                                           _tl54205768_
                                                           _e54255771_
                                                           _hd54245775_
                                                           _tl54235778_
                                                           _e54285781_
                                                           _hd54275785_
                                                           _tl54265788_
                                                           _e54455609_
                                                           _hd54445613_
                                                           _tl54435616_))))
                                                  (___match1630616307_
                                                   _e54225761_
                                                   _hd54215765_
                                                   _tl54205768_
                                                   _e54255771_
                                                   _hd54245775_
                                                   _tl54235778_
                                                   _e54285781_
                                                   _hd54275785_
                                                   _tl54265788_
                                                   _e54455609_
                                                   _hd54445613_
                                                   _tl54435616_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g54145494_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd54275785_))
                                          (let ((_e54885531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd54275785_))))
                                            (let ((_tl54865538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e54885531_)))
                                                  (_hd54875535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e54885531_))))
                                              (___match1630616307_
                                               _e54225761_
                                               _hd54215765_
                                               _tl54205768_
                                               _e54255771_
                                               _hd54245775_
                                               _tl54235778_
                                               _e54285781_
                                               _hd54275785_
                                               _tl54265788_
                                               _e54885531_
                                               _hd54875535_
                                               _tl54865538_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g54145494_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd54275785_))
                                    (let ((_e54885531_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd54275785_))))
                                      (let ((_tl54865538_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e54885531_)))
                                            (_hd54875535_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e54885531_))))
                                        (___match1630616307_
                                         _e54225761_
                                         _hd54215765_
                                         _tl54205768_
                                         _e54255771_
                                         _hd54245775_
                                         _tl54235778_
                                         _e54285781_
                                         _hd54275785_
                                         _tl54265788_
                                         _e54885531_
                                         _hd54875535_
                                         _tl54865538_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g54145494_)))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1621316214_))
                  (let ((_e54225761_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx1621316214_))))
                    (let ((_tl54205768_
                           (let () (declare (not safe)) (##cdr _e54225761_)))
                          (_hd54215765_
                           (let () (declare (not safe)) (##car _e54225761_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl54205768_))
                          (let ((_e54255771_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl54205768_))))
                            (let ((_tl54235778_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e54255771_)))
                                  (_hd54245775_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e54255771_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl54235778_))
                                  (let ((_e54285781_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl54235778_))))
                                    (let ((_tl54265788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e54285781_)))
                                          (_hd54275785_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e54285781_))))
                                      (___match1624416245_
                                       _e54225761_
                                       _hd54215765_
                                       _tl54205768_
                                       _e54255771_
                                       _hd54245775_
                                       _tl54235778_
                                       _e54285781_
                                       _hd54275785_
                                       _tl54265788_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd54245775_))
                                      (let ((_e54395595_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd54245775_))))
                                        (declare (not safe))
                                        (_g54145494_))
                                      (let ()
                                        (declare (not safe))
                                        (_g54145494_))))))
                          (let () (declare (not safe)) (_g54145494_)))))
                  (let () (declare (not safe)) (_g54145494_))))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx5818_)
        (let* ((_g58225857_
                (lambda (_g58235853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g58235853_))))
               (_g58215982_
                (lambda (_g58235861_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g58235861_))
                      (let ((_e58305864_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g58235861_))))
                        (let ((_hd58295868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58305864_)))
                              (_tl58285871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58305864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl58285871_))
                              (let ((_e58335874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl58285871_))))
                                (let ((_hd58325878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e58335874_)))
                                      (_tl58315881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e58335874_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd58325878_))
                                      (let ((_e58365884_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd58325878_))))
                                        (let ((_hd58355888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58365884_)))
                                              (_tl58345891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58365884_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl58345891_))
                                              (let ((_e58395894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl58345891_))))
                                                (let ((_hd58385898_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58395894_)))
                                                      (_tl58375901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58395894_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl58375901_))
                                                      (let ((_e58425904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl58375901_))))
                (let ((_hd58415908_
                       (let () (declare (not safe)) (##car _e58425904_)))
                      (_tl58405911_
                       (let () (declare (not safe)) (##cdr _e58425904_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl58405911_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl58315881_))
                          (let ((_g18489_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice _tl58315881_ '0))))
                            (begin
                              (let ((_g18490_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g18489_)
                                           (##vector-length _g18489_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g18490_ 2)))
                                    (error "Context expects 2 values"
                                           _g18490_)))
                              (let ((_target58435914_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18489_ 0)))
                                    (_tl58455917_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18489_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl58455917_))
                                    (letrec ((_loop58465920_
                                              (lambda (_hd58445924_
                                                       _body58505927_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd58445924_))
                                                    (let ((_e58475930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd58445924_))))
                                                      (let ((_lp-hd58485934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e58475930_)))
                    (_lp-tl58495937_
                     (let () (declare (not safe)) (##cdr _e58475930_))))
                (_loop58465920_
                 _lp-tl58495937_
                 (let ()
                   (declare (not safe))
                   (cons _lp-hd58485934_ _body58505927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body58515940_
                                                           (reverse _body58505927_)))
                                                      ((lambda (_L5944_
                                                                _L5946_
                                                                _L5947_
                                                                _L5948_)
                                                         (let ((__tmp18622
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let)))
                       (__tmp18491
                        (let ((__tmp18621
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'lp)))
                              (__tmp18492
                               (let ((__tmp18607
                                      (let ((__tmp18618
                                             (let ((__tmp18620
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest)))
                                                   (__tmp18619
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L5946_ '()))))
                                               (declare (not safe))
                                               (cons __tmp18620 __tmp18619)))
                                            (__tmp18608
                                             (let ((__tmp18614
                                                    (let ((__tmp18615
                                                           (let ((__tmp18616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18617
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))))
                            (declare (not safe))
                            (cons __tmp18617 '()))))
                     (declare (not safe))
                     (cons __tmp18616 '()))))
              (declare (not safe))
              (cons _L5948_ __tmp18615)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18609
                                                    (let ((__tmp18610
                                                           (let ((__tmp18611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18612
                                 (let ((__tmp18613
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list))))
                                   (declare (not safe))
                                   (cons __tmp18613 '()))))
                            (declare (not safe))
                            (cons __tmp18612 '()))))
                     (declare (not safe))
                     (cons _L5947_ __tmp18611))))
              (declare (not safe))
              (cons __tmp18610 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18614 __tmp18609))))
                                        (declare (not safe))
                                        (cons __tmp18618 __tmp18608)))
                                     (__tmp18493
                                      (let ((__tmp18494
                                             (let ((__tmp18606
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'match)))
                                                   (__tmp18495
                                                    (let ((__tmp18605
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'rest)))
                                                          (__tmp18496
                                                           (let ((__tmp18502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18600
                                 (let ((__tmp18604
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list)))
                                       (__tmp18601
                                        (let ((__tmp18603
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'e)))
                                              (__tmp18602
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))))
                                          (declare (not safe))
                                          (cons __tmp18603 __tmp18602))))
                                   (declare (not safe))
                                   (cons __tmp18604 __tmp18601)))
                                (__tmp18503
                                 (let ((__tmp18504
                                        (let ((__tmp18599
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'ast-case)))
                                              (__tmp18505
                                               (let ((__tmp18598
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'e)))
                                                     (__tmp18506
                                                      (let ((__tmp18594
                                                             (let ((__tmp18597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#quote)))
                           (__tmp18595
                            (let ((__tmp18596
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))))
                              (declare (not safe))
                              (cons __tmp18596 '()))))
                       (declare (not safe))
                       (cons __tmp18597 __tmp18595)))
                    (__tmp18507
                     (let ((__tmp18574
                            (let ((__tmp18590
                                   (let ((__tmp18593
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp18591
                                          (let ((__tmp18592
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_))))
                                            (declare (not safe))
                                            (cons __tmp18592 '()))))
                                     (declare (not safe))
                                     (cons __tmp18593 __tmp18591)))
                                  (__tmp18575
                                   (let ((__tmp18576
                                          (let ((__tmp18589
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'lp)))
                                                (__tmp18577
                                                 (let ((__tmp18588
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'rest)))
                                                       (__tmp18578
                                                        (let ((__tmp18579
                                                               (let ((__tmp18580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18587
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'cons)))
                                    (__tmp18581
                                     (let ((__tmp18583
                                            (let ((__tmp18586
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'compile-e)))
                                                  (__tmp18584
                                                   (let ((__tmp18585
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'e))))
                                                     (declare (not safe))
                                                     (cons __tmp18585 '()))))
                                              (declare (not safe))
                                              (cons __tmp18586 __tmp18584)))
                                           (__tmp18582
                                            (let ()
                                              (declare (not safe))
                                              (cons _L5947_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18583 __tmp18582))))
                                (declare (not safe))
                                (cons __tmp18587 __tmp18581))))
                         (declare (not safe))
                         (cons __tmp18580 '()))))
                  (declare (not safe))
                  (cons _L5948_ __tmp18579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18588
                                                         __tmp18578))))
                                            (declare (not safe))
                                            (cons __tmp18589 __tmp18577))))
                                     (declare (not safe))
                                     (cons __tmp18576 '()))))
                              (declare (not safe))
                              (cons __tmp18590 __tmp18575)))
                           (__tmp18508
                            (let ((__tmp18554
                                   (let ((__tmp18570
                                          (let ((__tmp18573
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#quote)))
                                                (__tmp18571
                                                 (let ((__tmp18572
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '_))))
                                                   (declare (not safe))
                                                   (cons __tmp18572 '()))))
                                            (declare (not safe))
                                            (cons __tmp18573 __tmp18571)))
                                         (__tmp18555
                                          (let ((__tmp18556
                                                 (let ((__tmp18569
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lp)))
                                                       (__tmp18557
                                                        (let ((__tmp18568
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'rest)))
                      (__tmp18558
                       (let ((__tmp18559
                              (let ((__tmp18560
                                     (let ((__tmp18567
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'cons)))
                                           (__tmp18561
                                            (let ((__tmp18563
                                                   (let ((__tmp18566
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'compile-e)))
                                                         (__tmp18564
                                                          (let ((__tmp18565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'e))))
                    (declare (not safe))
                    (cons __tmp18565 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18566
                                                           __tmp18564)))
                                                  (__tmp18562
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L5947_ '()))))
                                              (declare (not safe))
                                              (cons __tmp18563 __tmp18562))))
                                       (declare (not safe))
                                       (cons __tmp18567 __tmp18561))))
                                (declare (not safe))
                                (cons __tmp18560 '()))))
                         (declare (not safe))
                         (cons _L5948_ __tmp18559))))
                  (declare (not safe))
                  (cons __tmp18568 __tmp18558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18569
                                                         __tmp18557))))
                                            (declare (not safe))
                                            (cons __tmp18556 '()))))
                                     (declare (not safe))
                                     (cons __tmp18570 __tmp18555)))
                                  (__tmp18509
                                   (let ((__tmp18510
                                          (let ((__tmp18553
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_)))
                                                (__tmp18511
                                                 (let ((__tmp18512
                                                        (let ((__tmp18552
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let)))
                      (__tmp18513
                       (let ((__tmp18539
                              (let ((__tmp18551
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'tmp)))
                                    (__tmp18540
                                     (let ((__tmp18541
                                            (let ((__tmp18550
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-symbol)))
                                                  (__tmp18542
                                                   (let ((__tmp18543
                                                          (let ((__tmp18549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'gensym)))
                        (__tmp18544
                         (let ((__tmp18545
                                (let ((__tmp18548
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp18546
                                       (let ((__tmp18547
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '__tmp))))
                                         (declare (not safe))
                                         (cons __tmp18547 '()))))
                                  (declare (not safe))
                                  (cons __tmp18548 __tmp18546))))
                           (declare (not safe))
                           (cons __tmp18545 '()))))
                    (declare (not safe))
                    (cons __tmp18549 __tmp18544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18543 '()))))
                                              (declare (not safe))
                                              (cons __tmp18550 __tmp18542))))
                                       (declare (not safe))
                                       (cons __tmp18541 '()))))
                                (declare (not safe))
                                (cons __tmp18551 __tmp18540)))
                             (__tmp18514
                              (let ((__tmp18515
                                     (let ((__tmp18538
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'lp)))
                                           (__tmp18516
                                            (let ((__tmp18537
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'rest)))
                                                  (__tmp18517
                                                   (let ((__tmp18524
                                                          (let ((__tmp18536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'cons)))
                        (__tmp18525
                         (let ((__tmp18527
                                (let ((__tmp18535
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list)))
                                      (__tmp18528
                                       (let ((__tmp18534
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'tmp)))
                                             (__tmp18529
                                              (let ((__tmp18530
                                                     (let ((__tmp18533
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'compile-e)))
                                                           (__tmp18531
                                                            (let ((__tmp18532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'e))))
                      (declare (not safe))
                      (cons __tmp18532 '()))))
               (declare (not safe))
               (cons __tmp18533 __tmp18531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18530 '()))))
                                         (declare (not safe))
                                         (cons __tmp18534 __tmp18529))))
                                  (declare (not safe))
                                  (cons __tmp18535 __tmp18528)))
                               (__tmp18526
                                (let ()
                                  (declare (not safe))
                                  (cons _L5948_ '()))))
                           (declare (not safe))
                           (cons __tmp18527 __tmp18526))))
                    (declare (not safe))
                    (cons __tmp18536 __tmp18525)))
                 (__tmp18518
                  (let ((__tmp18519
                         (let ((__tmp18523
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'cons)))
                               (__tmp18520
                                (let ((__tmp18522
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'tmp)))
                                      (__tmp18521
                                       (let ()
                                         (declare (not safe))
                                         (cons _L5947_ '()))))
                                  (declare (not safe))
                                  (cons __tmp18522 __tmp18521))))
                           (declare (not safe))
                           (cons __tmp18523 __tmp18520))))
                    (declare (not safe))
                    (cons __tmp18519 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18524
                                                           __tmp18518))))
                                              (declare (not safe))
                                              (cons __tmp18537 __tmp18517))))
                                       (declare (not safe))
                                       (cons __tmp18538 __tmp18516))))
                                (declare (not safe))
                                (cons __tmp18515 '()))))
                         (declare (not safe))
                         (cons __tmp18539 __tmp18514))))
                  (declare (not safe))
                  (cons __tmp18552 __tmp18513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18512 '()))))
                                            (declare (not safe))
                                            (cons __tmp18553 __tmp18511))))
                                     (declare (not safe))
                                     (cons __tmp18510 '()))))
                              (declare (not safe))
                              (cons __tmp18554 __tmp18509))))
                       (declare (not safe))
                       (cons __tmp18574 __tmp18508))))
                (declare (not safe))
                (cons __tmp18594 __tmp18507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18598
                                                       __tmp18506))))
                                          (declare (not safe))
                                          (cons __tmp18599 __tmp18505))))
                                   (declare (not safe))
                                   (cons __tmp18504 '()))))
                            (declare (not safe))
                            (cons __tmp18600 __tmp18503)))
                         (__tmp18497
                          (let ((__tmp18498
                                 (let ((__tmp18501
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'else)))
                                       (__tmp18499
                                        (let ((__tmp18500
                                               (lambda (_g59735976_
                                                        _g59745979_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g59735976_
                                                         _g59745979_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp18500 '() _L5944_))))
                                   (declare (not safe))
                                   (cons __tmp18501 __tmp18499))))
                            (declare (not safe))
                            (cons __tmp18498 '()))))
                     (declare (not safe))
                     (cons __tmp18502 __tmp18497))))
              (declare (not safe))
              (cons __tmp18605 __tmp18496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18606 __tmp18495))))
                                        (declare (not safe))
                                        (cons __tmp18494 '()))))
                                 (declare (not safe))
                                 (cons __tmp18607 __tmp18493))))
                          (declare (not safe))
                          (cons __tmp18621 __tmp18492))))
                   (declare (not safe))
                   (cons __tmp18622 __tmp18491)))
               _body58515940_
               _hd58415908_
               _hd58385898_
               _hd58355888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop58465920_ _target58435914_ '()))
                                    (_g58225857_ _g58235861_)))))
                          (_g58225857_ _g58235861_))
                      (_g58225857_ _g58235861_))))
              (_g58225857_ _g58235861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58225857_ _g58235861_))))
                                      (_g58225857_ _g58235861_))))
                              (_g58225857_ _g58235861_))))
                      (_g58225857_ _g58235861_)))))
          (_g58215982_ _$stx5818_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx5987_)
        (let* ((_g59916009_
                (lambda (_g59926005_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59926005_))))
               (_g59906064_
                (lambda (_g59926013_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g59926013_))
                      (let ((_e59976016_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g59926013_))))
                        (let ((_hd59966020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59976016_)))
                              (_tl59956023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59976016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl59956023_))
                              (let ((_e60006026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl59956023_))))
                                (let ((_hd59996030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60006026_)))
                                      (_tl59986033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60006026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl59986033_))
                                      (let ((_e60036036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl59986033_))))
                                        (let ((_hd60026040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60036036_)))
                                              (_tl60016043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60036036_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl60016043_))
                                              ((lambda (_L6046_ _L6048_)
                                                 (let ((__tmp18638
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'cond-expand)))
                                                       (__tmp18623
                                                        (let ((__tmp18635
                                                               (let ((__tmp18637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0
                                 '#f
                                 'gambit-inline-unsafe-primitives)))
                             (__tmp18636
                              (let ()
                                (declare (not safe))
                                (cons _L6048_ '()))))
                         (declare (not safe))
                         (cons __tmp18637 __tmp18636)))
                      (__tmp18624
                       (let ((__tmp18625
                              (let ((__tmp18634
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'else)))
                                    (__tmp18626
                                     (let ((__tmp18627
                                            (let ((__tmp18633
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'if)))
                                                  (__tmp18628
                                                   (let ((__tmp18631
                                                          (let ((__tmp18632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'current-compile-decls-unsafe?))))
                    (declare (not safe))
                    (cons __tmp18632 '())))
                 (__tmp18629
                  (let ((__tmp18630
                         (let () (declare (not safe)) (cons _L6046_ '()))))
                    (declare (not safe))
                    (cons _L6048_ __tmp18630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18631
                                                           __tmp18629))))
                                              (declare (not safe))
                                              (cons __tmp18633 __tmp18628))))
                                       (declare (not safe))
                                       (cons __tmp18627 '()))))
                                (declare (not safe))
                                (cons __tmp18634 __tmp18626))))
                         (declare (not safe))
                         (cons __tmp18625 '()))))
                  (declare (not safe))
                  (cons __tmp18635 __tmp18624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18638
                                                         __tmp18623)))
                                               _hd60026040_
                                               _hd59996030_)
                                              (_g59916009_ _g59926013_))))
                                      (_g59916009_ _g59926013_))))
                              (_g59916009_ _g59926013_))))
                      (_g59916009_ _g59926013_)))))
          (_g59906064_ _$stx5987_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18639_|
       'expander-identifiers:
       (let ((__tmp18640
              (let ((__tmp18673 |gxc[1]#_g18639_|)
                    (__tmp18641
                     (let ((__tmp18671 |gxc[1]#_g18672_|)
                           (__tmp18642
                            (let ((__tmp18669 |gxc[1]#_g18670_|)
                                  (__tmp18643
                                   (let ((__tmp18657
                                          (let ((__tmp18667 |gxc[1]#_g18668_|)
                                                (__tmp18658
                                                 (let ((__tmp18665
                                                        |gxc[1]#_g18666_|)
                                                       (__tmp18659
                                                        (let ((__tmp18663
                                                               |gxc[1]#_g18664_|)
                                                              (__tmp18660
                                                               (let ((__tmp18661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18662_|))
                         (declare (not safe))
                         (cons __tmp18661 '()))))
                  (declare (not safe))
                  (cons __tmp18663 __tmp18660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18665
                                                         __tmp18659))))
                                            (declare (not safe))
                                            (cons __tmp18667 __tmp18658)))
                                         (__tmp18644
                                          (let ((__tmp18645
                                                 (let ((__tmp18655
                                                        |gxc[1]#_g18656_|)
                                                       (__tmp18646
                                                        (let ((__tmp18653
                                                               |gxc[1]#_g18654_|)
                                                              (__tmp18647
                                                               (let ((__tmp18651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18652_|)
                             (__tmp18648
                              (let ((__tmp18649 |gxc[1]#_g18650_|))
                                (declare (not safe))
                                (cons __tmp18649 '()))))
                         (declare (not safe))
                         (cons __tmp18651 __tmp18648))))
                  (declare (not safe))
                  (cons __tmp18653 __tmp18647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18655
                                                         __tmp18646))))
                                            (declare (not safe))
                                            (cons __tmp18645 '()))))
                                     (declare (not safe))
                                     (cons __tmp18657 __tmp18644))))
                              (declare (not safe))
                              (cons __tmp18669 __tmp18643))))
                       (declare (not safe))
                       (cons __tmp18671 __tmp18642))))
                (declare (not safe))
                (cons __tmp18673 __tmp18641))))
         (declare (not safe))
         (cons '#f __tmp18640))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18674_|
       'expander-identifiers:
       (let ((__tmp18675
              (let ((__tmp18708 |gxc[1]#_g18674_|)
                    (__tmp18676
                     (let ((__tmp18706 |gxc[1]#_g18707_|)
                           (__tmp18677
                            (let ((__tmp18704 |gxc[1]#_g18705_|)
                                  (__tmp18678
                                   (let ((__tmp18692
                                          (let ((__tmp18702 |gxc[1]#_g18703_|)
                                                (__tmp18693
                                                 (let ((__tmp18700
                                                        |gxc[1]#_g18701_|)
                                                       (__tmp18694
                                                        (let ((__tmp18698
                                                               |gxc[1]#_g18699_|)
                                                              (__tmp18695
                                                               (let ((__tmp18696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18697_|))
                         (declare (not safe))
                         (cons __tmp18696 '()))))
                  (declare (not safe))
                  (cons __tmp18698 __tmp18695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18700
                                                         __tmp18694))))
                                            (declare (not safe))
                                            (cons __tmp18702 __tmp18693)))
                                         (__tmp18679
                                          (let ((__tmp18680
                                                 (let ((__tmp18690
                                                        |gxc[1]#_g18691_|)
                                                       (__tmp18681
                                                        (let ((__tmp18688
                                                               |gxc[1]#_g18689_|)
                                                              (__tmp18682
                                                               (let ((__tmp18686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18687_|)
                             (__tmp18683
                              (let ((__tmp18684 |gxc[1]#_g18685_|))
                                (declare (not safe))
                                (cons __tmp18684 '()))))
                         (declare (not safe))
                         (cons __tmp18686 __tmp18683))))
                  (declare (not safe))
                  (cons __tmp18688 __tmp18682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18690
                                                         __tmp18681))))
                                            (declare (not safe))
                                            (cons __tmp18680 '()))))
                                     (declare (not safe))
                                     (cons __tmp18692 __tmp18679))))
                              (declare (not safe))
                              (cons __tmp18704 __tmp18678))))
                       (declare (not safe))
                       (cons __tmp18706 __tmp18677))))
                (declare (not safe))
                (cons __tmp18708 __tmp18676))))
         (declare (not safe))
         (cons '#f __tmp18675))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
