(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g18640_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18651_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18653_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18655_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18657_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18663_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18665_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18667_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18669_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18671_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18673_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18675_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18686_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18688_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18690_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18692_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18698_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18700_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18702_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18704_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18706_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18708_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx5409_)
        (let* ((___stx1621416215_ _$stx5409_)
               (_g54155495_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1621416215_)))))
          (let ((___kont1621716218_
                 (lambda (_L5792_ _L5794_ _L5795_ _L5796_)
                   (let ((__tmp18416
                          (let ((__tmp18417
                                 (let ((__tmp18418
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5794_ '()))))
                                   (declare (not safe))
                                   (cons __tmp18418 _L5792_))))
                            (declare (not safe))
                            (cons _L5795_ __tmp18417))))
                     (declare (not safe))
                     (cons _L5796_ __tmp18416))))
                (___kont1621916220_
                 (lambda (_L5704_ _L5706_ _L5707_ _L5708_)
                   (let ((__tmp18455
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'define)))
                         (__tmp18419
                          (let ((__tmp18420
                                 (let ((__tmp18421
                                        (let ((__tmp18454
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'delay)))
                                              (__tmp18422
                                               (let ((__tmp18423
                                                      (let ((__tmp18453
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'let)))
                    (__tmp18424
                     (let ((__tmp18448
                            (let ((__tmp18452
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'tbl)))
                                  (__tmp18449
                                   (let ((__tmp18450
                                          (let ((__tmp18451
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-hash-table-eq))))
                                            (declare (not safe))
                                            (cons __tmp18451 '()))))
                                     (declare (not safe))
                                     (cons __tmp18450 '()))))
                              (declare (not safe))
                              (cons __tmp18452 __tmp18449)))
                           (__tmp18425
                            (let ((__tmp18439
                                   (lambda (_g57355741_ _g57365744_)
                                     (let ((__tmp18440
                                            (let ((__tmp18447
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-copy!)))
                                                  (__tmp18441
                                                   (let ((__tmp18446
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'tbl)))
                                                         (__tmp18442
                                                          (let ((__tmp18443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18445
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'force)))
                               (__tmp18444
                                (let ()
                                  (declare (not safe))
                                  (cons _g57355741_ '()))))
                           (declare (not safe))
                           (cons __tmp18445 __tmp18444))))
                    (declare (not safe))
                    (cons __tmp18443 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18446
                                                           __tmp18442))))
                                              (declare (not safe))
                                              (cons __tmp18447 __tmp18441))))
                                       (declare (not safe))
                                       (cons __tmp18440 _g57365744_))))
                                  (__tmp18426
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L5704_
                                        _L5706_))
                                     (let ((__tmp18429
                                            (lambda (_g57375747_
                                                     _g57385750_
                                                     _g57395752_)
                                              (let ((__tmp18430
                                                     (let ((__tmp18438
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'hash-put!)))
                                                           (__tmp18431
                                                            (let ((__tmp18437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'tbl)))
                          (__tmp18432
                           (let ((__tmp18434
                                  (let ((__tmp18436
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp18435
                                         (let ()
                                           (declare (not safe))
                                           (cons _g57385750_ '()))))
                                    (declare (not safe))
                                    (cons __tmp18436 __tmp18435)))
                                 (__tmp18433
                                  (let ()
                                    (declare (not safe))
                                    (cons _g57375747_ '()))))
                             (declare (not safe))
                             (cons __tmp18434 __tmp18433))))
                      (declare (not safe))
                      (cons __tmp18437 __tmp18432))))
               (declare (not safe))
               (cons __tmp18438 __tmp18431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18430
                                                      _g57395752_))))
                                           (__tmp18427
                                            (let ((__tmp18428
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'tbl))))
                                              (declare (not safe))
                                              (cons __tmp18428 '()))))
                                       (declare (not safe))
                                       (foldr2 __tmp18429
                                               __tmp18427
                                               _L5704_
                                               _L5706_)))))
                              (declare (not safe))
                              (foldr1 __tmp18439 __tmp18426 _L5707_))))
                       (declare (not safe))
                       (cons __tmp18448 __tmp18425))))
                (declare (not safe))
                (cons __tmp18453 __tmp18424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18423 '()))))
                                          (declare (not safe))
                                          (cons __tmp18454 __tmp18422))))
                                   (declare (not safe))
                                   (cons __tmp18421 '()))))
                            (declare (not safe))
                            (cons _L5708_ __tmp18420))))
                     (declare (not safe))
                     (cons __tmp18455 __tmp18419))))
                (___kont1622516226_
                 (lambda (_L5542_ _L5544_ _L5545_ _L5546_ _L5547_)
                   (let ((__tmp18489
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp18456
                          (let ((__tmp18485
                                 (let ((__tmp18486
                                        (let ((__tmp18487
                                               (let ((__tmp18488
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5545_
                                                              _L5544_))))
                                                 (declare (not safe))
                                                 (cons __tmp18488 _L5542_))))
                                          (declare (not safe))
                                          (cons '#f __tmp18487))))
                                   (declare (not safe))
                                   (cons _L5547_ __tmp18486)))
                                (__tmp18457
                                 (let ((__tmp18458
                                        (let ((__tmp18484
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'define)))
                                              (__tmp18459
                                               (let ((__tmp18480
                                                      (let ((__tmp18481
                                                             (let ((__tmp18483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx)))
                           (__tmp18482
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'args))))
                       (declare (not safe))
                       (cons __tmp18483 __tmp18482))))
                (declare (not safe))
                (cons _L5546_ __tmp18481)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18460
                                                      (let ((__tmp18461
                                                             (let ((__tmp18479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'parameterize)))
                           (__tmp18462
                            (let ((__tmp18472
                                   (let ((__tmp18473
                                          (let ((__tmp18478
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'current-compile-methods)))
                                                (__tmp18474
                                                 (let ((__tmp18475
                                                        (let ((__tmp18477
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'force)))
                      (__tmp18476
                       (let () (declare (not safe)) (cons _L5545_ '()))))
                  (declare (not safe))
                  (cons __tmp18477 __tmp18476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18475 '()))))
                                            (declare (not safe))
                                            (cons __tmp18478 __tmp18474))))
                                     (declare (not safe))
                                     (cons __tmp18473 '())))
                                  (__tmp18463
                                   (let ((__tmp18464
                                          (let ((__tmp18471
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'apply)))
                                                (__tmp18465
                                                 (let ((__tmp18470
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'compile-e)))
                                                       (__tmp18466
                                                        (let ((__tmp18469
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'stx)))
                      (__tmp18467
                       (let ((__tmp18468
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'args))))
                         (declare (not safe))
                         (cons __tmp18468 '()))))
                  (declare (not safe))
                  (cons __tmp18469 __tmp18467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18470
                                                         __tmp18466))))
                                            (declare (not safe))
                                            (cons __tmp18471 __tmp18465))))
                                     (declare (not safe))
                                     (cons __tmp18464 '()))))
                              (declare (not safe))
                              (cons __tmp18472 __tmp18463))))
                       (declare (not safe))
                       (cons __tmp18479 __tmp18462))))
                (declare (not safe))
                (cons __tmp18461 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18480
                                                       __tmp18460))))
                                          (declare (not safe))
                                          (cons __tmp18484 __tmp18459))))
                                   (declare (not safe))
                                   (cons __tmp18458 '()))))
                            (declare (not safe))
                            (cons __tmp18485 __tmp18457))))
                     (declare (not safe))
                     (cons __tmp18489 __tmp18456)))))
            (let* ((___match1630716308_
                    (lambda (_e54805502_
                             _hd54795506_
                             _tl54785509_
                             _e54835512_
                             _hd54825516_
                             _tl54815519_
                             _e54865522_
                             _hd54855526_
                             _tl54845529_
                             _e54895532_
                             _hd54885536_
                             _tl54875539_)
                      (let ((_L5542_ _tl54845529_)
                            (_L5544_ _tl54875539_)
                            (_L5545_ _hd54885536_)
                            (_L5546_ _hd54825516_)
                            (_L5547_ _hd54795506_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5546_))
                            (___kont1622516226_
                             _L5542_
                             _L5544_
                             _L5545_
                             _L5546_
                             _L5547_)
                            (let () (declare (not safe)) (_g54155495_))))))
                   (___match1628316284_
                    (lambda (_e54365576_
                             _hd54355580_
                             _tl54345583_
                             _e54395586_
                             _hd54385590_
                             _tl54375593_
                             _e54405596_
                             _e54435600_
                             _hd54425604_
                             _tl54415607_
                             _e54465610_
                             _hd54455614_
                             _tl54445617_
                             ___splice1622116222_
                             _target54475620_
                             _tl54495623_)
                      (letrec ((_loop54505626_
                                (lambda (_hd54485630_ _super54545633_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd54485630_))
                                      (let ((_e54515636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd54485630_))))
                                        (let ((_lp-tl54535643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54515636_)))
                                              (_lp-hd54525640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54515636_))))
                                          (_loop54505626_
                                           _lp-tl54535643_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd54525640_
                                                   _super54545633_)))))
                                      (let ((_super54555646_
                                             (reverse _super54545633_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null? _tl54415607_))
                                            (let ((___splice1622316224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl54415607_
                                                      '0))))
                                              (let ((_tl54585653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1622316224_
                                                        '1)))
                                                    (_target54565650_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1622316224_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl54585653_))
                                                    (letrec ((_loop54595656_
                                                              (lambda (_hd54575660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method54635663_
                               _symbol54645665_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd54575660_))
                            (let ((_e54605668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _hd54575660_))))
                              (let ((_lp-tl54625675_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e54605668_)))
                                    (_lp-hd54615672_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e54605668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _lp-hd54615672_))
                                    (let ((_e54695678_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _lp-hd54615672_))))
                                      (let ((_tl54675685_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e54695678_)))
                                            (_hd54685682_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e54695678_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl54675685_))
                                            (let ((_e54725688_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl54675685_))))
                                              (let ((_tl54705695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e54725688_)))
                                                    (_hd54715692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e54725688_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl54705695_))
                                                    (_loop54595656_
                                                     _lp-tl54625675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd54715692_
                                                             _method54635663_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd54685682_
                                                             _symbol54645665_)))
                                                    (___match1630716308_
                                                     _e54365576_
                                                     _hd54355580_
                                                     _tl54345583_
                                                     _e54395586_
                                                     _hd54385590_
                                                     _tl54375593_
                                                     _e54435600_
                                                     _hd54425604_
                                                     _tl54415607_
                                                     _e54465610_
                                                     _hd54455614_
                                                     _tl54445617_))))
                                            (___match1630716308_
                                             _e54365576_
                                             _hd54355580_
                                             _tl54345583_
                                             _e54395586_
                                             _hd54385590_
                                             _tl54375593_
                                             _e54435600_
                                             _hd54425604_
                                             _tl54415607_
                                             _e54465610_
                                             _hd54455614_
                                             _tl54445617_))))
                                    (___match1630716308_
                                     _e54365576_
                                     _hd54355580_
                                     _tl54345583_
                                     _e54395586_
                                     _hd54385590_
                                     _tl54375593_
                                     _e54435600_
                                     _hd54425604_
                                     _tl54415607_
                                     _e54465610_
                                     _hd54455614_
                                     _tl54445617_))))
                            (let ((_symbol54665701_ (reverse _symbol54645665_))
                                  (_method54655698_
                                   (reverse _method54635663_)))
                              (___kont1621916220_
                               _method54655698_
                               _symbol54665701_
                               _super54555646_
                               _hd54455614_))))))
              (_loop54595656_ _target54565650_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1630716308_
                                                     _e54365576_
                                                     _hd54355580_
                                                     _tl54345583_
                                                     _e54395586_
                                                     _hd54385590_
                                                     _tl54375593_
                                                     _e54435600_
                                                     _hd54425604_
                                                     _tl54415607_
                                                     _e54465610_
                                                     _hd54455614_
                                                     _tl54445617_))))
                                            (___match1630716308_
                                             _e54365576_
                                             _hd54355580_
                                             _tl54345583_
                                             _e54395586_
                                             _hd54385590_
                                             _tl54375593_
                                             _e54435600_
                                             _hd54425604_
                                             _tl54415607_
                                             _e54465610_
                                             _hd54455614_
                                             _tl54445617_)))))))
                        (_loop54505626_ _target54475620_ '()))))
                   (___match1624516246_
                    (lambda (_e54235762_
                             _hd54225766_
                             _tl54215769_
                             _e54265772_
                             _hd54255776_
                             _tl54245779_
                             _e54295782_
                             _hd54285786_
                             _tl54275789_)
                      (let ((_L5792_ _tl54275789_)
                            (_L5794_ _hd54285786_)
                            (_L5795_ _hd54255776_)
                            (_L5796_ _hd54225766_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5794_))
                            (___kont1621716218_
                             _L5792_
                             _L5794_
                             _L5795_
                             _L5796_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd54255776_))
                                (let ((_e54405596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd54255776_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e54405596_ '#f))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd54285786_))
                                          (let ((_e54465610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd54285786_))))
                                            (let ((_tl54445617_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e54465610_)))
                                                  (_hd54455614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e54465610_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl54445617_))
                                                  (let ((___splice1622116222_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl54445617_
                                                            '0))))
                                                    (let ((_tl54495623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1622116222_
                                                              '1)))
                                                          (_target54475620_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1622116222_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl54495623_))
                                                          (___match1628316284_
                                                           _e54235762_
                                                           _hd54225766_
                                                           _tl54215769_
                                                           _e54265772_
                                                           _hd54255776_
                                                           _tl54245779_
                                                           _e54405596_
                                                           _e54295782_
                                                           _hd54285786_
                                                           _tl54275789_
                                                           _e54465610_
                                                           _hd54455614_
                                                           _tl54445617_
                                                           ___splice1622116222_
                                                           _target54475620_
                                                           _tl54495623_)
                                                          (___match1630716308_
                                                           _e54235762_
                                                           _hd54225766_
                                                           _tl54215769_
                                                           _e54265772_
                                                           _hd54255776_
                                                           _tl54245779_
                                                           _e54295782_
                                                           _hd54285786_
                                                           _tl54275789_
                                                           _e54465610_
                                                           _hd54455614_
                                                           _tl54445617_))))
                                                  (___match1630716308_
                                                   _e54235762_
                                                   _hd54225766_
                                                   _tl54215769_
                                                   _e54265772_
                                                   _hd54255776_
                                                   _tl54245779_
                                                   _e54295782_
                                                   _hd54285786_
                                                   _tl54275789_
                                                   _e54465610_
                                                   _hd54455614_
                                                   _tl54445617_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g54155495_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd54285786_))
                                          (let ((_e54895532_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd54285786_))))
                                            (let ((_tl54875539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e54895532_)))
                                                  (_hd54885536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e54895532_))))
                                              (___match1630716308_
                                               _e54235762_
                                               _hd54225766_
                                               _tl54215769_
                                               _e54265772_
                                               _hd54255776_
                                               _tl54245779_
                                               _e54295782_
                                               _hd54285786_
                                               _tl54275789_
                                               _e54895532_
                                               _hd54885536_
                                               _tl54875539_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g54155495_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd54285786_))
                                    (let ((_e54895532_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd54285786_))))
                                      (let ((_tl54875539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e54895532_)))
                                            (_hd54885536_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e54895532_))))
                                        (___match1630716308_
                                         _e54235762_
                                         _hd54225766_
                                         _tl54215769_
                                         _e54265772_
                                         _hd54255776_
                                         _tl54245779_
                                         _e54295782_
                                         _hd54285786_
                                         _tl54275789_
                                         _e54895532_
                                         _hd54885536_
                                         _tl54875539_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g54155495_)))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1621416215_))
                  (let ((_e54235762_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx1621416215_))))
                    (let ((_tl54215769_
                           (let () (declare (not safe)) (##cdr _e54235762_)))
                          (_hd54225766_
                           (let () (declare (not safe)) (##car _e54235762_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl54215769_))
                          (let ((_e54265772_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl54215769_))))
                            (let ((_tl54245779_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e54265772_)))
                                  (_hd54255776_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e54265772_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl54245779_))
                                  (let ((_e54295782_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl54245779_))))
                                    (let ((_tl54275789_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e54295782_)))
                                          (_hd54285786_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e54295782_))))
                                      (___match1624516246_
                                       _e54235762_
                                       _hd54225766_
                                       _tl54215769_
                                       _e54265772_
                                       _hd54255776_
                                       _tl54245779_
                                       _e54295782_
                                       _hd54285786_
                                       _tl54275789_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd54255776_))
                                      (let ((_e54405596_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd54255776_))))
                                        (declare (not safe))
                                        (_g54155495_))
                                      (let ()
                                        (declare (not safe))
                                        (_g54155495_))))))
                          (let () (declare (not safe)) (_g54155495_)))))
                  (let () (declare (not safe)) (_g54155495_))))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx5819_)
        (let* ((_g58235858_
                (lambda (_g58245854_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g58245854_))))
               (_g58225983_
                (lambda (_g58245862_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g58245862_))
                      (let ((_e58315865_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g58245862_))))
                        (let ((_hd58305869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58315865_)))
                              (_tl58295872_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58315865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl58295872_))
                              (let ((_e58345875_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl58295872_))))
                                (let ((_hd58335879_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e58345875_)))
                                      (_tl58325882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e58345875_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd58335879_))
                                      (let ((_e58375885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd58335879_))))
                                        (let ((_hd58365889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58375885_)))
                                              (_tl58355892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58375885_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl58355892_))
                                              (let ((_e58405895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl58355892_))))
                                                (let ((_hd58395899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58405895_)))
                                                      (_tl58385902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58405895_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl58385902_))
                                                      (let ((_e58435905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl58385902_))))
                (let ((_hd58425909_
                       (let () (declare (not safe)) (##car _e58435905_)))
                      (_tl58415912_
                       (let () (declare (not safe)) (##cdr _e58435905_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl58415912_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl58325882_))
                          (let ((_g18490_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice _tl58325882_ '0))))
                            (begin
                              (let ((_g18491_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g18490_)
                                           (##vector-length _g18490_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g18491_ 2)))
                                    (error "Context expects 2 values"
                                           _g18491_)))
                              (let ((_target58445915_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18490_ 0)))
                                    (_tl58465918_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18490_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl58465918_))
                                    (letrec ((_loop58475921_
                                              (lambda (_hd58455925_
                                                       _body58515928_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd58455925_))
                                                    (let ((_e58485931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd58455925_))))
                                                      (let ((_lp-hd58495935_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e58485931_)))
                    (_lp-tl58505938_
                     (let () (declare (not safe)) (##cdr _e58485931_))))
                (_loop58475921_
                 _lp-tl58505938_
                 (let ()
                   (declare (not safe))
                   (cons _lp-hd58495935_ _body58515928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body58525941_
                                                           (reverse _body58515928_)))
                                                      ((lambda (_L5945_
                                                                _L5947_
                                                                _L5948_
                                                                _L5949_)
                                                         (let ((__tmp18623
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let)))
                       (__tmp18492
                        (let ((__tmp18622
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'lp)))
                              (__tmp18493
                               (let ((__tmp18608
                                      (let ((__tmp18619
                                             (let ((__tmp18621
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest)))
                                                   (__tmp18620
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L5947_ '()))))
                                               (declare (not safe))
                                               (cons __tmp18621 __tmp18620)))
                                            (__tmp18609
                                             (let ((__tmp18615
                                                    (let ((__tmp18616
                                                           (let ((__tmp18617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18618
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))))
                            (declare (not safe))
                            (cons __tmp18618 '()))))
                     (declare (not safe))
                     (cons __tmp18617 '()))))
              (declare (not safe))
              (cons _L5949_ __tmp18616)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18610
                                                    (let ((__tmp18611
                                                           (let ((__tmp18612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18613
                                 (let ((__tmp18614
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list))))
                                   (declare (not safe))
                                   (cons __tmp18614 '()))))
                            (declare (not safe))
                            (cons __tmp18613 '()))))
                     (declare (not safe))
                     (cons _L5948_ __tmp18612))))
              (declare (not safe))
              (cons __tmp18611 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18615 __tmp18610))))
                                        (declare (not safe))
                                        (cons __tmp18619 __tmp18609)))
                                     (__tmp18494
                                      (let ((__tmp18495
                                             (let ((__tmp18607
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'match)))
                                                   (__tmp18496
                                                    (let ((__tmp18606
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'rest)))
                                                          (__tmp18497
                                                           (let ((__tmp18503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18601
                                 (let ((__tmp18605
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list)))
                                       (__tmp18602
                                        (let ((__tmp18604
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'e)))
                                              (__tmp18603
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))))
                                          (declare (not safe))
                                          (cons __tmp18604 __tmp18603))))
                                   (declare (not safe))
                                   (cons __tmp18605 __tmp18602)))
                                (__tmp18504
                                 (let ((__tmp18505
                                        (let ((__tmp18600
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'ast-case)))
                                              (__tmp18506
                                               (let ((__tmp18599
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'e)))
                                                     (__tmp18507
                                                      (let ((__tmp18595
                                                             (let ((__tmp18598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#quote)))
                           (__tmp18596
                            (let ((__tmp18597
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))))
                              (declare (not safe))
                              (cons __tmp18597 '()))))
                       (declare (not safe))
                       (cons __tmp18598 __tmp18596)))
                    (__tmp18508
                     (let ((__tmp18575
                            (let ((__tmp18591
                                   (let ((__tmp18594
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp18592
                                          (let ((__tmp18593
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_))))
                                            (declare (not safe))
                                            (cons __tmp18593 '()))))
                                     (declare (not safe))
                                     (cons __tmp18594 __tmp18592)))
                                  (__tmp18576
                                   (let ((__tmp18577
                                          (let ((__tmp18590
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'lp)))
                                                (__tmp18578
                                                 (let ((__tmp18589
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'rest)))
                                                       (__tmp18579
                                                        (let ((__tmp18580
                                                               (let ((__tmp18581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18588
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'cons)))
                                    (__tmp18582
                                     (let ((__tmp18584
                                            (let ((__tmp18587
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'compile-e)))
                                                  (__tmp18585
                                                   (let ((__tmp18586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'e))))
                                                     (declare (not safe))
                                                     (cons __tmp18586 '()))))
                                              (declare (not safe))
                                              (cons __tmp18587 __tmp18585)))
                                           (__tmp18583
                                            (let ()
                                              (declare (not safe))
                                              (cons _L5948_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18584 __tmp18583))))
                                (declare (not safe))
                                (cons __tmp18588 __tmp18582))))
                         (declare (not safe))
                         (cons __tmp18581 '()))))
                  (declare (not safe))
                  (cons _L5949_ __tmp18580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18589
                                                         __tmp18579))))
                                            (declare (not safe))
                                            (cons __tmp18590 __tmp18578))))
                                     (declare (not safe))
                                     (cons __tmp18577 '()))))
                              (declare (not safe))
                              (cons __tmp18591 __tmp18576)))
                           (__tmp18509
                            (let ((__tmp18555
                                   (let ((__tmp18571
                                          (let ((__tmp18574
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#quote)))
                                                (__tmp18572
                                                 (let ((__tmp18573
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '_))))
                                                   (declare (not safe))
                                                   (cons __tmp18573 '()))))
                                            (declare (not safe))
                                            (cons __tmp18574 __tmp18572)))
                                         (__tmp18556
                                          (let ((__tmp18557
                                                 (let ((__tmp18570
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lp)))
                                                       (__tmp18558
                                                        (let ((__tmp18569
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'rest)))
                      (__tmp18559
                       (let ((__tmp18560
                              (let ((__tmp18561
                                     (let ((__tmp18568
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'cons)))
                                           (__tmp18562
                                            (let ((__tmp18564
                                                   (let ((__tmp18567
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'compile-e)))
                                                         (__tmp18565
                                                          (let ((__tmp18566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'e))))
                    (declare (not safe))
                    (cons __tmp18566 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18567
                                                           __tmp18565)))
                                                  (__tmp18563
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L5948_ '()))))
                                              (declare (not safe))
                                              (cons __tmp18564 __tmp18563))))
                                       (declare (not safe))
                                       (cons __tmp18568 __tmp18562))))
                                (declare (not safe))
                                (cons __tmp18561 '()))))
                         (declare (not safe))
                         (cons _L5949_ __tmp18560))))
                  (declare (not safe))
                  (cons __tmp18569 __tmp18559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18570
                                                         __tmp18558))))
                                            (declare (not safe))
                                            (cons __tmp18557 '()))))
                                     (declare (not safe))
                                     (cons __tmp18571 __tmp18556)))
                                  (__tmp18510
                                   (let ((__tmp18511
                                          (let ((__tmp18554
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_)))
                                                (__tmp18512
                                                 (let ((__tmp18513
                                                        (let ((__tmp18553
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let)))
                      (__tmp18514
                       (let ((__tmp18540
                              (let ((__tmp18552
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'tmp)))
                                    (__tmp18541
                                     (let ((__tmp18542
                                            (let ((__tmp18551
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-symbol)))
                                                  (__tmp18543
                                                   (let ((__tmp18544
                                                          (let ((__tmp18550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'gensym)))
                        (__tmp18545
                         (let ((__tmp18546
                                (let ((__tmp18549
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp18547
                                       (let ((__tmp18548
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '__tmp))))
                                         (declare (not safe))
                                         (cons __tmp18548 '()))))
                                  (declare (not safe))
                                  (cons __tmp18549 __tmp18547))))
                           (declare (not safe))
                           (cons __tmp18546 '()))))
                    (declare (not safe))
                    (cons __tmp18550 __tmp18545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18544 '()))))
                                              (declare (not safe))
                                              (cons __tmp18551 __tmp18543))))
                                       (declare (not safe))
                                       (cons __tmp18542 '()))))
                                (declare (not safe))
                                (cons __tmp18552 __tmp18541)))
                             (__tmp18515
                              (let ((__tmp18516
                                     (let ((__tmp18539
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'lp)))
                                           (__tmp18517
                                            (let ((__tmp18538
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'rest)))
                                                  (__tmp18518
                                                   (let ((__tmp18525
                                                          (let ((__tmp18537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'cons)))
                        (__tmp18526
                         (let ((__tmp18528
                                (let ((__tmp18536
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list)))
                                      (__tmp18529
                                       (let ((__tmp18535
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'tmp)))
                                             (__tmp18530
                                              (let ((__tmp18531
                                                     (let ((__tmp18534
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'compile-e)))
                                                           (__tmp18532
                                                            (let ((__tmp18533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'e))))
                      (declare (not safe))
                      (cons __tmp18533 '()))))
               (declare (not safe))
               (cons __tmp18534 __tmp18532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18531 '()))))
                                         (declare (not safe))
                                         (cons __tmp18535 __tmp18530))))
                                  (declare (not safe))
                                  (cons __tmp18536 __tmp18529)))
                               (__tmp18527
                                (let ()
                                  (declare (not safe))
                                  (cons _L5949_ '()))))
                           (declare (not safe))
                           (cons __tmp18528 __tmp18527))))
                    (declare (not safe))
                    (cons __tmp18537 __tmp18526)))
                 (__tmp18519
                  (let ((__tmp18520
                         (let ((__tmp18524
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'cons)))
                               (__tmp18521
                                (let ((__tmp18523
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'tmp)))
                                      (__tmp18522
                                       (let ()
                                         (declare (not safe))
                                         (cons _L5948_ '()))))
                                  (declare (not safe))
                                  (cons __tmp18523 __tmp18522))))
                           (declare (not safe))
                           (cons __tmp18524 __tmp18521))))
                    (declare (not safe))
                    (cons __tmp18520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18525
                                                           __tmp18519))))
                                              (declare (not safe))
                                              (cons __tmp18538 __tmp18518))))
                                       (declare (not safe))
                                       (cons __tmp18539 __tmp18517))))
                                (declare (not safe))
                                (cons __tmp18516 '()))))
                         (declare (not safe))
                         (cons __tmp18540 __tmp18515))))
                  (declare (not safe))
                  (cons __tmp18553 __tmp18514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18513 '()))))
                                            (declare (not safe))
                                            (cons __tmp18554 __tmp18512))))
                                     (declare (not safe))
                                     (cons __tmp18511 '()))))
                              (declare (not safe))
                              (cons __tmp18555 __tmp18510))))
                       (declare (not safe))
                       (cons __tmp18575 __tmp18509))))
                (declare (not safe))
                (cons __tmp18595 __tmp18508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18599
                                                       __tmp18507))))
                                          (declare (not safe))
                                          (cons __tmp18600 __tmp18506))))
                                   (declare (not safe))
                                   (cons __tmp18505 '()))))
                            (declare (not safe))
                            (cons __tmp18601 __tmp18504)))
                         (__tmp18498
                          (let ((__tmp18499
                                 (let ((__tmp18502
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'else)))
                                       (__tmp18500
                                        (let ((__tmp18501
                                               (lambda (_g59745977_
                                                        _g59755980_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g59745977_
                                                         _g59755980_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp18501 '() _L5945_))))
                                   (declare (not safe))
                                   (cons __tmp18502 __tmp18500))))
                            (declare (not safe))
                            (cons __tmp18499 '()))))
                     (declare (not safe))
                     (cons __tmp18503 __tmp18498))))
              (declare (not safe))
              (cons __tmp18606 __tmp18497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18607 __tmp18496))))
                                        (declare (not safe))
                                        (cons __tmp18495 '()))))
                                 (declare (not safe))
                                 (cons __tmp18608 __tmp18494))))
                          (declare (not safe))
                          (cons __tmp18622 __tmp18493))))
                   (declare (not safe))
                   (cons __tmp18623 __tmp18492)))
               _body58525941_
               _hd58425909_
               _hd58395899_
               _hd58365889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop58475921_ _target58445915_ '()))
                                    (_g58235858_ _g58245862_)))))
                          (_g58235858_ _g58245862_))
                      (_g58235858_ _g58245862_))))
              (_g58235858_ _g58245862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58235858_ _g58245862_))))
                                      (_g58235858_ _g58245862_))))
                              (_g58235858_ _g58245862_))))
                      (_g58235858_ _g58245862_)))))
          (_g58225983_ _$stx5819_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx5988_)
        (let* ((_g59926010_
                (lambda (_g59936006_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59936006_))))
               (_g59916065_
                (lambda (_g59936014_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g59936014_))
                      (let ((_e59986017_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g59936014_))))
                        (let ((_hd59976021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59986017_)))
                              (_tl59966024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59986017_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl59966024_))
                              (let ((_e60016027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl59966024_))))
                                (let ((_hd60006031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60016027_)))
                                      (_tl59996034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60016027_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl59996034_))
                                      (let ((_e60046037_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl59996034_))))
                                        (let ((_hd60036041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60046037_)))
                                              (_tl60026044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60046037_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl60026044_))
                                              ((lambda (_L6047_ _L6049_)
                                                 (let ((__tmp18639
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'cond-expand)))
                                                       (__tmp18624
                                                        (let ((__tmp18636
                                                               (let ((__tmp18638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0
                                 '#f
                                 'gambit-inline-unsafe-primitives)))
                             (__tmp18637
                              (let ()
                                (declare (not safe))
                                (cons _L6049_ '()))))
                         (declare (not safe))
                         (cons __tmp18638 __tmp18637)))
                      (__tmp18625
                       (let ((__tmp18626
                              (let ((__tmp18635
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'else)))
                                    (__tmp18627
                                     (let ((__tmp18628
                                            (let ((__tmp18634
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'if)))
                                                  (__tmp18629
                                                   (let ((__tmp18632
                                                          (let ((__tmp18633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'current-compile-decls-unsafe?))))
                    (declare (not safe))
                    (cons __tmp18633 '())))
                 (__tmp18630
                  (let ((__tmp18631
                         (let () (declare (not safe)) (cons _L6047_ '()))))
                    (declare (not safe))
                    (cons _L6049_ __tmp18631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18632
                                                           __tmp18630))))
                                              (declare (not safe))
                                              (cons __tmp18634 __tmp18629))))
                                       (declare (not safe))
                                       (cons __tmp18628 '()))))
                                (declare (not safe))
                                (cons __tmp18635 __tmp18627))))
                         (declare (not safe))
                         (cons __tmp18626 '()))))
                  (declare (not safe))
                  (cons __tmp18636 __tmp18625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18639
                                                         __tmp18624)))
                                               _hd60036041_
                                               _hd60006031_)
                                              (_g59926010_ _g59936014_))))
                                      (_g59926010_ _g59936014_))))
                              (_g59926010_ _g59936014_))))
                      (_g59926010_ _g59936014_)))))
          (_g59916065_ _$stx5988_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18640_|
       'expander-identifiers:
       (let ((__tmp18641
              (let ((__tmp18674 |gxc[1]#_g18640_|)
                    (__tmp18642
                     (let ((__tmp18672 |gxc[1]#_g18673_|)
                           (__tmp18643
                            (let ((__tmp18670 |gxc[1]#_g18671_|)
                                  (__tmp18644
                                   (let ((__tmp18658
                                          (let ((__tmp18668 |gxc[1]#_g18669_|)
                                                (__tmp18659
                                                 (let ((__tmp18666
                                                        |gxc[1]#_g18667_|)
                                                       (__tmp18660
                                                        (let ((__tmp18664
                                                               |gxc[1]#_g18665_|)
                                                              (__tmp18661
                                                               (let ((__tmp18662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18663_|))
                         (declare (not safe))
                         (cons __tmp18662 '()))))
                  (declare (not safe))
                  (cons __tmp18664 __tmp18661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18666
                                                         __tmp18660))))
                                            (declare (not safe))
                                            (cons __tmp18668 __tmp18659)))
                                         (__tmp18645
                                          (let ((__tmp18646
                                                 (let ((__tmp18656
                                                        |gxc[1]#_g18657_|)
                                                       (__tmp18647
                                                        (let ((__tmp18654
                                                               |gxc[1]#_g18655_|)
                                                              (__tmp18648
                                                               (let ((__tmp18652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18653_|)
                             (__tmp18649
                              (let ((__tmp18650 |gxc[1]#_g18651_|))
                                (declare (not safe))
                                (cons __tmp18650 '()))))
                         (declare (not safe))
                         (cons __tmp18652 __tmp18649))))
                  (declare (not safe))
                  (cons __tmp18654 __tmp18648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18656
                                                         __tmp18647))))
                                            (declare (not safe))
                                            (cons __tmp18646 '()))))
                                     (declare (not safe))
                                     (cons __tmp18658 __tmp18645))))
                              (declare (not safe))
                              (cons __tmp18670 __tmp18644))))
                       (declare (not safe))
                       (cons __tmp18672 __tmp18643))))
                (declare (not safe))
                (cons __tmp18674 __tmp18642))))
         (declare (not safe))
         (cons '#f __tmp18641))
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
       |gxc[1]#_g18675_|
       'expander-identifiers:
       (let ((__tmp18676
              (let ((__tmp18709 |gxc[1]#_g18675_|)
                    (__tmp18677
                     (let ((__tmp18707 |gxc[1]#_g18708_|)
                           (__tmp18678
                            (let ((__tmp18705 |gxc[1]#_g18706_|)
                                  (__tmp18679
                                   (let ((__tmp18693
                                          (let ((__tmp18703 |gxc[1]#_g18704_|)
                                                (__tmp18694
                                                 (let ((__tmp18701
                                                        |gxc[1]#_g18702_|)
                                                       (__tmp18695
                                                        (let ((__tmp18699
                                                               |gxc[1]#_g18700_|)
                                                              (__tmp18696
                                                               (let ((__tmp18697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18698_|))
                         (declare (not safe))
                         (cons __tmp18697 '()))))
                  (declare (not safe))
                  (cons __tmp18699 __tmp18696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18701
                                                         __tmp18695))))
                                            (declare (not safe))
                                            (cons __tmp18703 __tmp18694)))
                                         (__tmp18680
                                          (let ((__tmp18681
                                                 (let ((__tmp18691
                                                        |gxc[1]#_g18692_|)
                                                       (__tmp18682
                                                        (let ((__tmp18689
                                                               |gxc[1]#_g18690_|)
                                                              (__tmp18683
                                                               (let ((__tmp18687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18688_|)
                             (__tmp18684
                              (let ((__tmp18685 |gxc[1]#_g18686_|))
                                (declare (not safe))
                                (cons __tmp18685 '()))))
                         (declare (not safe))
                         (cons __tmp18687 __tmp18684))))
                  (declare (not safe))
                  (cons __tmp18689 __tmp18683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18691
                                                         __tmp18682))))
                                            (declare (not safe))
                                            (cons __tmp18681 '()))))
                                     (declare (not safe))
                                     (cons __tmp18693 __tmp18680))))
                              (declare (not safe))
                              (cons __tmp18705 __tmp18679))))
                       (declare (not safe))
                       (cons __tmp18707 __tmp18678))))
                (declare (not safe))
                (cons __tmp18709 __tmp18677))))
         (declare (not safe))
         (cons '#f __tmp18676))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
