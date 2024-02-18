(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g148575_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148577_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148579_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148584_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148587_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148592_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148595_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148600_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148603_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148608_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148611_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g148718_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj148570
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
           __obj148570
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148574 |gx[1]#_g148575_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148574
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148576 |gx[1]#_g148577_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148576
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148578 |gx[1]#_g148579_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148578
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148580
               (let ((__tmp148585
                      (let ((__tmp148586 |gx[1]#_g148587_|))
                        (declare (not safe))
                        (cons 'e __tmp148586)))
                     (__tmp148581
                      (let ((__tmp148582
                             (let ((__tmp148583 |gx[1]#_g148584_|))
                               (declare (not safe))
                               (cons 'source __tmp148583))))
                        (declare (not safe))
                        (cons __tmp148582 '()))))
                 (declare (not safe))
                 (cons __tmp148585 __tmp148581))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148580
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148588
               (let ((__tmp148593
                      (let ((__tmp148594 |gx[1]#_g148595_|))
                        (declare (not safe))
                        (cons 'e __tmp148594)))
                     (__tmp148589
                      (let ((__tmp148590
                             (let ((__tmp148591 |gx[1]#_g148592_|))
                               (declare (not safe))
                               (cons 'source __tmp148591))))
                        (declare (not safe))
                        (cons __tmp148590 '()))))
                 (declare (not safe))
                 (cons __tmp148593 __tmp148589))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148588
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148596
               (let ((__tmp148601
                      (let ((__tmp148602 |gx[1]#_g148603_|))
                        (declare (not safe))
                        (cons 'e __tmp148602)))
                     (__tmp148597
                      (let ((__tmp148598
                             (let ((__tmp148599 |gx[1]#_g148600_|))
                               (declare (not safe))
                               (cons 'source __tmp148599))))
                        (declare (not safe))
                        (cons __tmp148598 '()))))
                 (declare (not safe))
                 (cons __tmp148601 __tmp148597))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148596
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp148604
               (let ((__tmp148609
                      (let ((__tmp148610 |gx[1]#_g148611_|))
                        (declare (not safe))
                        (cons 'e __tmp148610)))
                     (__tmp148605
                      (let ((__tmp148606
                             (let ((__tmp148607 |gx[1]#_g148608_|))
                               (declare (not safe))
                               (cons 'source __tmp148607))))
                        (declare (not safe))
                        (cons __tmp148606 '()))))
                 (declare (not safe))
                 (cons __tmp148609 __tmp148605))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj148570
           __tmp148604
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj148570))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx143123_)
        (let* ((_g143127143141_
                (lambda (_g143128143137_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g143128143137_)))
               (_g143126143183_
                (lambda (_g143128143145_)
                  (if (gx#stx-pair? _g143128143145_)
                      (let ((_e143132143148_ (gx#syntax-e _g143128143145_)))
                        (let ((_hd143131143152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e143132143148_)))
                              (_tl143130143155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e143132143148_))))
                          (if (gx#stx-pair? _tl143130143155_)
                              (let ((_e143135143158_
                                     (gx#syntax-e _tl143130143155_)))
                                (let ((_hd143134143162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e143135143158_)))
                                      (_tl143133143165_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e143135143158_))))
                                  (if (gx#stx-null? _tl143133143165_)
                                      ((lambda (_L143168_)
                                         (let ((__tmp148621
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp148612
                                                (let ((__tmp148618
                                                       (let ((__tmp148620
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp148619
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L143168_ '()))))
                 (declare (not safe))
                 (cons __tmp148620 __tmp148619)))
              (__tmp148613
               (let ((__tmp148614
                      (let ((__tmp148617 (gx#datum->syntax '#f 'error))
                            (__tmp148615
                             (let ((__tmp148616
                                    (let ()
                                      (declare (not safe))
                                      (cons _L143168_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp148616))))
                        (declare (not safe))
                        (cons __tmp148617 __tmp148615))))
                 (declare (not safe))
                 (cons __tmp148614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148618
                                                        __tmp148613))))
                                           (declare (not safe))
                                           (cons __tmp148621 __tmp148612)))
                                       _hd143134143162_)
                                      (_g143127143141_ _g143128143145_))))
                              (_g143127143141_ _g143128143145_))))
                      (_g143127143141_ _g143128143145_)))))
          (_g143126143183_ _$stx143123_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx143187_)
        (letrec ((_generate143190_
                  (lambda (_tgt143339_ _kws143341_ _clauses143342_)
                    (letrec ((_generate-clause143344_
                              (lambda (_hd144254_ _E144256_)
                                (let* ((___stx148473148474_ _hd144254_)
                                       (_g144260144287_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx148473148474_))))
                                  (let ((___kont148476148477_
                                         (lambda (_L144383_ _L144385_)
                                           (_generate1143346_
                                            _hd144254_
                                            _L144385_
                                            '#t
                                            _L144383_
                                            _E144256_)))
                                        (___kont148478148479_
                                         (lambda (_L144335_
                                                  _L144337_
                                                  _L144338_)
                                           (_generate1143346_
                                            _hd144254_
                                            _L144338_
                                            _L144337_
                                            _L144335_
                                            _E144256_)))
                                        (___kont148480148481_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx143187_
                                            _hd144254_))))
                                    (if (gx#stx-pair? ___stx148473148474_)
                                        (let ((_e144266144363_
                                               (gx#syntax-e
                                                ___stx148473148474_)))
                                          (let ((_tl144264144370_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e144266144363_)))
                                                (_hd144265144367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e144266144363_))))
                                            (if (gx#stx-pair? _tl144264144370_)
                                                (let ((_e144269144373_
                                                       (gx#syntax-e
                                                        _tl144264144370_)))
                                                  (let ((_tl144267144380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e144269144373_)))
                                                        (_hd144268144377_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e144269144373_))))
                                                    (if (gx#stx-null?
                                                         _tl144267144380_)
                                                        (___kont148476148477_
                                                         _hd144268144377_
                                                         _hd144265144367_)
                                                        (if (gx#stx-pair?
                                                             _tl144267144380_)
                                                            (let ((_e144281144325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl144267144380_)))
                      (let ((_tl144279144332_
                             (let ()
                               (declare (not safe))
                               (##cdr _e144281144325_)))
                            (_hd144280144329_
                             (let ()
                               (declare (not safe))
                               (##car _e144281144325_))))
                        (if (gx#stx-null? _tl144279144332_)
                            (___kont148478148479_
                             _hd144280144329_
                             _hd144268144377_
                             _hd144265144367_)
                            (___kont148480148481_))))
                    (___kont148480148481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont148480148481_))))
                                        (___kont148480148481_))))))
                             (_generate1143346_
                              (lambda (_where143732_
                                       _hd143734_
                                       _fender143735_
                                       _body143736_
                                       _E143737_)
                                (letrec ((_recur143739_
                                          (lambda (_hd143742_
                                                   _tgt143744_
                                                   _K143745_)
                                            (let* ((___stx148519148520_
                                                    _hd143742_)
                                                   (_g143748143760_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx148519148520_))))
                                              (let ((___kont148522148523_
                                                     (lambda (_L144044_
                                                              _L144046_)
                                                       (let* ((_g144057144065_
                                                               (lambda (_g144058144061_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g144058144061_)))
                      (_g144056144246_
                       (lambda (_g144058144069_)
                         ((lambda (_L144072_)
                            (let ()
                              (let* ((_g144084144092_
                                      (lambda (_g144085144088_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g144085144088_)))
                                     (_g144083144242_
                                      (lambda (_g144085144096_)
                                        ((lambda (_L144099_)
                                           (let ()
                                             (let* ((_g144112144120_
                                                     (lambda (_g144113144116_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g144113144116_)))
                                                    (_g144111144238_
                                                     (lambda (_g144113144124_)
                                                       ((lambda (_L144127_)
                                                          (let ()
                                                            (let* ((_g144140144148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g144141144144_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g144141144144_)))
                           (_g144139144234_
                            (lambda (_g144141144152_)
                              ((lambda (_L144155_)
                                 (let ()
                                   (let* ((_g144168144176_
                                           (lambda (_g144169144172_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g144169144172_)))
                                          (_g144167144230_
                                           (lambda (_g144169144180_)
                                             ((lambda (_L144183_)
                                                (let ()
                                                  (let* ((_g144196144204_
                                                          (lambda (_g144197144200_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g144197144200_)))
                                                         (_g144195144226_
                                                          (lambda (_g144197144208_)
                                                            ((lambda (_L144211_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp148654 (gx#datum->syntax '#f 'if))
                                 (__tmp148622
                                  (let ((__tmp148651
                                         (let ((__tmp148653
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp148652
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L144072_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148653 __tmp148652)))
                                        (__tmp148623
                                         (let ((__tmp148625
                                                (let ((__tmp148650
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp148626
                                                       (let ((__tmp148644
                                                              (let ((__tmp148645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp148646
                                    (let ((__tmp148647
                                           (let ((__tmp148649
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp148648
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L144072_ '()))))
                                             (declare (not safe))
                                             (cons __tmp148649 __tmp148648))))
                                      (declare (not safe))
                                      (cons __tmp148647 '()))))
                               (declare (not safe))
                               (cons _L144099_ __tmp148646))))
                        (declare (not safe))
                        (cons __tmp148645 '())))
                     (__tmp148627
                      (let ((__tmp148628
                             (let ((__tmp148643 (gx#datum->syntax '#f 'let))
                                   (__tmp148629
                                    (let ((__tmp148631
                                           (let ((__tmp148638
                                                  (let ((__tmp148639
                                                         (let ((__tmp148640
                                                                (let ((__tmp148642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp148641
                               (let ()
                                 (declare (not safe))
                                 (cons _L144099_ '()))))
                          (declare (not safe))
                          (cons __tmp148642 __tmp148641))))
                   (declare (not safe))
                   (cons __tmp148640 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L144127_
                                                          __tmp148639)))
                                                 (__tmp148632
                                                  (let ((__tmp148633
                                                         (let ((__tmp148634
                                                                (let ((__tmp148635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148637
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp148636
                                      (let ()
                                        (declare (not safe))
                                        (cons _L144099_ '()))))
                                 (declare (not safe))
                                 (cons __tmp148637 __tmp148636))))
                          (declare (not safe))
                          (cons __tmp148635 '()))))
                   (declare (not safe))
                   (cons _L144155_ __tmp148634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148633 '()))))
                                             (declare (not safe))
                                             (cons __tmp148638 __tmp148632)))
                                          (__tmp148630
                                           (let ()
                                             (declare (not safe))
                                             (cons _L144183_ '()))))
                                      (declare (not safe))
                                      (cons __tmp148631 __tmp148630))))
                               (declare (not safe))
                               (cons __tmp148643 __tmp148629))))
                        (declare (not safe))
                        (cons __tmp148628 '()))))
                 (declare (not safe))
                 (cons __tmp148644 __tmp148627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp148650
                                                        __tmp148626)))
                                               (__tmp148624
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L144211_ '()))))
                                           (declare (not safe))
                                           (cons __tmp148625 __tmp148624))))
                                    (declare (not safe))
                                    (cons __tmp148651 __tmp148623))))
                             (declare (not safe))
                             (cons __tmp148654 __tmp148622)))))
                     _g144197144208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g144195144226_
                                                     _E143737_))))
                                              _g144169144180_))))
                                     (_g144167144230_
                                      (_recur143739_
                                       _L144046_
                                       _L144127_
                                       (_recur143739_
                                        _L144044_
                                        _L144155_
                                        _K143745_))))))
                               _g144141144152_))))
                      (_g144139144234_ (gx#genident 'tl)))))
                _g144113144124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g144111144238_
                                                (gx#genident 'hd)))))
                                         _g144085144096_))))
                                (_g144083144242_ (gx#genident 'e)))))
                          _g144058144069_))))
                 (_g144056144246_ _tgt143744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont148524148525_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd143742_)
                                                           (if (gx#underscore?
                                                                _hd143742_)
                                                               _K143745_
                                                               (if (let ((__tmp148699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g143770143772_)
                                    (gx#bound-identifier=?
                                     _g143770143772_
                                     _hd143742_))))
                             (declare (not safe))
                             (find __tmp148699 _kws143341_))
                           (let* ((_g143776143791_
                                   (lambda (_g143777143787_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143777143787_)))
                                  (_g143775143842_
                                   (lambda (_g143777143795_)
                                     (if (gx#stx-pair? _g143777143795_)
                                         (let ((_e143782143798_
                                                (gx#syntax-e _g143777143795_)))
                                           (let ((_hd143781143802_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143782143798_)))
                                                 (_tl143780143805_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143782143798_))))
                                             (if (gx#stx-pair?
                                                  _tl143780143805_)
                                                 (let ((_e143785143808_
                                                        (gx#syntax-e
                                                         _tl143780143805_)))
                                                   (let ((_hd143784143812_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143785143808_)))
                                                         (_tl143783143815_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143785143808_))))
                                                     (if (gx#stx-null?
                                                          _tl143783143815_)
                                                         ((lambda (_L143818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143820_)
                    (let ()
                      (let ((__tmp148698 (gx#datum->syntax '#f 'if))
                            (__tmp148681
                             (let ((__tmp148684
                                    (let ((__tmp148697
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp148685
                                           (let ((__tmp148694
                                                  (let ((__tmp148696
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp148695
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L143820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148696
                                                          __tmp148695)))
                                                 (__tmp148686
                                                  (let ((__tmp148687
                                                         (let ((__tmp148693
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp148688
                        (let ((__tmp148689
                               (let ((__tmp148690
                                      (let ((__tmp148692
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp148691
                                             (let ()
                                               (declare (not safe))
                                               (cons _L143818_ '()))))
                                        (declare (not safe))
                                        (cons __tmp148692 __tmp148691))))
                                 (declare (not safe))
                                 (cons __tmp148690 '()))))
                          (declare (not safe))
                          (cons _L143820_ __tmp148689))))
                   (declare (not safe))
                   (cons __tmp148693 __tmp148688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148687 '()))))
                                             (declare (not safe))
                                             (cons __tmp148694 __tmp148686))))
                                      (declare (not safe))
                                      (cons __tmp148697 __tmp148685)))
                                   (__tmp148682
                                    (let ((__tmp148683
                                           (let ()
                                             (declare (not safe))
                                             (cons _E143737_ '()))))
                                      (declare (not safe))
                                      (cons _K143745_ __tmp148683))))
                               (declare (not safe))
                               (cons __tmp148684 __tmp148682))))
                        (declare (not safe))
                        (cons __tmp148698 __tmp148681))))
                  _hd143784143812_
                  _hd143781143802_)
                 (_g143776143791_ _g143777143795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143776143791_
                                                  _g143777143795_))))
                                         (_g143776143791_ _g143777143795_)))))
                             (_g143775143842_ (list _tgt143744_ _hd143742_)))
                           (let* ((_g143846143861_
                                   (lambda (_g143847143857_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143847143857_)))
                                  (_g143845143905_
                                   (lambda (_g143847143865_)
                                     (if (gx#stx-pair? _g143847143865_)
                                         (let ((_e143852143868_
                                                (gx#syntax-e _g143847143865_)))
                                           (let ((_hd143851143872_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143852143868_)))
                                                 (_tl143850143875_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143852143868_))))
                                             (if (gx#stx-pair?
                                                  _tl143850143875_)
                                                 (let ((_e143855143878_
                                                        (gx#syntax-e
                                                         _tl143850143875_)))
                                                   (let ((_hd143854143882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143855143878_)))
                                                         (_tl143853143885_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143855143878_))))
                                                     (if (gx#stx-null?
                                                          _tl143853143885_)
                                                         ((lambda (_L143888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L143890_)
                    (let ()
                      (let ((__tmp148680 (gx#datum->syntax '#f 'let))
                            (__tmp148675
                             (let ((__tmp148677
                                    (let ((__tmp148678
                                           (let ((__tmp148679
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L143890_ '()))))
                                             (declare (not safe))
                                             (cons _L143888_ __tmp148679))))
                                      (declare (not safe))
                                      (cons __tmp148678 '())))
                                   (__tmp148676
                                    (let ()
                                      (declare (not safe))
                                      (cons _K143745_ '()))))
                               (declare (not safe))
                               (cons __tmp148677 __tmp148676))))
                        (declare (not safe))
                        (cons __tmp148680 __tmp148675))))
                  _hd143854143882_
                  _hd143851143872_)
                 (_g143846143861_ _g143847143865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143846143861_
                                                  _g143847143865_))))
                                         (_g143846143861_ _g143847143865_)))))
                             (_g143845143905_ (list _tgt143744_ _hd143742_)))))
                   (if (gx#stx-null? _hd143742_)
                       (let* ((_g143909143917_
                               (lambda (_g143910143913_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g143910143913_)))
                              (_g143908143935_
                               (lambda (_g143910143921_)
                                 ((lambda (_L143924_)
                                    (let ()
                                      (let ((__tmp148674
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp148668
                                             (let ((__tmp148671
                                                    (let ((__tmp148673
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp148672
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L143924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp148673 __tmp148672)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp148669
                                                    (let ((__tmp148670
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E143737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K143745_ __tmp148670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp148671
                                                     __tmp148669))))
                                        (declare (not safe))
                                        (cons __tmp148674 __tmp148668))))
                                  _g143910143921_))))
                         (_g143908143935_ _tgt143744_))
                       (if (gx#stx-datum? _hd143742_)
                           (let* ((_g143939143958_
                                   (lambda (_g143940143954_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g143940143954_)))
                                  (_g143938144016_
                                   (lambda (_g143940143962_)
                                     (if (gx#stx-pair? _g143940143962_)
                                         (let ((_e143946143965_
                                                (gx#syntax-e _g143940143962_)))
                                           (let ((_hd143945143969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e143946143965_)))
                                                 (_tl143944143972_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e143946143965_))))
                                             (if (gx#stx-pair?
                                                  _tl143944143972_)
                                                 (let ((_e143949143975_
                                                        (gx#syntax-e
                                                         _tl143944143972_)))
                                                   (let ((_hd143948143979_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e143949143975_)))
                                                         (_tl143947143982_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e143949143975_))))
                                                     (if (gx#stx-pair?
                                                          _tl143947143982_)
                                                         (let ((_e143952143985_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl143947143982_)))
                   (let ((_hd143951143989_
                          (let ()
                            (declare (not safe))
                            (##car _e143952143985_)))
                         (_tl143950143992_
                          (let ()
                            (declare (not safe))
                            (##cdr _e143952143985_))))
                     (if (gx#stx-null? _tl143950143992_)
                         ((lambda (_L143995_ _L143997_ _L143998_)
                            (let ()
                              (let ((__tmp148667 (gx#datum->syntax '#f 'if))
                                    (__tmp148655
                                     (let ((__tmp148658
                                            (let ((__tmp148659
                                                   (let ((__tmp148664
                                                          (let ((__tmp148666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp148665
                         (let () (declare (not safe)) (cons _L143998_ '()))))
                    (declare (not safe))
                    (cons __tmp148666 __tmp148665)))
                 (__tmp148660
                  (let ((__tmp148661
                         (let ((__tmp148663 (gx#datum->syntax '#f 'quote))
                               (__tmp148662
                                (let ()
                                  (declare (not safe))
                                  (cons _L143997_ '()))))
                           (declare (not safe))
                           (cons __tmp148663 __tmp148662))))
                    (declare (not safe))
                    (cons __tmp148661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp148664
                                                           __tmp148660))))
                                              (declare (not safe))
                                              (cons _L143995_ __tmp148659)))
                                           (__tmp148656
                                            (let ((__tmp148657
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E143737_ '()))))
                                              (declare (not safe))
                                              (cons _K143745_ __tmp148657))))
                                       (declare (not safe))
                                       (cons __tmp148658 __tmp148656))))
                                (declare (not safe))
                                (cons __tmp148667 __tmp148655))))
                          _hd143951143989_
                          _hd143948143979_
                          _hd143945143969_)
                         (_g143939143958_ _g143940143962_))))
                 (_g143939143958_ _g143940143962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g143939143958_
                                                  _g143940143962_))))
                                         (_g143939143958_ _g143940143962_)))))
                             (_g143938144016_
                              (list _tgt143744_
                                    _hd143742_
                                    (let ((_e144020_ (gx#stx-e _hd143742_)))
                                      (if (or (keyword? _e144020_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e144020_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e144020_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx143187_
                            _where143732_
                            _hd143742_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx148519148520_)
                                                    (let ((_e143754144034_
                                                           (gx#syntax-e
                                                            ___stx148519148520_)))
                                                      (let ((_tl143752144041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e143754144034_)))
                    (_hd143753144038_
                     (let () (declare (not safe)) (##car _e143754144034_))))
                (___kont148522148523_ _tl143752144041_ _hd143753144038_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont148524148525_)))))))
                                  (_recur143739_
                                   _hd143734_
                                   _tgt143339_
                                   (let ((__tmp148703
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp148700
                                          (let ((__tmp148701
                                                 (let ((__tmp148702
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E143737_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body143736_
                                                         __tmp148702))))
                                            (declare (not safe))
                                            (cons _fender143735_
                                                  __tmp148701))))
                                     (declare (not safe))
                                     (cons __tmp148703 __tmp148700))))))
                             (_generate-clauses143347_
                              (lambda (_clauses143470_)
                                (let _lp143473_ ((_rest143476_ _clauses143470_)
                                                 (_E143478_ (gx#genident 'E))
                                                 (_r143479_ '()))
                                  (let* ((___stx148555148556_ _rest143476_)
                                         (_g143482143494_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx148555148556_))))
                                    (let ((___kont148558148559_
                                           (lambda (_L143559_ _L143561_)
                                             (let* ((___stx148535148536_
                                                     _L143561_)
                                                    (_g143573143584_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx148535148536_))))
                                               (let ((___kont148538148539_
                                                      (lambda (_L143713_)
                                                        (if (gx#stx-null?
                                                             _L143559_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L143713_)
                             (let ((__tmp148712 (gx#stx-null? _L143713_)))
                               (declare (not safe))
                               (not __tmp148712)))
                        (let ((__tmp148704
                               (let ((__tmp148705
                                      (let ((__tmp148706
                                             (gx#stx-wrap-source
                                              (let ((__tmp148711
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp148707
                                                     (let ((__tmp148708
                                                            (let ((__tmp148709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148710 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp148710 _L143713_))))
                      (declare (not safe))
                      (cons __tmp148709 '()))))
               (declare (not safe))
               (cons '() __tmp148708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148711 __tmp148707))
                                              (gx#stx-source _L143561_))))
                                        (declare (not safe))
                                        (cons __tmp148706 '()))))
                                 (declare (not safe))
                                 (cons _E143478_ __tmp148705))))
                          (declare (not safe))
                          (cons __tmp148704 _r143479_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx143187_
                         _L143561_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx143187_
                     _L143561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont148540148541_
                                                      (lambda ()
                                                        (let* ((_g143595143603_
                                                                (lambda (_g143596143599_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g143596143599_)))
                       (_g143594143692_
                        (lambda (_g143596143607_)
                          ((lambda (_L143610_)
                             (let ()
                               (let* ((_g143626143634_
                                       (lambda (_g143627143630_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g143627143630_)))
                                      (_g143625143688_
                                       (lambda (_g143627143638_)
                                         ((lambda (_L143641_)
                                            (let ()
                                              (let* ((_g143654143662_
                                                      (lambda (_g143655143658_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g143655143658_)))
                                                     (_g143653143684_
                                                      (lambda (_g143655143666_)
                                                        ((lambda (_L143669_)
                                                           (let ()
                                                             (let ()
                                                               (_lp143473_
                                                                _L143559_
                                                                _L143610_
                                                                (let ((__tmp148713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148714
                                      (let ()
                                        (declare (not safe))
                                        (cons _L143669_ '()))))
                                 (declare (not safe))
                                 (cons _E143478_ __tmp148714))))
                          (declare (not safe))
                          (cons __tmp148713 _r143479_))))))
                 _g143655143666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g143653143684_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp148717
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp148715
                                                         (let ((__tmp148716
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L143641_ '()))))
                   (declare (not safe))
                   (cons '() __tmp148716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148717
                                                          __tmp148715))
                                                  (gx#stx-source
                                                   _L143561_))))))
                                          _g143627143638_))))
                                 (_g143625143688_
                                  (_generate-clause143344_
                                   _L143561_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L143610_ '())))))))
                           _g143596143607_))))
                  (_g143594143692_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx148535148536_)
                                                     (let ((_e143578143703_
                                                            (gx#syntax-e
                                                             ___stx148535148536_)))
                                                       (let ((_tl143576143710_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e143578143703_)))
                     (_hd143577143707_
                      (let () (declare (not safe)) (##car _e143578143703_))))
                 (if (gx#identifier? _hd143577143707_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g148718_|
                          _hd143577143707_)
                         (___kont148538148539_ _tl143576143710_)
                         (___kont148540148541_))
                     (___kont148540148541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont148540148541_))))))
                                          (___kont148560148561_
                                           (lambda ()
                                             (let* ((_g143505143513_
                                                     (lambda (_g143506143509_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g143506143509_)))
                                                    (_g143504143538_
                                                     (lambda (_g143506143517_)
                                                       ((lambda (_L143520_)
                                                          (let ()
                                                            (let ((__tmp148719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp148720
                                  (let ((__tmp148721
                                         (gx#stx-wrap-source
                                          (let ((__tmp148729
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp148722
                                                 (let ((__tmp148723
                                                        (let ((__tmp148724
                                                               (let ((__tmp148728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp148725
                              (let ((__tmp148726
                                     (let ((__tmp148727
                                            (let ()
                                              (declare (not safe))
                                              (cons _L143520_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp148727))))
                                (declare (not safe))
                                (cons '#f __tmp148726))))
                         (declare (not safe))
                         (cons __tmp148728 __tmp148725))))
                  (declare (not safe))
                  (cons __tmp148724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp148723))))
                                            (declare (not safe))
                                            (cons __tmp148729 __tmp148722))
                                          (gx#stx-source _stx143187_))))
                                    (declare (not safe))
                                    (cons __tmp148721 '()))))
                             (declare (not safe))
                             (cons _E143478_ __tmp148720))))
                      (declare (not safe))
                      (cons __tmp148719 _r143479_))))
                _g143506143517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g143504143538_
                                                _tgt143339_)))))
                                      (if (gx#stx-pair? ___stx148555148556_)
                                          (let ((_e143488143549_
                                                 (gx#syntax-e
                                                  ___stx148555148556_)))
                                            (let ((_tl143486143556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e143488143549_)))
                                                  (_hd143487143553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e143488143549_))))
                                              (___kont148558148559_
                                               _tl143486143556_
                                               _hd143487143553_)))
                                          (___kont148560148561_))))))))
                      (let* ((_bind143349_
                              (_generate-clauses143347_ _clauses143342_))
                             (_g143352143369_
                              (lambda (_g143353143365_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g143353143365_)))
                             (_g143351143466_
                              (lambda (_g143353143373_)
                                (if (gx#stx-pair/null? _g143353143373_)
                                    (let ((_g148730_
                                           (gx#syntax-split-splice
                                            _g143353143373_
                                            '0)))
                                      (begin
                                        (let ((_g148731_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g148730_)
                                                     (##vector-length
                                                      _g148730_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g148731_ 2)))
                                              (error "Context expects 2 values"
                                                     _g148731_)))
                                        (let ((_target143355143376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148730_ 0)))
                                              (_tl143357143379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g148730_ 1))))
                                          (if (gx#stx-null? _tl143357143379_)
                                              (letrec ((_loop143358143382_
                                                        (lambda (_hd143356143386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try143362143389_)
                  (if (gx#stx-pair? _hd143356143386_)
                      (let ((_e143359143392_ (gx#syntax-e _hd143356143386_)))
                        (let ((_lp-hd143360143396_
                               (let ()
                                 (declare (not safe))
                                 (##car _e143359143392_)))
                              (_lp-tl143361143399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e143359143392_))))
                          (_loop143358143382_
                           _lp-tl143361143399_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd143360143396_
                                   _bind-try143362143389_)))))
                      (let ((_bind-try143363143402_
                             (reverse _bind-try143362143389_)))
                        ((lambda (_L143406_)
                           (let ()
                             (let* ((_g143424143432_
                                     (lambda (_g143425143428_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g143425143428_)))
                                    (_g143423143462_
                                     (lambda (_g143425143436_)
                                       ((lambda (_L143439_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp148737
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp148732
                                                     (let ((__tmp148735
                                                            (let ((__tmp148736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g143453143456_ _g143454143459_)
                             (let ()
                               (declare (not safe))
                               (cons _g143453143456_ _g143454143459_)))))
                      (declare (not safe))
                      (foldr1 __tmp148736 '() _L143406_)))
                   (__tmp148733
                    (let ((__tmp148734
                           (let () (declare (not safe)) (cons _L143439_ '()))))
                      (declare (not safe))
                      (cons __tmp148734 '()))))
               (declare (not safe))
               (cons __tmp148735 __tmp148733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp148737
                                                      __tmp148732)))))
                                        _g143425143436_))))
                               (_g143423143462_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind143349_)))))))
                         _bind-try143363143402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop143358143382_
                                                 _target143355143376_
                                                 '()))
                                              (_g143352143369_
                                               _g143353143373_)))))
                                    (_g143352143369_ _g143353143373_)))))
                        (_g143351143466_ _bind143349_))))))
          (let* ((_g143193143212_
                  (lambda (_g143194143208_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g143194143208_)))
                 (_g143192143335_
                  (lambda (_g143194143216_)
                    (if (gx#stx-pair? _g143194143216_)
                        (let ((_e143200143219_ (gx#syntax-e _g143194143216_)))
                          (let ((_hd143199143223_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e143200143219_)))
                                (_tl143198143226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e143200143219_))))
                            (if (gx#stx-pair? _tl143198143226_)
                                (let ((_e143203143229_
                                       (gx#syntax-e _tl143198143226_)))
                                  (let ((_hd143202143233_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e143203143229_)))
                                        (_tl143201143236_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e143203143229_))))
                                    (if (gx#stx-pair? _tl143201143236_)
                                        (let ((_e143206143239_
                                               (gx#syntax-e _tl143201143236_)))
                                          (let ((_hd143205143243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e143206143239_)))
                                                (_tl143204143246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e143206143239_))))
                                            ((lambda (_L143249_
                                                      _L143251_
                                                      _L143252_)
                                               (if (and (gx#identifier-list?
                                                         _L143251_)
                                                        (gx#stx-list?
                                                         _L143249_))
                                                   (let* ((_g143270143278_
                                                           (lambda (_g143271143274_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g143271143274_)))
                                                          (_g143269143331_
                                                           (lambda (_g143271143282_)
                                                             ((lambda (_L143285_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g143297143305_
                                  (lambda (_g143298143301_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g143298143301_)))
                                 (_g143296143327_
                                  (lambda (_g143298143309_)
                                    ((lambda (_L143312_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp148743
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp148738
                                                  (let ((__tmp148740
                                                         (let ((__tmp148741
                                                                (let ((__tmp148742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L143252_ '()))))
                          (declare (not safe))
                          (cons _L143285_ __tmp148742))))
                   (declare (not safe))
                   (cons __tmp148741 '())))
                (__tmp148739
                 (let () (declare (not safe)) (cons _L143312_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp148740
                                                          __tmp148739))))
                                             (declare (not safe))
                                             (cons __tmp148743 __tmp148738)))))
                                     _g143298143309_))))
                            (_g143296143327_
                             (_generate143190_
                              _L143285_
                              (gx#syntax->list _L143251_)
                              _L143249_)))))
                      _g143271143282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g143269143331_
                                                      (gx#genident 'e)))
                                                   (_g143193143212_
                                                    _g143194143216_)))
                                             _tl143204143246_
                                             _hd143205143243_
                                             _hd143202143233_)))
                                        (_g143193143212_ _g143194143216_))))
                                (_g143193143212_ _g143194143216_))))
                        (_g143193143212_ _g143194143216_)))))
            (_g143192143335_ _stx143187_)))))))
