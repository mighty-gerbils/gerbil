(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g18780_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18791_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18793_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18795_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18797_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18803_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18805_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18807_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18809_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18811_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18813_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18815_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18826_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18828_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18830_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18832_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18838_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18840_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18842_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18844_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18846_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18848_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx5408_)
        (let* ((___stx1632216323_ _$stx5408_)
               (_g54145494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1632216323_)))))
          (let ((___kont1632516326_
                 (lambda (_L5791_ _L5793_ _L5794_ _L5795_)
                   (let ((__tmp18556
                          (let ((__tmp18557
                                 (let ((__tmp18558
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5793_ '()))))
                                   (declare (not safe))
                                   (cons __tmp18558 _L5791_))))
                            (declare (not safe))
                            (cons _L5794_ __tmp18557))))
                     (declare (not safe))
                     (cons _L5795_ __tmp18556))))
                (___kont1632716328_
                 (lambda (_L5703_ _L5705_ _L5706_ _L5707_)
                   (let ((__tmp18595
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'define)))
                         (__tmp18559
                          (let ((__tmp18560
                                 (let ((__tmp18561
                                        (let ((__tmp18594
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'delay)))
                                              (__tmp18562
                                               (let ((__tmp18563
                                                      (let ((__tmp18593
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'let)))
                    (__tmp18564
                     (let ((__tmp18588
                            (let ((__tmp18592
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'tbl)))
                                  (__tmp18589
                                   (let ((__tmp18590
                                          (let ((__tmp18591
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-hash-table-eq))))
                                            (declare (not safe))
                                            (cons __tmp18591 '()))))
                                     (declare (not safe))
                                     (cons __tmp18590 '()))))
                              (declare (not safe))
                              (cons __tmp18592 __tmp18589)))
                           (__tmp18565
                            (let ((__tmp18579
                                   (lambda (_g57345740_ _g57355743_)
                                     (let ((__tmp18580
                                            (let ((__tmp18587
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-copy!)))
                                                  (__tmp18581
                                                   (let ((__tmp18586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'tbl)))
                                                         (__tmp18582
                                                          (let ((__tmp18583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18585
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'force)))
                               (__tmp18584
                                (let ()
                                  (declare (not safe))
                                  (cons _g57345740_ '()))))
                           (declare (not safe))
                           (cons __tmp18585 __tmp18584))))
                    (declare (not safe))
                    (cons __tmp18583 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18586
                                                           __tmp18582))))
                                              (declare (not safe))
                                              (cons __tmp18587 __tmp18581))))
                                       (declare (not safe))
                                       (cons __tmp18580 _g57355743_))))
                                  (__tmp18566
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L5703_
                                        _L5705_))
                                     (let ((__tmp18569
                                            (lambda (_g57365746_
                                                     _g57375749_
                                                     _g57385751_)
                                              (let ((__tmp18570
                                                     (let ((__tmp18578
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'hash-put!)))
                                                           (__tmp18571
                                                            (let ((__tmp18577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'tbl)))
                          (__tmp18572
                           (let ((__tmp18574
                                  (let ((__tmp18576
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp18575
                                         (let ()
                                           (declare (not safe))
                                           (cons _g57375749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp18576 __tmp18575)))
                                 (__tmp18573
                                  (let ()
                                    (declare (not safe))
                                    (cons _g57365746_ '()))))
                             (declare (not safe))
                             (cons __tmp18574 __tmp18573))))
                      (declare (not safe))
                      (cons __tmp18577 __tmp18572))))
               (declare (not safe))
               (cons __tmp18578 __tmp18571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18570
                                                      _g57385751_))))
                                           (__tmp18567
                                            (let ((__tmp18568
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'tbl))))
                                              (declare (not safe))
                                              (cons __tmp18568 '()))))
                                       (declare (not safe))
                                       (foldr2 __tmp18569
                                               __tmp18567
                                               _L5703_
                                               _L5705_)))))
                              (declare (not safe))
                              (foldr1 __tmp18579 __tmp18566 _L5706_))))
                       (declare (not safe))
                       (cons __tmp18588 __tmp18565))))
                (declare (not safe))
                (cons __tmp18593 __tmp18564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18563 '()))))
                                          (declare (not safe))
                                          (cons __tmp18594 __tmp18562))))
                                   (declare (not safe))
                                   (cons __tmp18561 '()))))
                            (declare (not safe))
                            (cons _L5707_ __tmp18560))))
                     (declare (not safe))
                     (cons __tmp18595 __tmp18559))))
                (___kont1633316334_
                 (lambda (_L5541_ _L5543_ _L5544_ _L5545_ _L5546_)
                   (let ((__tmp18629
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp18596
                          (let ((__tmp18625
                                 (let ((__tmp18626
                                        (let ((__tmp18627
                                               (let ((__tmp18628
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L5544_
                                                              _L5543_))))
                                                 (declare (not safe))
                                                 (cons __tmp18628 _L5541_))))
                                          (declare (not safe))
                                          (cons '#f __tmp18627))))
                                   (declare (not safe))
                                   (cons _L5546_ __tmp18626)))
                                (__tmp18597
                                 (let ((__tmp18598
                                        (let ((__tmp18624
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'define)))
                                              (__tmp18599
                                               (let ((__tmp18620
                                                      (let ((__tmp18621
                                                             (let ((__tmp18623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx)))
                           (__tmp18622
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'args))))
                       (declare (not safe))
                       (cons __tmp18623 __tmp18622))))
                (declare (not safe))
                (cons _L5545_ __tmp18621)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18600
                                                      (let ((__tmp18601
                                                             (let ((__tmp18619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'parameterize)))
                           (__tmp18602
                            (let ((__tmp18612
                                   (let ((__tmp18613
                                          (let ((__tmp18618
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'current-compile-methods)))
                                                (__tmp18614
                                                 (let ((__tmp18615
                                                        (let ((__tmp18617
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'force)))
                      (__tmp18616
                       (let () (declare (not safe)) (cons _L5544_ '()))))
                  (declare (not safe))
                  (cons __tmp18617 __tmp18616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18615 '()))))
                                            (declare (not safe))
                                            (cons __tmp18618 __tmp18614))))
                                     (declare (not safe))
                                     (cons __tmp18613 '())))
                                  (__tmp18603
                                   (let ((__tmp18604
                                          (let ((__tmp18611
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'apply)))
                                                (__tmp18605
                                                 (let ((__tmp18610
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'compile-e)))
                                                       (__tmp18606
                                                        (let ((__tmp18609
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'stx)))
                      (__tmp18607
                       (let ((__tmp18608
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'args))))
                         (declare (not safe))
                         (cons __tmp18608 '()))))
                  (declare (not safe))
                  (cons __tmp18609 __tmp18607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18610
                                                         __tmp18606))))
                                            (declare (not safe))
                                            (cons __tmp18611 __tmp18605))))
                                     (declare (not safe))
                                     (cons __tmp18604 '()))))
                              (declare (not safe))
                              (cons __tmp18612 __tmp18603))))
                       (declare (not safe))
                       (cons __tmp18619 __tmp18602))))
                (declare (not safe))
                (cons __tmp18601 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18620
                                                       __tmp18600))))
                                          (declare (not safe))
                                          (cons __tmp18624 __tmp18599))))
                                   (declare (not safe))
                                   (cons __tmp18598 '()))))
                            (declare (not safe))
                            (cons __tmp18625 __tmp18597))))
                     (declare (not safe))
                     (cons __tmp18629 __tmp18596)))))
            (let* ((___match1641516416_
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
                            (___kont1633316334_
                             _L5541_
                             _L5543_
                             _L5544_
                             _L5545_
                             _L5546_)
                            (let () (declare (not safe)) (_g54145494_))))))
                   (___match1639116392_
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
                             ___splice1632916330_
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
                                            (let ((___splice1633116332_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl54405606_
                                                      '0))))
                                              (let ((_tl54575652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1633116332_
                                                        '1)))
                                                    (_target54555649_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1633116332_
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
                                                    (___match1641516416_
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
                                            (___match1641516416_
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
                                    (___match1641516416_
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
                              (___kont1632716328_
                               _method54645697_
                               _symbol54655700_
                               _super54545645_
                               _hd54445613_))))))
              (_loop54585655_ _target54555649_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1641516416_
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
                                            (___match1641516416_
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
                   (___match1635316354_
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
                            (___kont1632516326_
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
                                                  (let ((___splice1632916330_
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
                                                              ___splice1632916330_
                                                              '1)))
                                                          (_target54465619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1632916330_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl54485622_))
                                                          (___match1639116392_
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
                                                           ___splice1632916330_
                                                           _target54465619_
                                                           _tl54485622_)
                                                          (___match1641516416_
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
                                                  (___match1641516416_
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
                                              (___match1641516416_
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
                                        (___match1641516416_
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
                    (gx#stx-pair? ___stx1632216323_))
                  (let ((_e54225761_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx1632216323_))))
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
                                      (___match1635316354_
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
                          (let ((_g18630_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice _tl58315881_ '0))))
                            (begin
                              (let ((_g18631_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g18630_)
                                           (##vector-length _g18630_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g18631_ 2)))
                                    (error "Context expects 2 values"
                                           _g18631_)))
                              (let ((_target58435914_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18630_ 0)))
                                    (_tl58455917_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g18630_ 1))))
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
                                                         (let ((__tmp18763
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let)))
                       (__tmp18632
                        (let ((__tmp18762
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'lp)))
                              (__tmp18633
                               (let ((__tmp18748
                                      (let ((__tmp18759
                                             (let ((__tmp18761
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest)))
                                                   (__tmp18760
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L5946_ '()))))
                                               (declare (not safe))
                                               (cons __tmp18761 __tmp18760)))
                                            (__tmp18749
                                             (let ((__tmp18755
                                                    (let ((__tmp18756
                                                           (let ((__tmp18757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18758
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))))
                            (declare (not safe))
                            (cons __tmp18758 '()))))
                     (declare (not safe))
                     (cons __tmp18757 '()))))
              (declare (not safe))
              (cons _L5948_ __tmp18756)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18750
                                                    (let ((__tmp18751
                                                           (let ((__tmp18752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18753
                                 (let ((__tmp18754
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list))))
                                   (declare (not safe))
                                   (cons __tmp18754 '()))))
                            (declare (not safe))
                            (cons __tmp18753 '()))))
                     (declare (not safe))
                     (cons _L5947_ __tmp18752))))
              (declare (not safe))
              (cons __tmp18751 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18755 __tmp18750))))
                                        (declare (not safe))
                                        (cons __tmp18759 __tmp18749)))
                                     (__tmp18634
                                      (let ((__tmp18635
                                             (let ((__tmp18747
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'match)))
                                                   (__tmp18636
                                                    (let ((__tmp18746
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'rest)))
                                                          (__tmp18637
                                                           (let ((__tmp18643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18741
                                 (let ((__tmp18745
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list)))
                                       (__tmp18742
                                        (let ((__tmp18744
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'e)))
                                              (__tmp18743
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))))
                                          (declare (not safe))
                                          (cons __tmp18744 __tmp18743))))
                                   (declare (not safe))
                                   (cons __tmp18745 __tmp18742)))
                                (__tmp18644
                                 (let ((__tmp18645
                                        (let ((__tmp18740
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'ast-case)))
                                              (__tmp18646
                                               (let ((__tmp18739
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'e)))
                                                     (__tmp18647
                                                      (let ((__tmp18735
                                                             (let ((__tmp18738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#quote)))
                           (__tmp18736
                            (let ((__tmp18737
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))))
                              (declare (not safe))
                              (cons __tmp18737 '()))))
                       (declare (not safe))
                       (cons __tmp18738 __tmp18736)))
                    (__tmp18648
                     (let ((__tmp18715
                            (let ((__tmp18731
                                   (let ((__tmp18734
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp18732
                                          (let ((__tmp18733
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_))))
                                            (declare (not safe))
                                            (cons __tmp18733 '()))))
                                     (declare (not safe))
                                     (cons __tmp18734 __tmp18732)))
                                  (__tmp18716
                                   (let ((__tmp18717
                                          (let ((__tmp18730
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'lp)))
                                                (__tmp18718
                                                 (let ((__tmp18729
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'rest)))
                                                       (__tmp18719
                                                        (let ((__tmp18720
                                                               (let ((__tmp18721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18728
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'cons)))
                                    (__tmp18722
                                     (let ((__tmp18724
                                            (let ((__tmp18727
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'compile-e)))
                                                  (__tmp18725
                                                   (let ((__tmp18726
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'e))))
                                                     (declare (not safe))
                                                     (cons __tmp18726 '()))))
                                              (declare (not safe))
                                              (cons __tmp18727 __tmp18725)))
                                           (__tmp18723
                                            (let ()
                                              (declare (not safe))
                                              (cons _L5947_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18724 __tmp18723))))
                                (declare (not safe))
                                (cons __tmp18728 __tmp18722))))
                         (declare (not safe))
                         (cons __tmp18721 '()))))
                  (declare (not safe))
                  (cons _L5948_ __tmp18720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18729
                                                         __tmp18719))))
                                            (declare (not safe))
                                            (cons __tmp18730 __tmp18718))))
                                     (declare (not safe))
                                     (cons __tmp18717 '()))))
                              (declare (not safe))
                              (cons __tmp18731 __tmp18716)))
                           (__tmp18649
                            (let ((__tmp18695
                                   (let ((__tmp18711
                                          (let ((__tmp18714
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#quote)))
                                                (__tmp18712
                                                 (let ((__tmp18713
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '_))))
                                                   (declare (not safe))
                                                   (cons __tmp18713 '()))))
                                            (declare (not safe))
                                            (cons __tmp18714 __tmp18712)))
                                         (__tmp18696
                                          (let ((__tmp18697
                                                 (let ((__tmp18710
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lp)))
                                                       (__tmp18698
                                                        (let ((__tmp18709
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'rest)))
                      (__tmp18699
                       (let ((__tmp18700
                              (let ((__tmp18701
                                     (let ((__tmp18708
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'cons)))
                                           (__tmp18702
                                            (let ((__tmp18704
                                                   (let ((__tmp18707
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'compile-e)))
                                                         (__tmp18705
                                                          (let ((__tmp18706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'e))))
                    (declare (not safe))
                    (cons __tmp18706 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18707
                                                           __tmp18705)))
                                                  (__tmp18703
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L5947_ '()))))
                                              (declare (not safe))
                                              (cons __tmp18704 __tmp18703))))
                                       (declare (not safe))
                                       (cons __tmp18708 __tmp18702))))
                                (declare (not safe))
                                (cons __tmp18701 '()))))
                         (declare (not safe))
                         (cons _L5948_ __tmp18700))))
                  (declare (not safe))
                  (cons __tmp18709 __tmp18699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18710
                                                         __tmp18698))))
                                            (declare (not safe))
                                            (cons __tmp18697 '()))))
                                     (declare (not safe))
                                     (cons __tmp18711 __tmp18696)))
                                  (__tmp18650
                                   (let ((__tmp18651
                                          (let ((__tmp18694
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_)))
                                                (__tmp18652
                                                 (let ((__tmp18653
                                                        (let ((__tmp18693
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let)))
                      (__tmp18654
                       (let ((__tmp18680
                              (let ((__tmp18692
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'tmp)))
                                    (__tmp18681
                                     (let ((__tmp18682
                                            (let ((__tmp18691
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-symbol)))
                                                  (__tmp18683
                                                   (let ((__tmp18684
                                                          (let ((__tmp18690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'gensym)))
                        (__tmp18685
                         (let ((__tmp18686
                                (let ((__tmp18689
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp18687
                                       (let ((__tmp18688
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '__tmp))))
                                         (declare (not safe))
                                         (cons __tmp18688 '()))))
                                  (declare (not safe))
                                  (cons __tmp18689 __tmp18687))))
                           (declare (not safe))
                           (cons __tmp18686 '()))))
                    (declare (not safe))
                    (cons __tmp18690 __tmp18685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18684 '()))))
                                              (declare (not safe))
                                              (cons __tmp18691 __tmp18683))))
                                       (declare (not safe))
                                       (cons __tmp18682 '()))))
                                (declare (not safe))
                                (cons __tmp18692 __tmp18681)))
                             (__tmp18655
                              (let ((__tmp18656
                                     (let ((__tmp18679
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'lp)))
                                           (__tmp18657
                                            (let ((__tmp18678
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'rest)))
                                                  (__tmp18658
                                                   (let ((__tmp18665
                                                          (let ((__tmp18677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'cons)))
                        (__tmp18666
                         (let ((__tmp18668
                                (let ((__tmp18676
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list)))
                                      (__tmp18669
                                       (let ((__tmp18675
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'tmp)))
                                             (__tmp18670
                                              (let ((__tmp18671
                                                     (let ((__tmp18674
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'compile-e)))
                                                           (__tmp18672
                                                            (let ((__tmp18673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'e))))
                      (declare (not safe))
                      (cons __tmp18673 '()))))
               (declare (not safe))
               (cons __tmp18674 __tmp18672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18671 '()))))
                                         (declare (not safe))
                                         (cons __tmp18675 __tmp18670))))
                                  (declare (not safe))
                                  (cons __tmp18676 __tmp18669)))
                               (__tmp18667
                                (let ()
                                  (declare (not safe))
                                  (cons _L5948_ '()))))
                           (declare (not safe))
                           (cons __tmp18668 __tmp18667))))
                    (declare (not safe))
                    (cons __tmp18677 __tmp18666)))
                 (__tmp18659
                  (let ((__tmp18660
                         (let ((__tmp18664
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'cons)))
                               (__tmp18661
                                (let ((__tmp18663
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'tmp)))
                                      (__tmp18662
                                       (let ()
                                         (declare (not safe))
                                         (cons _L5947_ '()))))
                                  (declare (not safe))
                                  (cons __tmp18663 __tmp18662))))
                           (declare (not safe))
                           (cons __tmp18664 __tmp18661))))
                    (declare (not safe))
                    (cons __tmp18660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18665
                                                           __tmp18659))))
                                              (declare (not safe))
                                              (cons __tmp18678 __tmp18658))))
                                       (declare (not safe))
                                       (cons __tmp18679 __tmp18657))))
                                (declare (not safe))
                                (cons __tmp18656 '()))))
                         (declare (not safe))
                         (cons __tmp18680 __tmp18655))))
                  (declare (not safe))
                  (cons __tmp18693 __tmp18654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18653 '()))))
                                            (declare (not safe))
                                            (cons __tmp18694 __tmp18652))))
                                     (declare (not safe))
                                     (cons __tmp18651 '()))))
                              (declare (not safe))
                              (cons __tmp18695 __tmp18650))))
                       (declare (not safe))
                       (cons __tmp18715 __tmp18649))))
                (declare (not safe))
                (cons __tmp18735 __tmp18648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18739
                                                       __tmp18647))))
                                          (declare (not safe))
                                          (cons __tmp18740 __tmp18646))))
                                   (declare (not safe))
                                   (cons __tmp18645 '()))))
                            (declare (not safe))
                            (cons __tmp18741 __tmp18644)))
                         (__tmp18638
                          (let ((__tmp18639
                                 (let ((__tmp18642
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'else)))
                                       (__tmp18640
                                        (let ((__tmp18641
                                               (lambda (_g59735976_
                                                        _g59745979_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g59735976_
                                                         _g59745979_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp18641 '() _L5944_))))
                                   (declare (not safe))
                                   (cons __tmp18642 __tmp18640))))
                            (declare (not safe))
                            (cons __tmp18639 '()))))
                     (declare (not safe))
                     (cons __tmp18643 __tmp18638))))
              (declare (not safe))
              (cons __tmp18746 __tmp18637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18747 __tmp18636))))
                                        (declare (not safe))
                                        (cons __tmp18635 '()))))
                                 (declare (not safe))
                                 (cons __tmp18748 __tmp18634))))
                          (declare (not safe))
                          (cons __tmp18762 __tmp18633))))
                   (declare (not safe))
                   (cons __tmp18763 __tmp18632)))
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
                                                 (let ((__tmp18779
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'cond-expand)))
                                                       (__tmp18764
                                                        (let ((__tmp18776
                                                               (let ((__tmp18778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0
                                 '#f
                                 'gambit-inline-unsafe-primitives)))
                             (__tmp18777
                              (let ()
                                (declare (not safe))
                                (cons _L6048_ '()))))
                         (declare (not safe))
                         (cons __tmp18778 __tmp18777)))
                      (__tmp18765
                       (let ((__tmp18766
                              (let ((__tmp18775
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'else)))
                                    (__tmp18767
                                     (let ((__tmp18768
                                            (let ((__tmp18774
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'if)))
                                                  (__tmp18769
                                                   (let ((__tmp18772
                                                          (let ((__tmp18773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'current-compile-decls-unsafe?))))
                    (declare (not safe))
                    (cons __tmp18773 '())))
                 (__tmp18770
                  (let ((__tmp18771
                         (let () (declare (not safe)) (cons _L6046_ '()))))
                    (declare (not safe))
                    (cons _L6048_ __tmp18771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18772
                                                           __tmp18770))))
                                              (declare (not safe))
                                              (cons __tmp18774 __tmp18769))))
                                       (declare (not safe))
                                       (cons __tmp18768 '()))))
                                (declare (not safe))
                                (cons __tmp18775 __tmp18767))))
                         (declare (not safe))
                         (cons __tmp18766 '()))))
                  (declare (not safe))
                  (cons __tmp18776 __tmp18765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18779
                                                         __tmp18764)))
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
       |gxc[1]#_g18780_|
       'expander-identifiers:
       (let ((__tmp18781
              (let ((__tmp18814 |gxc[1]#_g18780_|)
                    (__tmp18782
                     (let ((__tmp18812 |gxc[1]#_g18813_|)
                           (__tmp18783
                            (let ((__tmp18810 |gxc[1]#_g18811_|)
                                  (__tmp18784
                                   (let ((__tmp18798
                                          (let ((__tmp18808 |gxc[1]#_g18809_|)
                                                (__tmp18799
                                                 (let ((__tmp18806
                                                        |gxc[1]#_g18807_|)
                                                       (__tmp18800
                                                        (let ((__tmp18804
                                                               |gxc[1]#_g18805_|)
                                                              (__tmp18801
                                                               (let ((__tmp18802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18803_|))
                         (declare (not safe))
                         (cons __tmp18802 '()))))
                  (declare (not safe))
                  (cons __tmp18804 __tmp18801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18806
                                                         __tmp18800))))
                                            (declare (not safe))
                                            (cons __tmp18808 __tmp18799)))
                                         (__tmp18785
                                          (let ((__tmp18786
                                                 (let ((__tmp18796
                                                        |gxc[1]#_g18797_|)
                                                       (__tmp18787
                                                        (let ((__tmp18794
                                                               |gxc[1]#_g18795_|)
                                                              (__tmp18788
                                                               (let ((__tmp18792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18793_|)
                             (__tmp18789
                              (let ((__tmp18790 |gxc[1]#_g18791_|))
                                (declare (not safe))
                                (cons __tmp18790 '()))))
                         (declare (not safe))
                         (cons __tmp18792 __tmp18789))))
                  (declare (not safe))
                  (cons __tmp18794 __tmp18788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18796
                                                         __tmp18787))))
                                            (declare (not safe))
                                            (cons __tmp18786 '()))))
                                     (declare (not safe))
                                     (cons __tmp18798 __tmp18785))))
                              (declare (not safe))
                              (cons __tmp18810 __tmp18784))))
                       (declare (not safe))
                       (cons __tmp18812 __tmp18783))))
                (declare (not safe))
                (cons __tmp18814 __tmp18782))))
         (declare (not safe))
         (cons '#f __tmp18781))
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
       |gxc[1]#_g18815_|
       'expander-identifiers:
       (let ((__tmp18816
              (let ((__tmp18849 |gxc[1]#_g18815_|)
                    (__tmp18817
                     (let ((__tmp18847 |gxc[1]#_g18848_|)
                           (__tmp18818
                            (let ((__tmp18845 |gxc[1]#_g18846_|)
                                  (__tmp18819
                                   (let ((__tmp18833
                                          (let ((__tmp18843 |gxc[1]#_g18844_|)
                                                (__tmp18834
                                                 (let ((__tmp18841
                                                        |gxc[1]#_g18842_|)
                                                       (__tmp18835
                                                        (let ((__tmp18839
                                                               |gxc[1]#_g18840_|)
                                                              (__tmp18836
                                                               (let ((__tmp18837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18838_|))
                         (declare (not safe))
                         (cons __tmp18837 '()))))
                  (declare (not safe))
                  (cons __tmp18839 __tmp18836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18841
                                                         __tmp18835))))
                                            (declare (not safe))
                                            (cons __tmp18843 __tmp18834)))
                                         (__tmp18820
                                          (let ((__tmp18821
                                                 (let ((__tmp18831
                                                        |gxc[1]#_g18832_|)
                                                       (__tmp18822
                                                        (let ((__tmp18829
                                                               |gxc[1]#_g18830_|)
                                                              (__tmp18823
                                                               (let ((__tmp18827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18828_|)
                             (__tmp18824
                              (let ((__tmp18825 |gxc[1]#_g18826_|))
                                (declare (not safe))
                                (cons __tmp18825 '()))))
                         (declare (not safe))
                         (cons __tmp18827 __tmp18824))))
                  (declare (not safe))
                  (cons __tmp18829 __tmp18823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18831
                                                         __tmp18822))))
                                            (declare (not safe))
                                            (cons __tmp18821 '()))))
                                     (declare (not safe))
                                     (cons __tmp18833 __tmp18820))))
                              (declare (not safe))
                              (cons __tmp18845 __tmp18819))))
                       (declare (not safe))
                       (cons __tmp18847 __tmp18818))))
                (declare (not safe))
                (cons __tmp18849 __tmp18817))))
         (declare (not safe))
         (cons '#f __tmp18816))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
