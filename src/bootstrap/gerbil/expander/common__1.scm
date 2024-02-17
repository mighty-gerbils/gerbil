(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g143685_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143687_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143689_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143694_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143697_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143702_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143705_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143710_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143713_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143718_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143721_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143828_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj143680
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
           __obj143680
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143684 |gx[1]#_g143685_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143684
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143686 |gx[1]#_g143687_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143686
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143688 |gx[1]#_g143689_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143688
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143690
               (let ((__tmp143695
                      (let ((__tmp143696 |gx[1]#_g143697_|))
                        (declare (not safe))
                        (cons 'e __tmp143696)))
                     (__tmp143691
                      (let ((__tmp143692
                             (let ((__tmp143693 |gx[1]#_g143694_|))
                               (declare (not safe))
                               (cons 'source __tmp143693))))
                        (declare (not safe))
                        (cons __tmp143692 '()))))
                 (declare (not safe))
                 (cons __tmp143695 __tmp143691))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143690
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143698
               (let ((__tmp143703
                      (let ((__tmp143704 |gx[1]#_g143705_|))
                        (declare (not safe))
                        (cons 'e __tmp143704)))
                     (__tmp143699
                      (let ((__tmp143700
                             (let ((__tmp143701 |gx[1]#_g143702_|))
                               (declare (not safe))
                               (cons 'source __tmp143701))))
                        (declare (not safe))
                        (cons __tmp143700 '()))))
                 (declare (not safe))
                 (cons __tmp143703 __tmp143699))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143698
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143706
               (let ((__tmp143711
                      (let ((__tmp143712 |gx[1]#_g143713_|))
                        (declare (not safe))
                        (cons 'e __tmp143712)))
                     (__tmp143707
                      (let ((__tmp143708
                             (let ((__tmp143709 |gx[1]#_g143710_|))
                               (declare (not safe))
                               (cons 'source __tmp143709))))
                        (declare (not safe))
                        (cons __tmp143708 '()))))
                 (declare (not safe))
                 (cons __tmp143711 __tmp143707))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143706
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143714
               (let ((__tmp143719
                      (let ((__tmp143720 |gx[1]#_g143721_|))
                        (declare (not safe))
                        (cons 'e __tmp143720)))
                     (__tmp143715
                      (let ((__tmp143716
                             (let ((__tmp143717 |gx[1]#_g143718_|))
                               (declare (not safe))
                               (cons 'source __tmp143717))))
                        (declare (not safe))
                        (cons __tmp143716 '()))))
                 (declare (not safe))
                 (cons __tmp143719 __tmp143715))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143680
           __tmp143714
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj143680))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx137732_)
        (let* ((_g137736137750_
                (lambda (_g137737137746_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g137737137746_)))
               (_g137735137792_
                (lambda (_g137737137754_)
                  (if (gx#stx-pair? _g137737137754_)
                      (let ((_e137741137757_ (gx#syntax-e _g137737137754_)))
                        (let ((_hd137740137761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e137741137757_)))
                              (_tl137739137764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e137741137757_))))
                          (if (gx#stx-pair? _tl137739137764_)
                              (let ((_e137744137767_
                                     (gx#syntax-e _tl137739137764_)))
                                (let ((_hd137743137771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e137744137767_)))
                                      (_tl137742137774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e137744137767_))))
                                  (if (gx#stx-null? _tl137742137774_)
                                      ((lambda (_L137777_)
                                         (let ((__tmp143731
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp143722
                                                (let ((__tmp143728
                                                       (let ((__tmp143730
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp143729
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L137777_ '()))))
                 (declare (not safe))
                 (cons __tmp143730 __tmp143729)))
              (__tmp143723
               (let ((__tmp143724
                      (let ((__tmp143727 (gx#datum->syntax '#f 'error))
                            (__tmp143725
                             (let ((__tmp143726
                                    (let ()
                                      (declare (not safe))
                                      (cons _L137777_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp143726))))
                        (declare (not safe))
                        (cons __tmp143727 __tmp143725))))
                 (declare (not safe))
                 (cons __tmp143724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp143728
                                                        __tmp143723))))
                                           (declare (not safe))
                                           (cons __tmp143731 __tmp143722)))
                                       _hd137743137771_)
                                      (_g137736137750_ _g137737137754_))))
                              (_g137736137750_ _g137737137754_))))
                      (_g137736137750_ _g137737137754_)))))
          (_g137735137792_ _$stx137732_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx137796_)
        (letrec ((_generate137799_
                  (lambda (_tgt137948_ _kws137950_ _clauses137951_)
                    (letrec ((_generate-clause137953_
                              (lambda (_hd138863_ _E138865_)
                                (let* ((___stx143583143584_ _hd138863_)
                                       (_g138869138896_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx143583143584_))))
                                  (let ((___kont143586143587_
                                         (lambda (_L138992_ _L138994_)
                                           (_generate1137955_
                                            _hd138863_
                                            _L138994_
                                            '#t
                                            _L138992_
                                            _E138865_)))
                                        (___kont143588143589_
                                         (lambda (_L138944_
                                                  _L138946_
                                                  _L138947_)
                                           (_generate1137955_
                                            _hd138863_
                                            _L138947_
                                            _L138946_
                                            _L138944_
                                            _E138865_)))
                                        (___kont143590143591_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx137796_
                                            _hd138863_))))
                                    (if (gx#stx-pair? ___stx143583143584_)
                                        (let ((_e138875138972_
                                               (gx#syntax-e
                                                ___stx143583143584_)))
                                          (let ((_tl138873138979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e138875138972_)))
                                                (_hd138874138976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e138875138972_))))
                                            (if (gx#stx-pair? _tl138873138979_)
                                                (let ((_e138878138982_
                                                       (gx#syntax-e
                                                        _tl138873138979_)))
                                                  (let ((_tl138876138989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e138878138982_)))
                                                        (_hd138877138986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e138878138982_))))
                                                    (if (gx#stx-null?
                                                         _tl138876138989_)
                                                        (___kont143586143587_
                                                         _hd138877138986_
                                                         _hd138874138976_)
                                                        (if (gx#stx-pair?
                                                             _tl138876138989_)
                                                            (let ((_e138890138934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl138876138989_)))
                      (let ((_tl138888138941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e138890138934_)))
                            (_hd138889138938_
                             (let ()
                               (declare (not safe))
                               (##car _e138890138934_))))
                        (if (gx#stx-null? _tl138888138941_)
                            (___kont143588143589_
                             _hd138889138938_
                             _hd138877138986_
                             _hd138874138976_)
                            (___kont143590143591_))))
                    (___kont143590143591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont143590143591_))))
                                        (___kont143590143591_))))))
                             (_generate1137955_
                              (lambda (_where138341_
                                       _hd138343_
                                       _fender138344_
                                       _body138345_
                                       _E138346_)
                                (letrec ((_recur138348_
                                          (lambda (_hd138351_
                                                   _tgt138353_
                                                   _K138354_)
                                            (let* ((___stx143629143630_
                                                    _hd138351_)
                                                   (_g138357138369_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx143629143630_))))
                                              (let ((___kont143632143633_
                                                     (lambda (_L138653_
                                                              _L138655_)
                                                       (let* ((_g138666138674_
                                                               (lambda (_g138667138670_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g138667138670_)))
                      (_g138665138855_
                       (lambda (_g138667138678_)
                         ((lambda (_L138681_)
                            (let ()
                              (let* ((_g138693138701_
                                      (lambda (_g138694138697_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g138694138697_)))
                                     (_g138692138851_
                                      (lambda (_g138694138705_)
                                        ((lambda (_L138708_)
                                           (let ()
                                             (let* ((_g138721138729_
                                                     (lambda (_g138722138725_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g138722138725_)))
                                                    (_g138720138847_
                                                     (lambda (_g138722138733_)
                                                       ((lambda (_L138736_)
                                                          (let ()
                                                            (let* ((_g138749138757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g138750138753_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g138750138753_)))
                           (_g138748138843_
                            (lambda (_g138750138761_)
                              ((lambda (_L138764_)
                                 (let ()
                                   (let* ((_g138777138785_
                                           (lambda (_g138778138781_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g138778138781_)))
                                          (_g138776138839_
                                           (lambda (_g138778138789_)
                                             ((lambda (_L138792_)
                                                (let ()
                                                  (let* ((_g138805138813_
                                                          (lambda (_g138806138809_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g138806138809_)))
                                                         (_g138804138835_
                                                          (lambda (_g138806138817_)
                                                            ((lambda (_L138820_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp143764 (gx#datum->syntax '#f 'if))
                                 (__tmp143732
                                  (let ((__tmp143761
                                         (let ((__tmp143763
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp143762
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L138681_ '()))))
                                           (declare (not safe))
                                           (cons __tmp143763 __tmp143762)))
                                        (__tmp143733
                                         (let ((__tmp143735
                                                (let ((__tmp143760
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp143736
                                                       (let ((__tmp143754
                                                              (let ((__tmp143755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp143756
                                    (let ((__tmp143757
                                           (let ((__tmp143759
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp143758
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L138681_ '()))))
                                             (declare (not safe))
                                             (cons __tmp143759 __tmp143758))))
                                      (declare (not safe))
                                      (cons __tmp143757 '()))))
                               (declare (not safe))
                               (cons _L138708_ __tmp143756))))
                        (declare (not safe))
                        (cons __tmp143755 '())))
                     (__tmp143737
                      (let ((__tmp143738
                             (let ((__tmp143753 (gx#datum->syntax '#f 'let))
                                   (__tmp143739
                                    (let ((__tmp143741
                                           (let ((__tmp143748
                                                  (let ((__tmp143749
                                                         (let ((__tmp143750
                                                                (let ((__tmp143752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp143751
                               (let ()
                                 (declare (not safe))
                                 (cons _L138708_ '()))))
                          (declare (not safe))
                          (cons __tmp143752 __tmp143751))))
                   (declare (not safe))
                   (cons __tmp143750 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L138736_
                                                          __tmp143749)))
                                                 (__tmp143742
                                                  (let ((__tmp143743
                                                         (let ((__tmp143744
                                                                (let ((__tmp143745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp143747
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp143746
                                      (let ()
                                        (declare (not safe))
                                        (cons _L138708_ '()))))
                                 (declare (not safe))
                                 (cons __tmp143747 __tmp143746))))
                          (declare (not safe))
                          (cons __tmp143745 '()))))
                   (declare (not safe))
                   (cons _L138764_ __tmp143744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143743 '()))))
                                             (declare (not safe))
                                             (cons __tmp143748 __tmp143742)))
                                          (__tmp143740
                                           (let ()
                                             (declare (not safe))
                                             (cons _L138792_ '()))))
                                      (declare (not safe))
                                      (cons __tmp143741 __tmp143740))))
                               (declare (not safe))
                               (cons __tmp143753 __tmp143739))))
                        (declare (not safe))
                        (cons __tmp143738 '()))))
                 (declare (not safe))
                 (cons __tmp143754 __tmp143737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp143760
                                                        __tmp143736)))
                                               (__tmp143734
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L138820_ '()))))
                                           (declare (not safe))
                                           (cons __tmp143735 __tmp143734))))
                                    (declare (not safe))
                                    (cons __tmp143761 __tmp143733))))
                             (declare (not safe))
                             (cons __tmp143764 __tmp143732)))))
                     _g138806138817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g138804138835_
                                                     _E138346_))))
                                              _g138778138789_))))
                                     (_g138776138839_
                                      (_recur138348_
                                       _L138655_
                                       _L138736_
                                       (_recur138348_
                                        _L138653_
                                        _L138764_
                                        _K138354_))))))
                               _g138750138761_))))
                      (_g138748138843_ (gx#genident 'tl)))))
                _g138722138733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g138720138847_
                                                (gx#genident 'hd)))))
                                         _g138694138705_))))
                                (_g138692138851_ (gx#genident 'e)))))
                          _g138667138678_))))
                 (_g138665138855_ _tgt138353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont143634143635_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd138351_)
                                                           (if (gx#underscore?
                                                                _hd138351_)
                                                               _K138354_
                                                               (if (let ((__tmp143809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g138379138381_)
                                    (gx#bound-identifier=?
                                     _g138379138381_
                                     _hd138351_))))
                             (declare (not safe))
                             (find __tmp143809 _kws137950_))
                           (let* ((_g138385138400_
                                   (lambda (_g138386138396_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g138386138396_)))
                                  (_g138384138451_
                                   (lambda (_g138386138404_)
                                     (if (gx#stx-pair? _g138386138404_)
                                         (let ((_e138391138407_
                                                (gx#syntax-e _g138386138404_)))
                                           (let ((_hd138390138411_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e138391138407_)))
                                                 (_tl138389138414_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e138391138407_))))
                                             (if (gx#stx-pair?
                                                  _tl138389138414_)
                                                 (let ((_e138394138417_
                                                        (gx#syntax-e
                                                         _tl138389138414_)))
                                                   (let ((_hd138393138421_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e138394138417_)))
                                                         (_tl138392138424_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e138394138417_))))
                                                     (if (gx#stx-null?
                                                          _tl138392138424_)
                                                         ((lambda (_L138427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L138429_)
                    (let ()
                      (let ((__tmp143808 (gx#datum->syntax '#f 'if))
                            (__tmp143791
                             (let ((__tmp143794
                                    (let ((__tmp143807
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp143795
                                           (let ((__tmp143804
                                                  (let ((__tmp143806
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp143805
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L138429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143806
                                                          __tmp143805)))
                                                 (__tmp143796
                                                  (let ((__tmp143797
                                                         (let ((__tmp143803
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp143798
                        (let ((__tmp143799
                               (let ((__tmp143800
                                      (let ((__tmp143802
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp143801
                                             (let ()
                                               (declare (not safe))
                                               (cons _L138427_ '()))))
                                        (declare (not safe))
                                        (cons __tmp143802 __tmp143801))))
                                 (declare (not safe))
                                 (cons __tmp143800 '()))))
                          (declare (not safe))
                          (cons _L138429_ __tmp143799))))
                   (declare (not safe))
                   (cons __tmp143803 __tmp143798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143797 '()))))
                                             (declare (not safe))
                                             (cons __tmp143804 __tmp143796))))
                                      (declare (not safe))
                                      (cons __tmp143807 __tmp143795)))
                                   (__tmp143792
                                    (let ((__tmp143793
                                           (let ()
                                             (declare (not safe))
                                             (cons _E138346_ '()))))
                                      (declare (not safe))
                                      (cons _K138354_ __tmp143793))))
                               (declare (not safe))
                               (cons __tmp143794 __tmp143792))))
                        (declare (not safe))
                        (cons __tmp143808 __tmp143791))))
                  _hd138393138421_
                  _hd138390138411_)
                 (_g138385138400_ _g138386138404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g138385138400_
                                                  _g138386138404_))))
                                         (_g138385138400_ _g138386138404_)))))
                             (_g138384138451_ (list _tgt138353_ _hd138351_)))
                           (let* ((_g138455138470_
                                   (lambda (_g138456138466_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g138456138466_)))
                                  (_g138454138514_
                                   (lambda (_g138456138474_)
                                     (if (gx#stx-pair? _g138456138474_)
                                         (let ((_e138461138477_
                                                (gx#syntax-e _g138456138474_)))
                                           (let ((_hd138460138481_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e138461138477_)))
                                                 (_tl138459138484_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e138461138477_))))
                                             (if (gx#stx-pair?
                                                  _tl138459138484_)
                                                 (let ((_e138464138487_
                                                        (gx#syntax-e
                                                         _tl138459138484_)))
                                                   (let ((_hd138463138491_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e138464138487_)))
                                                         (_tl138462138494_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e138464138487_))))
                                                     (if (gx#stx-null?
                                                          _tl138462138494_)
                                                         ((lambda (_L138497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L138499_)
                    (let ()
                      (let ((__tmp143790 (gx#datum->syntax '#f 'let))
                            (__tmp143785
                             (let ((__tmp143787
                                    (let ((__tmp143788
                                           (let ((__tmp143789
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L138499_ '()))))
                                             (declare (not safe))
                                             (cons _L138497_ __tmp143789))))
                                      (declare (not safe))
                                      (cons __tmp143788 '())))
                                   (__tmp143786
                                    (let ()
                                      (declare (not safe))
                                      (cons _K138354_ '()))))
                               (declare (not safe))
                               (cons __tmp143787 __tmp143786))))
                        (declare (not safe))
                        (cons __tmp143790 __tmp143785))))
                  _hd138463138491_
                  _hd138460138481_)
                 (_g138455138470_ _g138456138474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g138455138470_
                                                  _g138456138474_))))
                                         (_g138455138470_ _g138456138474_)))))
                             (_g138454138514_ (list _tgt138353_ _hd138351_)))))
                   (if (gx#stx-null? _hd138351_)
                       (let* ((_g138518138526_
                               (lambda (_g138519138522_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g138519138522_)))
                              (_g138517138544_
                               (lambda (_g138519138530_)
                                 ((lambda (_L138533_)
                                    (let ()
                                      (let ((__tmp143784
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp143778
                                             (let ((__tmp143781
                                                    (let ((__tmp143783
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp143782
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L138533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp143783 __tmp143782)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp143779
                                                    (let ((__tmp143780
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E138346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K138354_ __tmp143780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp143781
                                                     __tmp143779))))
                                        (declare (not safe))
                                        (cons __tmp143784 __tmp143778))))
                                  _g138519138530_))))
                         (_g138517138544_ _tgt138353_))
                       (if (gx#stx-datum? _hd138351_)
                           (let* ((_g138548138567_
                                   (lambda (_g138549138563_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g138549138563_)))
                                  (_g138547138625_
                                   (lambda (_g138549138571_)
                                     (if (gx#stx-pair? _g138549138571_)
                                         (let ((_e138555138574_
                                                (gx#syntax-e _g138549138571_)))
                                           (let ((_hd138554138578_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e138555138574_)))
                                                 (_tl138553138581_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e138555138574_))))
                                             (if (gx#stx-pair?
                                                  _tl138553138581_)
                                                 (let ((_e138558138584_
                                                        (gx#syntax-e
                                                         _tl138553138581_)))
                                                   (let ((_hd138557138588_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e138558138584_)))
                                                         (_tl138556138591_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e138558138584_))))
                                                     (if (gx#stx-pair?
                                                          _tl138556138591_)
                                                         (let ((_e138561138594_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl138556138591_)))
                   (let ((_hd138560138598_
                          (let ()
                            (declare (not safe))
                            (##car _e138561138594_)))
                         (_tl138559138601_
                          (let ()
                            (declare (not safe))
                            (##cdr _e138561138594_))))
                     (if (gx#stx-null? _tl138559138601_)
                         ((lambda (_L138604_ _L138606_ _L138607_)
                            (let ()
                              (let ((__tmp143777 (gx#datum->syntax '#f 'if))
                                    (__tmp143765
                                     (let ((__tmp143768
                                            (let ((__tmp143769
                                                   (let ((__tmp143774
                                                          (let ((__tmp143776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp143775
                         (let () (declare (not safe)) (cons _L138607_ '()))))
                    (declare (not safe))
                    (cons __tmp143776 __tmp143775)))
                 (__tmp143770
                  (let ((__tmp143771
                         (let ((__tmp143773 (gx#datum->syntax '#f 'quote))
                               (__tmp143772
                                (let ()
                                  (declare (not safe))
                                  (cons _L138606_ '()))))
                           (declare (not safe))
                           (cons __tmp143773 __tmp143772))))
                    (declare (not safe))
                    (cons __tmp143771 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp143774
                                                           __tmp143770))))
                                              (declare (not safe))
                                              (cons _L138604_ __tmp143769)))
                                           (__tmp143766
                                            (let ((__tmp143767
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E138346_ '()))))
                                              (declare (not safe))
                                              (cons _K138354_ __tmp143767))))
                                       (declare (not safe))
                                       (cons __tmp143768 __tmp143766))))
                                (declare (not safe))
                                (cons __tmp143777 __tmp143765))))
                          _hd138560138598_
                          _hd138557138588_
                          _hd138554138578_)
                         (_g138548138567_ _g138549138571_))))
                 (_g138548138567_ _g138549138571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g138548138567_
                                                  _g138549138571_))))
                                         (_g138548138567_ _g138549138571_)))))
                             (_g138547138625_
                              (list _tgt138353_
                                    _hd138351_
                                    (let ((_e138629_ (gx#stx-e _hd138351_)))
                                      (if (or (keyword? _e138629_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e138629_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e138629_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx137796_
                            _where138341_
                            _hd138351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx143629143630_)
                                                    (let ((_e138363138643_
                                                           (gx#syntax-e
                                                            ___stx143629143630_)))
                                                      (let ((_tl138361138650_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e138363138643_)))
                    (_hd138362138647_
                     (let () (declare (not safe)) (##car _e138363138643_))))
                (___kont143632143633_ _tl138361138650_ _hd138362138647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont143634143635_)))))))
                                  (_recur138348_
                                   _hd138343_
                                   _tgt137948_
                                   (let ((__tmp143813
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp143810
                                          (let ((__tmp143811
                                                 (let ((__tmp143812
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E138346_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body138345_
                                                         __tmp143812))))
                                            (declare (not safe))
                                            (cons _fender138344_
                                                  __tmp143811))))
                                     (declare (not safe))
                                     (cons __tmp143813 __tmp143810))))))
                             (_generate-clauses137956_
                              (lambda (_clauses138079_)
                                (let _lp138082_ ((_rest138085_ _clauses138079_)
                                                 (_E138087_ (gx#genident 'E))
                                                 (_r138088_ '()))
                                  (let* ((___stx143665143666_ _rest138085_)
                                         (_g138091138103_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx143665143666_))))
                                    (let ((___kont143668143669_
                                           (lambda (_L138168_ _L138170_)
                                             (let* ((___stx143645143646_
                                                     _L138170_)
                                                    (_g138182138193_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx143645143646_))))
                                               (let ((___kont143648143649_
                                                      (lambda (_L138322_)
                                                        (if (gx#stx-null?
                                                             _L138168_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L138322_)
                             (let ((__tmp143822 (gx#stx-null? _L138322_)))
                               (declare (not safe))
                               (not __tmp143822)))
                        (let ((__tmp143814
                               (let ((__tmp143815
                                      (let ((__tmp143816
                                             (gx#stx-wrap-source
                                              (let ((__tmp143821
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp143817
                                                     (let ((__tmp143818
                                                            (let ((__tmp143819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp143820 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp143820 _L138322_))))
                      (declare (not safe))
                      (cons __tmp143819 '()))))
               (declare (not safe))
               (cons '() __tmp143818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp143821 __tmp143817))
                                              (gx#stx-source _L138170_))))
                                        (declare (not safe))
                                        (cons __tmp143816 '()))))
                                 (declare (not safe))
                                 (cons _E138087_ __tmp143815))))
                          (declare (not safe))
                          (cons __tmp143814 _r138088_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx137796_
                         _L138170_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx137796_
                     _L138170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont143650143651_
                                                      (lambda ()
                                                        (let* ((_g138204138212_
                                                                (lambda (_g138205138208_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g138205138208_)))
                       (_g138203138301_
                        (lambda (_g138205138216_)
                          ((lambda (_L138219_)
                             (let ()
                               (let* ((_g138235138243_
                                       (lambda (_g138236138239_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g138236138239_)))
                                      (_g138234138297_
                                       (lambda (_g138236138247_)
                                         ((lambda (_L138250_)
                                            (let ()
                                              (let* ((_g138263138271_
                                                      (lambda (_g138264138267_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g138264138267_)))
                                                     (_g138262138293_
                                                      (lambda (_g138264138275_)
                                                        ((lambda (_L138278_)
                                                           (let ()
                                                             (let ()
                                                               (_lp138082_
                                                                _L138168_
                                                                _L138219_
                                                                (let ((__tmp143823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp143824
                                      (let ()
                                        (declare (not safe))
                                        (cons _L138278_ '()))))
                                 (declare (not safe))
                                 (cons _E138087_ __tmp143824))))
                          (declare (not safe))
                          (cons __tmp143823 _r138088_))))))
                 _g138264138275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g138262138293_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp143827
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp143825
                                                         (let ((__tmp143826
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L138250_ '()))))
                   (declare (not safe))
                   (cons '() __tmp143826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143827
                                                          __tmp143825))
                                                  (gx#stx-source
                                                   _L138170_))))))
                                          _g138236138247_))))
                                 (_g138234138297_
                                  (_generate-clause137953_
                                   _L138170_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L138219_ '())))))))
                           _g138205138216_))))
                  (_g138203138301_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx143645143646_)
                                                     (let ((_e138187138312_
                                                            (gx#syntax-e
                                                             ___stx143645143646_)))
                                                       (let ((_tl138185138319_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e138187138312_)))
                     (_hd138186138316_
                      (let () (declare (not safe)) (##car _e138187138312_))))
                 (if (gx#identifier? _hd138186138316_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g143828_|
                          _hd138186138316_)
                         (___kont143648143649_ _tl138185138319_)
                         (___kont143650143651_))
                     (___kont143650143651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont143650143651_))))))
                                          (___kont143670143671_
                                           (lambda ()
                                             (let* ((_g138114138122_
                                                     (lambda (_g138115138118_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g138115138118_)))
                                                    (_g138113138147_
                                                     (lambda (_g138115138126_)
                                                       ((lambda (_L138129_)
                                                          (let ()
                                                            (let ((__tmp143829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp143830
                                  (let ((__tmp143831
                                         (gx#stx-wrap-source
                                          (let ((__tmp143839
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp143832
                                                 (let ((__tmp143833
                                                        (let ((__tmp143834
                                                               (let ((__tmp143838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp143835
                              (let ((__tmp143836
                                     (let ((__tmp143837
                                            (let ()
                                              (declare (not safe))
                                              (cons _L138129_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp143837))))
                                (declare (not safe))
                                (cons '#f __tmp143836))))
                         (declare (not safe))
                         (cons __tmp143838 __tmp143835))))
                  (declare (not safe))
                  (cons __tmp143834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp143833))))
                                            (declare (not safe))
                                            (cons __tmp143839 __tmp143832))
                                          (gx#stx-source _stx137796_))))
                                    (declare (not safe))
                                    (cons __tmp143831 '()))))
                             (declare (not safe))
                             (cons _E138087_ __tmp143830))))
                      (declare (not safe))
                      (cons __tmp143829 _r138088_))))
                _g138115138126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g138113138147_
                                                _tgt137948_)))))
                                      (if (gx#stx-pair? ___stx143665143666_)
                                          (let ((_e138097138158_
                                                 (gx#syntax-e
                                                  ___stx143665143666_)))
                                            (let ((_tl138095138165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e138097138158_)))
                                                  (_hd138096138162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e138097138158_))))
                                              (___kont143668143669_
                                               _tl138095138165_
                                               _hd138096138162_)))
                                          (___kont143670143671_))))))))
                      (let* ((_bind137958_
                              (_generate-clauses137956_ _clauses137951_))
                             (_g137961137978_
                              (lambda (_g137962137974_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g137962137974_)))
                             (_g137960138075_
                              (lambda (_g137962137982_)
                                (if (gx#stx-pair/null? _g137962137982_)
                                    (let ((_g143840_
                                           (gx#syntax-split-splice
                                            _g137962137982_
                                            '0)))
                                      (begin
                                        (let ((_g143841_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g143840_)
                                                     (##vector-length
                                                      _g143840_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g143841_ 2)))
                                              (error "Context expects 2 values"
                                                     _g143841_)))
                                        (let ((_target137964137985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g143840_ 0)))
                                              (_tl137966137988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g143840_ 1))))
                                          (if (gx#stx-null? _tl137966137988_)
                                              (letrec ((_loop137967137991_
                                                        (lambda (_hd137965137995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try137971137998_)
                  (if (gx#stx-pair? _hd137965137995_)
                      (let ((_e137968138001_ (gx#syntax-e _hd137965137995_)))
                        (let ((_lp-hd137969138005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e137968138001_)))
                              (_lp-tl137970138008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e137968138001_))))
                          (_loop137967137991_
                           _lp-tl137970138008_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd137969138005_
                                   _bind-try137971137998_)))))
                      (let ((_bind-try137972138011_
                             (reverse _bind-try137971137998_)))
                        ((lambda (_L138015_)
                           (let ()
                             (let* ((_g138033138041_
                                     (lambda (_g138034138037_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g138034138037_)))
                                    (_g138032138071_
                                     (lambda (_g138034138045_)
                                       ((lambda (_L138048_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp143847
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp143842
                                                     (let ((__tmp143845
                                                            (let ((__tmp143846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g138062138065_ _g138063138068_)
                             (let ()
                               (declare (not safe))
                               (cons _g138062138065_ _g138063138068_)))))
                      (declare (not safe))
                      (foldr1 __tmp143846 '() _L138015_)))
                   (__tmp143843
                    (let ((__tmp143844
                           (let () (declare (not safe)) (cons _L138048_ '()))))
                      (declare (not safe))
                      (cons __tmp143844 '()))))
               (declare (not safe))
               (cons __tmp143845 __tmp143843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp143847
                                                      __tmp143842)))))
                                        _g138034138045_))))
                               (_g138032138071_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind137958_)))))))
                         _bind-try137972138011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop137967137991_
                                                 _target137964137985_
                                                 '()))
                                              (_g137961137978_
                                               _g137962137982_)))))
                                    (_g137961137978_ _g137962137982_)))))
                        (_g137960138075_ _bind137958_))))))
          (let* ((_g137802137821_
                  (lambda (_g137803137817_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g137803137817_)))
                 (_g137801137944_
                  (lambda (_g137803137825_)
                    (if (gx#stx-pair? _g137803137825_)
                        (let ((_e137809137828_ (gx#syntax-e _g137803137825_)))
                          (let ((_hd137808137832_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e137809137828_)))
                                (_tl137807137835_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e137809137828_))))
                            (if (gx#stx-pair? _tl137807137835_)
                                (let ((_e137812137838_
                                       (gx#syntax-e _tl137807137835_)))
                                  (let ((_hd137811137842_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e137812137838_)))
                                        (_tl137810137845_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e137812137838_))))
                                    (if (gx#stx-pair? _tl137810137845_)
                                        (let ((_e137815137848_
                                               (gx#syntax-e _tl137810137845_)))
                                          (let ((_hd137814137852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e137815137848_)))
                                                (_tl137813137855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e137815137848_))))
                                            ((lambda (_L137858_
                                                      _L137860_
                                                      _L137861_)
                                               (if (and (gx#identifier-list?
                                                         _L137860_)
                                                        (gx#stx-list?
                                                         _L137858_))
                                                   (let* ((_g137879137887_
                                                           (lambda (_g137880137883_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g137880137883_)))
                                                          (_g137878137940_
                                                           (lambda (_g137880137891_)
                                                             ((lambda (_L137894_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g137906137914_
                                  (lambda (_g137907137910_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g137907137910_)))
                                 (_g137905137936_
                                  (lambda (_g137907137918_)
                                    ((lambda (_L137921_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp143853
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp143848
                                                  (let ((__tmp143850
                                                         (let ((__tmp143851
                                                                (let ((__tmp143852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L137861_ '()))))
                          (declare (not safe))
                          (cons _L137894_ __tmp143852))))
                   (declare (not safe))
                   (cons __tmp143851 '())))
                (__tmp143849
                 (let () (declare (not safe)) (cons _L137921_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143850
                                                          __tmp143849))))
                                             (declare (not safe))
                                             (cons __tmp143853 __tmp143848)))))
                                     _g137907137918_))))
                            (_g137905137936_
                             (_generate137799_
                              _L137894_
                              (gx#syntax->list _L137860_)
                              _L137858_)))))
                      _g137880137891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137878137940_
                                                      (gx#genident 'e)))
                                                   (_g137802137821_
                                                    _g137803137825_)))
                                             _tl137813137855_
                                             _hd137814137852_
                                             _hd137811137842_)))
                                        (_g137802137821_ _g137803137825_))))
                                (_g137802137821_ _g137803137825_))))
                        (_g137802137821_ _g137803137825_)))))
            (_g137801137944_ _stx137796_)))))))
