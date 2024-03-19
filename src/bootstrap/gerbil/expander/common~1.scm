(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81490_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81492_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81494_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81499_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81502_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81507_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81510_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81515_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81518_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81523_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81526_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81633_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81485
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
           __obj81485
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81489 |gx[1]#_g81490_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81489
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81491 |gx[1]#_g81492_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81491
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81493 |gx[1]#_g81494_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81493
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81495
               (let ((__tmp81500
                      (let ((__tmp81501 |gx[1]#_g81502_|))
                        (declare (not safe))
                        (cons 'e __tmp81501)))
                     (__tmp81496
                      (let ((__tmp81497
                             (let ((__tmp81498 |gx[1]#_g81499_|))
                               (declare (not safe))
                               (cons 'source __tmp81498))))
                        (declare (not safe))
                        (cons __tmp81497 '()))))
                 (declare (not safe))
                 (cons __tmp81500 __tmp81496))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81495
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81503
               (let ((__tmp81508
                      (let ((__tmp81509 |gx[1]#_g81510_|))
                        (declare (not safe))
                        (cons 'e __tmp81509)))
                     (__tmp81504
                      (let ((__tmp81505
                             (let ((__tmp81506 |gx[1]#_g81507_|))
                               (declare (not safe))
                               (cons 'source __tmp81506))))
                        (declare (not safe))
                        (cons __tmp81505 '()))))
                 (declare (not safe))
                 (cons __tmp81508 __tmp81504))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81503
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81511
               (let ((__tmp81516
                      (let ((__tmp81517 |gx[1]#_g81518_|))
                        (declare (not safe))
                        (cons 'e __tmp81517)))
                     (__tmp81512
                      (let ((__tmp81513
                             (let ((__tmp81514 |gx[1]#_g81515_|))
                               (declare (not safe))
                               (cons 'source __tmp81514))))
                        (declare (not safe))
                        (cons __tmp81513 '()))))
                 (declare (not safe))
                 (cons __tmp81516 __tmp81512))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81511
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81519
               (let ((__tmp81524
                      (let ((__tmp81525 |gx[1]#_g81526_|))
                        (declare (not safe))
                        (cons 'e __tmp81525)))
                     (__tmp81520
                      (let ((__tmp81521
                             (let ((__tmp81522 |gx[1]#_g81523_|))
                               (declare (not safe))
                               (cons 'source __tmp81522))))
                        (declare (not safe))
                        (cons __tmp81521 '()))))
                 (declare (not safe))
                 (cons __tmp81524 __tmp81520))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81485
           __tmp81519
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81485))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80105_)
        (let* ((_g8010980123_
                (lambda (_g8011080119_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8011080119_)))
               (_g8010880165_
                (lambda (_g8011080127_)
                  (if (gx#stx-pair? _g8011080127_)
                      (let ((_e8011480130_ (gx#syntax-e _g8011080127_)))
                        (let ((_hd8011380134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8011480130_)))
                              (_tl8011280137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8011480130_))))
                          (if (gx#stx-pair? _tl8011280137_)
                              (let ((_e8011780140_
                                     (gx#syntax-e _tl8011280137_)))
                                (let ((_hd8011680144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8011780140_)))
                                      (_tl8011580147_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8011780140_))))
                                  (if (gx#stx-null? _tl8011580147_)
                                      ((lambda (_L80150_)
                                         (let ((__tmp81536
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81527
                                                (let ((__tmp81533
                                                       (let ((__tmp81535
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81534
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80150_ '()))))
                 (declare (not safe))
                 (cons __tmp81535 __tmp81534)))
              (__tmp81528
               (let ((__tmp81529
                      (let ((__tmp81532 (gx#datum->syntax '#f 'error))
                            (__tmp81530
                             (let ((__tmp81531
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80150_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81531))))
                        (declare (not safe))
                        (cons __tmp81532 __tmp81530))))
                 (declare (not safe))
                 (cons __tmp81529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81533
                                                        __tmp81528))))
                                           (declare (not safe))
                                           (cons __tmp81536 __tmp81527)))
                                       _hd8011680144_)
                                      (_g8010980123_ _g8011080127_))))
                              (_g8010980123_ _g8011080127_))))
                      (_g8010980123_ _g8011080127_)))))
          (_g8010880165_ _$stx80105_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80169_)
        (letrec ((_generate80172_
                  (lambda (_tgt80321_ _kws80323_ _clauses80324_)
                    (letrec ((_generate-clause80326_
                              (lambda (_hd81236_ _E81238_)
                                (let* ((___stx8138881389_ _hd81236_)
                                       (_g8124281269_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8138881389_))))
                                  (let ((___kont8139181392_
                                         (lambda (_L81365_ _L81367_)
                                           (_generate180328_
                                            _hd81236_
                                            _L81367_
                                            '#t
                                            _L81365_
                                            _E81238_)))
                                        (___kont8139381394_
                                         (lambda (_L81317_ _L81319_ _L81320_)
                                           (_generate180328_
                                            _hd81236_
                                            _L81320_
                                            _L81319_
                                            _L81317_
                                            _E81238_)))
                                        (___kont8139581396_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80169_
                                            _hd81236_))))
                                    (if (gx#stx-pair? ___stx8138881389_)
                                        (let ((_e8124881345_
                                               (gx#syntax-e
                                                ___stx8138881389_)))
                                          (let ((_tl8124681352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8124881345_)))
                                                (_hd8124781349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8124881345_))))
                                            (if (gx#stx-pair? _tl8124681352_)
                                                (let ((_e8125181355_
                                                       (gx#syntax-e
                                                        _tl8124681352_)))
                                                  (let ((_tl8124981362_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8125181355_)))
                                                        (_hd8125081359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8125181355_))))
                                                    (if (gx#stx-null?
                                                         _tl8124981362_)
                                                        (___kont8139181392_
                                                         _hd8125081359_
                                                         _hd8124781349_)
                                                        (if (gx#stx-pair?
                                                             _tl8124981362_)
                                                            (let ((_e8126381307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8124981362_)))
                      (let ((_tl8126181314_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8126381307_)))
                            (_hd8126281311_
                             (let ()
                               (declare (not safe))
                               (##car _e8126381307_))))
                        (if (gx#stx-null? _tl8126181314_)
                            (___kont8139381394_
                             _hd8126281311_
                             _hd8125081359_
                             _hd8124781349_)
                            (___kont8139581396_))))
                    (___kont8139581396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8139581396_))))
                                        (___kont8139581396_))))))
                             (_generate180328_
                              (lambda (_where80714_
                                       _hd80716_
                                       _fender80717_
                                       _body80718_
                                       _E80719_)
                                (letrec ((_recur80721_
                                          (lambda (_hd80724_
                                                   _tgt80726_
                                                   _K80727_)
                                            (let* ((___stx8143481435_
                                                    _hd80724_)
                                                   (_g8073080742_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8143481435_))))
                                              (let ((___kont8143781438_
                                                     (lambda (_L81026_
                                                              _L81028_)
                                                       (let* ((_g8103981047_
                                                               (lambda (_g8104081043_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8104081043_)))
                      (_g8103881228_
                       (lambda (_g8104081051_)
                         ((lambda (_L81054_)
                            (let ()
                              (let* ((_g8106681074_
                                      (lambda (_g8106781070_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8106781070_)))
                                     (_g8106581224_
                                      (lambda (_g8106781078_)
                                        ((lambda (_L81081_)
                                           (let ()
                                             (let* ((_g8109481102_
                                                     (lambda (_g8109581098_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8109581098_)))
                                                    (_g8109381220_
                                                     (lambda (_g8109581106_)
                                                       ((lambda (_L81109_)
                                                          (let ()
                                                            (let* ((_g8112281130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8112381126_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8112381126_)))
                           (_g8112181216_
                            (lambda (_g8112381134_)
                              ((lambda (_L81137_)
                                 (let ()
                                   (let* ((_g8115081158_
                                           (lambda (_g8115181154_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8115181154_)))
                                          (_g8114981212_
                                           (lambda (_g8115181162_)
                                             ((lambda (_L81165_)
                                                (let ()
                                                  (let* ((_g8117881186_
                                                          (lambda (_g8117981182_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8117981182_)))
                                                         (_g8117781208_
                                                          (lambda (_g8117981190_)
                                                            ((lambda (_L81193_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81569 (gx#datum->syntax '#f 'if))
                                 (__tmp81537
                                  (let ((__tmp81566
                                         (let ((__tmp81568
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81567
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81054_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81568 __tmp81567)))
                                        (__tmp81538
                                         (let ((__tmp81540
                                                (let ((__tmp81565
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81541
                                                       (let ((__tmp81559
                                                              (let ((__tmp81560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81561
                                    (let ((__tmp81562
                                           (let ((__tmp81564
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81563
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81054_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81564 __tmp81563))))
                                      (declare (not safe))
                                      (cons __tmp81562 '()))))
                               (declare (not safe))
                               (cons _L81081_ __tmp81561))))
                        (declare (not safe))
                        (cons __tmp81560 '())))
                     (__tmp81542
                      (let ((__tmp81543
                             (let ((__tmp81558 (gx#datum->syntax '#f 'let))
                                   (__tmp81544
                                    (let ((__tmp81546
                                           (let ((__tmp81553
                                                  (let ((__tmp81554
                                                         (let ((__tmp81555
                                                                (let ((__tmp81557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81556
                               (let ()
                                 (declare (not safe))
                                 (cons _L81081_ '()))))
                          (declare (not safe))
                          (cons __tmp81557 __tmp81556))))
                   (declare (not safe))
                   (cons __tmp81555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81109_
                                                          __tmp81554)))
                                                 (__tmp81547
                                                  (let ((__tmp81548
                                                         (let ((__tmp81549
                                                                (let ((__tmp81550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81552 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81551
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81081_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81552 __tmp81551))))
                          (declare (not safe))
                          (cons __tmp81550 '()))))
                   (declare (not safe))
                   (cons _L81137_ __tmp81549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81548 '()))))
                                             (declare (not safe))
                                             (cons __tmp81553 __tmp81547)))
                                          (__tmp81545
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81165_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81546 __tmp81545))))
                               (declare (not safe))
                               (cons __tmp81558 __tmp81544))))
                        (declare (not safe))
                        (cons __tmp81543 '()))))
                 (declare (not safe))
                 (cons __tmp81559 __tmp81542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81565
                                                        __tmp81541)))
                                               (__tmp81539
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81193_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81540 __tmp81539))))
                                    (declare (not safe))
                                    (cons __tmp81566 __tmp81538))))
                             (declare (not safe))
                             (cons __tmp81569 __tmp81537)))))
                     _g8117981190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8117781208_ _E80719_))))
                                              _g8115181162_))))
                                     (_g8114981212_
                                      (_recur80721_
                                       _L81028_
                                       _L81109_
                                       (_recur80721_
                                        _L81026_
                                        _L81137_
                                        _K80727_))))))
                               _g8112381134_))))
                      (_g8112181216_ (gx#genident 'tl)))))
                _g8109581106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8109381220_
                                                (gx#genident 'hd)))))
                                         _g8106781078_))))
                                (_g8106581224_ (gx#genident 'e)))))
                          _g8104081051_))))
                 (_g8103881228_ _tgt80726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143981440_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80724_)
                                                           (if (gx#underscore?
                                                                _hd80724_)
                                                               _K80727_
                                                               (if (let ((__tmp81614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8075280754_)
                                    (gx#bound-identifier=?
                                     _g8075280754_
                                     _hd80724_))))
                             (declare (not safe))
                             (find __tmp81614 _kws80323_))
                           (let* ((_g8075880773_
                                   (lambda (_g8075980769_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8075980769_)))
                                  (_g8075780824_
                                   (lambda (_g8075980777_)
                                     (if (gx#stx-pair? _g8075980777_)
                                         (let ((_e8076480780_
                                                (gx#syntax-e _g8075980777_)))
                                           (let ((_hd8076380784_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8076480780_)))
                                                 (_tl8076280787_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8076480780_))))
                                             (if (gx#stx-pair? _tl8076280787_)
                                                 (let ((_e8076780790_
                                                        (gx#syntax-e
                                                         _tl8076280787_)))
                                                   (let ((_hd8076680794_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8076780790_)))
                                                         (_tl8076580797_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8076780790_))))
                                                     (if (gx#stx-null?
                                                          _tl8076580797_)
                                                         ((lambda (_L80800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80802_)
                    (let ()
                      (let ((__tmp81613 (gx#datum->syntax '#f 'if))
                            (__tmp81596
                             (let ((__tmp81599
                                    (let ((__tmp81612
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81600
                                           (let ((__tmp81609
                                                  (let ((__tmp81611
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81610
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81611
                                                          __tmp81610)))
                                                 (__tmp81601
                                                  (let ((__tmp81602
                                                         (let ((__tmp81608
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81603
                        (let ((__tmp81604
                               (let ((__tmp81605
                                      (let ((__tmp81607
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81606
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80800_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81607 __tmp81606))))
                                 (declare (not safe))
                                 (cons __tmp81605 '()))))
                          (declare (not safe))
                          (cons _L80802_ __tmp81604))))
                   (declare (not safe))
                   (cons __tmp81608 __tmp81603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81602 '()))))
                                             (declare (not safe))
                                             (cons __tmp81609 __tmp81601))))
                                      (declare (not safe))
                                      (cons __tmp81612 __tmp81600)))
                                   (__tmp81597
                                    (let ((__tmp81598
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80719_ '()))))
                                      (declare (not safe))
                                      (cons _K80727_ __tmp81598))))
                               (declare (not safe))
                               (cons __tmp81599 __tmp81597))))
                        (declare (not safe))
                        (cons __tmp81613 __tmp81596))))
                  _hd8076680794_
                  _hd8076380784_)
                 (_g8075880773_ _g8075980777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8075880773_
                                                  _g8075980777_))))
                                         (_g8075880773_ _g8075980777_)))))
                             (_g8075780824_ (list _tgt80726_ _hd80724_)))
                           (let* ((_g8082880843_
                                   (lambda (_g8082980839_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8082980839_)))
                                  (_g8082780887_
                                   (lambda (_g8082980847_)
                                     (if (gx#stx-pair? _g8082980847_)
                                         (let ((_e8083480850_
                                                (gx#syntax-e _g8082980847_)))
                                           (let ((_hd8083380854_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8083480850_)))
                                                 (_tl8083280857_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8083480850_))))
                                             (if (gx#stx-pair? _tl8083280857_)
                                                 (let ((_e8083780860_
                                                        (gx#syntax-e
                                                         _tl8083280857_)))
                                                   (let ((_hd8083680864_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8083780860_)))
                                                         (_tl8083580867_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8083780860_))))
                                                     (if (gx#stx-null?
                                                          _tl8083580867_)
                                                         ((lambda (_L80870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80872_)
                    (let ()
                      (let ((__tmp81595 (gx#datum->syntax '#f 'let))
                            (__tmp81590
                             (let ((__tmp81592
                                    (let ((__tmp81593
                                           (let ((__tmp81594
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80872_ '()))))
                                             (declare (not safe))
                                             (cons _L80870_ __tmp81594))))
                                      (declare (not safe))
                                      (cons __tmp81593 '())))
                                   (__tmp81591
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80727_ '()))))
                               (declare (not safe))
                               (cons __tmp81592 __tmp81591))))
                        (declare (not safe))
                        (cons __tmp81595 __tmp81590))))
                  _hd8083680864_
                  _hd8083380854_)
                 (_g8082880843_ _g8082980847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8082880843_
                                                  _g8082980847_))))
                                         (_g8082880843_ _g8082980847_)))))
                             (_g8082780887_ (list _tgt80726_ _hd80724_)))))
                   (if (gx#stx-null? _hd80724_)
                       (let* ((_g8089180899_
                               (lambda (_g8089280895_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8089280895_)))
                              (_g8089080917_
                               (lambda (_g8089280903_)
                                 ((lambda (_L80906_)
                                    (let ()
                                      (let ((__tmp81589
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81583
                                             (let ((__tmp81586
                                                    (let ((__tmp81588
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81587
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81588 __tmp81587)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81584
                                                    (let ((__tmp81585
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80727_ __tmp81585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81586 __tmp81584))))
                                        (declare (not safe))
                                        (cons __tmp81589 __tmp81583))))
                                  _g8089280903_))))
                         (_g8089080917_ _tgt80726_))
                       (if (gx#stx-datum? _hd80724_)
                           (let* ((_g8092180940_
                                   (lambda (_g8092280936_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8092280936_)))
                                  (_g8092080998_
                                   (lambda (_g8092280944_)
                                     (if (gx#stx-pair? _g8092280944_)
                                         (let ((_e8092880947_
                                                (gx#syntax-e _g8092280944_)))
                                           (let ((_hd8092780951_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8092880947_)))
                                                 (_tl8092680954_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8092880947_))))
                                             (if (gx#stx-pair? _tl8092680954_)
                                                 (let ((_e8093180957_
                                                        (gx#syntax-e
                                                         _tl8092680954_)))
                                                   (let ((_hd8093080961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8093180957_)))
                                                         (_tl8092980964_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8093180957_))))
                                                     (if (gx#stx-pair?
                                                          _tl8092980964_)
                                                         (let ((_e8093480967_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8092980964_)))
                   (let ((_hd8093380971_
                          (let () (declare (not safe)) (##car _e8093480967_)))
                         (_tl8093280974_
                          (let () (declare (not safe)) (##cdr _e8093480967_))))
                     (if (gx#stx-null? _tl8093280974_)
                         ((lambda (_L80977_ _L80979_ _L80980_)
                            (let ()
                              (let ((__tmp81582 (gx#datum->syntax '#f 'if))
                                    (__tmp81570
                                     (let ((__tmp81573
                                            (let ((__tmp81574
                                                   (let ((__tmp81579
                                                          (let ((__tmp81581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81580
                         (let () (declare (not safe)) (cons _L80980_ '()))))
                    (declare (not safe))
                    (cons __tmp81581 __tmp81580)))
                 (__tmp81575
                  (let ((__tmp81576
                         (let ((__tmp81578 (gx#datum->syntax '#f 'quote))
                               (__tmp81577
                                (let ()
                                  (declare (not safe))
                                  (cons _L80979_ '()))))
                           (declare (not safe))
                           (cons __tmp81578 __tmp81577))))
                    (declare (not safe))
                    (cons __tmp81576 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81579
                                                           __tmp81575))))
                                              (declare (not safe))
                                              (cons _L80977_ __tmp81574)))
                                           (__tmp81571
                                            (let ((__tmp81572
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80719_ '()))))
                                              (declare (not safe))
                                              (cons _K80727_ __tmp81572))))
                                       (declare (not safe))
                                       (cons __tmp81573 __tmp81571))))
                                (declare (not safe))
                                (cons __tmp81582 __tmp81570))))
                          _hd8093380971_
                          _hd8093080961_
                          _hd8092780951_)
                         (_g8092180940_ _g8092280944_))))
                 (_g8092180940_ _g8092280944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8092180940_
                                                  _g8092280944_))))
                                         (_g8092180940_ _g8092280944_)))))
                             (_g8092080998_
                              (list _tgt80726_
                                    _hd80724_
                                    (let ((_e81002_ (gx#stx-e _hd80724_)))
                                      (if (or (keyword? _e81002_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e81002_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e81002_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80169_
                            _where80714_
                            _hd80724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8143481435_)
                                                    (let ((_e8073681016_
                                                           (gx#syntax-e
                                                            ___stx8143481435_)))
                                                      (let ((_tl8073481023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8073681016_)))
                    (_hd8073581020_
                     (let () (declare (not safe)) (##car _e8073681016_))))
                (___kont8143781438_ _tl8073481023_ _hd8073581020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8143981440_)))))))
                                  (_recur80721_
                                   _hd80716_
                                   _tgt80321_
                                   (let ((__tmp81618
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81615
                                          (let ((__tmp81616
                                                 (let ((__tmp81617
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80719_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80718_
                                                         __tmp81617))))
                                            (declare (not safe))
                                            (cons _fender80717_ __tmp81616))))
                                     (declare (not safe))
                                     (cons __tmp81618 __tmp81615))))))
                             (_generate-clauses80329_
                              (lambda (_clauses80452_)
                                (let _lp80455_ ((_rest80458_ _clauses80452_)
                                                (_E80460_ (gx#genident 'E))
                                                (_r80461_ '()))
                                  (let* ((___stx8147081471_ _rest80458_)
                                         (_g8046480476_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8147081471_))))
                                    (let ((___kont8147381474_
                                           (lambda (_L80541_ _L80543_)
                                             (let* ((___stx8145081451_
                                                     _L80543_)
                                                    (_g8055580566_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8145081451_))))
                                               (let ((___kont8145381454_
                                                      (lambda (_L80695_)
                                                        (if (gx#stx-null?
                                                             _L80541_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80695_)
                             (let ((__tmp81627 (gx#stx-null? _L80695_)))
                               (declare (not safe))
                               (not __tmp81627)))
                        (let ((__tmp81619
                               (let ((__tmp81620
                                      (let ((__tmp81621
                                             (gx#stx-wrap-source
                                              (let ((__tmp81626
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81622
                                                     (let ((__tmp81623
                                                            (let ((__tmp81624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81625 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81625 _L80695_))))
                      (declare (not safe))
                      (cons __tmp81624 '()))))
               (declare (not safe))
               (cons '() __tmp81623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81626 __tmp81622))
                                              (gx#stx-source _L80543_))))
                                        (declare (not safe))
                                        (cons __tmp81621 '()))))
                                 (declare (not safe))
                                 (cons _E80460_ __tmp81620))))
                          (declare (not safe))
                          (cons __tmp81619 _r80461_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80169_
                         _L80543_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80169_
                     _L80543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145581456_
                                                      (lambda ()
                                                        (let* ((_g8057780585_
                                                                (lambda (_g8057880581_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8057880581_)))
                       (_g8057680674_
                        (lambda (_g8057880589_)
                          ((lambda (_L80592_)
                             (let ()
                               (let* ((_g8060880616_
                                       (lambda (_g8060980612_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8060980612_)))
                                      (_g8060780670_
                                       (lambda (_g8060980620_)
                                         ((lambda (_L80623_)
                                            (let ()
                                              (let* ((_g8063680644_
                                                      (lambda (_g8063780640_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8063780640_)))
                                                     (_g8063580666_
                                                      (lambda (_g8063780648_)
                                                        ((lambda (_L80651_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80455_
                                                                _L80541_
                                                                _L80592_
                                                                (let ((__tmp81628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81629
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80651_ '()))))
                                 (declare (not safe))
                                 (cons _E80460_ __tmp81629))))
                          (declare (not safe))
                          (cons __tmp81628 _r80461_))))))
                 _g8063780648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8063580666_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81632
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81630
                                                         (let ((__tmp81631
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80623_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81632
                                                          __tmp81630))
                                                  (gx#stx-source _L80543_))))))
                                          _g8060980620_))))
                                 (_g8060780670_
                                  (_generate-clause80326_
                                   _L80543_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80592_ '())))))))
                           _g8057880589_))))
                  (_g8057680674_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8145081451_)
                                                     (let ((_e8056080685_
                                                            (gx#syntax-e
                                                             ___stx8145081451_)))
                                                       (let ((_tl8055880692_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8056080685_)))
                     (_hd8055980689_
                      (let () (declare (not safe)) (##car _e8056080685_))))
                 (if (gx#identifier? _hd8055980689_)
                     (if (gx#free-identifier=? |gx[1]#_g81633_| _hd8055980689_)
                         (___kont8145381454_ _tl8055880692_)
                         (___kont8145581456_))
                     (___kont8145581456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8145581456_))))))
                                          (___kont8147581476_
                                           (lambda ()
                                             (let* ((_g8048780495_
                                                     (lambda (_g8048880491_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8048880491_)))
                                                    (_g8048680520_
                                                     (lambda (_g8048880499_)
                                                       ((lambda (_L80502_)
                                                          (let ()
                                                            (let ((__tmp81634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81635
                                  (let ((__tmp81636
                                         (gx#stx-wrap-source
                                          (let ((__tmp81644
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81637
                                                 (let ((__tmp81638
                                                        (let ((__tmp81639
                                                               (let ((__tmp81643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81640
                              (let ((__tmp81641
                                     (let ((__tmp81642
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80502_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81642))))
                                (declare (not safe))
                                (cons '#f __tmp81641))))
                         (declare (not safe))
                         (cons __tmp81643 __tmp81640))))
                  (declare (not safe))
                  (cons __tmp81639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81638))))
                                            (declare (not safe))
                                            (cons __tmp81644 __tmp81637))
                                          (gx#stx-source _stx80169_))))
                                    (declare (not safe))
                                    (cons __tmp81636 '()))))
                             (declare (not safe))
                             (cons _E80460_ __tmp81635))))
                      (declare (not safe))
                      (cons __tmp81634 _r80461_))))
                _g8048880499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8048680520_ _tgt80321_)))))
                                      (if (gx#stx-pair? ___stx8147081471_)
                                          (let ((_e8047080531_
                                                 (gx#syntax-e
                                                  ___stx8147081471_)))
                                            (let ((_tl8046880538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8047080531_)))
                                                  (_hd8046980535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8047080531_))))
                                              (___kont8147381474_
                                               _tl8046880538_
                                               _hd8046980535_)))
                                          (___kont8147581476_))))))))
                      (let* ((_bind80331_
                              (_generate-clauses80329_ _clauses80324_))
                             (_g8033480351_
                              (lambda (_g8033580347_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8033580347_)))
                             (_g8033380448_
                              (lambda (_g8033580355_)
                                (if (gx#stx-pair/null? _g8033580355_)
                                    (let ((_g81645_
                                           (gx#syntax-split-splice
                                            _g8033580355_
                                            '0)))
                                      (begin
                                        (let ((_g81646_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81645_)
                                                     (##vector-length _g81645_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81646_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81646_)))
                                        (let ((_target8033780358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81645_ 0)))
                                              (_tl8033980361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81645_ 1))))
                                          (if (gx#stx-null? _tl8033980361_)
                                              (letrec ((_loop8034080364_
                                                        (lambda (_hd8033880368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8034480371_)
                  (if (gx#stx-pair? _hd8033880368_)
                      (let ((_e8034180374_ (gx#syntax-e _hd8033880368_)))
                        (let ((_lp-hd8034280378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8034180374_)))
                              (_lp-tl8034380381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8034180374_))))
                          (_loop8034080364_
                           _lp-tl8034380381_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8034280378_ _bind-try8034480371_)))))
                      (let ((_bind-try8034580384_
                             (reverse _bind-try8034480371_)))
                        ((lambda (_L80388_)
                           (let ()
                             (let* ((_g8040680414_
                                     (lambda (_g8040780410_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8040780410_)))
                                    (_g8040580444_
                                     (lambda (_g8040780418_)
                                       ((lambda (_L80421_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81652
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81647
                                                     (let ((__tmp81650
                                                            (let ((__tmp81651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8043580438_ _g8043680441_)
                             (let ()
                               (declare (not safe))
                               (cons _g8043580438_ _g8043680441_)))))
                      (declare (not safe))
                      (foldr1 __tmp81651 '() _L80388_)))
                   (__tmp81648
                    (let ((__tmp81649
                           (let () (declare (not safe)) (cons _L80421_ '()))))
                      (declare (not safe))
                      (cons __tmp81649 '()))))
               (declare (not safe))
               (cons __tmp81650 __tmp81648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81652
                                                      __tmp81647)))))
                                        _g8040780418_))))
                               (_g8040580444_ (car (last _bind80331_))))))
                         _bind-try8034580384_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8034080364_
                                                 _target8033780358_
                                                 '()))
                                              (_g8033480351_ _g8033580355_)))))
                                    (_g8033480351_ _g8033580355_)))))
                        (_g8033380448_ _bind80331_))))))
          (let* ((_g8017580194_
                  (lambda (_g8017680190_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8017680190_)))
                 (_g8017480317_
                  (lambda (_g8017680198_)
                    (if (gx#stx-pair? _g8017680198_)
                        (let ((_e8018280201_ (gx#syntax-e _g8017680198_)))
                          (let ((_hd8018180205_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8018280201_)))
                                (_tl8018080208_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8018280201_))))
                            (if (gx#stx-pair? _tl8018080208_)
                                (let ((_e8018580211_
                                       (gx#syntax-e _tl8018080208_)))
                                  (let ((_hd8018480215_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8018580211_)))
                                        (_tl8018380218_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8018580211_))))
                                    (if (gx#stx-pair? _tl8018380218_)
                                        (let ((_e8018880221_
                                               (gx#syntax-e _tl8018380218_)))
                                          (let ((_hd8018780225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8018880221_)))
                                                (_tl8018680228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8018880221_))))
                                            ((lambda (_L80231_
                                                      _L80233_
                                                      _L80234_)
                                               (if (and (gx#identifier-list?
                                                         _L80233_)
                                                        (gx#stx-list?
                                                         _L80231_))
                                                   (let* ((_g8025280260_
                                                           (lambda (_g8025380256_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8025380256_)))
                                                          (_g8025180313_
                                                           (lambda (_g8025380264_)
                                                             ((lambda (_L80267_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8027980287_
                                  (lambda (_g8028080283_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8028080283_)))
                                 (_g8027880309_
                                  (lambda (_g8028080291_)
                                    ((lambda (_L80294_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81658
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81653
                                                  (let ((__tmp81655
                                                         (let ((__tmp81656
                                                                (let ((__tmp81657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80234_ '()))))
                          (declare (not safe))
                          (cons _L80267_ __tmp81657))))
                   (declare (not safe))
                   (cons __tmp81656 '())))
                (__tmp81654 (let () (declare (not safe)) (cons _L80294_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81655
                                                          __tmp81654))))
                                             (declare (not safe))
                                             (cons __tmp81658 __tmp81653)))))
                                     _g8028080291_))))
                            (_g8027880309_
                             (_generate80172_
                              _L80267_
                              (gx#syntax->list _L80233_)
                              _L80231_)))))
                      _g8025380264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8025180313_
                                                      (gx#genident 'e)))
                                                   (_g8017580194_
                                                    _g8017680198_)))
                                             _tl8018680228_
                                             _hd8018780225_
                                             _hd8018480215_)))
                                        (_g8017580194_ _g8017680198_))))
                                (_g8017580194_ _g8017680198_))))
                        (_g8017580194_ _g8017680198_)))))
            (_g8017480317_ _stx80169_)))))))
