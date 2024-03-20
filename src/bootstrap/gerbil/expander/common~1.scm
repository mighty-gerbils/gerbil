(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81491_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81493_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81495_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81500_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81503_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81508_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81511_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81516_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81519_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81524_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81527_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81634_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81486
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
           __obj81486
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81490 |gx[1]#_g81491_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81490
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81492 |gx[1]#_g81493_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81492
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81494 |gx[1]#_g81495_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81494
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81496
               (let ((__tmp81501
                      (let ((__tmp81502 |gx[1]#_g81503_|))
                        (declare (not safe))
                        (cons 'e __tmp81502)))
                     (__tmp81497
                      (let ((__tmp81498
                             (let ((__tmp81499 |gx[1]#_g81500_|))
                               (declare (not safe))
                               (cons 'source __tmp81499))))
                        (declare (not safe))
                        (cons __tmp81498 '()))))
                 (declare (not safe))
                 (cons __tmp81501 __tmp81497))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81496
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81504
               (let ((__tmp81509
                      (let ((__tmp81510 |gx[1]#_g81511_|))
                        (declare (not safe))
                        (cons 'e __tmp81510)))
                     (__tmp81505
                      (let ((__tmp81506
                             (let ((__tmp81507 |gx[1]#_g81508_|))
                               (declare (not safe))
                               (cons 'source __tmp81507))))
                        (declare (not safe))
                        (cons __tmp81506 '()))))
                 (declare (not safe))
                 (cons __tmp81509 __tmp81505))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81504
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81512
               (let ((__tmp81517
                      (let ((__tmp81518 |gx[1]#_g81519_|))
                        (declare (not safe))
                        (cons 'e __tmp81518)))
                     (__tmp81513
                      (let ((__tmp81514
                             (let ((__tmp81515 |gx[1]#_g81516_|))
                               (declare (not safe))
                               (cons 'source __tmp81515))))
                        (declare (not safe))
                        (cons __tmp81514 '()))))
                 (declare (not safe))
                 (cons __tmp81517 __tmp81513))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81512
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81520
               (let ((__tmp81525
                      (let ((__tmp81526 |gx[1]#_g81527_|))
                        (declare (not safe))
                        (cons 'e __tmp81526)))
                     (__tmp81521
                      (let ((__tmp81522
                             (let ((__tmp81523 |gx[1]#_g81524_|))
                               (declare (not safe))
                               (cons 'source __tmp81523))))
                        (declare (not safe))
                        (cons __tmp81522 '()))))
                 (declare (not safe))
                 (cons __tmp81525 __tmp81521))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81486
           __tmp81520
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81486))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80106_)
        (let* ((_g8011080124_
                (lambda (_g8011180120_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8011180120_)))
               (_g8010980166_
                (lambda (_g8011180128_)
                  (if (gx#stx-pair? _g8011180128_)
                      (let ((_e8011580131_ (gx#syntax-e _g8011180128_)))
                        (let ((_hd8011480135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8011580131_)))
                              (_tl8011380138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8011580131_))))
                          (if (gx#stx-pair? _tl8011380138_)
                              (let ((_e8011880141_
                                     (gx#syntax-e _tl8011380138_)))
                                (let ((_hd8011780145_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8011880141_)))
                                      (_tl8011680148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8011880141_))))
                                  (if (gx#stx-null? _tl8011680148_)
                                      ((lambda (_L80151_)
                                         (let ((__tmp81537
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81528
                                                (let ((__tmp81534
                                                       (let ((__tmp81536
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81535
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80151_ '()))))
                 (declare (not safe))
                 (cons __tmp81536 __tmp81535)))
              (__tmp81529
               (let ((__tmp81530
                      (let ((__tmp81533 (gx#datum->syntax '#f 'error))
                            (__tmp81531
                             (let ((__tmp81532
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80151_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81532))))
                        (declare (not safe))
                        (cons __tmp81533 __tmp81531))))
                 (declare (not safe))
                 (cons __tmp81530 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81534
                                                        __tmp81529))))
                                           (declare (not safe))
                                           (cons __tmp81537 __tmp81528)))
                                       _hd8011780145_)
                                      (_g8011080124_ _g8011180128_))))
                              (_g8011080124_ _g8011180128_))))
                      (_g8011080124_ _g8011180128_)))))
          (_g8010980166_ _$stx80106_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80170_)
        (letrec ((_generate80173_
                  (lambda (_tgt80322_ _kws80324_ _clauses80325_)
                    (letrec ((_generate-clause80327_
                              (lambda (_hd81237_ _E81239_)
                                (let* ((___stx8138981390_ _hd81237_)
                                       (_g8124381270_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8138981390_))))
                                  (let ((___kont8139281393_
                                         (lambda (_L81366_ _L81368_)
                                           (_generate180329_
                                            _hd81237_
                                            _L81368_
                                            '#t
                                            _L81366_
                                            _E81239_)))
                                        (___kont8139481395_
                                         (lambda (_L81318_ _L81320_ _L81321_)
                                           (_generate180329_
                                            _hd81237_
                                            _L81321_
                                            _L81320_
                                            _L81318_
                                            _E81239_)))
                                        (___kont8139681397_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80170_
                                            _hd81237_))))
                                    (if (gx#stx-pair? ___stx8138981390_)
                                        (let ((_e8124981346_
                                               (gx#syntax-e
                                                ___stx8138981390_)))
                                          (let ((_tl8124781353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8124981346_)))
                                                (_hd8124881350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8124981346_))))
                                            (if (gx#stx-pair? _tl8124781353_)
                                                (let ((_e8125281356_
                                                       (gx#syntax-e
                                                        _tl8124781353_)))
                                                  (let ((_tl8125081363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8125281356_)))
                                                        (_hd8125181360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8125281356_))))
                                                    (if (gx#stx-null?
                                                         _tl8125081363_)
                                                        (___kont8139281393_
                                                         _hd8125181360_
                                                         _hd8124881350_)
                                                        (if (gx#stx-pair?
                                                             _tl8125081363_)
                                                            (let ((_e8126481308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8125081363_)))
                      (let ((_tl8126281315_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8126481308_)))
                            (_hd8126381312_
                             (let ()
                               (declare (not safe))
                               (##car _e8126481308_))))
                        (if (gx#stx-null? _tl8126281315_)
                            (___kont8139481395_
                             _hd8126381312_
                             _hd8125181360_
                             _hd8124881350_)
                            (___kont8139681397_))))
                    (___kont8139681397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8139681397_))))
                                        (___kont8139681397_))))))
                             (_generate180329_
                              (lambda (_where80715_
                                       _hd80717_
                                       _fender80718_
                                       _body80719_
                                       _E80720_)
                                (letrec ((_recur80722_
                                          (lambda (_hd80725_
                                                   _tgt80727_
                                                   _K80728_)
                                            (let* ((___stx8143581436_
                                                    _hd80725_)
                                                   (_g8073180743_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8143581436_))))
                                              (let ((___kont8143881439_
                                                     (lambda (_L81027_
                                                              _L81029_)
                                                       (let* ((_g8104081048_
                                                               (lambda (_g8104181044_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8104181044_)))
                      (_g8103981229_
                       (lambda (_g8104181052_)
                         ((lambda (_L81055_)
                            (let ()
                              (let* ((_g8106781075_
                                      (lambda (_g8106881071_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8106881071_)))
                                     (_g8106681225_
                                      (lambda (_g8106881079_)
                                        ((lambda (_L81082_)
                                           (let ()
                                             (let* ((_g8109581103_
                                                     (lambda (_g8109681099_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8109681099_)))
                                                    (_g8109481221_
                                                     (lambda (_g8109681107_)
                                                       ((lambda (_L81110_)
                                                          (let ()
                                                            (let* ((_g8112381131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8112481127_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8112481127_)))
                           (_g8112281217_
                            (lambda (_g8112481135_)
                              ((lambda (_L81138_)
                                 (let ()
                                   (let* ((_g8115181159_
                                           (lambda (_g8115281155_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8115281155_)))
                                          (_g8115081213_
                                           (lambda (_g8115281163_)
                                             ((lambda (_L81166_)
                                                (let ()
                                                  (let* ((_g8117981187_
                                                          (lambda (_g8118081183_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8118081183_)))
                                                         (_g8117881209_
                                                          (lambda (_g8118081191_)
                                                            ((lambda (_L81194_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81570 (gx#datum->syntax '#f 'if))
                                 (__tmp81538
                                  (let ((__tmp81567
                                         (let ((__tmp81569
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81568
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81055_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81569 __tmp81568)))
                                        (__tmp81539
                                         (let ((__tmp81541
                                                (let ((__tmp81566
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81542
                                                       (let ((__tmp81560
                                                              (let ((__tmp81561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81562
                                    (let ((__tmp81563
                                           (let ((__tmp81565
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81564
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81055_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81565 __tmp81564))))
                                      (declare (not safe))
                                      (cons __tmp81563 '()))))
                               (declare (not safe))
                               (cons _L81082_ __tmp81562))))
                        (declare (not safe))
                        (cons __tmp81561 '())))
                     (__tmp81543
                      (let ((__tmp81544
                             (let ((__tmp81559 (gx#datum->syntax '#f 'let))
                                   (__tmp81545
                                    (let ((__tmp81547
                                           (let ((__tmp81554
                                                  (let ((__tmp81555
                                                         (let ((__tmp81556
                                                                (let ((__tmp81558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81557
                               (let ()
                                 (declare (not safe))
                                 (cons _L81082_ '()))))
                          (declare (not safe))
                          (cons __tmp81558 __tmp81557))))
                   (declare (not safe))
                   (cons __tmp81556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81110_
                                                          __tmp81555)))
                                                 (__tmp81548
                                                  (let ((__tmp81549
                                                         (let ((__tmp81550
                                                                (let ((__tmp81551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81553 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81552
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81082_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81553 __tmp81552))))
                          (declare (not safe))
                          (cons __tmp81551 '()))))
                   (declare (not safe))
                   (cons _L81138_ __tmp81550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81549 '()))))
                                             (declare (not safe))
                                             (cons __tmp81554 __tmp81548)))
                                          (__tmp81546
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81166_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81547 __tmp81546))))
                               (declare (not safe))
                               (cons __tmp81559 __tmp81545))))
                        (declare (not safe))
                        (cons __tmp81544 '()))))
                 (declare (not safe))
                 (cons __tmp81560 __tmp81543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81566
                                                        __tmp81542)))
                                               (__tmp81540
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81194_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81541 __tmp81540))))
                                    (declare (not safe))
                                    (cons __tmp81567 __tmp81539))))
                             (declare (not safe))
                             (cons __tmp81570 __tmp81538)))))
                     _g8118081191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8117881209_ _E80720_))))
                                              _g8115281163_))))
                                     (_g8115081213_
                                      (_recur80722_
                                       _L81029_
                                       _L81110_
                                       (_recur80722_
                                        _L81027_
                                        _L81138_
                                        _K80728_))))))
                               _g8112481135_))))
                      (_g8112281217_ (gx#genident 'tl)))))
                _g8109681107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8109481221_
                                                (gx#genident 'hd)))))
                                         _g8106881079_))))
                                (_g8106681225_ (gx#genident 'e)))))
                          _g8104181052_))))
                 (_g8103981229_ _tgt80727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8144081441_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80725_)
                                                           (if (gx#underscore?
                                                                _hd80725_)
                                                               _K80728_
                                                               (if (let ((__tmp81615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8075380755_)
                                    (gx#bound-identifier=?
                                     _g8075380755_
                                     _hd80725_))))
                             (declare (not safe))
                             (find __tmp81615 _kws80324_))
                           (let* ((_g8075980774_
                                   (lambda (_g8076080770_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8076080770_)))
                                  (_g8075880825_
                                   (lambda (_g8076080778_)
                                     (if (gx#stx-pair? _g8076080778_)
                                         (let ((_e8076580781_
                                                (gx#syntax-e _g8076080778_)))
                                           (let ((_hd8076480785_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8076580781_)))
                                                 (_tl8076380788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8076580781_))))
                                             (if (gx#stx-pair? _tl8076380788_)
                                                 (let ((_e8076880791_
                                                        (gx#syntax-e
                                                         _tl8076380788_)))
                                                   (let ((_hd8076780795_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8076880791_)))
                                                         (_tl8076680798_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8076880791_))))
                                                     (if (gx#stx-null?
                                                          _tl8076680798_)
                                                         ((lambda (_L80801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80803_)
                    (let ()
                      (let ((__tmp81614 (gx#datum->syntax '#f 'if))
                            (__tmp81597
                             (let ((__tmp81600
                                    (let ((__tmp81613
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81601
                                           (let ((__tmp81610
                                                  (let ((__tmp81612
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81611
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81612
                                                          __tmp81611)))
                                                 (__tmp81602
                                                  (let ((__tmp81603
                                                         (let ((__tmp81609
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81604
                        (let ((__tmp81605
                               (let ((__tmp81606
                                      (let ((__tmp81608
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81607
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80801_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81608 __tmp81607))))
                                 (declare (not safe))
                                 (cons __tmp81606 '()))))
                          (declare (not safe))
                          (cons _L80803_ __tmp81605))))
                   (declare (not safe))
                   (cons __tmp81609 __tmp81604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81603 '()))))
                                             (declare (not safe))
                                             (cons __tmp81610 __tmp81602))))
                                      (declare (not safe))
                                      (cons __tmp81613 __tmp81601)))
                                   (__tmp81598
                                    (let ((__tmp81599
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80720_ '()))))
                                      (declare (not safe))
                                      (cons _K80728_ __tmp81599))))
                               (declare (not safe))
                               (cons __tmp81600 __tmp81598))))
                        (declare (not safe))
                        (cons __tmp81614 __tmp81597))))
                  _hd8076780795_
                  _hd8076480785_)
                 (_g8075980774_ _g8076080778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8075980774_
                                                  _g8076080778_))))
                                         (_g8075980774_ _g8076080778_)))))
                             (_g8075880825_ (list _tgt80727_ _hd80725_)))
                           (let* ((_g8082980844_
                                   (lambda (_g8083080840_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8083080840_)))
                                  (_g8082880888_
                                   (lambda (_g8083080848_)
                                     (if (gx#stx-pair? _g8083080848_)
                                         (let ((_e8083580851_
                                                (gx#syntax-e _g8083080848_)))
                                           (let ((_hd8083480855_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8083580851_)))
                                                 (_tl8083380858_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8083580851_))))
                                             (if (gx#stx-pair? _tl8083380858_)
                                                 (let ((_e8083880861_
                                                        (gx#syntax-e
                                                         _tl8083380858_)))
                                                   (let ((_hd8083780865_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8083880861_)))
                                                         (_tl8083680868_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8083880861_))))
                                                     (if (gx#stx-null?
                                                          _tl8083680868_)
                                                         ((lambda (_L80871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80873_)
                    (let ()
                      (let ((__tmp81596 (gx#datum->syntax '#f 'let))
                            (__tmp81591
                             (let ((__tmp81593
                                    (let ((__tmp81594
                                           (let ((__tmp81595
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80873_ '()))))
                                             (declare (not safe))
                                             (cons _L80871_ __tmp81595))))
                                      (declare (not safe))
                                      (cons __tmp81594 '())))
                                   (__tmp81592
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80728_ '()))))
                               (declare (not safe))
                               (cons __tmp81593 __tmp81592))))
                        (declare (not safe))
                        (cons __tmp81596 __tmp81591))))
                  _hd8083780865_
                  _hd8083480855_)
                 (_g8082980844_ _g8083080848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8082980844_
                                                  _g8083080848_))))
                                         (_g8082980844_ _g8083080848_)))))
                             (_g8082880888_ (list _tgt80727_ _hd80725_)))))
                   (if (gx#stx-null? _hd80725_)
                       (let* ((_g8089280900_
                               (lambda (_g8089380896_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8089380896_)))
                              (_g8089180918_
                               (lambda (_g8089380904_)
                                 ((lambda (_L80907_)
                                    (let ()
                                      (let ((__tmp81590
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81584
                                             (let ((__tmp81587
                                                    (let ((__tmp81589
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81589 __tmp81588)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81585
                                                    (let ((__tmp81586
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80728_ __tmp81586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81587 __tmp81585))))
                                        (declare (not safe))
                                        (cons __tmp81590 __tmp81584))))
                                  _g8089380904_))))
                         (_g8089180918_ _tgt80727_))
                       (if (gx#stx-datum? _hd80725_)
                           (let* ((_g8092280941_
                                   (lambda (_g8092380937_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8092380937_)))
                                  (_g8092180999_
                                   (lambda (_g8092380945_)
                                     (if (gx#stx-pair? _g8092380945_)
                                         (let ((_e8092980948_
                                                (gx#syntax-e _g8092380945_)))
                                           (let ((_hd8092880952_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8092980948_)))
                                                 (_tl8092780955_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8092980948_))))
                                             (if (gx#stx-pair? _tl8092780955_)
                                                 (let ((_e8093280958_
                                                        (gx#syntax-e
                                                         _tl8092780955_)))
                                                   (let ((_hd8093180962_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8093280958_)))
                                                         (_tl8093080965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8093280958_))))
                                                     (if (gx#stx-pair?
                                                          _tl8093080965_)
                                                         (let ((_e8093580968_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8093080965_)))
                   (let ((_hd8093480972_
                          (let () (declare (not safe)) (##car _e8093580968_)))
                         (_tl8093380975_
                          (let () (declare (not safe)) (##cdr _e8093580968_))))
                     (if (gx#stx-null? _tl8093380975_)
                         ((lambda (_L80978_ _L80980_ _L80981_)
                            (let ()
                              (let ((__tmp81583 (gx#datum->syntax '#f 'if))
                                    (__tmp81571
                                     (let ((__tmp81574
                                            (let ((__tmp81575
                                                   (let ((__tmp81580
                                                          (let ((__tmp81582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81581
                         (let () (declare (not safe)) (cons _L80981_ '()))))
                    (declare (not safe))
                    (cons __tmp81582 __tmp81581)))
                 (__tmp81576
                  (let ((__tmp81577
                         (let ((__tmp81579 (gx#datum->syntax '#f 'quote))
                               (__tmp81578
                                (let ()
                                  (declare (not safe))
                                  (cons _L80980_ '()))))
                           (declare (not safe))
                           (cons __tmp81579 __tmp81578))))
                    (declare (not safe))
                    (cons __tmp81577 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81580
                                                           __tmp81576))))
                                              (declare (not safe))
                                              (cons _L80978_ __tmp81575)))
                                           (__tmp81572
                                            (let ((__tmp81573
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80720_ '()))))
                                              (declare (not safe))
                                              (cons _K80728_ __tmp81573))))
                                       (declare (not safe))
                                       (cons __tmp81574 __tmp81572))))
                                (declare (not safe))
                                (cons __tmp81583 __tmp81571))))
                          _hd8093480972_
                          _hd8093180962_
                          _hd8092880952_)
                         (_g8092280941_ _g8092380945_))))
                 (_g8092280941_ _g8092380945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8092280941_
                                                  _g8092380945_))))
                                         (_g8092280941_ _g8092380945_)))))
                             (_g8092180999_
                              (list _tgt80727_
                                    _hd80725_
                                    (let ((_e81003_ (gx#stx-e _hd80725_)))
                                      (if (or (keyword? _e81003_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e81003_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e81003_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80170_
                            _where80715_
                            _hd80725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8143581436_)
                                                    (let ((_e8073781017_
                                                           (gx#syntax-e
                                                            ___stx8143581436_)))
                                                      (let ((_tl8073581024_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8073781017_)))
                    (_hd8073681021_
                     (let () (declare (not safe)) (##car _e8073781017_))))
                (___kont8143881439_ _tl8073581024_ _hd8073681021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8144081441_)))))))
                                  (_recur80722_
                                   _hd80717_
                                   _tgt80322_
                                   (let ((__tmp81619
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81616
                                          (let ((__tmp81617
                                                 (let ((__tmp81618
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80720_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80719_
                                                         __tmp81618))))
                                            (declare (not safe))
                                            (cons _fender80718_ __tmp81617))))
                                     (declare (not safe))
                                     (cons __tmp81619 __tmp81616))))))
                             (_generate-clauses80330_
                              (lambda (_clauses80453_)
                                (let _lp80456_ ((_rest80459_ _clauses80453_)
                                                (_E80461_ (gx#genident 'E))
                                                (_r80462_ '()))
                                  (let* ((___stx8147181472_ _rest80459_)
                                         (_g8046580477_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8147181472_))))
                                    (let ((___kont8147481475_
                                           (lambda (_L80542_ _L80544_)
                                             (let* ((___stx8145181452_
                                                     _L80544_)
                                                    (_g8055680567_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8145181452_))))
                                               (let ((___kont8145481455_
                                                      (lambda (_L80696_)
                                                        (if (gx#stx-null?
                                                             _L80542_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80696_)
                             (let ((__tmp81628 (gx#stx-null? _L80696_)))
                               (declare (not safe))
                               (not __tmp81628)))
                        (let ((__tmp81620
                               (let ((__tmp81621
                                      (let ((__tmp81622
                                             (gx#stx-wrap-source
                                              (let ((__tmp81627
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81623
                                                     (let ((__tmp81624
                                                            (let ((__tmp81625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81626 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81626 _L80696_))))
                      (declare (not safe))
                      (cons __tmp81625 '()))))
               (declare (not safe))
               (cons '() __tmp81624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81627 __tmp81623))
                                              (gx#stx-source _L80544_))))
                                        (declare (not safe))
                                        (cons __tmp81622 '()))))
                                 (declare (not safe))
                                 (cons _E80461_ __tmp81621))))
                          (declare (not safe))
                          (cons __tmp81620 _r80462_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80170_
                         _L80544_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80170_
                     _L80544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145681457_
                                                      (lambda ()
                                                        (let* ((_g8057880586_
                                                                (lambda (_g8057980582_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8057980582_)))
                       (_g8057780675_
                        (lambda (_g8057980590_)
                          ((lambda (_L80593_)
                             (let ()
                               (let* ((_g8060980617_
                                       (lambda (_g8061080613_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8061080613_)))
                                      (_g8060880671_
                                       (lambda (_g8061080621_)
                                         ((lambda (_L80624_)
                                            (let ()
                                              (let* ((_g8063780645_
                                                      (lambda (_g8063880641_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8063880641_)))
                                                     (_g8063680667_
                                                      (lambda (_g8063880649_)
                                                        ((lambda (_L80652_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80456_
                                                                _L80542_
                                                                _L80593_
                                                                (let ((__tmp81629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81630
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80652_ '()))))
                                 (declare (not safe))
                                 (cons _E80461_ __tmp81630))))
                          (declare (not safe))
                          (cons __tmp81629 _r80462_))))))
                 _g8063880649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8063680667_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81633
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81631
                                                         (let ((__tmp81632
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80624_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81633
                                                          __tmp81631))
                                                  (gx#stx-source _L80544_))))))
                                          _g8061080621_))))
                                 (_g8060880671_
                                  (_generate-clause80327_
                                   _L80544_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80593_ '())))))))
                           _g8057980590_))))
                  (_g8057780675_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8145181452_)
                                                     (let ((_e8056180686_
                                                            (gx#syntax-e
                                                             ___stx8145181452_)))
                                                       (let ((_tl8055980693_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8056180686_)))
                     (_hd8056080690_
                      (let () (declare (not safe)) (##car _e8056180686_))))
                 (if (gx#identifier? _hd8056080690_)
                     (if (gx#free-identifier=? |gx[1]#_g81634_| _hd8056080690_)
                         (___kont8145481455_ _tl8055980693_)
                         (___kont8145681457_))
                     (___kont8145681457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145681457_))))))
                                          (___kont8147681477_
                                           (lambda ()
                                             (let* ((_g8048880496_
                                                     (lambda (_g8048980492_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8048980492_)))
                                                    (_g8048780521_
                                                     (lambda (_g8048980500_)
                                                       ((lambda (_L80503_)
                                                          (let ()
                                                            (let ((__tmp81635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81636
                                  (let ((__tmp81637
                                         (gx#stx-wrap-source
                                          (let ((__tmp81645
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81638
                                                 (let ((__tmp81639
                                                        (let ((__tmp81640
                                                               (let ((__tmp81644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81641
                              (let ((__tmp81642
                                     (let ((__tmp81643
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80503_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81643))))
                                (declare (not safe))
                                (cons '#f __tmp81642))))
                         (declare (not safe))
                         (cons __tmp81644 __tmp81641))))
                  (declare (not safe))
                  (cons __tmp81640 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81639))))
                                            (declare (not safe))
                                            (cons __tmp81645 __tmp81638))
                                          (gx#stx-source _stx80170_))))
                                    (declare (not safe))
                                    (cons __tmp81637 '()))))
                             (declare (not safe))
                             (cons _E80461_ __tmp81636))))
                      (declare (not safe))
                      (cons __tmp81635 _r80462_))))
                _g8048980500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8048780521_ _tgt80322_)))))
                                      (if (gx#stx-pair? ___stx8147181472_)
                                          (let ((_e8047180532_
                                                 (gx#syntax-e
                                                  ___stx8147181472_)))
                                            (let ((_tl8046980539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8047180532_)))
                                                  (_hd8047080536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8047180532_))))
                                              (___kont8147481475_
                                               _tl8046980539_
                                               _hd8047080536_)))
                                          (___kont8147681477_))))))))
                      (let* ((_bind80332_
                              (_generate-clauses80330_ _clauses80325_))
                             (_g8033580352_
                              (lambda (_g8033680348_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8033680348_)))
                             (_g8033480449_
                              (lambda (_g8033680356_)
                                (if (gx#stx-pair/null? _g8033680356_)
                                    (let ((_g81646_
                                           (gx#syntax-split-splice
                                            _g8033680356_
                                            '0)))
                                      (begin
                                        (let ((_g81647_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81646_)
                                                     (##vector-length _g81646_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81647_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81647_)))
                                        (let ((_target8033880359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81646_ 0)))
                                              (_tl8034080362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81646_ 1))))
                                          (if (gx#stx-null? _tl8034080362_)
                                              (letrec ((_loop8034180365_
                                                        (lambda (_hd8033980369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8034580372_)
                  (if (gx#stx-pair? _hd8033980369_)
                      (let ((_e8034280375_ (gx#syntax-e _hd8033980369_)))
                        (let ((_lp-hd8034380379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8034280375_)))
                              (_lp-tl8034480382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8034280375_))))
                          (_loop8034180365_
                           _lp-tl8034480382_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8034380379_ _bind-try8034580372_)))))
                      (let ((_bind-try8034680385_
                             (reverse _bind-try8034580372_)))
                        ((lambda (_L80389_)
                           (let ()
                             (let* ((_g8040780415_
                                     (lambda (_g8040880411_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8040880411_)))
                                    (_g8040680445_
                                     (lambda (_g8040880419_)
                                       ((lambda (_L80422_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81653
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81648
                                                     (let ((__tmp81651
                                                            (let ((__tmp81652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8043680439_ _g8043780442_)
                             (let ()
                               (declare (not safe))
                               (cons _g8043680439_ _g8043780442_)))))
                      (declare (not safe))
                      (foldr1 __tmp81652 '() _L80389_)))
                   (__tmp81649
                    (let ((__tmp81650
                           (let () (declare (not safe)) (cons _L80422_ '()))))
                      (declare (not safe))
                      (cons __tmp81650 '()))))
               (declare (not safe))
               (cons __tmp81651 __tmp81649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81653
                                                      __tmp81648)))))
                                        _g8040880419_))))
                               (_g8040680445_ (car (last _bind80332_))))))
                         _bind-try8034680385_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8034180365_
                                                 _target8033880359_
                                                 '()))
                                              (_g8033580352_ _g8033680356_)))))
                                    (_g8033580352_ _g8033680356_)))))
                        (_g8033480449_ _bind80332_))))))
          (let* ((_g8017680195_
                  (lambda (_g8017780191_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8017780191_)))
                 (_g8017580318_
                  (lambda (_g8017780199_)
                    (if (gx#stx-pair? _g8017780199_)
                        (let ((_e8018380202_ (gx#syntax-e _g8017780199_)))
                          (let ((_hd8018280206_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8018380202_)))
                                (_tl8018180209_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8018380202_))))
                            (if (gx#stx-pair? _tl8018180209_)
                                (let ((_e8018680212_
                                       (gx#syntax-e _tl8018180209_)))
                                  (let ((_hd8018580216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8018680212_)))
                                        (_tl8018480219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8018680212_))))
                                    (if (gx#stx-pair? _tl8018480219_)
                                        (let ((_e8018980222_
                                               (gx#syntax-e _tl8018480219_)))
                                          (let ((_hd8018880226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8018980222_)))
                                                (_tl8018780229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8018980222_))))
                                            ((lambda (_L80232_
                                                      _L80234_
                                                      _L80235_)
                                               (if (and (gx#identifier-list?
                                                         _L80234_)
                                                        (gx#stx-list?
                                                         _L80232_))
                                                   (let* ((_g8025380261_
                                                           (lambda (_g8025480257_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8025480257_)))
                                                          (_g8025280314_
                                                           (lambda (_g8025480265_)
                                                             ((lambda (_L80268_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8028080288_
                                  (lambda (_g8028180284_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8028180284_)))
                                 (_g8027980310_
                                  (lambda (_g8028180292_)
                                    ((lambda (_L80295_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81659
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81654
                                                  (let ((__tmp81656
                                                         (let ((__tmp81657
                                                                (let ((__tmp81658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80235_ '()))))
                          (declare (not safe))
                          (cons _L80268_ __tmp81658))))
                   (declare (not safe))
                   (cons __tmp81657 '())))
                (__tmp81655 (let () (declare (not safe)) (cons _L80295_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81656
                                                          __tmp81655))))
                                             (declare (not safe))
                                             (cons __tmp81659 __tmp81654)))))
                                     _g8028180292_))))
                            (_g8027980310_
                             (_generate80173_
                              _L80268_
                              (gx#syntax->list _L80234_)
                              _L80232_)))))
                      _g8025480265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8025280314_
                                                      (gx#genident 'e)))
                                                   (_g8017680195_
                                                    _g8017780199_)))
                                             _tl8018780229_
                                             _hd8018880226_
                                             _hd8018580216_)))
                                        (_g8017680195_ _g8017780199_))))
                                (_g8017680195_ _g8017780199_))))
                        (_g8017680195_ _g8017780199_)))))
            (_g8017580318_ _stx80170_)))))))
