(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g149690_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149692_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149694_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149699_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149702_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149707_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149710_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149715_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149718_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149723_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149726_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g149833_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj149685
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
           __obj149685
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149689 |gx[1]#_g149690_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149689
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149691 |gx[1]#_g149692_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149691
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149693 |gx[1]#_g149694_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149693
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149695
               (let ((__tmp149700
                      (let ((__tmp149701 |gx[1]#_g149702_|))
                        (declare (not safe))
                        (cons 'e __tmp149701)))
                     (__tmp149696
                      (let ((__tmp149697
                             (let ((__tmp149698 |gx[1]#_g149699_|))
                               (declare (not safe))
                               (cons 'source __tmp149698))))
                        (declare (not safe))
                        (cons __tmp149697 '()))))
                 (declare (not safe))
                 (cons __tmp149700 __tmp149696))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149695
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149703
               (let ((__tmp149708
                      (let ((__tmp149709 |gx[1]#_g149710_|))
                        (declare (not safe))
                        (cons 'e __tmp149709)))
                     (__tmp149704
                      (let ((__tmp149705
                             (let ((__tmp149706 |gx[1]#_g149707_|))
                               (declare (not safe))
                               (cons 'source __tmp149706))))
                        (declare (not safe))
                        (cons __tmp149705 '()))))
                 (declare (not safe))
                 (cons __tmp149708 __tmp149704))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149703
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149711
               (let ((__tmp149716
                      (let ((__tmp149717 |gx[1]#_g149718_|))
                        (declare (not safe))
                        (cons 'e __tmp149717)))
                     (__tmp149712
                      (let ((__tmp149713
                             (let ((__tmp149714 |gx[1]#_g149715_|))
                               (declare (not safe))
                               (cons 'source __tmp149714))))
                        (declare (not safe))
                        (cons __tmp149713 '()))))
                 (declare (not safe))
                 (cons __tmp149716 __tmp149712))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149711
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149719
               (let ((__tmp149724
                      (let ((__tmp149725 |gx[1]#_g149726_|))
                        (declare (not safe))
                        (cons 'e __tmp149725)))
                     (__tmp149720
                      (let ((__tmp149721
                             (let ((__tmp149722 |gx[1]#_g149723_|))
                               (declare (not safe))
                               (cons 'source __tmp149722))))
                        (declare (not safe))
                        (cons __tmp149721 '()))))
                 (declare (not safe))
                 (cons __tmp149724 __tmp149720))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149685
           __tmp149719
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj149685))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx144238_)
        (let* ((_g144242144256_
                (lambda (_g144243144252_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g144243144252_)))
               (_g144241144298_
                (lambda (_g144243144260_)
                  (if (gx#stx-pair? _g144243144260_)
                      (let ((_e144247144263_ (gx#syntax-e _g144243144260_)))
                        (let ((_hd144246144267_
                               (let ()
                                 (declare (not safe))
                                 (##car _e144247144263_)))
                              (_tl144245144270_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e144247144263_))))
                          (if (gx#stx-pair? _tl144245144270_)
                              (let ((_e144250144273_
                                     (gx#syntax-e _tl144245144270_)))
                                (let ((_hd144249144277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e144250144273_)))
                                      (_tl144248144280_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e144250144273_))))
                                  (if (gx#stx-null? _tl144248144280_)
                                      ((lambda (_L144283_)
                                         (let ((__tmp149736
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp149727
                                                (let ((__tmp149733
                                                       (let ((__tmp149735
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp149734
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L144283_ '()))))
                 (declare (not safe))
                 (cons __tmp149735 __tmp149734)))
              (__tmp149728
               (let ((__tmp149729
                      (let ((__tmp149732 (gx#datum->syntax '#f 'error))
                            (__tmp149730
                             (let ((__tmp149731
                                    (let ()
                                      (declare (not safe))
                                      (cons _L144283_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp149731))))
                        (declare (not safe))
                        (cons __tmp149732 __tmp149730))))
                 (declare (not safe))
                 (cons __tmp149729 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149733
                                                        __tmp149728))))
                                           (declare (not safe))
                                           (cons __tmp149736 __tmp149727)))
                                       _hd144249144277_)
                                      (_g144242144256_ _g144243144260_))))
                              (_g144242144256_ _g144243144260_))))
                      (_g144242144256_ _g144243144260_)))))
          (_g144241144298_ _$stx144238_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx144302_)
        (letrec ((_generate144305_
                  (lambda (_tgt144454_ _kws144456_ _clauses144457_)
                    (letrec ((_generate-clause144459_
                              (lambda (_hd145369_ _E145371_)
                                (let* ((___stx149588149589_ _hd145369_)
                                       (_g145375145402_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx149588149589_))))
                                  (let ((___kont149591149592_
                                         (lambda (_L145498_ _L145500_)
                                           (_generate1144461_
                                            _hd145369_
                                            _L145500_
                                            '#t
                                            _L145498_
                                            _E145371_)))
                                        (___kont149593149594_
                                         (lambda (_L145450_
                                                  _L145452_
                                                  _L145453_)
                                           (_generate1144461_
                                            _hd145369_
                                            _L145453_
                                            _L145452_
                                            _L145450_
                                            _E145371_)))
                                        (___kont149595149596_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx144302_
                                            _hd145369_))))
                                    (if (gx#stx-pair? ___stx149588149589_)
                                        (let ((_e145381145478_
                                               (gx#syntax-e
                                                ___stx149588149589_)))
                                          (let ((_tl145379145485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e145381145478_)))
                                                (_hd145380145482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e145381145478_))))
                                            (if (gx#stx-pair? _tl145379145485_)
                                                (let ((_e145384145488_
                                                       (gx#syntax-e
                                                        _tl145379145485_)))
                                                  (let ((_tl145382145495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e145384145488_)))
                                                        (_hd145383145492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e145384145488_))))
                                                    (if (gx#stx-null?
                                                         _tl145382145495_)
                                                        (___kont149591149592_
                                                         _hd145383145492_
                                                         _hd145380145482_)
                                                        (if (gx#stx-pair?
                                                             _tl145382145495_)
                                                            (let ((_e145396145440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl145382145495_)))
                      (let ((_tl145394145447_
                             (let ()
                               (declare (not safe))
                               (##cdr _e145396145440_)))
                            (_hd145395145444_
                             (let ()
                               (declare (not safe))
                               (##car _e145396145440_))))
                        (if (gx#stx-null? _tl145394145447_)
                            (___kont149593149594_
                             _hd145395145444_
                             _hd145383145492_
                             _hd145380145482_)
                            (___kont149595149596_))))
                    (___kont149595149596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont149595149596_))))
                                        (___kont149595149596_))))))
                             (_generate1144461_
                              (lambda (_where144847_
                                       _hd144849_
                                       _fender144850_
                                       _body144851_
                                       _E144852_)
                                (letrec ((_recur144854_
                                          (lambda (_hd144857_
                                                   _tgt144859_
                                                   _K144860_)
                                            (let* ((___stx149634149635_
                                                    _hd144857_)
                                                   (_g144863144875_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx149634149635_))))
                                              (let ((___kont149637149638_
                                                     (lambda (_L145159_
                                                              _L145161_)
                                                       (let* ((_g145172145180_
                                                               (lambda (_g145173145176_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g145173145176_)))
                      (_g145171145361_
                       (lambda (_g145173145184_)
                         ((lambda (_L145187_)
                            (let ()
                              (let* ((_g145199145207_
                                      (lambda (_g145200145203_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g145200145203_)))
                                     (_g145198145357_
                                      (lambda (_g145200145211_)
                                        ((lambda (_L145214_)
                                           (let ()
                                             (let* ((_g145227145235_
                                                     (lambda (_g145228145231_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g145228145231_)))
                                                    (_g145226145353_
                                                     (lambda (_g145228145239_)
                                                       ((lambda (_L145242_)
                                                          (let ()
                                                            (let* ((_g145255145263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g145256145259_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g145256145259_)))
                           (_g145254145349_
                            (lambda (_g145256145267_)
                              ((lambda (_L145270_)
                                 (let ()
                                   (let* ((_g145283145291_
                                           (lambda (_g145284145287_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g145284145287_)))
                                          (_g145282145345_
                                           (lambda (_g145284145295_)
                                             ((lambda (_L145298_)
                                                (let ()
                                                  (let* ((_g145311145319_
                                                          (lambda (_g145312145315_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g145312145315_)))
                                                         (_g145310145341_
                                                          (lambda (_g145312145323_)
                                                            ((lambda (_L145326_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp149769 (gx#datum->syntax '#f 'if))
                                 (__tmp149737
                                  (let ((__tmp149766
                                         (let ((__tmp149768
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp149767
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L145187_ '()))))
                                           (declare (not safe))
                                           (cons __tmp149768 __tmp149767)))
                                        (__tmp149738
                                         (let ((__tmp149740
                                                (let ((__tmp149765
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp149741
                                                       (let ((__tmp149759
                                                              (let ((__tmp149760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp149761
                                    (let ((__tmp149762
                                           (let ((__tmp149764
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp149763
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L145187_ '()))))
                                             (declare (not safe))
                                             (cons __tmp149764 __tmp149763))))
                                      (declare (not safe))
                                      (cons __tmp149762 '()))))
                               (declare (not safe))
                               (cons _L145214_ __tmp149761))))
                        (declare (not safe))
                        (cons __tmp149760 '())))
                     (__tmp149742
                      (let ((__tmp149743
                             (let ((__tmp149758 (gx#datum->syntax '#f 'let))
                                   (__tmp149744
                                    (let ((__tmp149746
                                           (let ((__tmp149753
                                                  (let ((__tmp149754
                                                         (let ((__tmp149755
                                                                (let ((__tmp149757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp149756
                               (let ()
                                 (declare (not safe))
                                 (cons _L145214_ '()))))
                          (declare (not safe))
                          (cons __tmp149757 __tmp149756))))
                   (declare (not safe))
                   (cons __tmp149755 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L145242_
                                                          __tmp149754)))
                                                 (__tmp149747
                                                  (let ((__tmp149748
                                                         (let ((__tmp149749
                                                                (let ((__tmp149750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149752
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp149751
                                      (let ()
                                        (declare (not safe))
                                        (cons _L145214_ '()))))
                                 (declare (not safe))
                                 (cons __tmp149752 __tmp149751))))
                          (declare (not safe))
                          (cons __tmp149750 '()))))
                   (declare (not safe))
                   (cons _L145270_ __tmp149749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149748 '()))))
                                             (declare (not safe))
                                             (cons __tmp149753 __tmp149747)))
                                          (__tmp149745
                                           (let ()
                                             (declare (not safe))
                                             (cons _L145298_ '()))))
                                      (declare (not safe))
                                      (cons __tmp149746 __tmp149745))))
                               (declare (not safe))
                               (cons __tmp149758 __tmp149744))))
                        (declare (not safe))
                        (cons __tmp149743 '()))))
                 (declare (not safe))
                 (cons __tmp149759 __tmp149742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp149765
                                                        __tmp149741)))
                                               (__tmp149739
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L145326_ '()))))
                                           (declare (not safe))
                                           (cons __tmp149740 __tmp149739))))
                                    (declare (not safe))
                                    (cons __tmp149766 __tmp149738))))
                             (declare (not safe))
                             (cons __tmp149769 __tmp149737)))))
                     _g145312145323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g145310145341_
                                                     _E144852_))))
                                              _g145284145295_))))
                                     (_g145282145345_
                                      (_recur144854_
                                       _L145161_
                                       _L145242_
                                       (_recur144854_
                                        _L145159_
                                        _L145270_
                                        _K144860_))))))
                               _g145256145267_))))
                      (_g145254145349_ (gx#genident 'tl)))))
                _g145228145239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g145226145353_
                                                (gx#genident 'hd)))))
                                         _g145200145211_))))
                                (_g145198145357_ (gx#genident 'e)))))
                          _g145173145184_))))
                 (_g145171145361_ _tgt144859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149639149640_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd144857_)
                                                           (if (gx#underscore?
                                                                _hd144857_)
                                                               _K144860_
                                                               (if (let ((__tmp149814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g144885144887_)
                                    (gx#bound-identifier=?
                                     _g144885144887_
                                     _hd144857_))))
                             (declare (not safe))
                             (find __tmp149814 _kws144456_))
                           (let* ((_g144891144906_
                                   (lambda (_g144892144902_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g144892144902_)))
                                  (_g144890144957_
                                   (lambda (_g144892144910_)
                                     (if (gx#stx-pair? _g144892144910_)
                                         (let ((_e144897144913_
                                                (gx#syntax-e _g144892144910_)))
                                           (let ((_hd144896144917_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e144897144913_)))
                                                 (_tl144895144920_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e144897144913_))))
                                             (if (gx#stx-pair?
                                                  _tl144895144920_)
                                                 (let ((_e144900144923_
                                                        (gx#syntax-e
                                                         _tl144895144920_)))
                                                   (let ((_hd144899144927_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e144900144923_)))
                                                         (_tl144898144930_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e144900144923_))))
                                                     (if (gx#stx-null?
                                                          _tl144898144930_)
                                                         ((lambda (_L144933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L144935_)
                    (let ()
                      (let ((__tmp149813 (gx#datum->syntax '#f 'if))
                            (__tmp149796
                             (let ((__tmp149799
                                    (let ((__tmp149812
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp149800
                                           (let ((__tmp149809
                                                  (let ((__tmp149811
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp149810
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L144935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149811
                                                          __tmp149810)))
                                                 (__tmp149801
                                                  (let ((__tmp149802
                                                         (let ((__tmp149808
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp149803
                        (let ((__tmp149804
                               (let ((__tmp149805
                                      (let ((__tmp149807
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp149806
                                             (let ()
                                               (declare (not safe))
                                               (cons _L144933_ '()))))
                                        (declare (not safe))
                                        (cons __tmp149807 __tmp149806))))
                                 (declare (not safe))
                                 (cons __tmp149805 '()))))
                          (declare (not safe))
                          (cons _L144935_ __tmp149804))))
                   (declare (not safe))
                   (cons __tmp149808 __tmp149803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149802 '()))))
                                             (declare (not safe))
                                             (cons __tmp149809 __tmp149801))))
                                      (declare (not safe))
                                      (cons __tmp149812 __tmp149800)))
                                   (__tmp149797
                                    (let ((__tmp149798
                                           (let ()
                                             (declare (not safe))
                                             (cons _E144852_ '()))))
                                      (declare (not safe))
                                      (cons _K144860_ __tmp149798))))
                               (declare (not safe))
                               (cons __tmp149799 __tmp149797))))
                        (declare (not safe))
                        (cons __tmp149813 __tmp149796))))
                  _hd144899144927_
                  _hd144896144917_)
                 (_g144891144906_ _g144892144910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g144891144906_
                                                  _g144892144910_))))
                                         (_g144891144906_ _g144892144910_)))))
                             (_g144890144957_ (list _tgt144859_ _hd144857_)))
                           (let* ((_g144961144976_
                                   (lambda (_g144962144972_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g144962144972_)))
                                  (_g144960145020_
                                   (lambda (_g144962144980_)
                                     (if (gx#stx-pair? _g144962144980_)
                                         (let ((_e144967144983_
                                                (gx#syntax-e _g144962144980_)))
                                           (let ((_hd144966144987_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e144967144983_)))
                                                 (_tl144965144990_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e144967144983_))))
                                             (if (gx#stx-pair?
                                                  _tl144965144990_)
                                                 (let ((_e144970144993_
                                                        (gx#syntax-e
                                                         _tl144965144990_)))
                                                   (let ((_hd144969144997_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e144970144993_)))
                                                         (_tl144968145000_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e144970144993_))))
                                                     (if (gx#stx-null?
                                                          _tl144968145000_)
                                                         ((lambda (_L145003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L145005_)
                    (let ()
                      (let ((__tmp149795 (gx#datum->syntax '#f 'let))
                            (__tmp149790
                             (let ((__tmp149792
                                    (let ((__tmp149793
                                           (let ((__tmp149794
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L145005_ '()))))
                                             (declare (not safe))
                                             (cons _L145003_ __tmp149794))))
                                      (declare (not safe))
                                      (cons __tmp149793 '())))
                                   (__tmp149791
                                    (let ()
                                      (declare (not safe))
                                      (cons _K144860_ '()))))
                               (declare (not safe))
                               (cons __tmp149792 __tmp149791))))
                        (declare (not safe))
                        (cons __tmp149795 __tmp149790))))
                  _hd144969144997_
                  _hd144966144987_)
                 (_g144961144976_ _g144962144980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g144961144976_
                                                  _g144962144980_))))
                                         (_g144961144976_ _g144962144980_)))))
                             (_g144960145020_ (list _tgt144859_ _hd144857_)))))
                   (if (gx#stx-null? _hd144857_)
                       (let* ((_g145024145032_
                               (lambda (_g145025145028_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g145025145028_)))
                              (_g145023145050_
                               (lambda (_g145025145036_)
                                 ((lambda (_L145039_)
                                    (let ()
                                      (let ((__tmp149789
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp149783
                                             (let ((__tmp149786
                                                    (let ((__tmp149788
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp149787
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L145039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp149788 __tmp149787)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp149784
                                                    (let ((__tmp149785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E144852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K144860_ __tmp149785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp149786
                                                     __tmp149784))))
                                        (declare (not safe))
                                        (cons __tmp149789 __tmp149783))))
                                  _g145025145036_))))
                         (_g145023145050_ _tgt144859_))
                       (if (gx#stx-datum? _hd144857_)
                           (let* ((_g145054145073_
                                   (lambda (_g145055145069_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g145055145069_)))
                                  (_g145053145131_
                                   (lambda (_g145055145077_)
                                     (if (gx#stx-pair? _g145055145077_)
                                         (let ((_e145061145080_
                                                (gx#syntax-e _g145055145077_)))
                                           (let ((_hd145060145084_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e145061145080_)))
                                                 (_tl145059145087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e145061145080_))))
                                             (if (gx#stx-pair?
                                                  _tl145059145087_)
                                                 (let ((_e145064145090_
                                                        (gx#syntax-e
                                                         _tl145059145087_)))
                                                   (let ((_hd145063145094_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e145064145090_)))
                                                         (_tl145062145097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e145064145090_))))
                                                     (if (gx#stx-pair?
                                                          _tl145062145097_)
                                                         (let ((_e145067145100_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl145062145097_)))
                   (let ((_hd145066145104_
                          (let ()
                            (declare (not safe))
                            (##car _e145067145100_)))
                         (_tl145065145107_
                          (let ()
                            (declare (not safe))
                            (##cdr _e145067145100_))))
                     (if (gx#stx-null? _tl145065145107_)
                         ((lambda (_L145110_ _L145112_ _L145113_)
                            (let ()
                              (let ((__tmp149782 (gx#datum->syntax '#f 'if))
                                    (__tmp149770
                                     (let ((__tmp149773
                                            (let ((__tmp149774
                                                   (let ((__tmp149779
                                                          (let ((__tmp149781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp149780
                         (let () (declare (not safe)) (cons _L145113_ '()))))
                    (declare (not safe))
                    (cons __tmp149781 __tmp149780)))
                 (__tmp149775
                  (let ((__tmp149776
                         (let ((__tmp149778 (gx#datum->syntax '#f 'quote))
                               (__tmp149777
                                (let ()
                                  (declare (not safe))
                                  (cons _L145112_ '()))))
                           (declare (not safe))
                           (cons __tmp149778 __tmp149777))))
                    (declare (not safe))
                    (cons __tmp149776 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp149779
                                                           __tmp149775))))
                                              (declare (not safe))
                                              (cons _L145110_ __tmp149774)))
                                           (__tmp149771
                                            (let ((__tmp149772
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E144852_ '()))))
                                              (declare (not safe))
                                              (cons _K144860_ __tmp149772))))
                                       (declare (not safe))
                                       (cons __tmp149773 __tmp149771))))
                                (declare (not safe))
                                (cons __tmp149782 __tmp149770))))
                          _hd145066145104_
                          _hd145063145094_
                          _hd145060145084_)
                         (_g145054145073_ _g145055145077_))))
                 (_g145054145073_ _g145055145077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g145054145073_
                                                  _g145055145077_))))
                                         (_g145054145073_ _g145055145077_)))))
                             (_g145053145131_
                              (list _tgt144859_
                                    _hd144857_
                                    (let ((_e145135_ (gx#stx-e _hd144857_)))
                                      (if (or (keyword? _e145135_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e145135_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e145135_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx144302_
                            _where144847_
                            _hd144857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx149634149635_)
                                                    (let ((_e144869145149_
                                                           (gx#syntax-e
                                                            ___stx149634149635_)))
                                                      (let ((_tl144867145156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e144869145149_)))
                    (_hd144868145153_
                     (let () (declare (not safe)) (##car _e144869145149_))))
                (___kont149637149638_ _tl144867145156_ _hd144868145153_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont149639149640_)))))))
                                  (_recur144854_
                                   _hd144849_
                                   _tgt144454_
                                   (let ((__tmp149818
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp149815
                                          (let ((__tmp149816
                                                 (let ((__tmp149817
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E144852_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body144851_
                                                         __tmp149817))))
                                            (declare (not safe))
                                            (cons _fender144850_
                                                  __tmp149816))))
                                     (declare (not safe))
                                     (cons __tmp149818 __tmp149815))))))
                             (_generate-clauses144462_
                              (lambda (_clauses144585_)
                                (let _lp144588_ ((_rest144591_ _clauses144585_)
                                                 (_E144593_ (gx#genident 'E))
                                                 (_r144594_ '()))
                                  (let* ((___stx149670149671_ _rest144591_)
                                         (_g144597144609_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx149670149671_))))
                                    (let ((___kont149673149674_
                                           (lambda (_L144674_ _L144676_)
                                             (let* ((___stx149650149651_
                                                     _L144676_)
                                                    (_g144688144699_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx149650149651_))))
                                               (let ((___kont149653149654_
                                                      (lambda (_L144828_)
                                                        (if (gx#stx-null?
                                                             _L144674_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L144828_)
                             (let ((__tmp149827 (gx#stx-null? _L144828_)))
                               (declare (not safe))
                               (not __tmp149827)))
                        (let ((__tmp149819
                               (let ((__tmp149820
                                      (let ((__tmp149821
                                             (gx#stx-wrap-source
                                              (let ((__tmp149826
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp149822
                                                     (let ((__tmp149823
                                                            (let ((__tmp149824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149825 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp149825 _L144828_))))
                      (declare (not safe))
                      (cons __tmp149824 '()))))
               (declare (not safe))
               (cons '() __tmp149823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149826 __tmp149822))
                                              (gx#stx-source _L144676_))))
                                        (declare (not safe))
                                        (cons __tmp149821 '()))))
                                 (declare (not safe))
                                 (cons _E144593_ __tmp149820))))
                          (declare (not safe))
                          (cons __tmp149819 _r144594_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx144302_
                         _L144676_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx144302_
                     _L144676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont149655149656_
                                                      (lambda ()
                                                        (let* ((_g144710144718_
                                                                (lambda (_g144711144714_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g144711144714_)))
                       (_g144709144807_
                        (lambda (_g144711144722_)
                          ((lambda (_L144725_)
                             (let ()
                               (let* ((_g144741144749_
                                       (lambda (_g144742144745_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g144742144745_)))
                                      (_g144740144803_
                                       (lambda (_g144742144753_)
                                         ((lambda (_L144756_)
                                            (let ()
                                              (let* ((_g144769144777_
                                                      (lambda (_g144770144773_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g144770144773_)))
                                                     (_g144768144799_
                                                      (lambda (_g144770144781_)
                                                        ((lambda (_L144784_)
                                                           (let ()
                                                             (let ()
                                                               (_lp144588_
                                                                _L144674_
                                                                _L144725_
                                                                (let ((__tmp149828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149829
                                      (let ()
                                        (declare (not safe))
                                        (cons _L144784_ '()))))
                                 (declare (not safe))
                                 (cons _E144593_ __tmp149829))))
                          (declare (not safe))
                          (cons __tmp149828 _r144594_))))))
                 _g144770144781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g144768144799_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp149832
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp149830
                                                         (let ((__tmp149831
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L144756_ '()))))
                   (declare (not safe))
                   (cons '() __tmp149831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149832
                                                          __tmp149830))
                                                  (gx#stx-source
                                                   _L144676_))))))
                                          _g144742144753_))))
                                 (_g144740144803_
                                  (_generate-clause144459_
                                   _L144676_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L144725_ '())))))))
                           _g144711144722_))))
                  (_g144709144807_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx149650149651_)
                                                     (let ((_e144693144818_
                                                            (gx#syntax-e
                                                             ___stx149650149651_)))
                                                       (let ((_tl144691144825_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e144693144818_)))
                     (_hd144692144822_
                      (let () (declare (not safe)) (##car _e144693144818_))))
                 (if (gx#identifier? _hd144692144822_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g149833_|
                          _hd144692144822_)
                         (___kont149653149654_ _tl144691144825_)
                         (___kont149655149656_))
                     (___kont149655149656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont149655149656_))))))
                                          (___kont149675149676_
                                           (lambda ()
                                             (let* ((_g144620144628_
                                                     (lambda (_g144621144624_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g144621144624_)))
                                                    (_g144619144653_
                                                     (lambda (_g144621144632_)
                                                       ((lambda (_L144635_)
                                                          (let ()
                                                            (let ((__tmp149834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp149835
                                  (let ((__tmp149836
                                         (gx#stx-wrap-source
                                          (let ((__tmp149844
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp149837
                                                 (let ((__tmp149838
                                                        (let ((__tmp149839
                                                               (let ((__tmp149843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp149840
                              (let ((__tmp149841
                                     (let ((__tmp149842
                                            (let ()
                                              (declare (not safe))
                                              (cons _L144635_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp149842))))
                                (declare (not safe))
                                (cons '#f __tmp149841))))
                         (declare (not safe))
                         (cons __tmp149843 __tmp149840))))
                  (declare (not safe))
                  (cons __tmp149839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp149838))))
                                            (declare (not safe))
                                            (cons __tmp149844 __tmp149837))
                                          (gx#stx-source _stx144302_))))
                                    (declare (not safe))
                                    (cons __tmp149836 '()))))
                             (declare (not safe))
                             (cons _E144593_ __tmp149835))))
                      (declare (not safe))
                      (cons __tmp149834 _r144594_))))
                _g144621144632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g144619144653_
                                                _tgt144454_)))))
                                      (if (gx#stx-pair? ___stx149670149671_)
                                          (let ((_e144603144664_
                                                 (gx#syntax-e
                                                  ___stx149670149671_)))
                                            (let ((_tl144601144671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e144603144664_)))
                                                  (_hd144602144668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e144603144664_))))
                                              (___kont149673149674_
                                               _tl144601144671_
                                               _hd144602144668_)))
                                          (___kont149675149676_))))))))
                      (let* ((_bind144464_
                              (_generate-clauses144462_ _clauses144457_))
                             (_g144467144484_
                              (lambda (_g144468144480_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g144468144480_)))
                             (_g144466144581_
                              (lambda (_g144468144488_)
                                (if (gx#stx-pair/null? _g144468144488_)
                                    (let ((_g149845_
                                           (gx#syntax-split-splice
                                            _g144468144488_
                                            '0)))
                                      (begin
                                        (let ((_g149846_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g149845_)
                                                     (##vector-length
                                                      _g149845_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g149846_ 2)))
                                              (error "Context expects 2 values"
                                                     _g149846_)))
                                        (let ((_target144470144491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g149845_ 0)))
                                              (_tl144472144494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g149845_ 1))))
                                          (if (gx#stx-null? _tl144472144494_)
                                              (letrec ((_loop144473144497_
                                                        (lambda (_hd144471144501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try144477144504_)
                  (if (gx#stx-pair? _hd144471144501_)
                      (let ((_e144474144507_ (gx#syntax-e _hd144471144501_)))
                        (let ((_lp-hd144475144511_
                               (let ()
                                 (declare (not safe))
                                 (##car _e144474144507_)))
                              (_lp-tl144476144514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e144474144507_))))
                          (_loop144473144497_
                           _lp-tl144476144514_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd144475144511_
                                   _bind-try144477144504_)))))
                      (let ((_bind-try144478144517_
                             (reverse _bind-try144477144504_)))
                        ((lambda (_L144521_)
                           (let ()
                             (let* ((_g144539144547_
                                     (lambda (_g144540144543_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g144540144543_)))
                                    (_g144538144577_
                                     (lambda (_g144540144551_)
                                       ((lambda (_L144554_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp149852
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp149847
                                                     (let ((__tmp149850
                                                            (let ((__tmp149851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g144568144571_ _g144569144574_)
                             (let ()
                               (declare (not safe))
                               (cons _g144568144571_ _g144569144574_)))))
                      (declare (not safe))
                      (foldr1 __tmp149851 '() _L144521_)))
                   (__tmp149848
                    (let ((__tmp149849
                           (let () (declare (not safe)) (cons _L144554_ '()))))
                      (declare (not safe))
                      (cons __tmp149849 '()))))
               (declare (not safe))
               (cons __tmp149850 __tmp149848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp149852
                                                      __tmp149847)))))
                                        _g144540144551_))))
                               (_g144538144577_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind144464_)))))))
                         _bind-try144478144517_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop144473144497_
                                                 _target144470144491_
                                                 '()))
                                              (_g144467144484_
                                               _g144468144488_)))))
                                    (_g144467144484_ _g144468144488_)))))
                        (_g144466144581_ _bind144464_))))))
          (let* ((_g144308144327_
                  (lambda (_g144309144323_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g144309144323_)))
                 (_g144307144450_
                  (lambda (_g144309144331_)
                    (if (gx#stx-pair? _g144309144331_)
                        (let ((_e144315144334_ (gx#syntax-e _g144309144331_)))
                          (let ((_hd144314144338_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e144315144334_)))
                                (_tl144313144341_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e144315144334_))))
                            (if (gx#stx-pair? _tl144313144341_)
                                (let ((_e144318144344_
                                       (gx#syntax-e _tl144313144341_)))
                                  (let ((_hd144317144348_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e144318144344_)))
                                        (_tl144316144351_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e144318144344_))))
                                    (if (gx#stx-pair? _tl144316144351_)
                                        (let ((_e144321144354_
                                               (gx#syntax-e _tl144316144351_)))
                                          (let ((_hd144320144358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e144321144354_)))
                                                (_tl144319144361_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e144321144354_))))
                                            ((lambda (_L144364_
                                                      _L144366_
                                                      _L144367_)
                                               (if (and (gx#identifier-list?
                                                         _L144366_)
                                                        (gx#stx-list?
                                                         _L144364_))
                                                   (let* ((_g144385144393_
                                                           (lambda (_g144386144389_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g144386144389_)))
                                                          (_g144384144446_
                                                           (lambda (_g144386144397_)
                                                             ((lambda (_L144400_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g144412144420_
                                  (lambda (_g144413144416_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g144413144416_)))
                                 (_g144411144442_
                                  (lambda (_g144413144424_)
                                    ((lambda (_L144427_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp149858
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp149853
                                                  (let ((__tmp149855
                                                         (let ((__tmp149856
                                                                (let ((__tmp149857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L144367_ '()))))
                          (declare (not safe))
                          (cons _L144400_ __tmp149857))))
                   (declare (not safe))
                   (cons __tmp149856 '())))
                (__tmp149854
                 (let () (declare (not safe)) (cons _L144427_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp149855
                                                          __tmp149854))))
                                             (declare (not safe))
                                             (cons __tmp149858 __tmp149853)))))
                                     _g144413144424_))))
                            (_g144411144442_
                             (_generate144305_
                              _L144400_
                              (gx#syntax->list _L144366_)
                              _L144364_)))))
                      _g144386144397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g144384144446_
                                                      (gx#genident 'e)))
                                                   (_g144308144327_
                                                    _g144309144331_)))
                                             _tl144319144361_
                                             _hd144320144358_
                                             _hd144317144348_)))
                                        (_g144308144327_ _g144309144331_))))
                                (_g144308144327_ _g144309144331_))))
                        (_g144308144327_ _g144309144331_)))))
            (_g144307144450_ _stx144302_)))))))
