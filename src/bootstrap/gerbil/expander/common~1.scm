(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81472_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81474_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81476_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81481_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81484_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81489_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81492_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81497_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81500_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81505_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81508_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81615_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81467
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
           __obj81467
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81471 |gx[1]#_g81472_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81471
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81473 |gx[1]#_g81474_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81473
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81475 |gx[1]#_g81476_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81475
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81477
               (let ((__tmp81482
                      (let ((__tmp81483 |gx[1]#_g81484_|))
                        (declare (not safe))
                        (cons 'e __tmp81483)))
                     (__tmp81478
                      (let ((__tmp81479
                             (let ((__tmp81480 |gx[1]#_g81481_|))
                               (declare (not safe))
                               (cons 'source __tmp81480))))
                        (declare (not safe))
                        (cons __tmp81479 '()))))
                 (declare (not safe))
                 (cons __tmp81482 __tmp81478))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81477
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81485
               (let ((__tmp81490
                      (let ((__tmp81491 |gx[1]#_g81492_|))
                        (declare (not safe))
                        (cons 'e __tmp81491)))
                     (__tmp81486
                      (let ((__tmp81487
                             (let ((__tmp81488 |gx[1]#_g81489_|))
                               (declare (not safe))
                               (cons 'source __tmp81488))))
                        (declare (not safe))
                        (cons __tmp81487 '()))))
                 (declare (not safe))
                 (cons __tmp81490 __tmp81486))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81485
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81493
               (let ((__tmp81498
                      (let ((__tmp81499 |gx[1]#_g81500_|))
                        (declare (not safe))
                        (cons 'e __tmp81499)))
                     (__tmp81494
                      (let ((__tmp81495
                             (let ((__tmp81496 |gx[1]#_g81497_|))
                               (declare (not safe))
                               (cons 'source __tmp81496))))
                        (declare (not safe))
                        (cons __tmp81495 '()))))
                 (declare (not safe))
                 (cons __tmp81498 __tmp81494))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81493
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81501
               (let ((__tmp81506
                      (let ((__tmp81507 |gx[1]#_g81508_|))
                        (declare (not safe))
                        (cons 'e __tmp81507)))
                     (__tmp81502
                      (let ((__tmp81503
                             (let ((__tmp81504 |gx[1]#_g81505_|))
                               (declare (not safe))
                               (cons 'source __tmp81504))))
                        (declare (not safe))
                        (cons __tmp81503 '()))))
                 (declare (not safe))
                 (cons __tmp81506 __tmp81502))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81467
           __tmp81501
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81467))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80087_)
        (let* ((_g8009180105_
                (lambda (_g8009280101_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8009280101_)))
               (_g8009080147_
                (lambda (_g8009280109_)
                  (if (gx#stx-pair? _g8009280109_)
                      (let ((_e8009680112_ (gx#syntax-e _g8009280109_)))
                        (let ((_hd8009580116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8009680112_)))
                              (_tl8009480119_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8009680112_))))
                          (if (gx#stx-pair? _tl8009480119_)
                              (let ((_e8009980122_
                                     (gx#syntax-e _tl8009480119_)))
                                (let ((_hd8009880126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8009980122_)))
                                      (_tl8009780129_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8009980122_))))
                                  (if (gx#stx-null? _tl8009780129_)
                                      ((lambda (_L80132_)
                                         (let ((__tmp81518
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81509
                                                (let ((__tmp81515
                                                       (let ((__tmp81517
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81516
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80132_ '()))))
                 (declare (not safe))
                 (cons __tmp81517 __tmp81516)))
              (__tmp81510
               (let ((__tmp81511
                      (let ((__tmp81514 (gx#datum->syntax '#f 'error))
                            (__tmp81512
                             (let ((__tmp81513
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80132_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81513))))
                        (declare (not safe))
                        (cons __tmp81514 __tmp81512))))
                 (declare (not safe))
                 (cons __tmp81511 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81515
                                                        __tmp81510))))
                                           (declare (not safe))
                                           (cons __tmp81518 __tmp81509)))
                                       _hd8009880126_)
                                      (_g8009180105_ _g8009280109_))))
                              (_g8009180105_ _g8009280109_))))
                      (_g8009180105_ _g8009280109_)))))
          (_g8009080147_ _$stx80087_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80151_)
        (letrec ((_generate80154_
                  (lambda (_tgt80303_ _kws80305_ _clauses80306_)
                    (letrec ((_generate-clause80308_
                              (lambda (_hd81218_ _E81220_)
                                (let* ((___stx8137081371_ _hd81218_)
                                       (_g8122481251_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8137081371_))))
                                  (let ((___kont8137381374_
                                         (lambda (_L81347_ _L81349_)
                                           (_generate180310_
                                            _hd81218_
                                            _L81349_
                                            '#t
                                            _L81347_
                                            _E81220_)))
                                        (___kont8137581376_
                                         (lambda (_L81299_ _L81301_ _L81302_)
                                           (_generate180310_
                                            _hd81218_
                                            _L81302_
                                            _L81301_
                                            _L81299_
                                            _E81220_)))
                                        (___kont8137781378_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80151_
                                            _hd81218_))))
                                    (if (gx#stx-pair? ___stx8137081371_)
                                        (let ((_e8123081327_
                                               (gx#syntax-e
                                                ___stx8137081371_)))
                                          (let ((_tl8122881334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8123081327_)))
                                                (_hd8122981331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8123081327_))))
                                            (if (gx#stx-pair? _tl8122881334_)
                                                (let ((_e8123381337_
                                                       (gx#syntax-e
                                                        _tl8122881334_)))
                                                  (let ((_tl8123181344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8123381337_)))
                                                        (_hd8123281341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8123381337_))))
                                                    (if (gx#stx-null?
                                                         _tl8123181344_)
                                                        (___kont8137381374_
                                                         _hd8123281341_
                                                         _hd8122981331_)
                                                        (if (gx#stx-pair?
                                                             _tl8123181344_)
                                                            (let ((_e8124581289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8123181344_)))
                      (let ((_tl8124381296_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8124581289_)))
                            (_hd8124481293_
                             (let ()
                               (declare (not safe))
                               (##car _e8124581289_))))
                        (if (gx#stx-null? _tl8124381296_)
                            (___kont8137581376_
                             _hd8124481293_
                             _hd8123281341_
                             _hd8122981331_)
                            (___kont8137781378_))))
                    (___kont8137781378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8137781378_))))
                                        (___kont8137781378_))))))
                             (_generate180310_
                              (lambda (_where80696_
                                       _hd80698_
                                       _fender80699_
                                       _body80700_
                                       _E80701_)
                                (letrec ((_recur80703_
                                          (lambda (_hd80706_
                                                   _tgt80708_
                                                   _K80709_)
                                            (let* ((___stx8141681417_
                                                    _hd80706_)
                                                   (_g8071280724_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8141681417_))))
                                              (let ((___kont8141981420_
                                                     (lambda (_L81008_
                                                              _L81010_)
                                                       (let* ((_g8102181029_
                                                               (lambda (_g8102281025_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8102281025_)))
                      (_g8102081210_
                       (lambda (_g8102281033_)
                         ((lambda (_L81036_)
                            (let ()
                              (let* ((_g8104881056_
                                      (lambda (_g8104981052_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8104981052_)))
                                     (_g8104781206_
                                      (lambda (_g8104981060_)
                                        ((lambda (_L81063_)
                                           (let ()
                                             (let* ((_g8107681084_
                                                     (lambda (_g8107781080_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8107781080_)))
                                                    (_g8107581202_
                                                     (lambda (_g8107781088_)
                                                       ((lambda (_L81091_)
                                                          (let ()
                                                            (let* ((_g8110481112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8110581108_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8110581108_)))
                           (_g8110381198_
                            (lambda (_g8110581116_)
                              ((lambda (_L81119_)
                                 (let ()
                                   (let* ((_g8113281140_
                                           (lambda (_g8113381136_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8113381136_)))
                                          (_g8113181194_
                                           (lambda (_g8113381144_)
                                             ((lambda (_L81147_)
                                                (let ()
                                                  (let* ((_g8116081168_
                                                          (lambda (_g8116181164_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8116181164_)))
                                                         (_g8115981190_
                                                          (lambda (_g8116181172_)
                                                            ((lambda (_L81175_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81551 (gx#datum->syntax '#f 'if))
                                 (__tmp81519
                                  (let ((__tmp81548
                                         (let ((__tmp81550
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81549
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81036_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81550 __tmp81549)))
                                        (__tmp81520
                                         (let ((__tmp81522
                                                (let ((__tmp81547
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81523
                                                       (let ((__tmp81541
                                                              (let ((__tmp81542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81543
                                    (let ((__tmp81544
                                           (let ((__tmp81546
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81545
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81036_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81546 __tmp81545))))
                                      (declare (not safe))
                                      (cons __tmp81544 '()))))
                               (declare (not safe))
                               (cons _L81063_ __tmp81543))))
                        (declare (not safe))
                        (cons __tmp81542 '())))
                     (__tmp81524
                      (let ((__tmp81525
                             (let ((__tmp81540 (gx#datum->syntax '#f 'let))
                                   (__tmp81526
                                    (let ((__tmp81528
                                           (let ((__tmp81535
                                                  (let ((__tmp81536
                                                         (let ((__tmp81537
                                                                (let ((__tmp81539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81538
                               (let ()
                                 (declare (not safe))
                                 (cons _L81063_ '()))))
                          (declare (not safe))
                          (cons __tmp81539 __tmp81538))))
                   (declare (not safe))
                   (cons __tmp81537 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81091_
                                                          __tmp81536)))
                                                 (__tmp81529
                                                  (let ((__tmp81530
                                                         (let ((__tmp81531
                                                                (let ((__tmp81532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81534 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81533
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81063_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81534 __tmp81533))))
                          (declare (not safe))
                          (cons __tmp81532 '()))))
                   (declare (not safe))
                   (cons _L81119_ __tmp81531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81530 '()))))
                                             (declare (not safe))
                                             (cons __tmp81535 __tmp81529)))
                                          (__tmp81527
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81147_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81528 __tmp81527))))
                               (declare (not safe))
                               (cons __tmp81540 __tmp81526))))
                        (declare (not safe))
                        (cons __tmp81525 '()))))
                 (declare (not safe))
                 (cons __tmp81541 __tmp81524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81547
                                                        __tmp81523)))
                                               (__tmp81521
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81175_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81522 __tmp81521))))
                                    (declare (not safe))
                                    (cons __tmp81548 __tmp81520))))
                             (declare (not safe))
                             (cons __tmp81551 __tmp81519)))))
                     _g8116181172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8115981190_ _E80701_))))
                                              _g8113381144_))))
                                     (_g8113181194_
                                      (_recur80703_
                                       _L81010_
                                       _L81091_
                                       (_recur80703_
                                        _L81008_
                                        _L81119_
                                        _K80709_))))))
                               _g8110581116_))))
                      (_g8110381198_ (gx#genident 'tl)))))
                _g8107781088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8107581202_
                                                (gx#genident 'hd)))))
                                         _g8104981060_))))
                                (_g8104781206_ (gx#genident 'e)))))
                          _g8102281033_))))
                 (_g8102081210_ _tgt80708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8142181422_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80706_)
                                                           (if (gx#underscore?
                                                                _hd80706_)
                                                               _K80709_
                                                               (if (let ((__tmp81596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8073480736_)
                                    (gx#bound-identifier=?
                                     _g8073480736_
                                     _hd80706_))))
                             (declare (not safe))
                             (find __tmp81596 _kws80305_))
                           (let* ((_g8074080755_
                                   (lambda (_g8074180751_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8074180751_)))
                                  (_g8073980806_
                                   (lambda (_g8074180759_)
                                     (if (gx#stx-pair? _g8074180759_)
                                         (let ((_e8074680762_
                                                (gx#syntax-e _g8074180759_)))
                                           (let ((_hd8074580766_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8074680762_)))
                                                 (_tl8074480769_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8074680762_))))
                                             (if (gx#stx-pair? _tl8074480769_)
                                                 (let ((_e8074980772_
                                                        (gx#syntax-e
                                                         _tl8074480769_)))
                                                   (let ((_hd8074880776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8074980772_)))
                                                         (_tl8074780779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8074980772_))))
                                                     (if (gx#stx-null?
                                                          _tl8074780779_)
                                                         ((lambda (_L80782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80784_)
                    (let ()
                      (let ((__tmp81595 (gx#datum->syntax '#f 'if))
                            (__tmp81578
                             (let ((__tmp81581
                                    (let ((__tmp81594
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81582
                                           (let ((__tmp81591
                                                  (let ((__tmp81593
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81592
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81593
                                                          __tmp81592)))
                                                 (__tmp81583
                                                  (let ((__tmp81584
                                                         (let ((__tmp81590
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81585
                        (let ((__tmp81586
                               (let ((__tmp81587
                                      (let ((__tmp81589
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81588
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80782_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81589 __tmp81588))))
                                 (declare (not safe))
                                 (cons __tmp81587 '()))))
                          (declare (not safe))
                          (cons _L80784_ __tmp81586))))
                   (declare (not safe))
                   (cons __tmp81590 __tmp81585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81584 '()))))
                                             (declare (not safe))
                                             (cons __tmp81591 __tmp81583))))
                                      (declare (not safe))
                                      (cons __tmp81594 __tmp81582)))
                                   (__tmp81579
                                    (let ((__tmp81580
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80701_ '()))))
                                      (declare (not safe))
                                      (cons _K80709_ __tmp81580))))
                               (declare (not safe))
                               (cons __tmp81581 __tmp81579))))
                        (declare (not safe))
                        (cons __tmp81595 __tmp81578))))
                  _hd8074880776_
                  _hd8074580766_)
                 (_g8074080755_ _g8074180759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8074080755_
                                                  _g8074180759_))))
                                         (_g8074080755_ _g8074180759_)))))
                             (_g8073980806_ (list _tgt80708_ _hd80706_)))
                           (let* ((_g8081080825_
                                   (lambda (_g8081180821_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8081180821_)))
                                  (_g8080980869_
                                   (lambda (_g8081180829_)
                                     (if (gx#stx-pair? _g8081180829_)
                                         (let ((_e8081680832_
                                                (gx#syntax-e _g8081180829_)))
                                           (let ((_hd8081580836_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8081680832_)))
                                                 (_tl8081480839_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8081680832_))))
                                             (if (gx#stx-pair? _tl8081480839_)
                                                 (let ((_e8081980842_
                                                        (gx#syntax-e
                                                         _tl8081480839_)))
                                                   (let ((_hd8081880846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8081980842_)))
                                                         (_tl8081780849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8081980842_))))
                                                     (if (gx#stx-null?
                                                          _tl8081780849_)
                                                         ((lambda (_L80852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80854_)
                    (let ()
                      (let ((__tmp81577 (gx#datum->syntax '#f 'let))
                            (__tmp81572
                             (let ((__tmp81574
                                    (let ((__tmp81575
                                           (let ((__tmp81576
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80854_ '()))))
                                             (declare (not safe))
                                             (cons _L80852_ __tmp81576))))
                                      (declare (not safe))
                                      (cons __tmp81575 '())))
                                   (__tmp81573
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80709_ '()))))
                               (declare (not safe))
                               (cons __tmp81574 __tmp81573))))
                        (declare (not safe))
                        (cons __tmp81577 __tmp81572))))
                  _hd8081880846_
                  _hd8081580836_)
                 (_g8081080825_ _g8081180829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8081080825_
                                                  _g8081180829_))))
                                         (_g8081080825_ _g8081180829_)))))
                             (_g8080980869_ (list _tgt80708_ _hd80706_)))))
                   (if (gx#stx-null? _hd80706_)
                       (let* ((_g8087380881_
                               (lambda (_g8087480877_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8087480877_)))
                              (_g8087280899_
                               (lambda (_g8087480885_)
                                 ((lambda (_L80888_)
                                    (let ()
                                      (let ((__tmp81571
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81565
                                             (let ((__tmp81568
                                                    (let ((__tmp81570
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81569
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81570 __tmp81569)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81566
                                                    (let ((__tmp81567
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80709_ __tmp81567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81568 __tmp81566))))
                                        (declare (not safe))
                                        (cons __tmp81571 __tmp81565))))
                                  _g8087480885_))))
                         (_g8087280899_ _tgt80708_))
                       (if (gx#stx-datum? _hd80706_)
                           (let* ((_g8090380922_
                                   (lambda (_g8090480918_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8090480918_)))
                                  (_g8090280980_
                                   (lambda (_g8090480926_)
                                     (if (gx#stx-pair? _g8090480926_)
                                         (let ((_e8091080929_
                                                (gx#syntax-e _g8090480926_)))
                                           (let ((_hd8090980933_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8091080929_)))
                                                 (_tl8090880936_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8091080929_))))
                                             (if (gx#stx-pair? _tl8090880936_)
                                                 (let ((_e8091380939_
                                                        (gx#syntax-e
                                                         _tl8090880936_)))
                                                   (let ((_hd8091280943_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8091380939_)))
                                                         (_tl8091180946_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8091380939_))))
                                                     (if (gx#stx-pair?
                                                          _tl8091180946_)
                                                         (let ((_e8091680949_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8091180946_)))
                   (let ((_hd8091580953_
                          (let () (declare (not safe)) (##car _e8091680949_)))
                         (_tl8091480956_
                          (let () (declare (not safe)) (##cdr _e8091680949_))))
                     (if (gx#stx-null? _tl8091480956_)
                         ((lambda (_L80959_ _L80961_ _L80962_)
                            (let ()
                              (let ((__tmp81564 (gx#datum->syntax '#f 'if))
                                    (__tmp81552
                                     (let ((__tmp81555
                                            (let ((__tmp81556
                                                   (let ((__tmp81561
                                                          (let ((__tmp81563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81562
                         (let () (declare (not safe)) (cons _L80962_ '()))))
                    (declare (not safe))
                    (cons __tmp81563 __tmp81562)))
                 (__tmp81557
                  (let ((__tmp81558
                         (let ((__tmp81560 (gx#datum->syntax '#f 'quote))
                               (__tmp81559
                                (let ()
                                  (declare (not safe))
                                  (cons _L80961_ '()))))
                           (declare (not safe))
                           (cons __tmp81560 __tmp81559))))
                    (declare (not safe))
                    (cons __tmp81558 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81561
                                                           __tmp81557))))
                                              (declare (not safe))
                                              (cons _L80959_ __tmp81556)))
                                           (__tmp81553
                                            (let ((__tmp81554
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80701_ '()))))
                                              (declare (not safe))
                                              (cons _K80709_ __tmp81554))))
                                       (declare (not safe))
                                       (cons __tmp81555 __tmp81553))))
                                (declare (not safe))
                                (cons __tmp81564 __tmp81552))))
                          _hd8091580953_
                          _hd8091280943_
                          _hd8090980933_)
                         (_g8090380922_ _g8090480926_))))
                 (_g8090380922_ _g8090480926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8090380922_
                                                  _g8090480926_))))
                                         (_g8090380922_ _g8090480926_)))))
                             (_g8090280980_
                              (list _tgt80708_
                                    _hd80706_
                                    (let ((_e80984_ (gx#stx-e _hd80706_)))
                                      (if (or (keyword? _e80984_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80984_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80984_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80151_
                            _where80696_
                            _hd80706_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8141681417_)
                                                    (let ((_e8071880998_
                                                           (gx#syntax-e
                                                            ___stx8141681417_)))
                                                      (let ((_tl8071681005_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8071880998_)))
                    (_hd8071781002_
                     (let () (declare (not safe)) (##car _e8071880998_))))
                (___kont8141981420_ _tl8071681005_ _hd8071781002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8142181422_)))))))
                                  (_recur80703_
                                   _hd80698_
                                   _tgt80303_
                                   (let ((__tmp81600
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81597
                                          (let ((__tmp81598
                                                 (let ((__tmp81599
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80701_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80700_
                                                         __tmp81599))))
                                            (declare (not safe))
                                            (cons _fender80699_ __tmp81598))))
                                     (declare (not safe))
                                     (cons __tmp81600 __tmp81597))))))
                             (_generate-clauses80311_
                              (lambda (_clauses80434_)
                                (let _lp80437_ ((_rest80440_ _clauses80434_)
                                                (_E80442_ (gx#genident 'E))
                                                (_r80443_ '()))
                                  (let* ((___stx8145281453_ _rest80440_)
                                         (_g8044680458_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8145281453_))))
                                    (let ((___kont8145581456_
                                           (lambda (_L80523_ _L80525_)
                                             (let* ((___stx8143281433_
                                                     _L80525_)
                                                    (_g8053780548_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8143281433_))))
                                               (let ((___kont8143581436_
                                                      (lambda (_L80677_)
                                                        (if (gx#stx-null?
                                                             _L80523_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80677_)
                             (let ((__tmp81609 (gx#stx-null? _L80677_)))
                               (declare (not safe))
                               (not __tmp81609)))
                        (let ((__tmp81601
                               (let ((__tmp81602
                                      (let ((__tmp81603
                                             (gx#stx-wrap-source
                                              (let ((__tmp81608
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81604
                                                     (let ((__tmp81605
                                                            (let ((__tmp81606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81607 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81607 _L80677_))))
                      (declare (not safe))
                      (cons __tmp81606 '()))))
               (declare (not safe))
               (cons '() __tmp81605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81608 __tmp81604))
                                              (gx#stx-source _L80525_))))
                                        (declare (not safe))
                                        (cons __tmp81603 '()))))
                                 (declare (not safe))
                                 (cons _E80442_ __tmp81602))))
                          (declare (not safe))
                          (cons __tmp81601 _r80443_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80151_
                         _L80525_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80151_
                     _L80525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8143781438_
                                                      (lambda ()
                                                        (let* ((_g8055980567_
                                                                (lambda (_g8056080563_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8056080563_)))
                       (_g8055880656_
                        (lambda (_g8056080571_)
                          ((lambda (_L80574_)
                             (let ()
                               (let* ((_g8059080598_
                                       (lambda (_g8059180594_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8059180594_)))
                                      (_g8058980652_
                                       (lambda (_g8059180602_)
                                         ((lambda (_L80605_)
                                            (let ()
                                              (let* ((_g8061880626_
                                                      (lambda (_g8061980622_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8061980622_)))
                                                     (_g8061780648_
                                                      (lambda (_g8061980630_)
                                                        ((lambda (_L80633_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80437_
                                                                _L80523_
                                                                _L80574_
                                                                (let ((__tmp81610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81611
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80633_ '()))))
                                 (declare (not safe))
                                 (cons _E80442_ __tmp81611))))
                          (declare (not safe))
                          (cons __tmp81610 _r80443_))))))
                 _g8061980630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8061780648_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81614
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81612
                                                         (let ((__tmp81613
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80605_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81614
                                                          __tmp81612))
                                                  (gx#stx-source _L80525_))))))
                                          _g8059180602_))))
                                 (_g8058980652_
                                  (_generate-clause80308_
                                   _L80525_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80574_ '())))))))
                           _g8056080571_))))
                  (_g8055880656_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8143281433_)
                                                     (let ((_e8054280667_
                                                            (gx#syntax-e
                                                             ___stx8143281433_)))
                                                       (let ((_tl8054080674_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8054280667_)))
                     (_hd8054180671_
                      (let () (declare (not safe)) (##car _e8054280667_))))
                 (if (gx#identifier? _hd8054180671_)
                     (if (gx#free-identifier=? |gx[1]#_g81615_| _hd8054180671_)
                         (___kont8143581436_ _tl8054080674_)
                         (___kont8143781438_))
                     (___kont8143781438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8143781438_))))))
                                          (___kont8145781458_
                                           (lambda ()
                                             (let* ((_g8046980477_
                                                     (lambda (_g8047080473_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8047080473_)))
                                                    (_g8046880502_
                                                     (lambda (_g8047080481_)
                                                       ((lambda (_L80484_)
                                                          (let ()
                                                            (let ((__tmp81616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81617
                                  (let ((__tmp81618
                                         (gx#stx-wrap-source
                                          (let ((__tmp81626
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81619
                                                 (let ((__tmp81620
                                                        (let ((__tmp81621
                                                               (let ((__tmp81625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81622
                              (let ((__tmp81623
                                     (let ((__tmp81624
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80484_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81624))))
                                (declare (not safe))
                                (cons '#f __tmp81623))))
                         (declare (not safe))
                         (cons __tmp81625 __tmp81622))))
                  (declare (not safe))
                  (cons __tmp81621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81620))))
                                            (declare (not safe))
                                            (cons __tmp81626 __tmp81619))
                                          (gx#stx-source _stx80151_))))
                                    (declare (not safe))
                                    (cons __tmp81618 '()))))
                             (declare (not safe))
                             (cons _E80442_ __tmp81617))))
                      (declare (not safe))
                      (cons __tmp81616 _r80443_))))
                _g8047080481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8046880502_ _tgt80303_)))))
                                      (if (gx#stx-pair? ___stx8145281453_)
                                          (let ((_e8045280513_
                                                 (gx#syntax-e
                                                  ___stx8145281453_)))
                                            (let ((_tl8045080520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8045280513_)))
                                                  (_hd8045180517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8045280513_))))
                                              (___kont8145581456_
                                               _tl8045080520_
                                               _hd8045180517_)))
                                          (___kont8145781458_))))))))
                      (let* ((_bind80313_
                              (_generate-clauses80311_ _clauses80306_))
                             (_g8031680333_
                              (lambda (_g8031780329_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8031780329_)))
                             (_g8031580430_
                              (lambda (_g8031780337_)
                                (if (gx#stx-pair/null? _g8031780337_)
                                    (let ((_g81627_
                                           (gx#syntax-split-splice
                                            _g8031780337_
                                            '0)))
                                      (begin
                                        (let ((_g81628_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81627_)
                                                     (##vector-length _g81627_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81628_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81628_)))
                                        (let ((_target8031980340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81627_ 0)))
                                              (_tl8032180343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81627_ 1))))
                                          (if (gx#stx-null? _tl8032180343_)
                                              (letrec ((_loop8032280346_
                                                        (lambda (_hd8032080350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8032680353_)
                  (if (gx#stx-pair? _hd8032080350_)
                      (let ((_e8032380356_ (gx#syntax-e _hd8032080350_)))
                        (let ((_lp-hd8032480360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8032380356_)))
                              (_lp-tl8032580363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8032380356_))))
                          (_loop8032280346_
                           _lp-tl8032580363_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8032480360_ _bind-try8032680353_)))))
                      (let ((_bind-try8032780366_
                             (reverse _bind-try8032680353_)))
                        ((lambda (_L80370_)
                           (let ()
                             (let* ((_g8038880396_
                                     (lambda (_g8038980392_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8038980392_)))
                                    (_g8038780426_
                                     (lambda (_g8038980400_)
                                       ((lambda (_L80403_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81634
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81629
                                                     (let ((__tmp81632
                                                            (let ((__tmp81633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8041780420_ _g8041880423_)
                             (let ()
                               (declare (not safe))
                               (cons _g8041780420_ _g8041880423_)))))
                      (declare (not safe))
                      (foldr1 __tmp81633 '() _L80370_)))
                   (__tmp81630
                    (let ((__tmp81631
                           (let () (declare (not safe)) (cons _L80403_ '()))))
                      (declare (not safe))
                      (cons __tmp81631 '()))))
               (declare (not safe))
               (cons __tmp81632 __tmp81630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81634
                                                      __tmp81629)))))
                                        _g8038980400_))))
                               (_g8038780426_ (car (last _bind80313_))))))
                         _bind-try8032780366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8032280346_
                                                 _target8031980340_
                                                 '()))
                                              (_g8031680333_ _g8031780337_)))))
                                    (_g8031680333_ _g8031780337_)))))
                        (_g8031580430_ _bind80313_))))))
          (let* ((_g8015780176_
                  (lambda (_g8015880172_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8015880172_)))
                 (_g8015680299_
                  (lambda (_g8015880180_)
                    (if (gx#stx-pair? _g8015880180_)
                        (let ((_e8016480183_ (gx#syntax-e _g8015880180_)))
                          (let ((_hd8016380187_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8016480183_)))
                                (_tl8016280190_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8016480183_))))
                            (if (gx#stx-pair? _tl8016280190_)
                                (let ((_e8016780193_
                                       (gx#syntax-e _tl8016280190_)))
                                  (let ((_hd8016680197_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8016780193_)))
                                        (_tl8016580200_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8016780193_))))
                                    (if (gx#stx-pair? _tl8016580200_)
                                        (let ((_e8017080203_
                                               (gx#syntax-e _tl8016580200_)))
                                          (let ((_hd8016980207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8017080203_)))
                                                (_tl8016880210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8017080203_))))
                                            ((lambda (_L80213_
                                                      _L80215_
                                                      _L80216_)
                                               (if (and (gx#identifier-list?
                                                         _L80215_)
                                                        (gx#stx-list?
                                                         _L80213_))
                                                   (let* ((_g8023480242_
                                                           (lambda (_g8023580238_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8023580238_)))
                                                          (_g8023380295_
                                                           (lambda (_g8023580246_)
                                                             ((lambda (_L80249_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8026180269_
                                  (lambda (_g8026280265_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8026280265_)))
                                 (_g8026080291_
                                  (lambda (_g8026280273_)
                                    ((lambda (_L80276_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81640
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81635
                                                  (let ((__tmp81637
                                                         (let ((__tmp81638
                                                                (let ((__tmp81639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80216_ '()))))
                          (declare (not safe))
                          (cons _L80249_ __tmp81639))))
                   (declare (not safe))
                   (cons __tmp81638 '())))
                (__tmp81636 (let () (declare (not safe)) (cons _L80276_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81637
                                                          __tmp81636))))
                                             (declare (not safe))
                                             (cons __tmp81640 __tmp81635)))))
                                     _g8026280273_))))
                            (_g8026080291_
                             (_generate80154_
                              _L80249_
                              (gx#syntax->list _L80215_)
                              _L80213_)))))
                      _g8023580246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8023380295_
                                                      (gx#genident 'e)))
                                                   (_g8015780176_
                                                    _g8015880180_)))
                                             _tl8016880210_
                                             _hd8016980207_
                                             _hd8016680197_)))
                                        (_g8015780176_ _g8015880180_))))
                                (_g8015780176_ _g8015880180_))))
                        (_g8015780176_ _g8015880180_)))))
            (_g8015680299_ _stx80151_)))))))
