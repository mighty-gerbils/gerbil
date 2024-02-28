(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79697_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79699_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79701_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79706_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79709_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79714_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79717_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79722_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79725_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79730_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79733_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79840_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79692
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
           __obj79692
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79696 |gx[1]#_g79697_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79696
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79698 |gx[1]#_g79699_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79698
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79700 |gx[1]#_g79701_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79700
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79702
               (let ((__tmp79707
                      (let ((__tmp79708 |gx[1]#_g79709_|))
                        (declare (not safe))
                        (cons 'e __tmp79708)))
                     (__tmp79703
                      (let ((__tmp79704
                             (let ((__tmp79705 |gx[1]#_g79706_|))
                               (declare (not safe))
                               (cons 'source __tmp79705))))
                        (declare (not safe))
                        (cons __tmp79704 '()))))
                 (declare (not safe))
                 (cons __tmp79707 __tmp79703))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79702
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79710
               (let ((__tmp79715
                      (let ((__tmp79716 |gx[1]#_g79717_|))
                        (declare (not safe))
                        (cons 'e __tmp79716)))
                     (__tmp79711
                      (let ((__tmp79712
                             (let ((__tmp79713 |gx[1]#_g79714_|))
                               (declare (not safe))
                               (cons 'source __tmp79713))))
                        (declare (not safe))
                        (cons __tmp79712 '()))))
                 (declare (not safe))
                 (cons __tmp79715 __tmp79711))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79710
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79718
               (let ((__tmp79723
                      (let ((__tmp79724 |gx[1]#_g79725_|))
                        (declare (not safe))
                        (cons 'e __tmp79724)))
                     (__tmp79719
                      (let ((__tmp79720
                             (let ((__tmp79721 |gx[1]#_g79722_|))
                               (declare (not safe))
                               (cons 'source __tmp79721))))
                        (declare (not safe))
                        (cons __tmp79720 '()))))
                 (declare (not safe))
                 (cons __tmp79723 __tmp79719))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79718
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79726
               (let ((__tmp79731
                      (let ((__tmp79732 |gx[1]#_g79733_|))
                        (declare (not safe))
                        (cons 'e __tmp79732)))
                     (__tmp79727
                      (let ((__tmp79728
                             (let ((__tmp79729 |gx[1]#_g79730_|))
                               (declare (not safe))
                               (cons 'source __tmp79729))))
                        (declare (not safe))
                        (cons __tmp79728 '()))))
                 (declare (not safe))
                 (cons __tmp79731 __tmp79727))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79692
           __tmp79726
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79692))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78312_)
        (let* ((_g7831678330_
                (lambda (_g7831778326_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7831778326_)))
               (_g7831578372_
                (lambda (_g7831778334_)
                  (if (gx#stx-pair? _g7831778334_)
                      (let ((_e7832178337_ (gx#syntax-e _g7831778334_)))
                        (let ((_hd7832078341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7832178337_)))
                              (_tl7831978344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7832178337_))))
                          (if (gx#stx-pair? _tl7831978344_)
                              (let ((_e7832478347_
                                     (gx#syntax-e _tl7831978344_)))
                                (let ((_hd7832378351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7832478347_)))
                                      (_tl7832278354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7832478347_))))
                                  (if (gx#stx-null? _tl7832278354_)
                                      ((lambda (_L78357_)
                                         (let ((__tmp79743
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79734
                                                (let ((__tmp79740
                                                       (let ((__tmp79742
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79741
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78357_ '()))))
                 (declare (not safe))
                 (cons __tmp79742 __tmp79741)))
              (__tmp79735
               (let ((__tmp79736
                      (let ((__tmp79739 (gx#datum->syntax '#f 'error))
                            (__tmp79737
                             (let ((__tmp79738
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78357_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79738))))
                        (declare (not safe))
                        (cons __tmp79739 __tmp79737))))
                 (declare (not safe))
                 (cons __tmp79736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79740
                                                        __tmp79735))))
                                           (declare (not safe))
                                           (cons __tmp79743 __tmp79734)))
                                       _hd7832378351_)
                                      (_g7831678330_ _g7831778334_))))
                              (_g7831678330_ _g7831778334_))))
                      (_g7831678330_ _g7831778334_)))))
          (_g7831578372_ _$stx78312_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78376_)
        (letrec ((_generate78379_
                  (lambda (_tgt78528_ _kws78530_ _clauses78531_)
                    (letrec ((_generate-clause78533_
                              (lambda (_hd79443_ _E79445_)
                                (let* ((___stx7959579596_ _hd79443_)
                                       (_g7944979476_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7959579596_))))
                                  (let ((___kont7959879599_
                                         (lambda (_L79572_ _L79574_)
                                           (_generate178535_
                                            _hd79443_
                                            _L79574_
                                            '#t
                                            _L79572_
                                            _E79445_)))
                                        (___kont7960079601_
                                         (lambda (_L79524_ _L79526_ _L79527_)
                                           (_generate178535_
                                            _hd79443_
                                            _L79527_
                                            _L79526_
                                            _L79524_
                                            _E79445_)))
                                        (___kont7960279603_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78376_
                                            _hd79443_))))
                                    (if (gx#stx-pair? ___stx7959579596_)
                                        (let ((_e7945579552_
                                               (gx#syntax-e
                                                ___stx7959579596_)))
                                          (let ((_tl7945379559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7945579552_)))
                                                (_hd7945479556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7945579552_))))
                                            (if (gx#stx-pair? _tl7945379559_)
                                                (let ((_e7945879562_
                                                       (gx#syntax-e
                                                        _tl7945379559_)))
                                                  (let ((_tl7945679569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7945879562_)))
                                                        (_hd7945779566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7945879562_))))
                                                    (if (gx#stx-null?
                                                         _tl7945679569_)
                                                        (___kont7959879599_
                                                         _hd7945779566_
                                                         _hd7945479556_)
                                                        (if (gx#stx-pair?
                                                             _tl7945679569_)
                                                            (let ((_e7947079514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7945679569_)))
                      (let ((_tl7946879521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7947079514_)))
                            (_hd7946979518_
                             (let ()
                               (declare (not safe))
                               (##car _e7947079514_))))
                        (if (gx#stx-null? _tl7946879521_)
                            (___kont7960079601_
                             _hd7946979518_
                             _hd7945779566_
                             _hd7945479556_)
                            (___kont7960279603_))))
                    (___kont7960279603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7960279603_))))
                                        (___kont7960279603_))))))
                             (_generate178535_
                              (lambda (_where78921_
                                       _hd78923_
                                       _fender78924_
                                       _body78925_
                                       _E78926_)
                                (letrec ((_recur78928_
                                          (lambda (_hd78931_
                                                   _tgt78933_
                                                   _K78934_)
                                            (let* ((___stx7964179642_
                                                    _hd78931_)
                                                   (_g7893778949_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7964179642_))))
                                              (let ((___kont7964479645_
                                                     (lambda (_L79233_
                                                              _L79235_)
                                                       (let* ((_g7924679254_
                                                               (lambda (_g7924779250_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7924779250_)))
                      (_g7924579435_
                       (lambda (_g7924779258_)
                         ((lambda (_L79261_)
                            (let ()
                              (let* ((_g7927379281_
                                      (lambda (_g7927479277_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7927479277_)))
                                     (_g7927279431_
                                      (lambda (_g7927479285_)
                                        ((lambda (_L79288_)
                                           (let ()
                                             (let* ((_g7930179309_
                                                     (lambda (_g7930279305_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7930279305_)))
                                                    (_g7930079427_
                                                     (lambda (_g7930279313_)
                                                       ((lambda (_L79316_)
                                                          (let ()
                                                            (let* ((_g7932979337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7933079333_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7933079333_)))
                           (_g7932879423_
                            (lambda (_g7933079341_)
                              ((lambda (_L79344_)
                                 (let ()
                                   (let* ((_g7935779365_
                                           (lambda (_g7935879361_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7935879361_)))
                                          (_g7935679419_
                                           (lambda (_g7935879369_)
                                             ((lambda (_L79372_)
                                                (let ()
                                                  (let* ((_g7938579393_
                                                          (lambda (_g7938679389_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7938679389_)))
                                                         (_g7938479415_
                                                          (lambda (_g7938679397_)
                                                            ((lambda (_L79400_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79776 (gx#datum->syntax '#f 'if))
                                 (__tmp79744
                                  (let ((__tmp79773
                                         (let ((__tmp79775
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79774
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79261_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79775 __tmp79774)))
                                        (__tmp79745
                                         (let ((__tmp79747
                                                (let ((__tmp79772
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79748
                                                       (let ((__tmp79766
                                                              (let ((__tmp79767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79768
                                    (let ((__tmp79769
                                           (let ((__tmp79771
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79770
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79261_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79771 __tmp79770))))
                                      (declare (not safe))
                                      (cons __tmp79769 '()))))
                               (declare (not safe))
                               (cons _L79288_ __tmp79768))))
                        (declare (not safe))
                        (cons __tmp79767 '())))
                     (__tmp79749
                      (let ((__tmp79750
                             (let ((__tmp79765 (gx#datum->syntax '#f 'let))
                                   (__tmp79751
                                    (let ((__tmp79753
                                           (let ((__tmp79760
                                                  (let ((__tmp79761
                                                         (let ((__tmp79762
                                                                (let ((__tmp79764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79763
                               (let ()
                                 (declare (not safe))
                                 (cons _L79288_ '()))))
                          (declare (not safe))
                          (cons __tmp79764 __tmp79763))))
                   (declare (not safe))
                   (cons __tmp79762 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79316_
                                                          __tmp79761)))
                                                 (__tmp79754
                                                  (let ((__tmp79755
                                                         (let ((__tmp79756
                                                                (let ((__tmp79757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79759 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79758
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79288_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79759 __tmp79758))))
                          (declare (not safe))
                          (cons __tmp79757 '()))))
                   (declare (not safe))
                   (cons _L79344_ __tmp79756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79755 '()))))
                                             (declare (not safe))
                                             (cons __tmp79760 __tmp79754)))
                                          (__tmp79752
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79372_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79753 __tmp79752))))
                               (declare (not safe))
                               (cons __tmp79765 __tmp79751))))
                        (declare (not safe))
                        (cons __tmp79750 '()))))
                 (declare (not safe))
                 (cons __tmp79766 __tmp79749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79772
                                                        __tmp79748)))
                                               (__tmp79746
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79400_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79747 __tmp79746))))
                                    (declare (not safe))
                                    (cons __tmp79773 __tmp79745))))
                             (declare (not safe))
                             (cons __tmp79776 __tmp79744)))))
                     _g7938679397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7938479415_ _E78926_))))
                                              _g7935879369_))))
                                     (_g7935679419_
                                      (_recur78928_
                                       _L79235_
                                       _L79316_
                                       (_recur78928_
                                        _L79233_
                                        _L79344_
                                        _K78934_))))))
                               _g7933079341_))))
                      (_g7932879423_ (gx#genident 'tl)))))
                _g7930279313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7930079427_
                                                (gx#genident 'hd)))))
                                         _g7927479285_))))
                                (_g7927279431_ (gx#genident 'e)))))
                          _g7924779258_))))
                 (_g7924579435_ _tgt78933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7964679647_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78931_)
                                                           (if (gx#underscore?
                                                                _hd78931_)
                                                               _K78934_
                                                               (if (let ((__tmp79821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7895978961_)
                                    (gx#bound-identifier=?
                                     _g7895978961_
                                     _hd78931_))))
                             (declare (not safe))
                             (find __tmp79821 _kws78530_))
                           (let* ((_g7896578980_
                                   (lambda (_g7896678976_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7896678976_)))
                                  (_g7896479031_
                                   (lambda (_g7896678984_)
                                     (if (gx#stx-pair? _g7896678984_)
                                         (let ((_e7897178987_
                                                (gx#syntax-e _g7896678984_)))
                                           (let ((_hd7897078991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7897178987_)))
                                                 (_tl7896978994_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7897178987_))))
                                             (if (gx#stx-pair? _tl7896978994_)
                                                 (let ((_e7897478997_
                                                        (gx#syntax-e
                                                         _tl7896978994_)))
                                                   (let ((_hd7897379001_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7897478997_)))
                                                         (_tl7897279004_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7897478997_))))
                                                     (if (gx#stx-null?
                                                          _tl7897279004_)
                                                         ((lambda (_L79007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79009_)
                    (let ()
                      (let ((__tmp79820 (gx#datum->syntax '#f 'if))
                            (__tmp79803
                             (let ((__tmp79806
                                    (let ((__tmp79819
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79807
                                           (let ((__tmp79816
                                                  (let ((__tmp79818
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79817
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79818
                                                          __tmp79817)))
                                                 (__tmp79808
                                                  (let ((__tmp79809
                                                         (let ((__tmp79815
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79810
                        (let ((__tmp79811
                               (let ((__tmp79812
                                      (let ((__tmp79814
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79813
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79007_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79814 __tmp79813))))
                                 (declare (not safe))
                                 (cons __tmp79812 '()))))
                          (declare (not safe))
                          (cons _L79009_ __tmp79811))))
                   (declare (not safe))
                   (cons __tmp79815 __tmp79810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79809 '()))))
                                             (declare (not safe))
                                             (cons __tmp79816 __tmp79808))))
                                      (declare (not safe))
                                      (cons __tmp79819 __tmp79807)))
                                   (__tmp79804
                                    (let ((__tmp79805
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78926_ '()))))
                                      (declare (not safe))
                                      (cons _K78934_ __tmp79805))))
                               (declare (not safe))
                               (cons __tmp79806 __tmp79804))))
                        (declare (not safe))
                        (cons __tmp79820 __tmp79803))))
                  _hd7897379001_
                  _hd7897078991_)
                 (_g7896578980_ _g7896678984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7896578980_
                                                  _g7896678984_))))
                                         (_g7896578980_ _g7896678984_)))))
                             (_g7896479031_ (list _tgt78933_ _hd78931_)))
                           (let* ((_g7903579050_
                                   (lambda (_g7903679046_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7903679046_)))
                                  (_g7903479094_
                                   (lambda (_g7903679054_)
                                     (if (gx#stx-pair? _g7903679054_)
                                         (let ((_e7904179057_
                                                (gx#syntax-e _g7903679054_)))
                                           (let ((_hd7904079061_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7904179057_)))
                                                 (_tl7903979064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7904179057_))))
                                             (if (gx#stx-pair? _tl7903979064_)
                                                 (let ((_e7904479067_
                                                        (gx#syntax-e
                                                         _tl7903979064_)))
                                                   (let ((_hd7904379071_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7904479067_)))
                                                         (_tl7904279074_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7904479067_))))
                                                     (if (gx#stx-null?
                                                          _tl7904279074_)
                                                         ((lambda (_L79077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79079_)
                    (let ()
                      (let ((__tmp79802 (gx#datum->syntax '#f 'let))
                            (__tmp79797
                             (let ((__tmp79799
                                    (let ((__tmp79800
                                           (let ((__tmp79801
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79079_ '()))))
                                             (declare (not safe))
                                             (cons _L79077_ __tmp79801))))
                                      (declare (not safe))
                                      (cons __tmp79800 '())))
                                   (__tmp79798
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78934_ '()))))
                               (declare (not safe))
                               (cons __tmp79799 __tmp79798))))
                        (declare (not safe))
                        (cons __tmp79802 __tmp79797))))
                  _hd7904379071_
                  _hd7904079061_)
                 (_g7903579050_ _g7903679054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7903579050_
                                                  _g7903679054_))))
                                         (_g7903579050_ _g7903679054_)))))
                             (_g7903479094_ (list _tgt78933_ _hd78931_)))))
                   (if (gx#stx-null? _hd78931_)
                       (let* ((_g7909879106_
                               (lambda (_g7909979102_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7909979102_)))
                              (_g7909779124_
                               (lambda (_g7909979110_)
                                 ((lambda (_L79113_)
                                    (let ()
                                      (let ((__tmp79796
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79790
                                             (let ((__tmp79793
                                                    (let ((__tmp79795
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79794
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79795 __tmp79794)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79791
                                                    (let ((__tmp79792
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78934_ __tmp79792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79793 __tmp79791))))
                                        (declare (not safe))
                                        (cons __tmp79796 __tmp79790))))
                                  _g7909979110_))))
                         (_g7909779124_ _tgt78933_))
                       (if (gx#stx-datum? _hd78931_)
                           (let* ((_g7912879147_
                                   (lambda (_g7912979143_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7912979143_)))
                                  (_g7912779205_
                                   (lambda (_g7912979151_)
                                     (if (gx#stx-pair? _g7912979151_)
                                         (let ((_e7913579154_
                                                (gx#syntax-e _g7912979151_)))
                                           (let ((_hd7913479158_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7913579154_)))
                                                 (_tl7913379161_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7913579154_))))
                                             (if (gx#stx-pair? _tl7913379161_)
                                                 (let ((_e7913879164_
                                                        (gx#syntax-e
                                                         _tl7913379161_)))
                                                   (let ((_hd7913779168_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7913879164_)))
                                                         (_tl7913679171_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7913879164_))))
                                                     (if (gx#stx-pair?
                                                          _tl7913679171_)
                                                         (let ((_e7914179174_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7913679171_)))
                   (let ((_hd7914079178_
                          (let () (declare (not safe)) (##car _e7914179174_)))
                         (_tl7913979181_
                          (let () (declare (not safe)) (##cdr _e7914179174_))))
                     (if (gx#stx-null? _tl7913979181_)
                         ((lambda (_L79184_ _L79186_ _L79187_)
                            (let ()
                              (let ((__tmp79789 (gx#datum->syntax '#f 'if))
                                    (__tmp79777
                                     (let ((__tmp79780
                                            (let ((__tmp79781
                                                   (let ((__tmp79786
                                                          (let ((__tmp79788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79787
                         (let () (declare (not safe)) (cons _L79187_ '()))))
                    (declare (not safe))
                    (cons __tmp79788 __tmp79787)))
                 (__tmp79782
                  (let ((__tmp79783
                         (let ((__tmp79785 (gx#datum->syntax '#f 'quote))
                               (__tmp79784
                                (let ()
                                  (declare (not safe))
                                  (cons _L79186_ '()))))
                           (declare (not safe))
                           (cons __tmp79785 __tmp79784))))
                    (declare (not safe))
                    (cons __tmp79783 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79786
                                                           __tmp79782))))
                                              (declare (not safe))
                                              (cons _L79184_ __tmp79781)))
                                           (__tmp79778
                                            (let ((__tmp79779
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78926_ '()))))
                                              (declare (not safe))
                                              (cons _K78934_ __tmp79779))))
                                       (declare (not safe))
                                       (cons __tmp79780 __tmp79778))))
                                (declare (not safe))
                                (cons __tmp79789 __tmp79777))))
                          _hd7914079178_
                          _hd7913779168_
                          _hd7913479158_)
                         (_g7912879147_ _g7912979151_))))
                 (_g7912879147_ _g7912979151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7912879147_
                                                  _g7912979151_))))
                                         (_g7912879147_ _g7912979151_)))))
                             (_g7912779205_
                              (list _tgt78933_
                                    _hd78931_
                                    (let ((_e79209_ (gx#stx-e _hd78931_)))
                                      (if (or (keyword? _e79209_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79209_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79209_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78376_
                            _where78921_
                            _hd78931_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7964179642_)
                                                    (let ((_e7894379223_
                                                           (gx#syntax-e
                                                            ___stx7964179642_)))
                                                      (let ((_tl7894179230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7894379223_)))
                    (_hd7894279227_
                     (let () (declare (not safe)) (##car _e7894379223_))))
                (___kont7964479645_ _tl7894179230_ _hd7894279227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7964679647_)))))))
                                  (_recur78928_
                                   _hd78923_
                                   _tgt78528_
                                   (let ((__tmp79825
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79822
                                          (let ((__tmp79823
                                                 (let ((__tmp79824
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78926_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78925_
                                                         __tmp79824))))
                                            (declare (not safe))
                                            (cons _fender78924_ __tmp79823))))
                                     (declare (not safe))
                                     (cons __tmp79825 __tmp79822))))))
                             (_generate-clauses78536_
                              (lambda (_clauses78659_)
                                (let _lp78662_ ((_rest78665_ _clauses78659_)
                                                (_E78667_ (gx#genident 'E))
                                                (_r78668_ '()))
                                  (let* ((___stx7967779678_ _rest78665_)
                                         (_g7867178683_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7967779678_))))
                                    (let ((___kont7968079681_
                                           (lambda (_L78748_ _L78750_)
                                             (let* ((___stx7965779658_
                                                     _L78750_)
                                                    (_g7876278773_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7965779658_))))
                                               (let ((___kont7966079661_
                                                      (lambda (_L78902_)
                                                        (if (gx#stx-null?
                                                             _L78748_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78902_)
                             (let ((__tmp79834 (gx#stx-null? _L78902_)))
                               (declare (not safe))
                               (not __tmp79834)))
                        (let ((__tmp79826
                               (let ((__tmp79827
                                      (let ((__tmp79828
                                             (gx#stx-wrap-source
                                              (let ((__tmp79833
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79829
                                                     (let ((__tmp79830
                                                            (let ((__tmp79831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79832 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79832 _L78902_))))
                      (declare (not safe))
                      (cons __tmp79831 '()))))
               (declare (not safe))
               (cons '() __tmp79830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79833 __tmp79829))
                                              (gx#stx-source _L78750_))))
                                        (declare (not safe))
                                        (cons __tmp79828 '()))))
                                 (declare (not safe))
                                 (cons _E78667_ __tmp79827))))
                          (declare (not safe))
                          (cons __tmp79826 _r78668_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78376_
                         _L78750_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78376_
                     _L78750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7966279663_
                                                      (lambda ()
                                                        (let* ((_g7878478792_
                                                                (lambda (_g7878578788_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7878578788_)))
                       (_g7878378881_
                        (lambda (_g7878578796_)
                          ((lambda (_L78799_)
                             (let ()
                               (let* ((_g7881578823_
                                       (lambda (_g7881678819_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7881678819_)))
                                      (_g7881478877_
                                       (lambda (_g7881678827_)
                                         ((lambda (_L78830_)
                                            (let ()
                                              (let* ((_g7884378851_
                                                      (lambda (_g7884478847_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7884478847_)))
                                                     (_g7884278873_
                                                      (lambda (_g7884478855_)
                                                        ((lambda (_L78858_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78662_
                                                                _L78748_
                                                                _L78799_
                                                                (let ((__tmp79835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79836
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78858_ '()))))
                                 (declare (not safe))
                                 (cons _E78667_ __tmp79836))))
                          (declare (not safe))
                          (cons __tmp79835 _r78668_))))))
                 _g7884478855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7884278873_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79839
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79837
                                                         (let ((__tmp79838
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78830_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79839
                                                          __tmp79837))
                                                  (gx#stx-source _L78750_))))))
                                          _g7881678827_))))
                                 (_g7881478877_
                                  (_generate-clause78533_
                                   _L78750_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78799_ '())))))))
                           _g7878578796_))))
                  (_g7878378881_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7965779658_)
                                                     (let ((_e7876778892_
                                                            (gx#syntax-e
                                                             ___stx7965779658_)))
                                                       (let ((_tl7876578899_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7876778892_)))
                     (_hd7876678896_
                      (let () (declare (not safe)) (##car _e7876778892_))))
                 (if (gx#identifier? _hd7876678896_)
                     (if (gx#free-identifier=? |gx[1]#_g79840_| _hd7876678896_)
                         (___kont7966079661_ _tl7876578899_)
                         (___kont7966279663_))
                     (___kont7966279663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7966279663_))))))
                                          (___kont7968279683_
                                           (lambda ()
                                             (let* ((_g7869478702_
                                                     (lambda (_g7869578698_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7869578698_)))
                                                    (_g7869378727_
                                                     (lambda (_g7869578706_)
                                                       ((lambda (_L78709_)
                                                          (let ()
                                                            (let ((__tmp79841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79842
                                  (let ((__tmp79843
                                         (gx#stx-wrap-source
                                          (let ((__tmp79851
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79844
                                                 (let ((__tmp79845
                                                        (let ((__tmp79846
                                                               (let ((__tmp79850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79847
                              (let ((__tmp79848
                                     (let ((__tmp79849
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78709_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79849))))
                                (declare (not safe))
                                (cons '#f __tmp79848))))
                         (declare (not safe))
                         (cons __tmp79850 __tmp79847))))
                  (declare (not safe))
                  (cons __tmp79846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79845))))
                                            (declare (not safe))
                                            (cons __tmp79851 __tmp79844))
                                          (gx#stx-source _stx78376_))))
                                    (declare (not safe))
                                    (cons __tmp79843 '()))))
                             (declare (not safe))
                             (cons _E78667_ __tmp79842))))
                      (declare (not safe))
                      (cons __tmp79841 _r78668_))))
                _g7869578706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7869378727_ _tgt78528_)))))
                                      (if (gx#stx-pair? ___stx7967779678_)
                                          (let ((_e7867778738_
                                                 (gx#syntax-e
                                                  ___stx7967779678_)))
                                            (let ((_tl7867578745_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7867778738_)))
                                                  (_hd7867678742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7867778738_))))
                                              (___kont7968079681_
                                               _tl7867578745_
                                               _hd7867678742_)))
                                          (___kont7968279683_))))))))
                      (let* ((_bind78538_
                              (_generate-clauses78536_ _clauses78531_))
                             (_g7854178558_
                              (lambda (_g7854278554_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7854278554_)))
                             (_g7854078655_
                              (lambda (_g7854278562_)
                                (if (gx#stx-pair/null? _g7854278562_)
                                    (let ((_g79852_
                                           (gx#syntax-split-splice
                                            _g7854278562_
                                            '0)))
                                      (begin
                                        (let ((_g79853_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79852_)
                                                     (##vector-length _g79852_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79853_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79853_)))
                                        (let ((_target7854478565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79852_ 0)))
                                              (_tl7854678568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79852_ 1))))
                                          (if (gx#stx-null? _tl7854678568_)
                                              (letrec ((_loop7854778571_
                                                        (lambda (_hd7854578575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7855178578_)
                  (if (gx#stx-pair? _hd7854578575_)
                      (let ((_e7854878581_ (gx#syntax-e _hd7854578575_)))
                        (let ((_lp-hd7854978585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7854878581_)))
                              (_lp-tl7855078588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7854878581_))))
                          (_loop7854778571_
                           _lp-tl7855078588_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7854978585_ _bind-try7855178578_)))))
                      (let ((_bind-try7855278591_
                             (reverse _bind-try7855178578_)))
                        ((lambda (_L78595_)
                           (let ()
                             (let* ((_g7861378621_
                                     (lambda (_g7861478617_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7861478617_)))
                                    (_g7861278651_
                                     (lambda (_g7861478625_)
                                       ((lambda (_L78628_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79859
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79854
                                                     (let ((__tmp79857
                                                            (let ((__tmp79858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7864278645_ _g7864378648_)
                             (let ()
                               (declare (not safe))
                               (cons _g7864278645_ _g7864378648_)))))
                      (declare (not safe))
                      (foldr1 __tmp79858 '() _L78595_)))
                   (__tmp79855
                    (let ((__tmp79856
                           (let () (declare (not safe)) (cons _L78628_ '()))))
                      (declare (not safe))
                      (cons __tmp79856 '()))))
               (declare (not safe))
               (cons __tmp79857 __tmp79855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79859
                                                      __tmp79854)))))
                                        _g7861478625_))))
                               (_g7861278651_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78538_)))))))
                         _bind-try7855278591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7854778571_
                                                 _target7854478565_
                                                 '()))
                                              (_g7854178558_ _g7854278562_)))))
                                    (_g7854178558_ _g7854278562_)))))
                        (_g7854078655_ _bind78538_))))))
          (let* ((_g7838278401_
                  (lambda (_g7838378397_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7838378397_)))
                 (_g7838178524_
                  (lambda (_g7838378405_)
                    (if (gx#stx-pair? _g7838378405_)
                        (let ((_e7838978408_ (gx#syntax-e _g7838378405_)))
                          (let ((_hd7838878412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7838978408_)))
                                (_tl7838778415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7838978408_))))
                            (if (gx#stx-pair? _tl7838778415_)
                                (let ((_e7839278418_
                                       (gx#syntax-e _tl7838778415_)))
                                  (let ((_hd7839178422_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7839278418_)))
                                        (_tl7839078425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7839278418_))))
                                    (if (gx#stx-pair? _tl7839078425_)
                                        (let ((_e7839578428_
                                               (gx#syntax-e _tl7839078425_)))
                                          (let ((_hd7839478432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7839578428_)))
                                                (_tl7839378435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7839578428_))))
                                            ((lambda (_L78438_
                                                      _L78440_
                                                      _L78441_)
                                               (if (and (gx#identifier-list?
                                                         _L78440_)
                                                        (gx#stx-list?
                                                         _L78438_))
                                                   (let* ((_g7845978467_
                                                           (lambda (_g7846078463_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7846078463_)))
                                                          (_g7845878520_
                                                           (lambda (_g7846078471_)
                                                             ((lambda (_L78474_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7848678494_
                                  (lambda (_g7848778490_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7848778490_)))
                                 (_g7848578516_
                                  (lambda (_g7848778498_)
                                    ((lambda (_L78501_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79865
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79860
                                                  (let ((__tmp79862
                                                         (let ((__tmp79863
                                                                (let ((__tmp79864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78441_ '()))))
                          (declare (not safe))
                          (cons _L78474_ __tmp79864))))
                   (declare (not safe))
                   (cons __tmp79863 '())))
                (__tmp79861 (let () (declare (not safe)) (cons _L78501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79862
                                                          __tmp79861))))
                                             (declare (not safe))
                                             (cons __tmp79865 __tmp79860)))))
                                     _g7848778498_))))
                            (_g7848578516_
                             (_generate78379_
                              _L78474_
                              (gx#syntax->list _L78440_)
                              _L78438_)))))
                      _g7846078471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7845878520_
                                                      (gx#genident 'e)))
                                                   (_g7838278401_
                                                    _g7838378405_)))
                                             _tl7839378435_
                                             _hd7839478432_
                                             _hd7839178422_)))
                                        (_g7838278401_ _g7838378405_))))
                                (_g7838278401_ _g7838378405_))))
                        (_g7838278401_ _g7838378405_)))))
            (_g7838178524_ _stx78376_)))))))
