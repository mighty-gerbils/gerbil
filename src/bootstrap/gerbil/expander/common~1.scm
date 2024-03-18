(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81486_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81488_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81490_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81495_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81498_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81503_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81506_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81511_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81514_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81519_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81522_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81629_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81481
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
           __obj81481
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81485 |gx[1]#_g81486_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81485
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81487 |gx[1]#_g81488_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81487
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81489 |gx[1]#_g81490_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81489
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81491
               (let ((__tmp81496
                      (let ((__tmp81497 |gx[1]#_g81498_|))
                        (declare (not safe))
                        (cons 'e __tmp81497)))
                     (__tmp81492
                      (let ((__tmp81493
                             (let ((__tmp81494 |gx[1]#_g81495_|))
                               (declare (not safe))
                               (cons 'source __tmp81494))))
                        (declare (not safe))
                        (cons __tmp81493 '()))))
                 (declare (not safe))
                 (cons __tmp81496 __tmp81492))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81491
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81499
               (let ((__tmp81504
                      (let ((__tmp81505 |gx[1]#_g81506_|))
                        (declare (not safe))
                        (cons 'e __tmp81505)))
                     (__tmp81500
                      (let ((__tmp81501
                             (let ((__tmp81502 |gx[1]#_g81503_|))
                               (declare (not safe))
                               (cons 'source __tmp81502))))
                        (declare (not safe))
                        (cons __tmp81501 '()))))
                 (declare (not safe))
                 (cons __tmp81504 __tmp81500))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81499
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81507
               (let ((__tmp81512
                      (let ((__tmp81513 |gx[1]#_g81514_|))
                        (declare (not safe))
                        (cons 'e __tmp81513)))
                     (__tmp81508
                      (let ((__tmp81509
                             (let ((__tmp81510 |gx[1]#_g81511_|))
                               (declare (not safe))
                               (cons 'source __tmp81510))))
                        (declare (not safe))
                        (cons __tmp81509 '()))))
                 (declare (not safe))
                 (cons __tmp81512 __tmp81508))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81507
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81515
               (let ((__tmp81520
                      (let ((__tmp81521 |gx[1]#_g81522_|))
                        (declare (not safe))
                        (cons 'e __tmp81521)))
                     (__tmp81516
                      (let ((__tmp81517
                             (let ((__tmp81518 |gx[1]#_g81519_|))
                               (declare (not safe))
                               (cons 'source __tmp81518))))
                        (declare (not safe))
                        (cons __tmp81517 '()))))
                 (declare (not safe))
                 (cons __tmp81520 __tmp81516))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81481
           __tmp81515
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81481))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80101_)
        (let* ((_g8010580119_
                (lambda (_g8010680115_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8010680115_)))
               (_g8010480161_
                (lambda (_g8010680123_)
                  (if (gx#stx-pair? _g8010680123_)
                      (let ((_e8011080126_ (gx#syntax-e _g8010680123_)))
                        (let ((_hd8010980130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8011080126_)))
                              (_tl8010880133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8011080126_))))
                          (if (gx#stx-pair? _tl8010880133_)
                              (let ((_e8011380136_
                                     (gx#syntax-e _tl8010880133_)))
                                (let ((_hd8011280140_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8011380136_)))
                                      (_tl8011180143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8011380136_))))
                                  (if (gx#stx-null? _tl8011180143_)
                                      ((lambda (_L80146_)
                                         (let ((__tmp81532
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81523
                                                (let ((__tmp81529
                                                       (let ((__tmp81531
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81530
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80146_ '()))))
                 (declare (not safe))
                 (cons __tmp81531 __tmp81530)))
              (__tmp81524
               (let ((__tmp81525
                      (let ((__tmp81528 (gx#datum->syntax '#f 'error))
                            (__tmp81526
                             (let ((__tmp81527
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80146_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81527))))
                        (declare (not safe))
                        (cons __tmp81528 __tmp81526))))
                 (declare (not safe))
                 (cons __tmp81525 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81529
                                                        __tmp81524))))
                                           (declare (not safe))
                                           (cons __tmp81532 __tmp81523)))
                                       _hd8011280140_)
                                      (_g8010580119_ _g8010680123_))))
                              (_g8010580119_ _g8010680123_))))
                      (_g8010580119_ _g8010680123_)))))
          (_g8010480161_ _$stx80101_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80165_)
        (letrec ((_generate80168_
                  (lambda (_tgt80317_ _kws80319_ _clauses80320_)
                    (letrec ((_generate-clause80322_
                              (lambda (_hd81232_ _E81234_)
                                (let* ((___stx8138481385_ _hd81232_)
                                       (_g8123881265_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8138481385_))))
                                  (let ((___kont8138781388_
                                         (lambda (_L81361_ _L81363_)
                                           (_generate180324_
                                            _hd81232_
                                            _L81363_
                                            '#t
                                            _L81361_
                                            _E81234_)))
                                        (___kont8138981390_
                                         (lambda (_L81313_ _L81315_ _L81316_)
                                           (_generate180324_
                                            _hd81232_
                                            _L81316_
                                            _L81315_
                                            _L81313_
                                            _E81234_)))
                                        (___kont8139181392_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80165_
                                            _hd81232_))))
                                    (if (gx#stx-pair? ___stx8138481385_)
                                        (let ((_e8124481341_
                                               (gx#syntax-e
                                                ___stx8138481385_)))
                                          (let ((_tl8124281348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8124481341_)))
                                                (_hd8124381345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8124481341_))))
                                            (if (gx#stx-pair? _tl8124281348_)
                                                (let ((_e8124781351_
                                                       (gx#syntax-e
                                                        _tl8124281348_)))
                                                  (let ((_tl8124581358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8124781351_)))
                                                        (_hd8124681355_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8124781351_))))
                                                    (if (gx#stx-null?
                                                         _tl8124581358_)
                                                        (___kont8138781388_
                                                         _hd8124681355_
                                                         _hd8124381345_)
                                                        (if (gx#stx-pair?
                                                             _tl8124581358_)
                                                            (let ((_e8125981303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8124581358_)))
                      (let ((_tl8125781310_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8125981303_)))
                            (_hd8125881307_
                             (let ()
                               (declare (not safe))
                               (##car _e8125981303_))))
                        (if (gx#stx-null? _tl8125781310_)
                            (___kont8138981390_
                             _hd8125881307_
                             _hd8124681355_
                             _hd8124381345_)
                            (___kont8139181392_))))
                    (___kont8139181392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8139181392_))))
                                        (___kont8139181392_))))))
                             (_generate180324_
                              (lambda (_where80710_
                                       _hd80712_
                                       _fender80713_
                                       _body80714_
                                       _E80715_)
                                (letrec ((_recur80717_
                                          (lambda (_hd80720_
                                                   _tgt80722_
                                                   _K80723_)
                                            (let* ((___stx8143081431_
                                                    _hd80720_)
                                                   (_g8072680738_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8143081431_))))
                                              (let ((___kont8143381434_
                                                     (lambda (_L81022_
                                                              _L81024_)
                                                       (let* ((_g8103581043_
                                                               (lambda (_g8103681039_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8103681039_)))
                      (_g8103481224_
                       (lambda (_g8103681047_)
                         ((lambda (_L81050_)
                            (let ()
                              (let* ((_g8106281070_
                                      (lambda (_g8106381066_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8106381066_)))
                                     (_g8106181220_
                                      (lambda (_g8106381074_)
                                        ((lambda (_L81077_)
                                           (let ()
                                             (let* ((_g8109081098_
                                                     (lambda (_g8109181094_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8109181094_)))
                                                    (_g8108981216_
                                                     (lambda (_g8109181102_)
                                                       ((lambda (_L81105_)
                                                          (let ()
                                                            (let* ((_g8111881126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8111981122_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8111981122_)))
                           (_g8111781212_
                            (lambda (_g8111981130_)
                              ((lambda (_L81133_)
                                 (let ()
                                   (let* ((_g8114681154_
                                           (lambda (_g8114781150_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8114781150_)))
                                          (_g8114581208_
                                           (lambda (_g8114781158_)
                                             ((lambda (_L81161_)
                                                (let ()
                                                  (let* ((_g8117481182_
                                                          (lambda (_g8117581178_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8117581178_)))
                                                         (_g8117381204_
                                                          (lambda (_g8117581186_)
                                                            ((lambda (_L81189_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81565 (gx#datum->syntax '#f 'if))
                                 (__tmp81533
                                  (let ((__tmp81562
                                         (let ((__tmp81564
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81563
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81050_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81564 __tmp81563)))
                                        (__tmp81534
                                         (let ((__tmp81536
                                                (let ((__tmp81561
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81537
                                                       (let ((__tmp81555
                                                              (let ((__tmp81556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81557
                                    (let ((__tmp81558
                                           (let ((__tmp81560
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81559
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81050_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81560 __tmp81559))))
                                      (declare (not safe))
                                      (cons __tmp81558 '()))))
                               (declare (not safe))
                               (cons _L81077_ __tmp81557))))
                        (declare (not safe))
                        (cons __tmp81556 '())))
                     (__tmp81538
                      (let ((__tmp81539
                             (let ((__tmp81554 (gx#datum->syntax '#f 'let))
                                   (__tmp81540
                                    (let ((__tmp81542
                                           (let ((__tmp81549
                                                  (let ((__tmp81550
                                                         (let ((__tmp81551
                                                                (let ((__tmp81553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81552
                               (let ()
                                 (declare (not safe))
                                 (cons _L81077_ '()))))
                          (declare (not safe))
                          (cons __tmp81553 __tmp81552))))
                   (declare (not safe))
                   (cons __tmp81551 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81105_
                                                          __tmp81550)))
                                                 (__tmp81543
                                                  (let ((__tmp81544
                                                         (let ((__tmp81545
                                                                (let ((__tmp81546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81548 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81547
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81077_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81548 __tmp81547))))
                          (declare (not safe))
                          (cons __tmp81546 '()))))
                   (declare (not safe))
                   (cons _L81133_ __tmp81545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81544 '()))))
                                             (declare (not safe))
                                             (cons __tmp81549 __tmp81543)))
                                          (__tmp81541
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81161_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81542 __tmp81541))))
                               (declare (not safe))
                               (cons __tmp81554 __tmp81540))))
                        (declare (not safe))
                        (cons __tmp81539 '()))))
                 (declare (not safe))
                 (cons __tmp81555 __tmp81538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81561
                                                        __tmp81537)))
                                               (__tmp81535
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81189_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81536 __tmp81535))))
                                    (declare (not safe))
                                    (cons __tmp81562 __tmp81534))))
                             (declare (not safe))
                             (cons __tmp81565 __tmp81533)))))
                     _g8117581186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8117381204_ _E80715_))))
                                              _g8114781158_))))
                                     (_g8114581208_
                                      (_recur80717_
                                       _L81024_
                                       _L81105_
                                       (_recur80717_
                                        _L81022_
                                        _L81133_
                                        _K80723_))))))
                               _g8111981130_))))
                      (_g8111781212_ (gx#genident 'tl)))))
                _g8109181102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8108981216_
                                                (gx#genident 'hd)))))
                                         _g8106381074_))))
                                (_g8106181220_ (gx#genident 'e)))))
                          _g8103681047_))))
                 (_g8103481224_ _tgt80722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143581436_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80720_)
                                                           (if (gx#underscore?
                                                                _hd80720_)
                                                               _K80723_
                                                               (if (let ((__tmp81610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8074880750_)
                                    (gx#bound-identifier=?
                                     _g8074880750_
                                     _hd80720_))))
                             (declare (not safe))
                             (find __tmp81610 _kws80319_))
                           (let* ((_g8075480769_
                                   (lambda (_g8075580765_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8075580765_)))
                                  (_g8075380820_
                                   (lambda (_g8075580773_)
                                     (if (gx#stx-pair? _g8075580773_)
                                         (let ((_e8076080776_
                                                (gx#syntax-e _g8075580773_)))
                                           (let ((_hd8075980780_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8076080776_)))
                                                 (_tl8075880783_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8076080776_))))
                                             (if (gx#stx-pair? _tl8075880783_)
                                                 (let ((_e8076380786_
                                                        (gx#syntax-e
                                                         _tl8075880783_)))
                                                   (let ((_hd8076280790_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8076380786_)))
                                                         (_tl8076180793_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8076380786_))))
                                                     (if (gx#stx-null?
                                                          _tl8076180793_)
                                                         ((lambda (_L80796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80798_)
                    (let ()
                      (let ((__tmp81609 (gx#datum->syntax '#f 'if))
                            (__tmp81592
                             (let ((__tmp81595
                                    (let ((__tmp81608
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81596
                                           (let ((__tmp81605
                                                  (let ((__tmp81607
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81606
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81607
                                                          __tmp81606)))
                                                 (__tmp81597
                                                  (let ((__tmp81598
                                                         (let ((__tmp81604
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81599
                        (let ((__tmp81600
                               (let ((__tmp81601
                                      (let ((__tmp81603
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81602
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80796_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81603 __tmp81602))))
                                 (declare (not safe))
                                 (cons __tmp81601 '()))))
                          (declare (not safe))
                          (cons _L80798_ __tmp81600))))
                   (declare (not safe))
                   (cons __tmp81604 __tmp81599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81598 '()))))
                                             (declare (not safe))
                                             (cons __tmp81605 __tmp81597))))
                                      (declare (not safe))
                                      (cons __tmp81608 __tmp81596)))
                                   (__tmp81593
                                    (let ((__tmp81594
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80715_ '()))))
                                      (declare (not safe))
                                      (cons _K80723_ __tmp81594))))
                               (declare (not safe))
                               (cons __tmp81595 __tmp81593))))
                        (declare (not safe))
                        (cons __tmp81609 __tmp81592))))
                  _hd8076280790_
                  _hd8075980780_)
                 (_g8075480769_ _g8075580773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8075480769_
                                                  _g8075580773_))))
                                         (_g8075480769_ _g8075580773_)))))
                             (_g8075380820_ (list _tgt80722_ _hd80720_)))
                           (let* ((_g8082480839_
                                   (lambda (_g8082580835_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8082580835_)))
                                  (_g8082380883_
                                   (lambda (_g8082580843_)
                                     (if (gx#stx-pair? _g8082580843_)
                                         (let ((_e8083080846_
                                                (gx#syntax-e _g8082580843_)))
                                           (let ((_hd8082980850_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8083080846_)))
                                                 (_tl8082880853_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8083080846_))))
                                             (if (gx#stx-pair? _tl8082880853_)
                                                 (let ((_e8083380856_
                                                        (gx#syntax-e
                                                         _tl8082880853_)))
                                                   (let ((_hd8083280860_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8083380856_)))
                                                         (_tl8083180863_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8083380856_))))
                                                     (if (gx#stx-null?
                                                          _tl8083180863_)
                                                         ((lambda (_L80866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80868_)
                    (let ()
                      (let ((__tmp81591 (gx#datum->syntax '#f 'let))
                            (__tmp81586
                             (let ((__tmp81588
                                    (let ((__tmp81589
                                           (let ((__tmp81590
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80868_ '()))))
                                             (declare (not safe))
                                             (cons _L80866_ __tmp81590))))
                                      (declare (not safe))
                                      (cons __tmp81589 '())))
                                   (__tmp81587
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80723_ '()))))
                               (declare (not safe))
                               (cons __tmp81588 __tmp81587))))
                        (declare (not safe))
                        (cons __tmp81591 __tmp81586))))
                  _hd8083280860_
                  _hd8082980850_)
                 (_g8082480839_ _g8082580843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8082480839_
                                                  _g8082580843_))))
                                         (_g8082480839_ _g8082580843_)))))
                             (_g8082380883_ (list _tgt80722_ _hd80720_)))))
                   (if (gx#stx-null? _hd80720_)
                       (let* ((_g8088780895_
                               (lambda (_g8088880891_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8088880891_)))
                              (_g8088680913_
                               (lambda (_g8088880899_)
                                 ((lambda (_L80902_)
                                    (let ()
                                      (let ((__tmp81585
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81579
                                             (let ((__tmp81582
                                                    (let ((__tmp81584
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81583
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81584 __tmp81583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81580
                                                    (let ((__tmp81581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80723_ __tmp81581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81582 __tmp81580))))
                                        (declare (not safe))
                                        (cons __tmp81585 __tmp81579))))
                                  _g8088880899_))))
                         (_g8088680913_ _tgt80722_))
                       (if (gx#stx-datum? _hd80720_)
                           (let* ((_g8091780936_
                                   (lambda (_g8091880932_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8091880932_)))
                                  (_g8091680994_
                                   (lambda (_g8091880940_)
                                     (if (gx#stx-pair? _g8091880940_)
                                         (let ((_e8092480943_
                                                (gx#syntax-e _g8091880940_)))
                                           (let ((_hd8092380947_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8092480943_)))
                                                 (_tl8092280950_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8092480943_))))
                                             (if (gx#stx-pair? _tl8092280950_)
                                                 (let ((_e8092780953_
                                                        (gx#syntax-e
                                                         _tl8092280950_)))
                                                   (let ((_hd8092680957_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8092780953_)))
                                                         (_tl8092580960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8092780953_))))
                                                     (if (gx#stx-pair?
                                                          _tl8092580960_)
                                                         (let ((_e8093080963_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8092580960_)))
                   (let ((_hd8092980967_
                          (let () (declare (not safe)) (##car _e8093080963_)))
                         (_tl8092880970_
                          (let () (declare (not safe)) (##cdr _e8093080963_))))
                     (if (gx#stx-null? _tl8092880970_)
                         ((lambda (_L80973_ _L80975_ _L80976_)
                            (let ()
                              (let ((__tmp81578 (gx#datum->syntax '#f 'if))
                                    (__tmp81566
                                     (let ((__tmp81569
                                            (let ((__tmp81570
                                                   (let ((__tmp81575
                                                          (let ((__tmp81577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81576
                         (let () (declare (not safe)) (cons _L80976_ '()))))
                    (declare (not safe))
                    (cons __tmp81577 __tmp81576)))
                 (__tmp81571
                  (let ((__tmp81572
                         (let ((__tmp81574 (gx#datum->syntax '#f 'quote))
                               (__tmp81573
                                (let ()
                                  (declare (not safe))
                                  (cons _L80975_ '()))))
                           (declare (not safe))
                           (cons __tmp81574 __tmp81573))))
                    (declare (not safe))
                    (cons __tmp81572 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81575
                                                           __tmp81571))))
                                              (declare (not safe))
                                              (cons _L80973_ __tmp81570)))
                                           (__tmp81567
                                            (let ((__tmp81568
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80715_ '()))))
                                              (declare (not safe))
                                              (cons _K80723_ __tmp81568))))
                                       (declare (not safe))
                                       (cons __tmp81569 __tmp81567))))
                                (declare (not safe))
                                (cons __tmp81578 __tmp81566))))
                          _hd8092980967_
                          _hd8092680957_
                          _hd8092380947_)
                         (_g8091780936_ _g8091880940_))))
                 (_g8091780936_ _g8091880940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8091780936_
                                                  _g8091880940_))))
                                         (_g8091780936_ _g8091880940_)))))
                             (_g8091680994_
                              (list _tgt80722_
                                    _hd80720_
                                    (let ((_e80998_ (gx#stx-e _hd80720_)))
                                      (if (or (keyword? _e80998_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80998_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80998_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80165_
                            _where80710_
                            _hd80720_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8143081431_)
                                                    (let ((_e8073281012_
                                                           (gx#syntax-e
                                                            ___stx8143081431_)))
                                                      (let ((_tl8073081019_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8073281012_)))
                    (_hd8073181016_
                     (let () (declare (not safe)) (##car _e8073281012_))))
                (___kont8143381434_ _tl8073081019_ _hd8073181016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143581436_)))))))
                                  (_recur80717_
                                   _hd80712_
                                   _tgt80317_
                                   (let ((__tmp81614
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81611
                                          (let ((__tmp81612
                                                 (let ((__tmp81613
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80715_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80714_
                                                         __tmp81613))))
                                            (declare (not safe))
                                            (cons _fender80713_ __tmp81612))))
                                     (declare (not safe))
                                     (cons __tmp81614 __tmp81611))))))
                             (_generate-clauses80325_
                              (lambda (_clauses80448_)
                                (let _lp80451_ ((_rest80454_ _clauses80448_)
                                                (_E80456_ (gx#genident 'E))
                                                (_r80457_ '()))
                                  (let* ((___stx8146681467_ _rest80454_)
                                         (_g8046080472_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8146681467_))))
                                    (let ((___kont8146981470_
                                           (lambda (_L80537_ _L80539_)
                                             (let* ((___stx8144681447_
                                                     _L80539_)
                                                    (_g8055180562_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8144681447_))))
                                               (let ((___kont8144981450_
                                                      (lambda (_L80691_)
                                                        (if (gx#stx-null?
                                                             _L80537_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80691_)
                             (let ((__tmp81623 (gx#stx-null? _L80691_)))
                               (declare (not safe))
                               (not __tmp81623)))
                        (let ((__tmp81615
                               (let ((__tmp81616
                                      (let ((__tmp81617
                                             (gx#stx-wrap-source
                                              (let ((__tmp81622
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81618
                                                     (let ((__tmp81619
                                                            (let ((__tmp81620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81621 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81621 _L80691_))))
                      (declare (not safe))
                      (cons __tmp81620 '()))))
               (declare (not safe))
               (cons '() __tmp81619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81622 __tmp81618))
                                              (gx#stx-source _L80539_))))
                                        (declare (not safe))
                                        (cons __tmp81617 '()))))
                                 (declare (not safe))
                                 (cons _E80456_ __tmp81616))))
                          (declare (not safe))
                          (cons __tmp81615 _r80457_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80165_
                         _L80539_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80165_
                     _L80539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145181452_
                                                      (lambda ()
                                                        (let* ((_g8057380581_
                                                                (lambda (_g8057480577_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8057480577_)))
                       (_g8057280670_
                        (lambda (_g8057480585_)
                          ((lambda (_L80588_)
                             (let ()
                               (let* ((_g8060480612_
                                       (lambda (_g8060580608_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8060580608_)))
                                      (_g8060380666_
                                       (lambda (_g8060580616_)
                                         ((lambda (_L80619_)
                                            (let ()
                                              (let* ((_g8063280640_
                                                      (lambda (_g8063380636_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8063380636_)))
                                                     (_g8063180662_
                                                      (lambda (_g8063380644_)
                                                        ((lambda (_L80647_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80451_
                                                                _L80537_
                                                                _L80588_
                                                                (let ((__tmp81624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81625
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80647_ '()))))
                                 (declare (not safe))
                                 (cons _E80456_ __tmp81625))))
                          (declare (not safe))
                          (cons __tmp81624 _r80457_))))))
                 _g8063380644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8063180662_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81628
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81626
                                                         (let ((__tmp81627
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80619_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81628
                                                          __tmp81626))
                                                  (gx#stx-source _L80539_))))))
                                          _g8060580616_))))
                                 (_g8060380666_
                                  (_generate-clause80322_
                                   _L80539_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80588_ '())))))))
                           _g8057480585_))))
                  (_g8057280670_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8144681447_)
                                                     (let ((_e8055680681_
                                                            (gx#syntax-e
                                                             ___stx8144681447_)))
                                                       (let ((_tl8055480688_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8055680681_)))
                     (_hd8055580685_
                      (let () (declare (not safe)) (##car _e8055680681_))))
                 (if (gx#identifier? _hd8055580685_)
                     (if (gx#free-identifier=? |gx[1]#_g81629_| _hd8055580685_)
                         (___kont8144981450_ _tl8055480688_)
                         (___kont8145181452_))
                     (___kont8145181452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145181452_))))))
                                          (___kont8147181472_
                                           (lambda ()
                                             (let* ((_g8048380491_
                                                     (lambda (_g8048480487_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8048480487_)))
                                                    (_g8048280516_
                                                     (lambda (_g8048480495_)
                                                       ((lambda (_L80498_)
                                                          (let ()
                                                            (let ((__tmp81630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81631
                                  (let ((__tmp81632
                                         (gx#stx-wrap-source
                                          (let ((__tmp81640
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81633
                                                 (let ((__tmp81634
                                                        (let ((__tmp81635
                                                               (let ((__tmp81639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81636
                              (let ((__tmp81637
                                     (let ((__tmp81638
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80498_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81638))))
                                (declare (not safe))
                                (cons '#f __tmp81637))))
                         (declare (not safe))
                         (cons __tmp81639 __tmp81636))))
                  (declare (not safe))
                  (cons __tmp81635 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81634))))
                                            (declare (not safe))
                                            (cons __tmp81640 __tmp81633))
                                          (gx#stx-source _stx80165_))))
                                    (declare (not safe))
                                    (cons __tmp81632 '()))))
                             (declare (not safe))
                             (cons _E80456_ __tmp81631))))
                      (declare (not safe))
                      (cons __tmp81630 _r80457_))))
                _g8048480495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8048280516_ _tgt80317_)))))
                                      (if (gx#stx-pair? ___stx8146681467_)
                                          (let ((_e8046680527_
                                                 (gx#syntax-e
                                                  ___stx8146681467_)))
                                            (let ((_tl8046480534_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8046680527_)))
                                                  (_hd8046580531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8046680527_))))
                                              (___kont8146981470_
                                               _tl8046480534_
                                               _hd8046580531_)))
                                          (___kont8147181472_))))))))
                      (let* ((_bind80327_
                              (_generate-clauses80325_ _clauses80320_))
                             (_g8033080347_
                              (lambda (_g8033180343_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8033180343_)))
                             (_g8032980444_
                              (lambda (_g8033180351_)
                                (if (gx#stx-pair/null? _g8033180351_)
                                    (let ((_g81641_
                                           (gx#syntax-split-splice
                                            _g8033180351_
                                            '0)))
                                      (begin
                                        (let ((_g81642_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81641_)
                                                     (##vector-length _g81641_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81642_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81642_)))
                                        (let ((_target8033380354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81641_ 0)))
                                              (_tl8033580357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81641_ 1))))
                                          (if (gx#stx-null? _tl8033580357_)
                                              (letrec ((_loop8033680360_
                                                        (lambda (_hd8033480364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8034080367_)
                  (if (gx#stx-pair? _hd8033480364_)
                      (let ((_e8033780370_ (gx#syntax-e _hd8033480364_)))
                        (let ((_lp-hd8033880374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8033780370_)))
                              (_lp-tl8033980377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8033780370_))))
                          (_loop8033680360_
                           _lp-tl8033980377_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8033880374_ _bind-try8034080367_)))))
                      (let ((_bind-try8034180380_
                             (reverse _bind-try8034080367_)))
                        ((lambda (_L80384_)
                           (let ()
                             (let* ((_g8040280410_
                                     (lambda (_g8040380406_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8040380406_)))
                                    (_g8040180440_
                                     (lambda (_g8040380414_)
                                       ((lambda (_L80417_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81648
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81643
                                                     (let ((__tmp81646
                                                            (let ((__tmp81647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8043180434_ _g8043280437_)
                             (let ()
                               (declare (not safe))
                               (cons _g8043180434_ _g8043280437_)))))
                      (declare (not safe))
                      (foldr1 __tmp81647 '() _L80384_)))
                   (__tmp81644
                    (let ((__tmp81645
                           (let () (declare (not safe)) (cons _L80417_ '()))))
                      (declare (not safe))
                      (cons __tmp81645 '()))))
               (declare (not safe))
               (cons __tmp81646 __tmp81644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81648
                                                      __tmp81643)))))
                                        _g8040380414_))))
                               (_g8040180440_ (car (last _bind80327_))))))
                         _bind-try8034180380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8033680360_
                                                 _target8033380354_
                                                 '()))
                                              (_g8033080347_ _g8033180351_)))))
                                    (_g8033080347_ _g8033180351_)))))
                        (_g8032980444_ _bind80327_))))))
          (let* ((_g8017180190_
                  (lambda (_g8017280186_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8017280186_)))
                 (_g8017080313_
                  (lambda (_g8017280194_)
                    (if (gx#stx-pair? _g8017280194_)
                        (let ((_e8017880197_ (gx#syntax-e _g8017280194_)))
                          (let ((_hd8017780201_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8017880197_)))
                                (_tl8017680204_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8017880197_))))
                            (if (gx#stx-pair? _tl8017680204_)
                                (let ((_e8018180207_
                                       (gx#syntax-e _tl8017680204_)))
                                  (let ((_hd8018080211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8018180207_)))
                                        (_tl8017980214_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8018180207_))))
                                    (if (gx#stx-pair? _tl8017980214_)
                                        (let ((_e8018480217_
                                               (gx#syntax-e _tl8017980214_)))
                                          (let ((_hd8018380221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8018480217_)))
                                                (_tl8018280224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8018480217_))))
                                            ((lambda (_L80227_
                                                      _L80229_
                                                      _L80230_)
                                               (if (and (gx#identifier-list?
                                                         _L80229_)
                                                        (gx#stx-list?
                                                         _L80227_))
                                                   (let* ((_g8024880256_
                                                           (lambda (_g8024980252_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8024980252_)))
                                                          (_g8024780309_
                                                           (lambda (_g8024980260_)
                                                             ((lambda (_L80263_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8027580283_
                                  (lambda (_g8027680279_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8027680279_)))
                                 (_g8027480305_
                                  (lambda (_g8027680287_)
                                    ((lambda (_L80290_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81654
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81649
                                                  (let ((__tmp81651
                                                         (let ((__tmp81652
                                                                (let ((__tmp81653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80230_ '()))))
                          (declare (not safe))
                          (cons _L80263_ __tmp81653))))
                   (declare (not safe))
                   (cons __tmp81652 '())))
                (__tmp81650 (let () (declare (not safe)) (cons _L80290_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81651
                                                          __tmp81650))))
                                             (declare (not safe))
                                             (cons __tmp81654 __tmp81649)))))
                                     _g8027680287_))))
                            (_g8027480305_
                             (_generate80168_
                              _L80263_
                              (gx#syntax->list _L80229_)
                              _L80227_)))))
                      _g8024980260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8024780309_
                                                      (gx#genident 'e)))
                                                   (_g8017180190_
                                                    _g8017280194_)))
                                             _tl8018280224_
                                             _hd8018380221_
                                             _hd8018080211_)))
                                        (_g8017180190_ _g8017280194_))))
                                (_g8017180190_ _g8017280194_))))
                        (_g8017180190_ _g8017280194_)))))
            (_g8017080313_ _stx80165_)))))))
