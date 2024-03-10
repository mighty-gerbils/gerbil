(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79710_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79712_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79714_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79719_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79722_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79727_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79730_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79735_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79738_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79743_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79746_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79853_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79705
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj79705
           'gerbil#AST::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           'syntax
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '(e source)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79709 |gx[1]#_g79710_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79709
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79711 |gx[1]#_g79712_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79711
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79713 |gx[1]#_g79714_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79713
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79715
               (let ((__tmp79720
                      (let ((__tmp79721 |gx[1]#_g79722_|))
                        (declare (not safe))
                        (cons 'e __tmp79721)))
                     (__tmp79716
                      (let ((__tmp79717
                             (let ((__tmp79718 |gx[1]#_g79719_|))
                               (declare (not safe))
                               (cons 'source __tmp79718))))
                        (declare (not safe))
                        (cons __tmp79717 '()))))
                 (declare (not safe))
                 (cons __tmp79720 __tmp79716))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79715
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79723
               (let ((__tmp79728
                      (let ((__tmp79729 |gx[1]#_g79730_|))
                        (declare (not safe))
                        (cons 'e __tmp79729)))
                     (__tmp79724
                      (let ((__tmp79725
                             (let ((__tmp79726 |gx[1]#_g79727_|))
                               (declare (not safe))
                               (cons 'source __tmp79726))))
                        (declare (not safe))
                        (cons __tmp79725 '()))))
                 (declare (not safe))
                 (cons __tmp79728 __tmp79724))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79723
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79731
               (let ((__tmp79736
                      (let ((__tmp79737 |gx[1]#_g79738_|))
                        (declare (not safe))
                        (cons 'e __tmp79737)))
                     (__tmp79732
                      (let ((__tmp79733
                             (let ((__tmp79734 |gx[1]#_g79735_|))
                               (declare (not safe))
                               (cons 'source __tmp79734))))
                        (declare (not safe))
                        (cons __tmp79733 '()))))
                 (declare (not safe))
                 (cons __tmp79736 __tmp79732))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79731
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79739
               (let ((__tmp79744
                      (let ((__tmp79745 |gx[1]#_g79746_|))
                        (declare (not safe))
                        (cons 'e __tmp79745)))
                     (__tmp79740
                      (let ((__tmp79741
                             (let ((__tmp79742 |gx[1]#_g79743_|))
                               (declare (not safe))
                               (cons 'source __tmp79742))))
                        (declare (not safe))
                        (cons __tmp79741 '()))))
                 (declare (not safe))
                 (cons __tmp79744 __tmp79740))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79705
           __tmp79739
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj79705))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78325_)
        (let* ((_g7832978343_
                (lambda (_g7833078339_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7833078339_)))
               (_g7832878385_
                (lambda (_g7833078347_)
                  (if (gx#stx-pair? _g7833078347_)
                      (let ((_e7833478350_ (gx#syntax-e _g7833078347_)))
                        (let ((_hd7833378354_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7833478350_)))
                              (_tl7833278357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7833478350_))))
                          (if (gx#stx-pair? _tl7833278357_)
                              (let ((_e7833778360_
                                     (gx#syntax-e _tl7833278357_)))
                                (let ((_hd7833678364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7833778360_)))
                                      (_tl7833578367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7833778360_))))
                                  (if (gx#stx-null? _tl7833578367_)
                                      ((lambda (_L78370_)
                                         (let ((__tmp79756
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79747
                                                (let ((__tmp79753
                                                       (let ((__tmp79755
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79754
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78370_ '()))))
                 (declare (not safe))
                 (cons __tmp79755 __tmp79754)))
              (__tmp79748
               (let ((__tmp79749
                      (let ((__tmp79752 (gx#datum->syntax '#f 'error))
                            (__tmp79750
                             (let ((__tmp79751
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78370_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79751))))
                        (declare (not safe))
                        (cons __tmp79752 __tmp79750))))
                 (declare (not safe))
                 (cons __tmp79749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79753
                                                        __tmp79748))))
                                           (declare (not safe))
                                           (cons __tmp79756 __tmp79747)))
                                       _hd7833678364_)
                                      (_g7832978343_ _g7833078347_))))
                              (_g7832978343_ _g7833078347_))))
                      (_g7832978343_ _g7833078347_)))))
          (_g7832878385_ _$stx78325_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78389_)
        (letrec ((_generate78392_
                  (lambda (_tgt78541_ _kws78543_ _clauses78544_)
                    (letrec ((_generate-clause78546_
                              (lambda (_hd79456_ _E79458_)
                                (let* ((___stx7960879609_ _hd79456_)
                                       (_g7946279489_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7960879609_))))
                                  (let ((___kont7961179612_
                                         (lambda (_L79585_ _L79587_)
                                           (_generate178548_
                                            _hd79456_
                                            _L79587_
                                            '#t
                                            _L79585_
                                            _E79458_)))
                                        (___kont7961379614_
                                         (lambda (_L79537_ _L79539_ _L79540_)
                                           (_generate178548_
                                            _hd79456_
                                            _L79540_
                                            _L79539_
                                            _L79537_
                                            _E79458_)))
                                        (___kont7961579616_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78389_
                                            _hd79456_))))
                                    (if (gx#stx-pair? ___stx7960879609_)
                                        (let ((_e7946879565_
                                               (gx#syntax-e
                                                ___stx7960879609_)))
                                          (let ((_tl7946679572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7946879565_)))
                                                (_hd7946779569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7946879565_))))
                                            (if (gx#stx-pair? _tl7946679572_)
                                                (let ((_e7947179575_
                                                       (gx#syntax-e
                                                        _tl7946679572_)))
                                                  (let ((_tl7946979582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7947179575_)))
                                                        (_hd7947079579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7947179575_))))
                                                    (if (gx#stx-null?
                                                         _tl7946979582_)
                                                        (___kont7961179612_
                                                         _hd7947079579_
                                                         _hd7946779569_)
                                                        (if (gx#stx-pair?
                                                             _tl7946979582_)
                                                            (let ((_e7948379527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7946979582_)))
                      (let ((_tl7948179534_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7948379527_)))
                            (_hd7948279531_
                             (let ()
                               (declare (not safe))
                               (##car _e7948379527_))))
                        (if (gx#stx-null? _tl7948179534_)
                            (___kont7961379614_
                             _hd7948279531_
                             _hd7947079579_
                             _hd7946779569_)
                            (___kont7961579616_))))
                    (___kont7961579616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7961579616_))))
                                        (___kont7961579616_))))))
                             (_generate178548_
                              (lambda (_where78934_
                                       _hd78936_
                                       _fender78937_
                                       _body78938_
                                       _E78939_)
                                (letrec ((_recur78941_
                                          (lambda (_hd78944_
                                                   _tgt78946_
                                                   _K78947_)
                                            (let* ((___stx7965479655_
                                                    _hd78944_)
                                                   (_g7895078962_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7965479655_))))
                                              (let ((___kont7965779658_
                                                     (lambda (_L79246_
                                                              _L79248_)
                                                       (let* ((_g7925979267_
                                                               (lambda (_g7926079263_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7926079263_)))
                      (_g7925879448_
                       (lambda (_g7926079271_)
                         ((lambda (_L79274_)
                            (let ()
                              (let* ((_g7928679294_
                                      (lambda (_g7928779290_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7928779290_)))
                                     (_g7928579444_
                                      (lambda (_g7928779298_)
                                        ((lambda (_L79301_)
                                           (let ()
                                             (let* ((_g7931479322_
                                                     (lambda (_g7931579318_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7931579318_)))
                                                    (_g7931379440_
                                                     (lambda (_g7931579326_)
                                                       ((lambda (_L79329_)
                                                          (let ()
                                                            (let* ((_g7934279350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7934379346_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7934379346_)))
                           (_g7934179436_
                            (lambda (_g7934379354_)
                              ((lambda (_L79357_)
                                 (let ()
                                   (let* ((_g7937079378_
                                           (lambda (_g7937179374_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7937179374_)))
                                          (_g7936979432_
                                           (lambda (_g7937179382_)
                                             ((lambda (_L79385_)
                                                (let ()
                                                  (let* ((_g7939879406_
                                                          (lambda (_g7939979402_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7939979402_)))
                                                         (_g7939779428_
                                                          (lambda (_g7939979410_)
                                                            ((lambda (_L79413_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79789 (gx#datum->syntax '#f 'if))
                                 (__tmp79757
                                  (let ((__tmp79786
                                         (let ((__tmp79788
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79787
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79274_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79788 __tmp79787)))
                                        (__tmp79758
                                         (let ((__tmp79760
                                                (let ((__tmp79785
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79761
                                                       (let ((__tmp79779
                                                              (let ((__tmp79780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79781
                                    (let ((__tmp79782
                                           (let ((__tmp79784
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79783
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79274_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79784 __tmp79783))))
                                      (declare (not safe))
                                      (cons __tmp79782 '()))))
                               (declare (not safe))
                               (cons _L79301_ __tmp79781))))
                        (declare (not safe))
                        (cons __tmp79780 '())))
                     (__tmp79762
                      (let ((__tmp79763
                             (let ((__tmp79778 (gx#datum->syntax '#f 'let))
                                   (__tmp79764
                                    (let ((__tmp79766
                                           (let ((__tmp79773
                                                  (let ((__tmp79774
                                                         (let ((__tmp79775
                                                                (let ((__tmp79777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79776
                               (let ()
                                 (declare (not safe))
                                 (cons _L79301_ '()))))
                          (declare (not safe))
                          (cons __tmp79777 __tmp79776))))
                   (declare (not safe))
                   (cons __tmp79775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79329_
                                                          __tmp79774)))
                                                 (__tmp79767
                                                  (let ((__tmp79768
                                                         (let ((__tmp79769
                                                                (let ((__tmp79770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79772 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79771
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79301_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79772 __tmp79771))))
                          (declare (not safe))
                          (cons __tmp79770 '()))))
                   (declare (not safe))
                   (cons _L79357_ __tmp79769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79768 '()))))
                                             (declare (not safe))
                                             (cons __tmp79773 __tmp79767)))
                                          (__tmp79765
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79385_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79766 __tmp79765))))
                               (declare (not safe))
                               (cons __tmp79778 __tmp79764))))
                        (declare (not safe))
                        (cons __tmp79763 '()))))
                 (declare (not safe))
                 (cons __tmp79779 __tmp79762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79785
                                                        __tmp79761)))
                                               (__tmp79759
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79413_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79760 __tmp79759))))
                                    (declare (not safe))
                                    (cons __tmp79786 __tmp79758))))
                             (declare (not safe))
                             (cons __tmp79789 __tmp79757)))))
                     _g7939979410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7939779428_ _E78939_))))
                                              _g7937179382_))))
                                     (_g7936979432_
                                      (_recur78941_
                                       _L79248_
                                       _L79329_
                                       (_recur78941_
                                        _L79246_
                                        _L79357_
                                        _K78947_))))))
                               _g7934379354_))))
                      (_g7934179436_ (gx#genident 'tl)))))
                _g7931579326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7931379440_
                                                (gx#genident 'hd)))))
                                         _g7928779298_))))
                                (_g7928579444_ (gx#genident 'e)))))
                          _g7926079271_))))
                 (_g7925879448_ _tgt78946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7965979660_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78944_)
                                                           (if (gx#underscore?
                                                                _hd78944_)
                                                               _K78947_
                                                               (if (let ((__tmp79834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7897278974_)
                                    (gx#bound-identifier=?
                                     _g7897278974_
                                     _hd78944_))))
                             (declare (not safe))
                             (find __tmp79834 _kws78543_))
                           (let* ((_g7897878993_
                                   (lambda (_g7897978989_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7897978989_)))
                                  (_g7897779044_
                                   (lambda (_g7897978997_)
                                     (if (gx#stx-pair? _g7897978997_)
                                         (let ((_e7898479000_
                                                (gx#syntax-e _g7897978997_)))
                                           (let ((_hd7898379004_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7898479000_)))
                                                 (_tl7898279007_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7898479000_))))
                                             (if (gx#stx-pair? _tl7898279007_)
                                                 (let ((_e7898779010_
                                                        (gx#syntax-e
                                                         _tl7898279007_)))
                                                   (let ((_hd7898679014_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7898779010_)))
                                                         (_tl7898579017_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7898779010_))))
                                                     (if (gx#stx-null?
                                                          _tl7898579017_)
                                                         ((lambda (_L79020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79022_)
                    (let ()
                      (let ((__tmp79833 (gx#datum->syntax '#f 'if))
                            (__tmp79816
                             (let ((__tmp79819
                                    (let ((__tmp79832
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79820
                                           (let ((__tmp79829
                                                  (let ((__tmp79831
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79830
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79831
                                                          __tmp79830)))
                                                 (__tmp79821
                                                  (let ((__tmp79822
                                                         (let ((__tmp79828
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79823
                        (let ((__tmp79824
                               (let ((__tmp79825
                                      (let ((__tmp79827
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79826
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79020_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79827 __tmp79826))))
                                 (declare (not safe))
                                 (cons __tmp79825 '()))))
                          (declare (not safe))
                          (cons _L79022_ __tmp79824))))
                   (declare (not safe))
                   (cons __tmp79828 __tmp79823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79822 '()))))
                                             (declare (not safe))
                                             (cons __tmp79829 __tmp79821))))
                                      (declare (not safe))
                                      (cons __tmp79832 __tmp79820)))
                                   (__tmp79817
                                    (let ((__tmp79818
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78939_ '()))))
                                      (declare (not safe))
                                      (cons _K78947_ __tmp79818))))
                               (declare (not safe))
                               (cons __tmp79819 __tmp79817))))
                        (declare (not safe))
                        (cons __tmp79833 __tmp79816))))
                  _hd7898679014_
                  _hd7898379004_)
                 (_g7897878993_ _g7897978997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7897878993_
                                                  _g7897978997_))))
                                         (_g7897878993_ _g7897978997_)))))
                             (_g7897779044_ (list _tgt78946_ _hd78944_)))
                           (let* ((_g7904879063_
                                   (lambda (_g7904979059_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7904979059_)))
                                  (_g7904779107_
                                   (lambda (_g7904979067_)
                                     (if (gx#stx-pair? _g7904979067_)
                                         (let ((_e7905479070_
                                                (gx#syntax-e _g7904979067_)))
                                           (let ((_hd7905379074_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7905479070_)))
                                                 (_tl7905279077_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7905479070_))))
                                             (if (gx#stx-pair? _tl7905279077_)
                                                 (let ((_e7905779080_
                                                        (gx#syntax-e
                                                         _tl7905279077_)))
                                                   (let ((_hd7905679084_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7905779080_)))
                                                         (_tl7905579087_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7905779080_))))
                                                     (if (gx#stx-null?
                                                          _tl7905579087_)
                                                         ((lambda (_L79090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79092_)
                    (let ()
                      (let ((__tmp79815 (gx#datum->syntax '#f 'let))
                            (__tmp79810
                             (let ((__tmp79812
                                    (let ((__tmp79813
                                           (let ((__tmp79814
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79092_ '()))))
                                             (declare (not safe))
                                             (cons _L79090_ __tmp79814))))
                                      (declare (not safe))
                                      (cons __tmp79813 '())))
                                   (__tmp79811
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78947_ '()))))
                               (declare (not safe))
                               (cons __tmp79812 __tmp79811))))
                        (declare (not safe))
                        (cons __tmp79815 __tmp79810))))
                  _hd7905679084_
                  _hd7905379074_)
                 (_g7904879063_ _g7904979067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7904879063_
                                                  _g7904979067_))))
                                         (_g7904879063_ _g7904979067_)))))
                             (_g7904779107_ (list _tgt78946_ _hd78944_)))))
                   (if (gx#stx-null? _hd78944_)
                       (let* ((_g7911179119_
                               (lambda (_g7911279115_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7911279115_)))
                              (_g7911079137_
                               (lambda (_g7911279123_)
                                 ((lambda (_L79126_)
                                    (let ()
                                      (let ((__tmp79809
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79803
                                             (let ((__tmp79806
                                                    (let ((__tmp79808
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79808 __tmp79807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79804
                                                    (let ((__tmp79805
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78947_ __tmp79805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79806 __tmp79804))))
                                        (declare (not safe))
                                        (cons __tmp79809 __tmp79803))))
                                  _g7911279123_))))
                         (_g7911079137_ _tgt78946_))
                       (if (gx#stx-datum? _hd78944_)
                           (let* ((_g7914179160_
                                   (lambda (_g7914279156_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7914279156_)))
                                  (_g7914079218_
                                   (lambda (_g7914279164_)
                                     (if (gx#stx-pair? _g7914279164_)
                                         (let ((_e7914879167_
                                                (gx#syntax-e _g7914279164_)))
                                           (let ((_hd7914779171_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7914879167_)))
                                                 (_tl7914679174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7914879167_))))
                                             (if (gx#stx-pair? _tl7914679174_)
                                                 (let ((_e7915179177_
                                                        (gx#syntax-e
                                                         _tl7914679174_)))
                                                   (let ((_hd7915079181_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7915179177_)))
                                                         (_tl7914979184_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7915179177_))))
                                                     (if (gx#stx-pair?
                                                          _tl7914979184_)
                                                         (let ((_e7915479187_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7914979184_)))
                   (let ((_hd7915379191_
                          (let () (declare (not safe)) (##car _e7915479187_)))
                         (_tl7915279194_
                          (let () (declare (not safe)) (##cdr _e7915479187_))))
                     (if (gx#stx-null? _tl7915279194_)
                         ((lambda (_L79197_ _L79199_ _L79200_)
                            (let ()
                              (let ((__tmp79802 (gx#datum->syntax '#f 'if))
                                    (__tmp79790
                                     (let ((__tmp79793
                                            (let ((__tmp79794
                                                   (let ((__tmp79799
                                                          (let ((__tmp79801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79800
                         (let () (declare (not safe)) (cons _L79200_ '()))))
                    (declare (not safe))
                    (cons __tmp79801 __tmp79800)))
                 (__tmp79795
                  (let ((__tmp79796
                         (let ((__tmp79798 (gx#datum->syntax '#f 'quote))
                               (__tmp79797
                                (let ()
                                  (declare (not safe))
                                  (cons _L79199_ '()))))
                           (declare (not safe))
                           (cons __tmp79798 __tmp79797))))
                    (declare (not safe))
                    (cons __tmp79796 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79799
                                                           __tmp79795))))
                                              (declare (not safe))
                                              (cons _L79197_ __tmp79794)))
                                           (__tmp79791
                                            (let ((__tmp79792
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78939_ '()))))
                                              (declare (not safe))
                                              (cons _K78947_ __tmp79792))))
                                       (declare (not safe))
                                       (cons __tmp79793 __tmp79791))))
                                (declare (not safe))
                                (cons __tmp79802 __tmp79790))))
                          _hd7915379191_
                          _hd7915079181_
                          _hd7914779171_)
                         (_g7914179160_ _g7914279164_))))
                 (_g7914179160_ _g7914279164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7914179160_
                                                  _g7914279164_))))
                                         (_g7914179160_ _g7914279164_)))))
                             (_g7914079218_
                              (list _tgt78946_
                                    _hd78944_
                                    (let ((_e79222_ (gx#stx-e _hd78944_)))
                                      (if (or (keyword? _e79222_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79222_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79222_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78389_
                            _where78934_
                            _hd78944_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7965479655_)
                                                    (let ((_e7895679236_
                                                           (gx#syntax-e
                                                            ___stx7965479655_)))
                                                      (let ((_tl7895479243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7895679236_)))
                    (_hd7895579240_
                     (let () (declare (not safe)) (##car _e7895679236_))))
                (___kont7965779658_ _tl7895479243_ _hd7895579240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7965979660_)))))))
                                  (_recur78941_
                                   _hd78936_
                                   _tgt78541_
                                   (let ((__tmp79838
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79835
                                          (let ((__tmp79836
                                                 (let ((__tmp79837
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78939_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78938_
                                                         __tmp79837))))
                                            (declare (not safe))
                                            (cons _fender78937_ __tmp79836))))
                                     (declare (not safe))
                                     (cons __tmp79838 __tmp79835))))))
                             (_generate-clauses78549_
                              (lambda (_clauses78672_)
                                (let _lp78675_ ((_rest78678_ _clauses78672_)
                                                (_E78680_ (gx#genident 'E))
                                                (_r78681_ '()))
                                  (let* ((___stx7969079691_ _rest78678_)
                                         (_g7868478696_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7969079691_))))
                                    (let ((___kont7969379694_
                                           (lambda (_L78761_ _L78763_)
                                             (let* ((___stx7967079671_
                                                     _L78763_)
                                                    (_g7877578786_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7967079671_))))
                                               (let ((___kont7967379674_
                                                      (lambda (_L78915_)
                                                        (if (gx#stx-null?
                                                             _L78761_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78915_)
                             (let ((__tmp79847 (gx#stx-null? _L78915_)))
                               (declare (not safe))
                               (not __tmp79847)))
                        (let ((__tmp79839
                               (let ((__tmp79840
                                      (let ((__tmp79841
                                             (gx#stx-wrap-source
                                              (let ((__tmp79846
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79842
                                                     (let ((__tmp79843
                                                            (let ((__tmp79844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79845 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79845 _L78915_))))
                      (declare (not safe))
                      (cons __tmp79844 '()))))
               (declare (not safe))
               (cons '() __tmp79843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79846 __tmp79842))
                                              (gx#stx-source _L78763_))))
                                        (declare (not safe))
                                        (cons __tmp79841 '()))))
                                 (declare (not safe))
                                 (cons _E78680_ __tmp79840))))
                          (declare (not safe))
                          (cons __tmp79839 _r78681_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78389_
                         _L78763_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78389_
                     _L78763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7967579676_
                                                      (lambda ()
                                                        (let* ((_g7879778805_
                                                                (lambda (_g7879878801_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7879878801_)))
                       (_g7879678894_
                        (lambda (_g7879878809_)
                          ((lambda (_L78812_)
                             (let ()
                               (let* ((_g7882878836_
                                       (lambda (_g7882978832_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7882978832_)))
                                      (_g7882778890_
                                       (lambda (_g7882978840_)
                                         ((lambda (_L78843_)
                                            (let ()
                                              (let* ((_g7885678864_
                                                      (lambda (_g7885778860_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7885778860_)))
                                                     (_g7885578886_
                                                      (lambda (_g7885778868_)
                                                        ((lambda (_L78871_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78675_
                                                                _L78761_
                                                                _L78812_
                                                                (let ((__tmp79848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79849
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78871_ '()))))
                                 (declare (not safe))
                                 (cons _E78680_ __tmp79849))))
                          (declare (not safe))
                          (cons __tmp79848 _r78681_))))))
                 _g7885778868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7885578886_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79852
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79850
                                                         (let ((__tmp79851
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78843_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79852
                                                          __tmp79850))
                                                  (gx#stx-source _L78763_))))))
                                          _g7882978840_))))
                                 (_g7882778890_
                                  (_generate-clause78546_
                                   _L78763_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78812_ '())))))))
                           _g7879878809_))))
                  (_g7879678894_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7967079671_)
                                                     (let ((_e7878078905_
                                                            (gx#syntax-e
                                                             ___stx7967079671_)))
                                                       (let ((_tl7877878912_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7878078905_)))
                     (_hd7877978909_
                      (let () (declare (not safe)) (##car _e7878078905_))))
                 (if (gx#identifier? _hd7877978909_)
                     (if (gx#free-identifier=? |gx[1]#_g79853_| _hd7877978909_)
                         (___kont7967379674_ _tl7877878912_)
                         (___kont7967579676_))
                     (___kont7967579676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7967579676_))))))
                                          (___kont7969579696_
                                           (lambda ()
                                             (let* ((_g7870778715_
                                                     (lambda (_g7870878711_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7870878711_)))
                                                    (_g7870678740_
                                                     (lambda (_g7870878719_)
                                                       ((lambda (_L78722_)
                                                          (let ()
                                                            (let ((__tmp79854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79855
                                  (let ((__tmp79856
                                         (gx#stx-wrap-source
                                          (let ((__tmp79864
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79857
                                                 (let ((__tmp79858
                                                        (let ((__tmp79859
                                                               (let ((__tmp79863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79860
                              (let ((__tmp79861
                                     (let ((__tmp79862
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78722_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79862))))
                                (declare (not safe))
                                (cons '#f __tmp79861))))
                         (declare (not safe))
                         (cons __tmp79863 __tmp79860))))
                  (declare (not safe))
                  (cons __tmp79859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79858))))
                                            (declare (not safe))
                                            (cons __tmp79864 __tmp79857))
                                          (gx#stx-source _stx78389_))))
                                    (declare (not safe))
                                    (cons __tmp79856 '()))))
                             (declare (not safe))
                             (cons _E78680_ __tmp79855))))
                      (declare (not safe))
                      (cons __tmp79854 _r78681_))))
                _g7870878719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7870678740_ _tgt78541_)))))
                                      (if (gx#stx-pair? ___stx7969079691_)
                                          (let ((_e7869078751_
                                                 (gx#syntax-e
                                                  ___stx7969079691_)))
                                            (let ((_tl7868878758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7869078751_)))
                                                  (_hd7868978755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7869078751_))))
                                              (___kont7969379694_
                                               _tl7868878758_
                                               _hd7868978755_)))
                                          (___kont7969579696_))))))))
                      (let* ((_bind78551_
                              (_generate-clauses78549_ _clauses78544_))
                             (_g7855478571_
                              (lambda (_g7855578567_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7855578567_)))
                             (_g7855378668_
                              (lambda (_g7855578575_)
                                (if (gx#stx-pair/null? _g7855578575_)
                                    (let ((_g79865_
                                           (gx#syntax-split-splice
                                            _g7855578575_
                                            '0)))
                                      (begin
                                        (let ((_g79866_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79865_)
                                                     (##vector-length _g79865_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79866_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79866_)))
                                        (let ((_target7855778578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79865_ 0)))
                                              (_tl7855978581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79865_ 1))))
                                          (if (gx#stx-null? _tl7855978581_)
                                              (letrec ((_loop7856078584_
                                                        (lambda (_hd7855878588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7856478591_)
                  (if (gx#stx-pair? _hd7855878588_)
                      (let ((_e7856178594_ (gx#syntax-e _hd7855878588_)))
                        (let ((_lp-hd7856278598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7856178594_)))
                              (_lp-tl7856378601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7856178594_))))
                          (_loop7856078584_
                           _lp-tl7856378601_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7856278598_ _bind-try7856478591_)))))
                      (let ((_bind-try7856578604_
                             (reverse _bind-try7856478591_)))
                        ((lambda (_L78608_)
                           (let ()
                             (let* ((_g7862678634_
                                     (lambda (_g7862778630_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7862778630_)))
                                    (_g7862578664_
                                     (lambda (_g7862778638_)
                                       ((lambda (_L78641_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79872
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79867
                                                     (let ((__tmp79870
                                                            (let ((__tmp79871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7865578658_ _g7865678661_)
                             (let ()
                               (declare (not safe))
                               (cons _g7865578658_ _g7865678661_)))))
                      (declare (not safe))
                      (foldr1 __tmp79871 '() _L78608_)))
                   (__tmp79868
                    (let ((__tmp79869
                           (let () (declare (not safe)) (cons _L78641_ '()))))
                      (declare (not safe))
                      (cons __tmp79869 '()))))
               (declare (not safe))
               (cons __tmp79870 __tmp79868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79872
                                                      __tmp79867)))))
                                        _g7862778638_))))
                               (_g7862578664_ (car (last _bind78551_))))))
                         _bind-try7856578604_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7856078584_
                                                 _target7855778578_
                                                 '()))
                                              (_g7855478571_ _g7855578575_)))))
                                    (_g7855478571_ _g7855578575_)))))
                        (_g7855378668_ _bind78551_))))))
          (let* ((_g7839578414_
                  (lambda (_g7839678410_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7839678410_)))
                 (_g7839478537_
                  (lambda (_g7839678418_)
                    (if (gx#stx-pair? _g7839678418_)
                        (let ((_e7840278421_ (gx#syntax-e _g7839678418_)))
                          (let ((_hd7840178425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7840278421_)))
                                (_tl7840078428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7840278421_))))
                            (if (gx#stx-pair? _tl7840078428_)
                                (let ((_e7840578431_
                                       (gx#syntax-e _tl7840078428_)))
                                  (let ((_hd7840478435_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7840578431_)))
                                        (_tl7840378438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7840578431_))))
                                    (if (gx#stx-pair? _tl7840378438_)
                                        (let ((_e7840878441_
                                               (gx#syntax-e _tl7840378438_)))
                                          (let ((_hd7840778445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7840878441_)))
                                                (_tl7840678448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7840878441_))))
                                            ((lambda (_L78451_
                                                      _L78453_
                                                      _L78454_)
                                               (if (and (gx#identifier-list?
                                                         _L78453_)
                                                        (gx#stx-list?
                                                         _L78451_))
                                                   (let* ((_g7847278480_
                                                           (lambda (_g7847378476_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7847378476_)))
                                                          (_g7847178533_
                                                           (lambda (_g7847378484_)
                                                             ((lambda (_L78487_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7849978507_
                                  (lambda (_g7850078503_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7850078503_)))
                                 (_g7849878529_
                                  (lambda (_g7850078511_)
                                    ((lambda (_L78514_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79878
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79873
                                                  (let ((__tmp79875
                                                         (let ((__tmp79876
                                                                (let ((__tmp79877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78454_ '()))))
                          (declare (not safe))
                          (cons _L78487_ __tmp79877))))
                   (declare (not safe))
                   (cons __tmp79876 '())))
                (__tmp79874 (let () (declare (not safe)) (cons _L78514_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79875
                                                          __tmp79874))))
                                             (declare (not safe))
                                             (cons __tmp79878 __tmp79873)))))
                                     _g7850078511_))))
                            (_g7849878529_
                             (_generate78392_
                              _L78487_
                              (gx#syntax->list _L78453_)
                              _L78451_)))))
                      _g7847378484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7847178533_
                                                      (gx#genident 'e)))
                                                   (_g7839578414_
                                                    _g7839678418_)))
                                             _tl7840678448_
                                             _hd7840778445_
                                             _hd7840478435_)))
                                        (_g7839578414_ _g7839678418_))))
                                (_g7839578414_ _g7839678418_))))
                        (_g7839578414_ _g7839678418_)))))
            (_g7839478537_ _stx78389_)))))))
