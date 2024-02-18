(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g149536_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149538_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149540_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149545_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149548_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149553_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149556_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149561_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149564_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149569_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149572_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149679_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj149531
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
           __obj149531
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149535 |gx[1]#_g149536_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149535
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149537 |gx[1]#_g149538_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149537
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149539 |gx[1]#_g149540_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149539
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149541
               (let ((__tmp149546
                      (let ((__tmp149547 |gx[1]#_g149548_|))
                        (declare (not safe))
                        (cons 'e __tmp149547)))
                     (__tmp149542
                      (let ((__tmp149543
                             (let ((__tmp149544 |gx[1]#_g149545_|))
                               (declare (not safe))
                               (cons 'source __tmp149544))))
                        (declare (not safe))
                        (cons __tmp149543 '()))))
                 (declare (not safe))
                 (cons __tmp149546 __tmp149542))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149541
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149549
               (let ((__tmp149554
                      (let ((__tmp149555 |gx[1]#_g149556_|))
                        (declare (not safe))
                        (cons 'e __tmp149555)))
                     (__tmp149550
                      (let ((__tmp149551
                             (let ((__tmp149552 |gx[1]#_g149553_|))
                               (declare (not safe))
                               (cons 'source __tmp149552))))
                        (declare (not safe))
                        (cons __tmp149551 '()))))
                 (declare (not safe))
                 (cons __tmp149554 __tmp149550))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149549
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149557
               (let ((__tmp149562
                      (let ((__tmp149563 |gx[1]#_g149564_|))
                        (declare (not safe))
                        (cons 'e __tmp149563)))
                     (__tmp149558
                      (let ((__tmp149559
                             (let ((__tmp149560 |gx[1]#_g149561_|))
                               (declare (not safe))
                               (cons 'source __tmp149560))))
                        (declare (not safe))
                        (cons __tmp149559 '()))))
                 (declare (not safe))
                 (cons __tmp149562 __tmp149558))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149557
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149565
               (let ((__tmp149570
                      (let ((__tmp149571 |gx[1]#_g149572_|))
                        (declare (not safe))
                        (cons 'e __tmp149571)))
                     (__tmp149566
                      (let ((__tmp149567
                             (let ((__tmp149568 |gx[1]#_g149569_|))
                               (declare (not safe))
                               (cons 'source __tmp149568))))
                        (declare (not safe))
                        (cons __tmp149567 '()))))
                 (declare (not safe))
                 (cons __tmp149570 __tmp149566))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149531
           __tmp149565
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj149531))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx144084_)
        (let* ((_g144088144102_
                (lambda (_g144089144098_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g144089144098_)))
               (_g144087144144_
                (lambda (_g144089144106_)
                  (if (gx#stx-pair? _g144089144106_)
                      (let ((_e144093144109_ (gx#syntax-e _g144089144106_)))
                        (let ((_hd144092144113_
                               (let ()
                                 (declare (not safe))
                                 (##car _e144093144109_)))
                              (_tl144091144116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e144093144109_))))
                          (if (gx#stx-pair? _tl144091144116_)
                              (let ((_e144096144119_
                                     (gx#syntax-e _tl144091144116_)))
                                (let ((_hd144095144123_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e144096144119_)))
                                      (_tl144094144126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e144096144119_))))
                                  (if (gx#stx-null? _tl144094144126_)
                                      ((lambda (_L144129_)
                                         (let ((__tmp149582
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp149573
                                                (let ((__tmp149579
                                                       (let ((__tmp149581
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp149580
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L144129_ '()))))
                 (declare (not safe))
                 (cons __tmp149581 __tmp149580)))
              (__tmp149574
               (let ((__tmp149575
                      (let ((__tmp149578 (gx#datum->syntax '#f 'error))
                            (__tmp149576
                             (let ((__tmp149577
                                    (let ()
                                      (declare (not safe))
                                      (cons _L144129_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp149577))))
                        (declare (not safe))
                        (cons __tmp149578 __tmp149576))))
                 (declare (not safe))
                 (cons __tmp149575 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149579
                                                        __tmp149574))))
                                           (declare (not safe))
                                           (cons __tmp149582 __tmp149573)))
                                       _hd144095144123_)
                                      (_g144088144102_ _g144089144106_))))
                              (_g144088144102_ _g144089144106_))))
                      (_g144088144102_ _g144089144106_)))))
          (_g144087144144_ _$stx144084_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx144148_)
        (letrec ((_generate144151_
                  (lambda (_tgt144300_ _kws144302_ _clauses144303_)
                    (letrec ((_generate-clause144305_
                              (lambda (_hd145215_ _E145217_)
                                (let* ((___stx149434149435_ _hd145215_)
                                       (_g145221145248_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx149434149435_))))
                                  (let ((___kont149437149438_
                                         (lambda (_L145344_ _L145346_)
                                           (_generate1144307_
                                            _hd145215_
                                            _L145346_
                                            '#t
                                            _L145344_
                                            _E145217_)))
                                        (___kont149439149440_
                                         (lambda (_L145296_
                                                  _L145298_
                                                  _L145299_)
                                           (_generate1144307_
                                            _hd145215_
                                            _L145299_
                                            _L145298_
                                            _L145296_
                                            _E145217_)))
                                        (___kont149441149442_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx144148_
                                            _hd145215_))))
                                    (if (gx#stx-pair? ___stx149434149435_)
                                        (let ((_e145227145324_
                                               (gx#syntax-e
                                                ___stx149434149435_)))
                                          (let ((_tl145225145331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e145227145324_)))
                                                (_hd145226145328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e145227145324_))))
                                            (if (gx#stx-pair? _tl145225145331_)
                                                (let ((_e145230145334_
                                                       (gx#syntax-e
                                                        _tl145225145331_)))
                                                  (let ((_tl145228145341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e145230145334_)))
                                                        (_hd145229145338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e145230145334_))))
                                                    (if (gx#stx-null?
                                                         _tl145228145341_)
                                                        (___kont149437149438_
                                                         _hd145229145338_
                                                         _hd145226145328_)
                                                        (if (gx#stx-pair?
                                                             _tl145228145341_)
                                                            (let ((_e145242145286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl145228145341_)))
                      (let ((_tl145240145293_
                             (let ()
                               (declare (not safe))
                               (##cdr _e145242145286_)))
                            (_hd145241145290_
                             (let ()
                               (declare (not safe))
                               (##car _e145242145286_))))
                        (if (gx#stx-null? _tl145240145293_)
                            (___kont149439149440_
                             _hd145241145290_
                             _hd145229145338_
                             _hd145226145328_)
                            (___kont149441149442_))))
                    (___kont149441149442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont149441149442_))))
                                        (___kont149441149442_))))))
                             (_generate1144307_
                              (lambda (_where144693_
                                       _hd144695_
                                       _fender144696_
                                       _body144697_
                                       _E144698_)
                                (letrec ((_recur144700_
                                          (lambda (_hd144703_
                                                   _tgt144705_
                                                   _K144706_)
                                            (let* ((___stx149480149481_
                                                    _hd144703_)
                                                   (_g144709144721_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx149480149481_))))
                                              (let ((___kont149483149484_
                                                     (lambda (_L145005_
                                                              _L145007_)
                                                       (let* ((_g145018145026_
                                                               (lambda (_g145019145022_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g145019145022_)))
                      (_g145017145207_
                       (lambda (_g145019145030_)
                         ((lambda (_L145033_)
                            (let ()
                              (let* ((_g145045145053_
                                      (lambda (_g145046145049_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g145046145049_)))
                                     (_g145044145203_
                                      (lambda (_g145046145057_)
                                        ((lambda (_L145060_)
                                           (let ()
                                             (let* ((_g145073145081_
                                                     (lambda (_g145074145077_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g145074145077_)))
                                                    (_g145072145199_
                                                     (lambda (_g145074145085_)
                                                       ((lambda (_L145088_)
                                                          (let ()
                                                            (let* ((_g145101145109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g145102145105_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g145102145105_)))
                           (_g145100145195_
                            (lambda (_g145102145113_)
                              ((lambda (_L145116_)
                                 (let ()
                                   (let* ((_g145129145137_
                                           (lambda (_g145130145133_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g145130145133_)))
                                          (_g145128145191_
                                           (lambda (_g145130145141_)
                                             ((lambda (_L145144_)
                                                (let ()
                                                  (let* ((_g145157145165_
                                                          (lambda (_g145158145161_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g145158145161_)))
                                                         (_g145156145187_
                                                          (lambda (_g145158145169_)
                                                            ((lambda (_L145172_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp149615 (gx#datum->syntax '#f 'if))
                                 (__tmp149583
                                  (let ((__tmp149612
                                         (let ((__tmp149614
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp149613
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L145033_ '()))))
                                           (declare (not safe))
                                           (cons __tmp149614 __tmp149613)))
                                        (__tmp149584
                                         (let ((__tmp149586
                                                (let ((__tmp149611
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp149587
                                                       (let ((__tmp149605
                                                              (let ((__tmp149606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149607
                                    (let ((__tmp149608
                                           (let ((__tmp149610
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp149609
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L145033_ '()))))
                                             (declare (not safe))
                                             (cons __tmp149610 __tmp149609))))
                                      (declare (not safe))
                                      (cons __tmp149608 '()))))
                               (declare (not safe))
                               (cons _L145060_ __tmp149607))))
                        (declare (not safe))
                        (cons __tmp149606 '())))
                     (__tmp149588
                      (let ((__tmp149589
                             (let ((__tmp149604 (gx#datum->syntax '#f 'let))
                                   (__tmp149590
                                    (let ((__tmp149592
                                           (let ((__tmp149599
                                                  (let ((__tmp149600
                                                         (let ((__tmp149601
                                                                (let ((__tmp149603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp149602
                               (let ()
                                 (declare (not safe))
                                 (cons _L145060_ '()))))
                          (declare (not safe))
                          (cons __tmp149603 __tmp149602))))
                   (declare (not safe))
                   (cons __tmp149601 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L145088_
                                                          __tmp149600)))
                                                 (__tmp149593
                                                  (let ((__tmp149594
                                                         (let ((__tmp149595
                                                                (let ((__tmp149596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149598
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp149597
                                      (let ()
                                        (declare (not safe))
                                        (cons _L145060_ '()))))
                                 (declare (not safe))
                                 (cons __tmp149598 __tmp149597))))
                          (declare (not safe))
                          (cons __tmp149596 '()))))
                   (declare (not safe))
                   (cons _L145116_ __tmp149595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149594 '()))))
                                             (declare (not safe))
                                             (cons __tmp149599 __tmp149593)))
                                          (__tmp149591
                                           (let ()
                                             (declare (not safe))
                                             (cons _L145144_ '()))))
                                      (declare (not safe))
                                      (cons __tmp149592 __tmp149591))))
                               (declare (not safe))
                               (cons __tmp149604 __tmp149590))))
                        (declare (not safe))
                        (cons __tmp149589 '()))))
                 (declare (not safe))
                 (cons __tmp149605 __tmp149588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149611
                                                        __tmp149587)))
                                               (__tmp149585
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L145172_ '()))))
                                           (declare (not safe))
                                           (cons __tmp149586 __tmp149585))))
                                    (declare (not safe))
                                    (cons __tmp149612 __tmp149584))))
                             (declare (not safe))
                             (cons __tmp149615 __tmp149583)))))
                     _g145158145169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g145156145187_
                                                     _E144698_))))
                                              _g145130145141_))))
                                     (_g145128145191_
                                      (_recur144700_
                                       _L145007_
                                       _L145088_
                                       (_recur144700_
                                        _L145005_
                                        _L145116_
                                        _K144706_))))))
                               _g145102145113_))))
                      (_g145100145195_ (gx#genident 'tl)))))
                _g145074145085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g145072145199_
                                                (gx#genident 'hd)))))
                                         _g145046145057_))))
                                (_g145044145203_ (gx#genident 'e)))))
                          _g145019145030_))))
                 (_g145017145207_ _tgt144705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149485149486_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd144703_)
                                                           (if (gx#underscore?
                                                                _hd144703_)
                                                               _K144706_
                                                               (if (let ((__tmp149660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g144731144733_)
                                    (gx#bound-identifier=?
                                     _g144731144733_
                                     _hd144703_))))
                             (declare (not safe))
                             (find __tmp149660 _kws144302_))
                           (let* ((_g144737144752_
                                   (lambda (_g144738144748_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g144738144748_)))
                                  (_g144736144803_
                                   (lambda (_g144738144756_)
                                     (if (gx#stx-pair? _g144738144756_)
                                         (let ((_e144743144759_
                                                (gx#syntax-e _g144738144756_)))
                                           (let ((_hd144742144763_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e144743144759_)))
                                                 (_tl144741144766_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e144743144759_))))
                                             (if (gx#stx-pair?
                                                  _tl144741144766_)
                                                 (let ((_e144746144769_
                                                        (gx#syntax-e
                                                         _tl144741144766_)))
                                                   (let ((_hd144745144773_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e144746144769_)))
                                                         (_tl144744144776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e144746144769_))))
                                                     (if (gx#stx-null?
                                                          _tl144744144776_)
                                                         ((lambda (_L144779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L144781_)
                    (let ()
                      (let ((__tmp149659 (gx#datum->syntax '#f 'if))
                            (__tmp149642
                             (let ((__tmp149645
                                    (let ((__tmp149658
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp149646
                                           (let ((__tmp149655
                                                  (let ((__tmp149657
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp149656
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L144781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149657
                                                          __tmp149656)))
                                                 (__tmp149647
                                                  (let ((__tmp149648
                                                         (let ((__tmp149654
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp149649
                        (let ((__tmp149650
                               (let ((__tmp149651
                                      (let ((__tmp149653
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp149652
                                             (let ()
                                               (declare (not safe))
                                               (cons _L144779_ '()))))
                                        (declare (not safe))
                                        (cons __tmp149653 __tmp149652))))
                                 (declare (not safe))
                                 (cons __tmp149651 '()))))
                          (declare (not safe))
                          (cons _L144781_ __tmp149650))))
                   (declare (not safe))
                   (cons __tmp149654 __tmp149649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149648 '()))))
                                             (declare (not safe))
                                             (cons __tmp149655 __tmp149647))))
                                      (declare (not safe))
                                      (cons __tmp149658 __tmp149646)))
                                   (__tmp149643
                                    (let ((__tmp149644
                                           (let ()
                                             (declare (not safe))
                                             (cons _E144698_ '()))))
                                      (declare (not safe))
                                      (cons _K144706_ __tmp149644))))
                               (declare (not safe))
                               (cons __tmp149645 __tmp149643))))
                        (declare (not safe))
                        (cons __tmp149659 __tmp149642))))
                  _hd144745144773_
                  _hd144742144763_)
                 (_g144737144752_ _g144738144756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g144737144752_
                                                  _g144738144756_))))
                                         (_g144737144752_ _g144738144756_)))))
                             (_g144736144803_ (list _tgt144705_ _hd144703_)))
                           (let* ((_g144807144822_
                                   (lambda (_g144808144818_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g144808144818_)))
                                  (_g144806144866_
                                   (lambda (_g144808144826_)
                                     (if (gx#stx-pair? _g144808144826_)
                                         (let ((_e144813144829_
                                                (gx#syntax-e _g144808144826_)))
                                           (let ((_hd144812144833_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e144813144829_)))
                                                 (_tl144811144836_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e144813144829_))))
                                             (if (gx#stx-pair?
                                                  _tl144811144836_)
                                                 (let ((_e144816144839_
                                                        (gx#syntax-e
                                                         _tl144811144836_)))
                                                   (let ((_hd144815144843_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e144816144839_)))
                                                         (_tl144814144846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e144816144839_))))
                                                     (if (gx#stx-null?
                                                          _tl144814144846_)
                                                         ((lambda (_L144849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L144851_)
                    (let ()
                      (let ((__tmp149641 (gx#datum->syntax '#f 'let))
                            (__tmp149636
                             (let ((__tmp149638
                                    (let ((__tmp149639
                                           (let ((__tmp149640
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L144851_ '()))))
                                             (declare (not safe))
                                             (cons _L144849_ __tmp149640))))
                                      (declare (not safe))
                                      (cons __tmp149639 '())))
                                   (__tmp149637
                                    (let ()
                                      (declare (not safe))
                                      (cons _K144706_ '()))))
                               (declare (not safe))
                               (cons __tmp149638 __tmp149637))))
                        (declare (not safe))
                        (cons __tmp149641 __tmp149636))))
                  _hd144815144843_
                  _hd144812144833_)
                 (_g144807144822_ _g144808144826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g144807144822_
                                                  _g144808144826_))))
                                         (_g144807144822_ _g144808144826_)))))
                             (_g144806144866_ (list _tgt144705_ _hd144703_)))))
                   (if (gx#stx-null? _hd144703_)
                       (let* ((_g144870144878_
                               (lambda (_g144871144874_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g144871144874_)))
                              (_g144869144896_
                               (lambda (_g144871144882_)
                                 ((lambda (_L144885_)
                                    (let ()
                                      (let ((__tmp149635
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp149629
                                             (let ((__tmp149632
                                                    (let ((__tmp149634
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp149633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L144885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp149634 __tmp149633)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp149630
                                                    (let ((__tmp149631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E144698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K144706_ __tmp149631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp149632
                                                     __tmp149630))))
                                        (declare (not safe))
                                        (cons __tmp149635 __tmp149629))))
                                  _g144871144882_))))
                         (_g144869144896_ _tgt144705_))
                       (if (gx#stx-datum? _hd144703_)
                           (let* ((_g144900144919_
                                   (lambda (_g144901144915_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g144901144915_)))
                                  (_g144899144977_
                                   (lambda (_g144901144923_)
                                     (if (gx#stx-pair? _g144901144923_)
                                         (let ((_e144907144926_
                                                (gx#syntax-e _g144901144923_)))
                                           (let ((_hd144906144930_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e144907144926_)))
                                                 (_tl144905144933_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e144907144926_))))
                                             (if (gx#stx-pair?
                                                  _tl144905144933_)
                                                 (let ((_e144910144936_
                                                        (gx#syntax-e
                                                         _tl144905144933_)))
                                                   (let ((_hd144909144940_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e144910144936_)))
                                                         (_tl144908144943_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e144910144936_))))
                                                     (if (gx#stx-pair?
                                                          _tl144908144943_)
                                                         (let ((_e144913144946_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl144908144943_)))
                   (let ((_hd144912144950_
                          (let ()
                            (declare (not safe))
                            (##car _e144913144946_)))
                         (_tl144911144953_
                          (let ()
                            (declare (not safe))
                            (##cdr _e144913144946_))))
                     (if (gx#stx-null? _tl144911144953_)
                         ((lambda (_L144956_ _L144958_ _L144959_)
                            (let ()
                              (let ((__tmp149628 (gx#datum->syntax '#f 'if))
                                    (__tmp149616
                                     (let ((__tmp149619
                                            (let ((__tmp149620
                                                   (let ((__tmp149625
                                                          (let ((__tmp149627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp149626
                         (let () (declare (not safe)) (cons _L144959_ '()))))
                    (declare (not safe))
                    (cons __tmp149627 __tmp149626)))
                 (__tmp149621
                  (let ((__tmp149622
                         (let ((__tmp149624 (gx#datum->syntax '#f 'quote))
                               (__tmp149623
                                (let ()
                                  (declare (not safe))
                                  (cons _L144958_ '()))))
                           (declare (not safe))
                           (cons __tmp149624 __tmp149623))))
                    (declare (not safe))
                    (cons __tmp149622 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149625
                                                           __tmp149621))))
                                              (declare (not safe))
                                              (cons _L144956_ __tmp149620)))
                                           (__tmp149617
                                            (let ((__tmp149618
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E144698_ '()))))
                                              (declare (not safe))
                                              (cons _K144706_ __tmp149618))))
                                       (declare (not safe))
                                       (cons __tmp149619 __tmp149617))))
                                (declare (not safe))
                                (cons __tmp149628 __tmp149616))))
                          _hd144912144950_
                          _hd144909144940_
                          _hd144906144930_)
                         (_g144900144919_ _g144901144923_))))
                 (_g144900144919_ _g144901144923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g144900144919_
                                                  _g144901144923_))))
                                         (_g144900144919_ _g144901144923_)))))
                             (_g144899144977_
                              (list _tgt144705_
                                    _hd144703_
                                    (let ((_e144981_ (gx#stx-e _hd144703_)))
                                      (if (or (keyword? _e144981_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e144981_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e144981_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx144148_
                            _where144693_
                            _hd144703_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx149480149481_)
                                                    (let ((_e144715144995_
                                                           (gx#syntax-e
                                                            ___stx149480149481_)))
                                                      (let ((_tl144713145002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e144715144995_)))
                    (_hd144714144999_
                     (let () (declare (not safe)) (##car _e144715144995_))))
                (___kont149483149484_ _tl144713145002_ _hd144714144999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149485149486_)))))))
                                  (_recur144700_
                                   _hd144695_
                                   _tgt144300_
                                   (let ((__tmp149664
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp149661
                                          (let ((__tmp149662
                                                 (let ((__tmp149663
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E144698_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body144697_
                                                         __tmp149663))))
                                            (declare (not safe))
                                            (cons _fender144696_
                                                  __tmp149662))))
                                     (declare (not safe))
                                     (cons __tmp149664 __tmp149661))))))
                             (_generate-clauses144308_
                              (lambda (_clauses144431_)
                                (let _lp144434_ ((_rest144437_ _clauses144431_)
                                                 (_E144439_ (gx#genident 'E))
                                                 (_r144440_ '()))
                                  (let* ((___stx149516149517_ _rest144437_)
                                         (_g144443144455_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx149516149517_))))
                                    (let ((___kont149519149520_
                                           (lambda (_L144520_ _L144522_)
                                             (let* ((___stx149496149497_
                                                     _L144522_)
                                                    (_g144534144545_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx149496149497_))))
                                               (let ((___kont149499149500_
                                                      (lambda (_L144674_)
                                                        (if (gx#stx-null?
                                                             _L144520_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L144674_)
                             (let ((__tmp149673 (gx#stx-null? _L144674_)))
                               (declare (not safe))
                               (not __tmp149673)))
                        (let ((__tmp149665
                               (let ((__tmp149666
                                      (let ((__tmp149667
                                             (gx#stx-wrap-source
                                              (let ((__tmp149672
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp149668
                                                     (let ((__tmp149669
                                                            (let ((__tmp149670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149671 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp149671 _L144674_))))
                      (declare (not safe))
                      (cons __tmp149670 '()))))
               (declare (not safe))
               (cons '() __tmp149669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149672 __tmp149668))
                                              (gx#stx-source _L144522_))))
                                        (declare (not safe))
                                        (cons __tmp149667 '()))))
                                 (declare (not safe))
                                 (cons _E144439_ __tmp149666))))
                          (declare (not safe))
                          (cons __tmp149665 _r144440_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx144148_
                         _L144522_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx144148_
                     _L144522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont149501149502_
                                                      (lambda ()
                                                        (let* ((_g144556144564_
                                                                (lambda (_g144557144560_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g144557144560_)))
                       (_g144555144653_
                        (lambda (_g144557144568_)
                          ((lambda (_L144571_)
                             (let ()
                               (let* ((_g144587144595_
                                       (lambda (_g144588144591_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g144588144591_)))
                                      (_g144586144649_
                                       (lambda (_g144588144599_)
                                         ((lambda (_L144602_)
                                            (let ()
                                              (let* ((_g144615144623_
                                                      (lambda (_g144616144619_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g144616144619_)))
                                                     (_g144614144645_
                                                      (lambda (_g144616144627_)
                                                        ((lambda (_L144630_)
                                                           (let ()
                                                             (let ()
                                                               (_lp144434_
                                                                _L144520_
                                                                _L144571_
                                                                (let ((__tmp149674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149675
                                      (let ()
                                        (declare (not safe))
                                        (cons _L144630_ '()))))
                                 (declare (not safe))
                                 (cons _E144439_ __tmp149675))))
                          (declare (not safe))
                          (cons __tmp149674 _r144440_))))))
                 _g144616144627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g144614144645_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp149678
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp149676
                                                         (let ((__tmp149677
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L144602_ '()))))
                   (declare (not safe))
                   (cons '() __tmp149677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149678
                                                          __tmp149676))
                                                  (gx#stx-source
                                                   _L144522_))))))
                                          _g144588144599_))))
                                 (_g144586144649_
                                  (_generate-clause144305_
                                   _L144522_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L144571_ '())))))))
                           _g144557144568_))))
                  (_g144555144653_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx149496149497_)
                                                     (let ((_e144539144664_
                                                            (gx#syntax-e
                                                             ___stx149496149497_)))
                                                       (let ((_tl144537144671_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e144539144664_)))
                     (_hd144538144668_
                      (let () (declare (not safe)) (##car _e144539144664_))))
                 (if (gx#identifier? _hd144538144668_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g149679_|
                          _hd144538144668_)
                         (___kont149499149500_ _tl144537144671_)
                         (___kont149501149502_))
                     (___kont149501149502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont149501149502_))))))
                                          (___kont149521149522_
                                           (lambda ()
                                             (let* ((_g144466144474_
                                                     (lambda (_g144467144470_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g144467144470_)))
                                                    (_g144465144499_
                                                     (lambda (_g144467144478_)
                                                       ((lambda (_L144481_)
                                                          (let ()
                                                            (let ((__tmp149680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149681
                                  (let ((__tmp149682
                                         (gx#stx-wrap-source
                                          (let ((__tmp149690
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp149683
                                                 (let ((__tmp149684
                                                        (let ((__tmp149685
                                                               (let ((__tmp149689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp149686
                              (let ((__tmp149687
                                     (let ((__tmp149688
                                            (let ()
                                              (declare (not safe))
                                              (cons _L144481_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp149688))))
                                (declare (not safe))
                                (cons '#f __tmp149687))))
                         (declare (not safe))
                         (cons __tmp149689 __tmp149686))))
                  (declare (not safe))
                  (cons __tmp149685 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp149684))))
                                            (declare (not safe))
                                            (cons __tmp149690 __tmp149683))
                                          (gx#stx-source _stx144148_))))
                                    (declare (not safe))
                                    (cons __tmp149682 '()))))
                             (declare (not safe))
                             (cons _E144439_ __tmp149681))))
                      (declare (not safe))
                      (cons __tmp149680 _r144440_))))
                _g144467144478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g144465144499_
                                                _tgt144300_)))))
                                      (if (gx#stx-pair? ___stx149516149517_)
                                          (let ((_e144449144510_
                                                 (gx#syntax-e
                                                  ___stx149516149517_)))
                                            (let ((_tl144447144517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e144449144510_)))
                                                  (_hd144448144514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e144449144510_))))
                                              (___kont149519149520_
                                               _tl144447144517_
                                               _hd144448144514_)))
                                          (___kont149521149522_))))))))
                      (let* ((_bind144310_
                              (_generate-clauses144308_ _clauses144303_))
                             (_g144313144330_
                              (lambda (_g144314144326_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g144314144326_)))
                             (_g144312144427_
                              (lambda (_g144314144334_)
                                (if (gx#stx-pair/null? _g144314144334_)
                                    (let ((_g149691_
                                           (gx#syntax-split-splice
                                            _g144314144334_
                                            '0)))
                                      (begin
                                        (let ((_g149692_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g149691_)
                                                     (##vector-length
                                                      _g149691_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g149692_ 2)))
                                              (error "Context expects 2 values"
                                                     _g149692_)))
                                        (let ((_target144316144337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g149691_ 0)))
                                              (_tl144318144340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g149691_ 1))))
                                          (if (gx#stx-null? _tl144318144340_)
                                              (letrec ((_loop144319144343_
                                                        (lambda (_hd144317144347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try144323144350_)
                  (if (gx#stx-pair? _hd144317144347_)
                      (let ((_e144320144353_ (gx#syntax-e _hd144317144347_)))
                        (let ((_lp-hd144321144357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e144320144353_)))
                              (_lp-tl144322144360_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e144320144353_))))
                          (_loop144319144343_
                           _lp-tl144322144360_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd144321144357_
                                   _bind-try144323144350_)))))
                      (let ((_bind-try144324144363_
                             (reverse _bind-try144323144350_)))
                        ((lambda (_L144367_)
                           (let ()
                             (let* ((_g144385144393_
                                     (lambda (_g144386144389_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g144386144389_)))
                                    (_g144384144423_
                                     (lambda (_g144386144397_)
                                       ((lambda (_L144400_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp149698
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp149693
                                                     (let ((__tmp149696
                                                            (let ((__tmp149697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g144414144417_ _g144415144420_)
                             (let ()
                               (declare (not safe))
                               (cons _g144414144417_ _g144415144420_)))))
                      (declare (not safe))
                      (foldr1 __tmp149697 '() _L144367_)))
                   (__tmp149694
                    (let ((__tmp149695
                           (let () (declare (not safe)) (cons _L144400_ '()))))
                      (declare (not safe))
                      (cons __tmp149695 '()))))
               (declare (not safe))
               (cons __tmp149696 __tmp149694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149698
                                                      __tmp149693)))))
                                        _g144386144397_))))
                               (_g144384144423_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind144310_)))))))
                         _bind-try144324144363_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop144319144343_
                                                 _target144316144337_
                                                 '()))
                                              (_g144313144330_
                                               _g144314144334_)))))
                                    (_g144313144330_ _g144314144334_)))))
                        (_g144312144427_ _bind144310_))))))
          (let* ((_g144154144173_
                  (lambda (_g144155144169_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g144155144169_)))
                 (_g144153144296_
                  (lambda (_g144155144177_)
                    (if (gx#stx-pair? _g144155144177_)
                        (let ((_e144161144180_ (gx#syntax-e _g144155144177_)))
                          (let ((_hd144160144184_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e144161144180_)))
                                (_tl144159144187_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e144161144180_))))
                            (if (gx#stx-pair? _tl144159144187_)
                                (let ((_e144164144190_
                                       (gx#syntax-e _tl144159144187_)))
                                  (let ((_hd144163144194_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e144164144190_)))
                                        (_tl144162144197_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e144164144190_))))
                                    (if (gx#stx-pair? _tl144162144197_)
                                        (let ((_e144167144200_
                                               (gx#syntax-e _tl144162144197_)))
                                          (let ((_hd144166144204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e144167144200_)))
                                                (_tl144165144207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e144167144200_))))
                                            ((lambda (_L144210_
                                                      _L144212_
                                                      _L144213_)
                                               (if (and (gx#identifier-list?
                                                         _L144212_)
                                                        (gx#stx-list?
                                                         _L144210_))
                                                   (let* ((_g144231144239_
                                                           (lambda (_g144232144235_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g144232144235_)))
                                                          (_g144230144292_
                                                           (lambda (_g144232144243_)
                                                             ((lambda (_L144246_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g144258144266_
                                  (lambda (_g144259144262_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g144259144262_)))
                                 (_g144257144288_
                                  (lambda (_g144259144270_)
                                    ((lambda (_L144273_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp149704
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp149699
                                                  (let ((__tmp149701
                                                         (let ((__tmp149702
                                                                (let ((__tmp149703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L144213_ '()))))
                          (declare (not safe))
                          (cons _L144246_ __tmp149703))))
                   (declare (not safe))
                   (cons __tmp149702 '())))
                (__tmp149700
                 (let () (declare (not safe)) (cons _L144273_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149701
                                                          __tmp149700))))
                                             (declare (not safe))
                                             (cons __tmp149704 __tmp149699)))))
                                     _g144259144270_))))
                            (_g144257144288_
                             (_generate144151_
                              _L144246_
                              (gx#syntax->list _L144212_)
                              _L144210_)))))
                      _g144232144243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g144230144292_
                                                      (gx#genident 'e)))
                                                   (_g144154144173_
                                                    _g144155144177_)))
                                             _tl144165144207_
                                             _hd144166144204_
                                             _hd144163144194_)))
                                        (_g144154144173_ _g144155144177_))))
                                (_g144154144173_ _g144155144177_))))
                        (_g144154144173_ _g144155144177_)))))
            (_g144153144296_ _stx144148_)))))))
