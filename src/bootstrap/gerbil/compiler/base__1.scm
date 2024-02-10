(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192623_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192625_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192627_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192632_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192635_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192640_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192643_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192648_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192651_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192656_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192659_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187514_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187514_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187517_)
        (let* ((_g187520187544_
                (lambda (_g187521187540_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187521187540_))))
               (_g187519187847_
                (lambda (_g187521187548_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187521187548_))
                      (let ((_e187526187551_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187521187548_))))
                        (let ((_hd187525187555_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187526187551_)))
                              (_tl187524187558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187526187551_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187524187558_))
                              (let ((_e187529187561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187524187558_))))
                                (let ((_hd187528187565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187529187561_)))
                                      (_tl187527187568_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187529187561_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187527187568_))
                                      (let ((_g192594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187527187568_
                                                '0))))
                                        (begin
                                          (let ((_g192595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192594_)
                                                       (##vector-length
                                                        _g192594_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192595_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192595_)))
                                          (let ((_target187530187571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192594_ 0)))
                                                (_tl187532187574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192594_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187532187574_))
                                                (letrec ((_loop187533187577_
                                                          (lambda (_hd187531187581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187537187584_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187531187581_))
                        (let ((_e187534187587_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187531187581_))))
                          (let ((_lp-hd187535187591_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187534187587_)))
                                (_lp-tl187536187594_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187534187587_))))
                            (_loop187533187577_
                             _lp-tl187536187594_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187535187591_
                                     _clause187537187584_)))))
                        (let ((_clause187538187597_
                               (reverse _clause187537187584_)))
                          ((lambda (_L187601_ _L187603_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187603_))
                                 (let* ((_g187622187639_
                                         (lambda (_g187623187635_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187623187635_))))
                                        (_g187621187700_
                                         (lambda (_g187623187643_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187623187643_))
                                               (let ((_g192596_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187623187643_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192597_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192596_)
                        (##vector-length _g192596_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192597_ 2)))
                 (error "Context expects 2 values" _g192597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187625187646_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192596_
                                                             0)))
                                                         (_tl187627187649_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192596_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187627187649_))
                                                         (letrec ((_loop187628187652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187626187656_ _clause187632187659_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187626187656_))
                                 (let ((_e187629187662_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187626187656_))))
                                   (let ((_lp-hd187630187666_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187629187662_)))
                                         (_lp-tl187631187669_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187629187662_))))
                                     (_loop187628187652_
                                      _lp-tl187631187669_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187630187666_
                                              _clause187632187659_)))))
                                 (let ((_clause187633187672_
                                        (reverse _clause187632187659_)))
                                   ((lambda (_L187676_)
                                      (let ()
                                        (let ((__tmp192609
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192598
                                               (let ((__tmp192607
                                                      (let ((__tmp192608
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192608 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192599
                                                      (let ((__tmp192600
                                                             (let ((__tmp192606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192601
                            (let ((__tmp192605
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192602
                                   (let ((__tmp192603
                                          (let ((__tmp192604
                                                 (lambda (_g187691187694_
                                                          _g187692187697_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187691187694_
                                                           _g187692187697_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192604
                                                    '()
                                                    _L187676_))))
                                     (declare (not safe))
                                     (cons _L187603_ __tmp192603))))
                              (declare (not safe))
                              (cons __tmp192605 __tmp192602))))
                       (declare (not safe))
                       (cons __tmp192606 __tmp192601))))
                (declare (not safe))
                (cons __tmp192600 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192607
                                                       __tmp192599))))
                                          (declare (not safe))
                                          (cons __tmp192609 __tmp192598))))
                                    _clause187633187672_))))))
                   (_loop187628187652_ _target187625187646_ '()))
                 (_g187622187639_ _g187623187643_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187622187639_
                                                _g187623187643_)))))
                                   (_g187621187700_
                                    (let ((__tmp192612
                                           (lambda (_clause187704_)
                                             (let* ((___stx192541192542_
                                                     _clause187704_)
                                                    (_g187708187735_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192541192542_)))))
                                               (let ((___kont192544192545_
                                                      (lambda (_L187820_
                                                               _L187822_)
                                                        (let ((__tmp192613
                                                               (let ((__tmp192614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192616
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192615
                                     (let ()
                                       (declare (not safe))
                                       (cons _L187820_ '()))))
                                (declare (not safe))
                                (cons __tmp192616 __tmp192615))))
                         (declare (not safe))
                         (cons __tmp192614 '()))))
                  (declare (not safe))
                  (cons _L187822_ __tmp192613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192546192547_
                                                      (lambda (_L187772_
                                                               _L187774_
                                                               _L187775_)
                                                        (let ((__tmp192617
                                                               (let ((__tmp192618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192619
                                     (let ((__tmp192621
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192620
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187772_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192621 __tmp192620))))
                                (declare (not safe))
                                (cons __tmp192619 '()))))
                         (declare (not safe))
                         (cons _L187774_ __tmp192618))))
                  (declare (not safe))
                  (cons _L187775_ __tmp192617)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192541192542_))
                                                     (let ((_e187714187800_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192541192542_))))
                                                       (let ((_tl187712187807_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187714187800_)))
                     (_hd187713187804_
                      (let () (declare (not safe)) (##car _e187714187800_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187712187807_))
                     (let ((_e187717187810_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187712187807_))))
                       (let ((_tl187715187817_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187717187810_)))
                             (_hd187716187814_
                              (let ()
                                (declare (not safe))
                                (##car _e187717187810_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187715187817_))
                             (___kont192544192545_
                              _hd187716187814_
                              _hd187713187804_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187715187817_))
                                 (let ((_e187729187762_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187715187817_))))
                                   (let ((_tl187727187769_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187729187762_)))
                                         (_hd187728187766_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187729187762_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187727187769_))
                                         (___kont192546192547_
                                          _hd187728187766_
                                          _hd187716187814_
                                          _hd187713187804_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187708187735_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187708187735_))))))
                     (let () (declare (not safe)) (_g187708187735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187708187735_)))))))
                                          (__tmp192610
                                           (let ((__tmp192611
                                                  (lambda (_g187838187841_
                                                           _g187839187844_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g187838187841_
                                                            _g187839187844_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192611
                                                     '()
                                                     _L187601_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192612 __tmp192610))))
                                 (_g187520187544_ _g187521187548_)))
                           _clause187538187597_
                           _hd187528187565_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187533187577_
                                                   _target187530187571_
                                                   '()))
                                                (_g187520187544_
                                                 _g187521187548_)))))
                                      (_g187520187544_ _g187521187548_))))
                              (_g187520187544_ _g187521187548_))))
                      (_g187520187544_ _g187521187548_)))))
          (_g187519187847_ _stx187517_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192584
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192622 |gxc[1]#_g192623_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192622
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192624 |gxc[1]#_g192625_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192624
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192626 |gxc[1]#_g192627_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192626
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192628
               (let ((__tmp192633
                      (let ((__tmp192634 |gxc[1]#_g192635_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192634)))
                     (__tmp192629
                      (let ((__tmp192630
                             (let ((__tmp192631 |gxc[1]#_g192632_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192631))))
                        (declare (not safe))
                        (cons __tmp192630 '()))))
                 (declare (not safe))
                 (cons __tmp192633 __tmp192629))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192628
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192636
               (let ((__tmp192641
                      (let ((__tmp192642 |gxc[1]#_g192643_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192642)))
                     (__tmp192637
                      (let ((__tmp192638
                             (let ((__tmp192639 |gxc[1]#_g192640_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192639))))
                        (declare (not safe))
                        (cons __tmp192638 '()))))
                 (declare (not safe))
                 (cons __tmp192641 __tmp192637))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192636
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192644
               (let ((__tmp192649
                      (let ((__tmp192650 |gxc[1]#_g192651_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192650)))
                     (__tmp192645
                      (let ((__tmp192646
                             (let ((__tmp192647 |gxc[1]#_g192648_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192647))))
                        (declare (not safe))
                        (cons __tmp192646 '()))))
                 (declare (not safe))
                 (cons __tmp192649 __tmp192645))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192644
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192652
               (let ((__tmp192657
                      (let ((__tmp192658 |gxc[1]#_g192659_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192658)))
                     (__tmp192653
                      (let ((__tmp192654
                             (let ((__tmp192655 |gxc[1]#_g192656_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192655))))
                        (declare (not safe))
                        (cons __tmp192654 '()))))
                 (declare (not safe))
                 (cons __tmp192657 __tmp192653))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192584
           __tmp192652
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192584))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx187853_)
        (let* ((_g187857187871_
                (lambda (_g187858187867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187858187867_))))
               (_g187856187912_
                (lambda (_g187858187875_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187858187875_))
                      (let ((_e187862187878_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187858187875_))))
                        (let ((_hd187861187882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187862187878_)))
                              (_tl187860187885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187862187878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187860187885_))
                              (let ((_e187865187888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187860187885_))))
                                (let ((_hd187864187892_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187865187888_)))
                                      (_tl187863187895_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187865187888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl187863187895_))
                                      ((lambda (_L187898_)
                                         (let ((__tmp192667
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192660
                                                (let ((__tmp192666
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192661
                                                       (let ((__tmp192662
                                                              (let ((__tmp192665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192663
                             (let ((__tmp192664
                                    (let ()
                                      (declare (not safe))
                                      (cons _L187898_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192664))))
                        (declare (not safe))
                        (cons __tmp192665 __tmp192663))))
                 (declare (not safe))
                 (cons __tmp192662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192666
                                                        __tmp192661))))
                                           (declare (not safe))
                                           (cons __tmp192667 __tmp192660)))
                                       _hd187864187892_)
                                      (_g187857187871_ _g187858187875_))))
                              (_g187857187871_ _g187858187875_))))
                      (_g187857187871_ _g187858187875_)))))
          (_g187856187912_ _$stx187853_))))))
