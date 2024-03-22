(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81481_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81483_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81485_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81490_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81493_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81498_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81501_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81506_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81509_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81514_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81517_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81624_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81476
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81480 |gx[1]#_g81481_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81480
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81482 |gx[1]#_g81483_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81482
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81484 |gx[1]#_g81485_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81484
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81486
               (let ((__tmp81491
                      (let ((__tmp81492 |gx[1]#_g81493_|))
                        (declare (not safe))
                        (cons 'e __tmp81492)))
                     (__tmp81487
                      (let ((__tmp81488
                             (let ((__tmp81489 |gx[1]#_g81490_|))
                               (declare (not safe))
                               (cons 'source __tmp81489))))
                        (declare (not safe))
                        (cons __tmp81488 '()))))
                 (declare (not safe))
                 (cons __tmp81491 __tmp81487))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81486
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81494
               (let ((__tmp81499
                      (let ((__tmp81500 |gx[1]#_g81501_|))
                        (declare (not safe))
                        (cons 'e __tmp81500)))
                     (__tmp81495
                      (let ((__tmp81496
                             (let ((__tmp81497 |gx[1]#_g81498_|))
                               (declare (not safe))
                               (cons 'source __tmp81497))))
                        (declare (not safe))
                        (cons __tmp81496 '()))))
                 (declare (not safe))
                 (cons __tmp81499 __tmp81495))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81494
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81502
               (let ((__tmp81507
                      (let ((__tmp81508 |gx[1]#_g81509_|))
                        (declare (not safe))
                        (cons 'e __tmp81508)))
                     (__tmp81503
                      (let ((__tmp81504
                             (let ((__tmp81505 |gx[1]#_g81506_|))
                               (declare (not safe))
                               (cons 'source __tmp81505))))
                        (declare (not safe))
                        (cons __tmp81504 '()))))
                 (declare (not safe))
                 (cons __tmp81507 __tmp81503))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81502
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81510
               (let ((__tmp81515
                      (let ((__tmp81516 |gx[1]#_g81517_|))
                        (declare (not safe))
                        (cons 'e __tmp81516)))
                     (__tmp81511
                      (let ((__tmp81512
                             (let ((__tmp81513 |gx[1]#_g81514_|))
                               (declare (not safe))
                               (cons 'source __tmp81513))))
                        (declare (not safe))
                        (cons __tmp81512 '()))))
                 (declare (not safe))
                 (cons __tmp81515 __tmp81511))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81476
           __tmp81510
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81476))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80096_)
        (let* ((_g8010080114_
                (lambda (_g8010180110_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8010180110_)))
               (_g8009980156_
                (lambda (_g8010180118_)
                  (if (gx#stx-pair? _g8010180118_)
                      (let ((_e8010580121_ (gx#syntax-e _g8010180118_)))
                        (let ((_hd8010480125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8010580121_)))
                              (_tl8010380128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8010580121_))))
                          (if (gx#stx-pair? _tl8010380128_)
                              (let ((_e8010880131_
                                     (gx#syntax-e _tl8010380128_)))
                                (let ((_hd8010780135_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8010880131_)))
                                      (_tl8010680138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8010880131_))))
                                  (if (gx#stx-null? _tl8010680138_)
                                      ((lambda (_L80141_)
                                         (let ((__tmp81527
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81518
                                                (let ((__tmp81524
                                                       (let ((__tmp81526
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81525
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80141_ '()))))
                 (declare (not safe))
                 (cons __tmp81526 __tmp81525)))
              (__tmp81519
               (let ((__tmp81520
                      (let ((__tmp81523 (gx#datum->syntax '#f 'error))
                            (__tmp81521
                             (let ((__tmp81522
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80141_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81522))))
                        (declare (not safe))
                        (cons __tmp81523 __tmp81521))))
                 (declare (not safe))
                 (cons __tmp81520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81524
                                                        __tmp81519))))
                                           (declare (not safe))
                                           (cons __tmp81527 __tmp81518)))
                                       _hd8010780135_)
                                      (_g8010080114_ _g8010180118_))))
                              (_g8010080114_ _g8010180118_))))
                      (_g8010080114_ _g8010180118_)))))
          (_g8009980156_ _$stx80096_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80160_)
        (letrec ((_generate80163_
                  (lambda (_tgt80312_ _kws80314_ _clauses80315_)
                    (letrec ((_generate-clause80317_
                              (lambda (_hd81227_ _E81229_)
                                (let* ((___stx8137981380_ _hd81227_)
                                       (_g8123381260_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8137981380_))))
                                  (let ((___kont8138281383_
                                         (lambda (_L81356_ _L81358_)
                                           (_generate180319_
                                            _hd81227_
                                            _L81358_
                                            '#t
                                            _L81356_
                                            _E81229_)))
                                        (___kont8138481385_
                                         (lambda (_L81308_ _L81310_ _L81311_)
                                           (_generate180319_
                                            _hd81227_
                                            _L81311_
                                            _L81310_
                                            _L81308_
                                            _E81229_)))
                                        (___kont8138681387_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80160_
                                            _hd81227_))))
                                    (if (gx#stx-pair? ___stx8137981380_)
                                        (let ((_e8123981336_
                                               (gx#syntax-e
                                                ___stx8137981380_)))
                                          (let ((_tl8123781343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8123981336_)))
                                                (_hd8123881340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8123981336_))))
                                            (if (gx#stx-pair? _tl8123781343_)
                                                (let ((_e8124281346_
                                                       (gx#syntax-e
                                                        _tl8123781343_)))
                                                  (let ((_tl8124081353_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8124281346_)))
                                                        (_hd8124181350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8124281346_))))
                                                    (if (gx#stx-null?
                                                         _tl8124081353_)
                                                        (___kont8138281383_
                                                         _hd8124181350_
                                                         _hd8123881340_)
                                                        (if (gx#stx-pair?
                                                             _tl8124081353_)
                                                            (let ((_e8125481298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8124081353_)))
                      (let ((_tl8125281305_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8125481298_)))
                            (_hd8125381302_
                             (let ()
                               (declare (not safe))
                               (##car _e8125481298_))))
                        (if (gx#stx-null? _tl8125281305_)
                            (___kont8138481385_
                             _hd8125381302_
                             _hd8124181350_
                             _hd8123881340_)
                            (___kont8138681387_))))
                    (___kont8138681387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8138681387_))))
                                        (___kont8138681387_))))))
                             (_generate180319_
                              (lambda (_where80705_
                                       _hd80707_
                                       _fender80708_
                                       _body80709_
                                       _E80710_)
                                (letrec ((_recur80712_
                                          (lambda (_hd80715_
                                                   _tgt80717_
                                                   _K80718_)
                                            (let* ((___stx8142581426_
                                                    _hd80715_)
                                                   (_g8072180733_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8142581426_))))
                                              (let ((___kont8142881429_
                                                     (lambda (_L81017_
                                                              _L81019_)
                                                       (let* ((_g8103081038_
                                                               (lambda (_g8103181034_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8103181034_)))
                      (_g8102981219_
                       (lambda (_g8103181042_)
                         ((lambda (_L81045_)
                            (let ()
                              (let* ((_g8105781065_
                                      (lambda (_g8105881061_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8105881061_)))
                                     (_g8105681215_
                                      (lambda (_g8105881069_)
                                        ((lambda (_L81072_)
                                           (let ()
                                             (let* ((_g8108581093_
                                                     (lambda (_g8108681089_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8108681089_)))
                                                    (_g8108481211_
                                                     (lambda (_g8108681097_)
                                                       ((lambda (_L81100_)
                                                          (let ()
                                                            (let* ((_g8111381121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8111481117_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8111481117_)))
                           (_g8111281207_
                            (lambda (_g8111481125_)
                              ((lambda (_L81128_)
                                 (let ()
                                   (let* ((_g8114181149_
                                           (lambda (_g8114281145_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8114281145_)))
                                          (_g8114081203_
                                           (lambda (_g8114281153_)
                                             ((lambda (_L81156_)
                                                (let ()
                                                  (let* ((_g8116981177_
                                                          (lambda (_g8117081173_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8117081173_)))
                                                         (_g8116881199_
                                                          (lambda (_g8117081181_)
                                                            ((lambda (_L81184_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81560 (gx#datum->syntax '#f 'if))
                                 (__tmp81528
                                  (let ((__tmp81557
                                         (let ((__tmp81559
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81558
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81045_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81559 __tmp81558)))
                                        (__tmp81529
                                         (let ((__tmp81531
                                                (let ((__tmp81556
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81532
                                                       (let ((__tmp81550
                                                              (let ((__tmp81551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81552
                                    (let ((__tmp81553
                                           (let ((__tmp81555
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81554
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81045_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81555 __tmp81554))))
                                      (declare (not safe))
                                      (cons __tmp81553 '()))))
                               (declare (not safe))
                               (cons _L81072_ __tmp81552))))
                        (declare (not safe))
                        (cons __tmp81551 '())))
                     (__tmp81533
                      (let ((__tmp81534
                             (let ((__tmp81549 (gx#datum->syntax '#f 'let))
                                   (__tmp81535
                                    (let ((__tmp81537
                                           (let ((__tmp81544
                                                  (let ((__tmp81545
                                                         (let ((__tmp81546
                                                                (let ((__tmp81548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81547
                               (let ()
                                 (declare (not safe))
                                 (cons _L81072_ '()))))
                          (declare (not safe))
                          (cons __tmp81548 __tmp81547))))
                   (declare (not safe))
                   (cons __tmp81546 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81100_
                                                          __tmp81545)))
                                                 (__tmp81538
                                                  (let ((__tmp81539
                                                         (let ((__tmp81540
                                                                (let ((__tmp81541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81543 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81542
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81072_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81543 __tmp81542))))
                          (declare (not safe))
                          (cons __tmp81541 '()))))
                   (declare (not safe))
                   (cons _L81128_ __tmp81540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81539 '()))))
                                             (declare (not safe))
                                             (cons __tmp81544 __tmp81538)))
                                          (__tmp81536
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81156_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81537 __tmp81536))))
                               (declare (not safe))
                               (cons __tmp81549 __tmp81535))))
                        (declare (not safe))
                        (cons __tmp81534 '()))))
                 (declare (not safe))
                 (cons __tmp81550 __tmp81533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81556
                                                        __tmp81532)))
                                               (__tmp81530
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81184_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81531 __tmp81530))))
                                    (declare (not safe))
                                    (cons __tmp81557 __tmp81529))))
                             (declare (not safe))
                             (cons __tmp81560 __tmp81528)))))
                     _g8117081181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8116881199_ _E80710_))))
                                              _g8114281153_))))
                                     (_g8114081203_
                                      (_recur80712_
                                       _L81019_
                                       _L81100_
                                       (_recur80712_
                                        _L81017_
                                        _L81128_
                                        _K80718_))))))
                               _g8111481125_))))
                      (_g8111281207_ (gx#genident 'tl)))))
                _g8108681097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8108481211_
                                                (gx#genident 'hd)))))
                                         _g8105881069_))))
                                (_g8105681215_ (gx#genident 'e)))))
                          _g8103181042_))))
                 (_g8102981219_ _tgt80717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143081431_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80715_)
                                                           (if (gx#underscore?
                                                                _hd80715_)
                                                               _K80718_
                                                               (if (let ((__tmp81605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8074380745_)
                                    (gx#bound-identifier=?
                                     _g8074380745_
                                     _hd80715_))))
                             (declare (not safe))
                             (find __tmp81605 _kws80314_))
                           (let* ((_g8074980764_
                                   (lambda (_g8075080760_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8075080760_)))
                                  (_g8074880815_
                                   (lambda (_g8075080768_)
                                     (if (gx#stx-pair? _g8075080768_)
                                         (let ((_e8075580771_
                                                (gx#syntax-e _g8075080768_)))
                                           (let ((_hd8075480775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8075580771_)))
                                                 (_tl8075380778_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8075580771_))))
                                             (if (gx#stx-pair? _tl8075380778_)
                                                 (let ((_e8075880781_
                                                        (gx#syntax-e
                                                         _tl8075380778_)))
                                                   (let ((_hd8075780785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8075880781_)))
                                                         (_tl8075680788_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8075880781_))))
                                                     (if (gx#stx-null?
                                                          _tl8075680788_)
                                                         ((lambda (_L80791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80793_)
                    (let ()
                      (let ((__tmp81604 (gx#datum->syntax '#f 'if))
                            (__tmp81587
                             (let ((__tmp81590
                                    (let ((__tmp81603
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81591
                                           (let ((__tmp81600
                                                  (let ((__tmp81602
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81601
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81602
                                                          __tmp81601)))
                                                 (__tmp81592
                                                  (let ((__tmp81593
                                                         (let ((__tmp81599
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81594
                        (let ((__tmp81595
                               (let ((__tmp81596
                                      (let ((__tmp81598
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81597
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80791_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81598 __tmp81597))))
                                 (declare (not safe))
                                 (cons __tmp81596 '()))))
                          (declare (not safe))
                          (cons _L80793_ __tmp81595))))
                   (declare (not safe))
                   (cons __tmp81599 __tmp81594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81593 '()))))
                                             (declare (not safe))
                                             (cons __tmp81600 __tmp81592))))
                                      (declare (not safe))
                                      (cons __tmp81603 __tmp81591)))
                                   (__tmp81588
                                    (let ((__tmp81589
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80710_ '()))))
                                      (declare (not safe))
                                      (cons _K80718_ __tmp81589))))
                               (declare (not safe))
                               (cons __tmp81590 __tmp81588))))
                        (declare (not safe))
                        (cons __tmp81604 __tmp81587))))
                  _hd8075780785_
                  _hd8075480775_)
                 (_g8074980764_ _g8075080768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8074980764_
                                                  _g8075080768_))))
                                         (_g8074980764_ _g8075080768_)))))
                             (_g8074880815_ (list _tgt80717_ _hd80715_)))
                           (let* ((_g8081980834_
                                   (lambda (_g8082080830_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8082080830_)))
                                  (_g8081880878_
                                   (lambda (_g8082080838_)
                                     (if (gx#stx-pair? _g8082080838_)
                                         (let ((_e8082580841_
                                                (gx#syntax-e _g8082080838_)))
                                           (let ((_hd8082480845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8082580841_)))
                                                 (_tl8082380848_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8082580841_))))
                                             (if (gx#stx-pair? _tl8082380848_)
                                                 (let ((_e8082880851_
                                                        (gx#syntax-e
                                                         _tl8082380848_)))
                                                   (let ((_hd8082780855_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8082880851_)))
                                                         (_tl8082680858_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8082880851_))))
                                                     (if (gx#stx-null?
                                                          _tl8082680858_)
                                                         ((lambda (_L80861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80863_)
                    (let ()
                      (let ((__tmp81586 (gx#datum->syntax '#f 'let))
                            (__tmp81581
                             (let ((__tmp81583
                                    (let ((__tmp81584
                                           (let ((__tmp81585
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80863_ '()))))
                                             (declare (not safe))
                                             (cons _L80861_ __tmp81585))))
                                      (declare (not safe))
                                      (cons __tmp81584 '())))
                                   (__tmp81582
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80718_ '()))))
                               (declare (not safe))
                               (cons __tmp81583 __tmp81582))))
                        (declare (not safe))
                        (cons __tmp81586 __tmp81581))))
                  _hd8082780855_
                  _hd8082480845_)
                 (_g8081980834_ _g8082080838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8081980834_
                                                  _g8082080838_))))
                                         (_g8081980834_ _g8082080838_)))))
                             (_g8081880878_ (list _tgt80717_ _hd80715_)))))
                   (if (gx#stx-null? _hd80715_)
                       (let* ((_g8088280890_
                               (lambda (_g8088380886_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8088380886_)))
                              (_g8088180908_
                               (lambda (_g8088380894_)
                                 ((lambda (_L80897_)
                                    (let ()
                                      (let ((__tmp81580
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81574
                                             (let ((__tmp81577
                                                    (let ((__tmp81579
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81578
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81579 __tmp81578)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81575
                                                    (let ((__tmp81576
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80718_ __tmp81576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81577 __tmp81575))))
                                        (declare (not safe))
                                        (cons __tmp81580 __tmp81574))))
                                  _g8088380894_))))
                         (_g8088180908_ _tgt80717_))
                       (if (gx#stx-datum? _hd80715_)
                           (let* ((_g8091280931_
                                   (lambda (_g8091380927_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8091380927_)))
                                  (_g8091180989_
                                   (lambda (_g8091380935_)
                                     (if (gx#stx-pair? _g8091380935_)
                                         (let ((_e8091980938_
                                                (gx#syntax-e _g8091380935_)))
                                           (let ((_hd8091880942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8091980938_)))
                                                 (_tl8091780945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8091980938_))))
                                             (if (gx#stx-pair? _tl8091780945_)
                                                 (let ((_e8092280948_
                                                        (gx#syntax-e
                                                         _tl8091780945_)))
                                                   (let ((_hd8092180952_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8092280948_)))
                                                         (_tl8092080955_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8092280948_))))
                                                     (if (gx#stx-pair?
                                                          _tl8092080955_)
                                                         (let ((_e8092580958_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8092080955_)))
                   (let ((_hd8092480962_
                          (let () (declare (not safe)) (##car _e8092580958_)))
                         (_tl8092380965_
                          (let () (declare (not safe)) (##cdr _e8092580958_))))
                     (if (gx#stx-null? _tl8092380965_)
                         ((lambda (_L80968_ _L80970_ _L80971_)
                            (let ()
                              (let ((__tmp81573 (gx#datum->syntax '#f 'if))
                                    (__tmp81561
                                     (let ((__tmp81564
                                            (let ((__tmp81565
                                                   (let ((__tmp81570
                                                          (let ((__tmp81572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81571
                         (let () (declare (not safe)) (cons _L80971_ '()))))
                    (declare (not safe))
                    (cons __tmp81572 __tmp81571)))
                 (__tmp81566
                  (let ((__tmp81567
                         (let ((__tmp81569 (gx#datum->syntax '#f 'quote))
                               (__tmp81568
                                (let ()
                                  (declare (not safe))
                                  (cons _L80970_ '()))))
                           (declare (not safe))
                           (cons __tmp81569 __tmp81568))))
                    (declare (not safe))
                    (cons __tmp81567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81570
                                                           __tmp81566))))
                                              (declare (not safe))
                                              (cons _L80968_ __tmp81565)))
                                           (__tmp81562
                                            (let ((__tmp81563
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80710_ '()))))
                                              (declare (not safe))
                                              (cons _K80718_ __tmp81563))))
                                       (declare (not safe))
                                       (cons __tmp81564 __tmp81562))))
                                (declare (not safe))
                                (cons __tmp81573 __tmp81561))))
                          _hd8092480962_
                          _hd8092180952_
                          _hd8091880942_)
                         (_g8091280931_ _g8091380935_))))
                 (_g8091280931_ _g8091380935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8091280931_
                                                  _g8091380935_))))
                                         (_g8091280931_ _g8091380935_)))))
                             (_g8091180989_
                              (list _tgt80717_
                                    _hd80715_
                                    (let ((_e80993_ (gx#stx-e _hd80715_)))
                                      (if (or (keyword? _e80993_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80993_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80993_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80160_
                            _where80705_
                            _hd80715_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8142581426_)
                                                    (let ((_e8072781007_
                                                           (gx#syntax-e
                                                            ___stx8142581426_)))
                                                      (let ((_tl8072581014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8072781007_)))
                    (_hd8072681011_
                     (let () (declare (not safe)) (##car _e8072781007_))))
                (___kont8142881429_ _tl8072581014_ _hd8072681011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143081431_)))))))
                                  (_recur80712_
                                   _hd80707_
                                   _tgt80312_
                                   (let ((__tmp81609
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81606
                                          (let ((__tmp81607
                                                 (let ((__tmp81608
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80710_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80709_
                                                         __tmp81608))))
                                            (declare (not safe))
                                            (cons _fender80708_ __tmp81607))))
                                     (declare (not safe))
                                     (cons __tmp81609 __tmp81606))))))
                             (_generate-clauses80320_
                              (lambda (_clauses80443_)
                                (let _lp80446_ ((_rest80449_ _clauses80443_)
                                                (_E80451_ (gx#genident 'E))
                                                (_r80452_ '()))
                                  (let* ((___stx8146181462_ _rest80449_)
                                         (_g8045580467_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8146181462_))))
                                    (let ((___kont8146481465_
                                           (lambda (_L80532_ _L80534_)
                                             (let* ((___stx8144181442_
                                                     _L80534_)
                                                    (_g8054680557_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8144181442_))))
                                               (let ((___kont8144481445_
                                                      (lambda (_L80686_)
                                                        (if (gx#stx-null?
                                                             _L80532_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80686_)
                             (let ((__tmp81618 (gx#stx-null? _L80686_)))
                               (declare (not safe))
                               (not __tmp81618)))
                        (let ((__tmp81610
                               (let ((__tmp81611
                                      (let ((__tmp81612
                                             (gx#stx-wrap-source
                                              (let ((__tmp81617
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81613
                                                     (let ((__tmp81614
                                                            (let ((__tmp81615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81616 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81616 _L80686_))))
                      (declare (not safe))
                      (cons __tmp81615 '()))))
               (declare (not safe))
               (cons '() __tmp81614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81617 __tmp81613))
                                              (gx#stx-source _L80534_))))
                                        (declare (not safe))
                                        (cons __tmp81612 '()))))
                                 (declare (not safe))
                                 (cons _E80451_ __tmp81611))))
                          (declare (not safe))
                          (cons __tmp81610 _r80452_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80160_
                         _L80534_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80160_
                     _L80534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8144681447_
                                                      (lambda ()
                                                        (let* ((_g8056880576_
                                                                (lambda (_g8056980572_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8056980572_)))
                       (_g8056780665_
                        (lambda (_g8056980580_)
                          ((lambda (_L80583_)
                             (let ()
                               (let* ((_g8059980607_
                                       (lambda (_g8060080603_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8060080603_)))
                                      (_g8059880661_
                                       (lambda (_g8060080611_)
                                         ((lambda (_L80614_)
                                            (let ()
                                              (let* ((_g8062780635_
                                                      (lambda (_g8062880631_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8062880631_)))
                                                     (_g8062680657_
                                                      (lambda (_g8062880639_)
                                                        ((lambda (_L80642_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80446_
                                                                _L80532_
                                                                _L80583_
                                                                (let ((__tmp81619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81620
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80642_ '()))))
                                 (declare (not safe))
                                 (cons _E80451_ __tmp81620))))
                          (declare (not safe))
                          (cons __tmp81619 _r80452_))))))
                 _g8062880639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8062680657_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81623
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81621
                                                         (let ((__tmp81622
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80614_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81623
                                                          __tmp81621))
                                                  (gx#stx-source _L80534_))))))
                                          _g8060080611_))))
                                 (_g8059880661_
                                  (_generate-clause80317_
                                   _L80534_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80583_ '())))))))
                           _g8056980580_))))
                  (_g8056780665_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8144181442_)
                                                     (let ((_e8055180676_
                                                            (gx#syntax-e
                                                             ___stx8144181442_)))
                                                       (let ((_tl8054980683_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8055180676_)))
                     (_hd8055080680_
                      (let () (declare (not safe)) (##car _e8055180676_))))
                 (if (gx#identifier? _hd8055080680_)
                     (if (gx#free-identifier=? |gx[1]#_g81624_| _hd8055080680_)
                         (___kont8144481445_ _tl8054980683_)
                         (___kont8144681447_))
                     (___kont8144681447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8144681447_))))))
                                          (___kont8146681467_
                                           (lambda ()
                                             (let* ((_g8047880486_
                                                     (lambda (_g8047980482_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8047980482_)))
                                                    (_g8047780511_
                                                     (lambda (_g8047980490_)
                                                       ((lambda (_L80493_)
                                                          (let ()
                                                            (let ((__tmp81625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81626
                                  (let ((__tmp81627
                                         (gx#stx-wrap-source
                                          (let ((__tmp81635
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81628
                                                 (let ((__tmp81629
                                                        (let ((__tmp81630
                                                               (let ((__tmp81634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81631
                              (let ((__tmp81632
                                     (let ((__tmp81633
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80493_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81633))))
                                (declare (not safe))
                                (cons '#f __tmp81632))))
                         (declare (not safe))
                         (cons __tmp81634 __tmp81631))))
                  (declare (not safe))
                  (cons __tmp81630 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81629))))
                                            (declare (not safe))
                                            (cons __tmp81635 __tmp81628))
                                          (gx#stx-source _stx80160_))))
                                    (declare (not safe))
                                    (cons __tmp81627 '()))))
                             (declare (not safe))
                             (cons _E80451_ __tmp81626))))
                      (declare (not safe))
                      (cons __tmp81625 _r80452_))))
                _g8047980490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8047780511_ _tgt80312_)))))
                                      (if (gx#stx-pair? ___stx8146181462_)
                                          (let ((_e8046180522_
                                                 (gx#syntax-e
                                                  ___stx8146181462_)))
                                            (let ((_tl8045980529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8046180522_)))
                                                  (_hd8046080526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8046180522_))))
                                              (___kont8146481465_
                                               _tl8045980529_
                                               _hd8046080526_)))
                                          (___kont8146681467_))))))))
                      (let* ((_bind80322_
                              (_generate-clauses80320_ _clauses80315_))
                             (_g8032580342_
                              (lambda (_g8032680338_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8032680338_)))
                             (_g8032480439_
                              (lambda (_g8032680346_)
                                (if (gx#stx-pair/null? _g8032680346_)
                                    (let ((_g81636_
                                           (gx#syntax-split-splice
                                            _g8032680346_
                                            '0)))
                                      (begin
                                        (let ((_g81637_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81636_)
                                                     (##vector-length _g81636_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81637_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81637_)))
                                        (let ((_target8032880349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81636_ 0)))
                                              (_tl8033080352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81636_ 1))))
                                          (if (gx#stx-null? _tl8033080352_)
                                              (letrec ((_loop8033180355_
                                                        (lambda (_hd8032980359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8033580362_)
                  (if (gx#stx-pair? _hd8032980359_)
                      (let ((_e8033280365_ (gx#syntax-e _hd8032980359_)))
                        (let ((_lp-hd8033380369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8033280365_)))
                              (_lp-tl8033480372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8033280365_))))
                          (_loop8033180355_
                           _lp-tl8033480372_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8033380369_ _bind-try8033580362_)))))
                      (let ((_bind-try8033680375_
                             (reverse _bind-try8033580362_)))
                        ((lambda (_L80379_)
                           (let ()
                             (let* ((_g8039780405_
                                     (lambda (_g8039880401_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8039880401_)))
                                    (_g8039680435_
                                     (lambda (_g8039880409_)
                                       ((lambda (_L80412_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81643
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81638
                                                     (let ((__tmp81641
                                                            (let ((__tmp81642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8042680429_ _g8042780432_)
                             (let ()
                               (declare (not safe))
                               (cons _g8042680429_ _g8042780432_)))))
                      (declare (not safe))
                      (foldr1 __tmp81642 '() _L80379_)))
                   (__tmp81639
                    (let ((__tmp81640
                           (let () (declare (not safe)) (cons _L80412_ '()))))
                      (declare (not safe))
                      (cons __tmp81640 '()))))
               (declare (not safe))
               (cons __tmp81641 __tmp81639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81643
                                                      __tmp81638)))))
                                        _g8039880409_))))
                               (_g8039680435_ (car (last _bind80322_))))))
                         _bind-try8033680375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8033180355_
                                                 _target8032880349_
                                                 '()))
                                              (_g8032580342_ _g8032680346_)))))
                                    (_g8032580342_ _g8032680346_)))))
                        (_g8032480439_ _bind80322_))))))
          (let* ((_g8016680185_
                  (lambda (_g8016780181_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8016780181_)))
                 (_g8016580308_
                  (lambda (_g8016780189_)
                    (if (gx#stx-pair? _g8016780189_)
                        (let ((_e8017380192_ (gx#syntax-e _g8016780189_)))
                          (let ((_hd8017280196_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8017380192_)))
                                (_tl8017180199_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8017380192_))))
                            (if (gx#stx-pair? _tl8017180199_)
                                (let ((_e8017680202_
                                       (gx#syntax-e _tl8017180199_)))
                                  (let ((_hd8017580206_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8017680202_)))
                                        (_tl8017480209_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8017680202_))))
                                    (if (gx#stx-pair? _tl8017480209_)
                                        (let ((_e8017980212_
                                               (gx#syntax-e _tl8017480209_)))
                                          (let ((_hd8017880216_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8017980212_)))
                                                (_tl8017780219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8017980212_))))
                                            ((lambda (_L80222_
                                                      _L80224_
                                                      _L80225_)
                                               (if (and (gx#identifier-list?
                                                         _L80224_)
                                                        (gx#stx-list?
                                                         _L80222_))
                                                   (let* ((_g8024380251_
                                                           (lambda (_g8024480247_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8024480247_)))
                                                          (_g8024280304_
                                                           (lambda (_g8024480255_)
                                                             ((lambda (_L80258_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8027080278_
                                  (lambda (_g8027180274_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8027180274_)))
                                 (_g8026980300_
                                  (lambda (_g8027180282_)
                                    ((lambda (_L80285_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81649
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81644
                                                  (let ((__tmp81646
                                                         (let ((__tmp81647
                                                                (let ((__tmp81648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80225_ '()))))
                          (declare (not safe))
                          (cons _L80258_ __tmp81648))))
                   (declare (not safe))
                   (cons __tmp81647 '())))
                (__tmp81645 (let () (declare (not safe)) (cons _L80285_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81646
                                                          __tmp81645))))
                                             (declare (not safe))
                                             (cons __tmp81649 __tmp81644)))))
                                     _g8027180282_))))
                            (_g8026980300_
                             (_generate80163_
                              _L80258_
                              (gx#syntax->list _L80224_)
                              _L80222_)))))
                      _g8024480255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8024280304_
                                                      (gx#genident 'e)))
                                                   (_g8016680185_
                                                    _g8016780189_)))
                                             _tl8017780219_
                                             _hd8017880216_
                                             _hd8017580206_)))
                                        (_g8016680185_ _g8016780189_))))
                                (_g8016680185_ _g8016780189_))))
                        (_g8016680185_ _g8016780189_)))))
            (_g8016580308_ _stx80160_)))))))
