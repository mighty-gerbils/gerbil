(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79723_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79725_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79727_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79732_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79735_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79740_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79743_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79748_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79751_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79756_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79759_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79866_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79718
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$MOP-2#class-type-info::t
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
           __obj79718
           'gerbil#AST::t
           '1
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           'syntax
           '2
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '(e source)
           '4
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '()
           '3
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '#t
           '5
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '#f
           '6
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '#f
           '7
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           '#f
           '8
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79722 |gx[1]#_g79723_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79722
           '9
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79724 |gx[1]#_g79725_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79724
           '10
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79726 |gx[1]#_g79727_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79726
           '11
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79728
               (let ((__tmp79733
                      (let ((__tmp79734 |gx[1]#_g79735_|))
                        (declare (not safe))
                        (cons 'e __tmp79734)))
                     (__tmp79729
                      (let ((__tmp79730
                             (let ((__tmp79731 |gx[1]#_g79732_|))
                               (declare (not safe))
                               (cons 'source __tmp79731))))
                        (declare (not safe))
                        (cons __tmp79730 '()))))
                 (declare (not safe))
                 (cons __tmp79733 __tmp79729))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79728
           '12
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79736
               (let ((__tmp79741
                      (let ((__tmp79742 |gx[1]#_g79743_|))
                        (declare (not safe))
                        (cons 'e __tmp79742)))
                     (__tmp79737
                      (let ((__tmp79738
                             (let ((__tmp79739 |gx[1]#_g79740_|))
                               (declare (not safe))
                               (cons 'source __tmp79739))))
                        (declare (not safe))
                        (cons __tmp79738 '()))))
                 (declare (not safe))
                 (cons __tmp79741 __tmp79737))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79736
           '13
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79744
               (let ((__tmp79749
                      (let ((__tmp79750 |gx[1]#_g79751_|))
                        (declare (not safe))
                        (cons 'e __tmp79750)))
                     (__tmp79745
                      (let ((__tmp79746
                             (let ((__tmp79747 |gx[1]#_g79748_|))
                               (declare (not safe))
                               (cons 'source __tmp79747))))
                        (declare (not safe))
                        (cons __tmp79746 '()))))
                 (declare (not safe))
                 (cons __tmp79749 __tmp79745))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79744
           '14
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp79752
               (let ((__tmp79757
                      (let ((__tmp79758 |gx[1]#_g79759_|))
                        (declare (not safe))
                        (cons 'e __tmp79758)))
                     (__tmp79753
                      (let ((__tmp79754
                             (let ((__tmp79755 |gx[1]#_g79756_|))
                               (declare (not safe))
                               (cons 'source __tmp79755))))
                        (declare (not safe))
                        (cons __tmp79754 '()))))
                 (declare (not safe))
                 (cons __tmp79757 __tmp79753))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79718
           __tmp79752
           '15
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        __obj79718))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78338_)
        (let* ((_g7834278356_
                (lambda (_g7834378352_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7834378352_)))
               (_g7834178398_
                (lambda (_g7834378360_)
                  (if (gx#stx-pair? _g7834378360_)
                      (let ((_e7834778363_ (gx#syntax-e _g7834378360_)))
                        (let ((_hd7834678367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7834778363_)))
                              (_tl7834578370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7834778363_))))
                          (if (gx#stx-pair? _tl7834578370_)
                              (let ((_e7835078373_
                                     (gx#syntax-e _tl7834578370_)))
                                (let ((_hd7834978377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7835078373_)))
                                      (_tl7834878380_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7835078373_))))
                                  (if (gx#stx-null? _tl7834878380_)
                                      ((lambda (_L78383_)
                                         (let ((__tmp79769
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79760
                                                (let ((__tmp79766
                                                       (let ((__tmp79768
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79767
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78383_ '()))))
                 (declare (not safe))
                 (cons __tmp79768 __tmp79767)))
              (__tmp79761
               (let ((__tmp79762
                      (let ((__tmp79765 (gx#datum->syntax '#f 'error))
                            (__tmp79763
                             (let ((__tmp79764
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78383_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79764))))
                        (declare (not safe))
                        (cons __tmp79765 __tmp79763))))
                 (declare (not safe))
                 (cons __tmp79762 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79766
                                                        __tmp79761))))
                                           (declare (not safe))
                                           (cons __tmp79769 __tmp79760)))
                                       _hd7834978377_)
                                      (_g7834278356_ _g7834378360_))))
                              (_g7834278356_ _g7834378360_))))
                      (_g7834278356_ _g7834378360_)))))
          (_g7834178398_ _$stx78338_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78402_)
        (letrec ((_generate78405_
                  (lambda (_tgt78554_ _kws78556_ _clauses78557_)
                    (letrec ((_generate-clause78559_
                              (lambda (_hd79469_ _E79471_)
                                (let* ((___stx7962179622_ _hd79469_)
                                       (_g7947579502_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7962179622_))))
                                  (let ((___kont7962479625_
                                         (lambda (_L79598_ _L79600_)
                                           (_generate178561_
                                            _hd79469_
                                            _L79600_
                                            '#t
                                            _L79598_
                                            _E79471_)))
                                        (___kont7962679627_
                                         (lambda (_L79550_ _L79552_ _L79553_)
                                           (_generate178561_
                                            _hd79469_
                                            _L79553_
                                            _L79552_
                                            _L79550_
                                            _E79471_)))
                                        (___kont7962879629_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78402_
                                            _hd79469_))))
                                    (if (gx#stx-pair? ___stx7962179622_)
                                        (let ((_e7948179578_
                                               (gx#syntax-e
                                                ___stx7962179622_)))
                                          (let ((_tl7947979585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7948179578_)))
                                                (_hd7948079582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7948179578_))))
                                            (if (gx#stx-pair? _tl7947979585_)
                                                (let ((_e7948479588_
                                                       (gx#syntax-e
                                                        _tl7947979585_)))
                                                  (let ((_tl7948279595_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7948479588_)))
                                                        (_hd7948379592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7948479588_))))
                                                    (if (gx#stx-null?
                                                         _tl7948279595_)
                                                        (___kont7962479625_
                                                         _hd7948379592_
                                                         _hd7948079582_)
                                                        (if (gx#stx-pair?
                                                             _tl7948279595_)
                                                            (let ((_e7949679540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7948279595_)))
                      (let ((_tl7949479547_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7949679540_)))
                            (_hd7949579544_
                             (let ()
                               (declare (not safe))
                               (##car _e7949679540_))))
                        (if (gx#stx-null? _tl7949479547_)
                            (___kont7962679627_
                             _hd7949579544_
                             _hd7948379592_
                             _hd7948079582_)
                            (___kont7962879629_))))
                    (___kont7962879629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7962879629_))))
                                        (___kont7962879629_))))))
                             (_generate178561_
                              (lambda (_where78947_
                                       _hd78949_
                                       _fender78950_
                                       _body78951_
                                       _E78952_)
                                (letrec ((_recur78954_
                                          (lambda (_hd78957_
                                                   _tgt78959_
                                                   _K78960_)
                                            (let* ((___stx7966779668_
                                                    _hd78957_)
                                                   (_g7896378975_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7966779668_))))
                                              (let ((___kont7967079671_
                                                     (lambda (_L79259_
                                                              _L79261_)
                                                       (let* ((_g7927279280_
                                                               (lambda (_g7927379276_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7927379276_)))
                      (_g7927179461_
                       (lambda (_g7927379284_)
                         ((lambda (_L79287_)
                            (let ()
                              (let* ((_g7929979307_
                                      (lambda (_g7930079303_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7930079303_)))
                                     (_g7929879457_
                                      (lambda (_g7930079311_)
                                        ((lambda (_L79314_)
                                           (let ()
                                             (let* ((_g7932779335_
                                                     (lambda (_g7932879331_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7932879331_)))
                                                    (_g7932679453_
                                                     (lambda (_g7932879339_)
                                                       ((lambda (_L79342_)
                                                          (let ()
                                                            (let* ((_g7935579363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7935679359_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7935679359_)))
                           (_g7935479449_
                            (lambda (_g7935679367_)
                              ((lambda (_L79370_)
                                 (let ()
                                   (let* ((_g7938379391_
                                           (lambda (_g7938479387_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7938479387_)))
                                          (_g7938279445_
                                           (lambda (_g7938479395_)
                                             ((lambda (_L79398_)
                                                (let ()
                                                  (let* ((_g7941179419_
                                                          (lambda (_g7941279415_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7941279415_)))
                                                         (_g7941079441_
                                                          (lambda (_g7941279423_)
                                                            ((lambda (_L79426_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79802 (gx#datum->syntax '#f 'if))
                                 (__tmp79770
                                  (let ((__tmp79799
                                         (let ((__tmp79801
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79800
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79287_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79801 __tmp79800)))
                                        (__tmp79771
                                         (let ((__tmp79773
                                                (let ((__tmp79798
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79774
                                                       (let ((__tmp79792
                                                              (let ((__tmp79793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79794
                                    (let ((__tmp79795
                                           (let ((__tmp79797
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79796
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79287_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79797 __tmp79796))))
                                      (declare (not safe))
                                      (cons __tmp79795 '()))))
                               (declare (not safe))
                               (cons _L79314_ __tmp79794))))
                        (declare (not safe))
                        (cons __tmp79793 '())))
                     (__tmp79775
                      (let ((__tmp79776
                             (let ((__tmp79791 (gx#datum->syntax '#f 'let))
                                   (__tmp79777
                                    (let ((__tmp79779
                                           (let ((__tmp79786
                                                  (let ((__tmp79787
                                                         (let ((__tmp79788
                                                                (let ((__tmp79790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79789
                               (let ()
                                 (declare (not safe))
                                 (cons _L79314_ '()))))
                          (declare (not safe))
                          (cons __tmp79790 __tmp79789))))
                   (declare (not safe))
                   (cons __tmp79788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79342_
                                                          __tmp79787)))
                                                 (__tmp79780
                                                  (let ((__tmp79781
                                                         (let ((__tmp79782
                                                                (let ((__tmp79783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79785 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79784
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79314_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79785 __tmp79784))))
                          (declare (not safe))
                          (cons __tmp79783 '()))))
                   (declare (not safe))
                   (cons _L79370_ __tmp79782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79781 '()))))
                                             (declare (not safe))
                                             (cons __tmp79786 __tmp79780)))
                                          (__tmp79778
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79398_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79779 __tmp79778))))
                               (declare (not safe))
                               (cons __tmp79791 __tmp79777))))
                        (declare (not safe))
                        (cons __tmp79776 '()))))
                 (declare (not safe))
                 (cons __tmp79792 __tmp79775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79798
                                                        __tmp79774)))
                                               (__tmp79772
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79426_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79773 __tmp79772))))
                                    (declare (not safe))
                                    (cons __tmp79799 __tmp79771))))
                             (declare (not safe))
                             (cons __tmp79802 __tmp79770)))))
                     _g7941279423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7941079441_ _E78952_))))
                                              _g7938479395_))))
                                     (_g7938279445_
                                      (_recur78954_
                                       _L79261_
                                       _L79342_
                                       (_recur78954_
                                        _L79259_
                                        _L79370_
                                        _K78960_))))))
                               _g7935679367_))))
                      (_g7935479449_ (gx#genident 'tl)))))
                _g7932879339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7932679453_
                                                (gx#genident 'hd)))))
                                         _g7930079311_))))
                                (_g7929879457_ (gx#genident 'e)))))
                          _g7927379284_))))
                 (_g7927179461_ _tgt78959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7967279673_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78957_)
                                                           (if (gx#underscore?
                                                                _hd78957_)
                                                               _K78960_
                                                               (if (let ((__tmp79847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7898578987_)
                                    (gx#bound-identifier=?
                                     _g7898578987_
                                     _hd78957_))))
                             (declare (not safe))
                             (find __tmp79847 _kws78556_))
                           (let* ((_g7899179006_
                                   (lambda (_g7899279002_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7899279002_)))
                                  (_g7899079057_
                                   (lambda (_g7899279010_)
                                     (if (gx#stx-pair? _g7899279010_)
                                         (let ((_e7899779013_
                                                (gx#syntax-e _g7899279010_)))
                                           (let ((_hd7899679017_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7899779013_)))
                                                 (_tl7899579020_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7899779013_))))
                                             (if (gx#stx-pair? _tl7899579020_)
                                                 (let ((_e7900079023_
                                                        (gx#syntax-e
                                                         _tl7899579020_)))
                                                   (let ((_hd7899979027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7900079023_)))
                                                         (_tl7899879030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7900079023_))))
                                                     (if (gx#stx-null?
                                                          _tl7899879030_)
                                                         ((lambda (_L79033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79035_)
                    (let ()
                      (let ((__tmp79846 (gx#datum->syntax '#f 'if))
                            (__tmp79829
                             (let ((__tmp79832
                                    (let ((__tmp79845
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79833
                                           (let ((__tmp79842
                                                  (let ((__tmp79844
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79843
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79844
                                                          __tmp79843)))
                                                 (__tmp79834
                                                  (let ((__tmp79835
                                                         (let ((__tmp79841
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79836
                        (let ((__tmp79837
                               (let ((__tmp79838
                                      (let ((__tmp79840
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79839
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79033_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79840 __tmp79839))))
                                 (declare (not safe))
                                 (cons __tmp79838 '()))))
                          (declare (not safe))
                          (cons _L79035_ __tmp79837))))
                   (declare (not safe))
                   (cons __tmp79841 __tmp79836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79835 '()))))
                                             (declare (not safe))
                                             (cons __tmp79842 __tmp79834))))
                                      (declare (not safe))
                                      (cons __tmp79845 __tmp79833)))
                                   (__tmp79830
                                    (let ((__tmp79831
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78952_ '()))))
                                      (declare (not safe))
                                      (cons _K78960_ __tmp79831))))
                               (declare (not safe))
                               (cons __tmp79832 __tmp79830))))
                        (declare (not safe))
                        (cons __tmp79846 __tmp79829))))
                  _hd7899979027_
                  _hd7899679017_)
                 (_g7899179006_ _g7899279010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7899179006_
                                                  _g7899279010_))))
                                         (_g7899179006_ _g7899279010_)))))
                             (_g7899079057_ (list _tgt78959_ _hd78957_)))
                           (let* ((_g7906179076_
                                   (lambda (_g7906279072_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7906279072_)))
                                  (_g7906079120_
                                   (lambda (_g7906279080_)
                                     (if (gx#stx-pair? _g7906279080_)
                                         (let ((_e7906779083_
                                                (gx#syntax-e _g7906279080_)))
                                           (let ((_hd7906679087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7906779083_)))
                                                 (_tl7906579090_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7906779083_))))
                                             (if (gx#stx-pair? _tl7906579090_)
                                                 (let ((_e7907079093_
                                                        (gx#syntax-e
                                                         _tl7906579090_)))
                                                   (let ((_hd7906979097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7907079093_)))
                                                         (_tl7906879100_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7907079093_))))
                                                     (if (gx#stx-null?
                                                          _tl7906879100_)
                                                         ((lambda (_L79103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79105_)
                    (let ()
                      (let ((__tmp79828 (gx#datum->syntax '#f 'let))
                            (__tmp79823
                             (let ((__tmp79825
                                    (let ((__tmp79826
                                           (let ((__tmp79827
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79105_ '()))))
                                             (declare (not safe))
                                             (cons _L79103_ __tmp79827))))
                                      (declare (not safe))
                                      (cons __tmp79826 '())))
                                   (__tmp79824
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78960_ '()))))
                               (declare (not safe))
                               (cons __tmp79825 __tmp79824))))
                        (declare (not safe))
                        (cons __tmp79828 __tmp79823))))
                  _hd7906979097_
                  _hd7906679087_)
                 (_g7906179076_ _g7906279080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7906179076_
                                                  _g7906279080_))))
                                         (_g7906179076_ _g7906279080_)))))
                             (_g7906079120_ (list _tgt78959_ _hd78957_)))))
                   (if (gx#stx-null? _hd78957_)
                       (let* ((_g7912479132_
                               (lambda (_g7912579128_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7912579128_)))
                              (_g7912379150_
                               (lambda (_g7912579136_)
                                 ((lambda (_L79139_)
                                    (let ()
                                      (let ((__tmp79822
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79816
                                             (let ((__tmp79819
                                                    (let ((__tmp79821
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79821 __tmp79820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79817
                                                    (let ((__tmp79818
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78960_ __tmp79818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79819 __tmp79817))))
                                        (declare (not safe))
                                        (cons __tmp79822 __tmp79816))))
                                  _g7912579136_))))
                         (_g7912379150_ _tgt78959_))
                       (if (gx#stx-datum? _hd78957_)
                           (let* ((_g7915479173_
                                   (lambda (_g7915579169_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7915579169_)))
                                  (_g7915379231_
                                   (lambda (_g7915579177_)
                                     (if (gx#stx-pair? _g7915579177_)
                                         (let ((_e7916179180_
                                                (gx#syntax-e _g7915579177_)))
                                           (let ((_hd7916079184_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7916179180_)))
                                                 (_tl7915979187_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7916179180_))))
                                             (if (gx#stx-pair? _tl7915979187_)
                                                 (let ((_e7916479190_
                                                        (gx#syntax-e
                                                         _tl7915979187_)))
                                                   (let ((_hd7916379194_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7916479190_)))
                                                         (_tl7916279197_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7916479190_))))
                                                     (if (gx#stx-pair?
                                                          _tl7916279197_)
                                                         (let ((_e7916779200_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7916279197_)))
                   (let ((_hd7916679204_
                          (let () (declare (not safe)) (##car _e7916779200_)))
                         (_tl7916579207_
                          (let () (declare (not safe)) (##cdr _e7916779200_))))
                     (if (gx#stx-null? _tl7916579207_)
                         ((lambda (_L79210_ _L79212_ _L79213_)
                            (let ()
                              (let ((__tmp79815 (gx#datum->syntax '#f 'if))
                                    (__tmp79803
                                     (let ((__tmp79806
                                            (let ((__tmp79807
                                                   (let ((__tmp79812
                                                          (let ((__tmp79814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79813
                         (let () (declare (not safe)) (cons _L79213_ '()))))
                    (declare (not safe))
                    (cons __tmp79814 __tmp79813)))
                 (__tmp79808
                  (let ((__tmp79809
                         (let ((__tmp79811 (gx#datum->syntax '#f 'quote))
                               (__tmp79810
                                (let ()
                                  (declare (not safe))
                                  (cons _L79212_ '()))))
                           (declare (not safe))
                           (cons __tmp79811 __tmp79810))))
                    (declare (not safe))
                    (cons __tmp79809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79812
                                                           __tmp79808))))
                                              (declare (not safe))
                                              (cons _L79210_ __tmp79807)))
                                           (__tmp79804
                                            (let ((__tmp79805
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78952_ '()))))
                                              (declare (not safe))
                                              (cons _K78960_ __tmp79805))))
                                       (declare (not safe))
                                       (cons __tmp79806 __tmp79804))))
                                (declare (not safe))
                                (cons __tmp79815 __tmp79803))))
                          _hd7916679204_
                          _hd7916379194_
                          _hd7916079184_)
                         (_g7915479173_ _g7915579177_))))
                 (_g7915479173_ _g7915579177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7915479173_
                                                  _g7915579177_))))
                                         (_g7915479173_ _g7915579177_)))))
                             (_g7915379231_
                              (list _tgt78959_
                                    _hd78957_
                                    (let ((_e79235_ (gx#stx-e _hd78957_)))
                                      (if (or (keyword? _e79235_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79235_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79235_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78402_
                            _where78947_
                            _hd78957_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7966779668_)
                                                    (let ((_e7896979249_
                                                           (gx#syntax-e
                                                            ___stx7966779668_)))
                                                      (let ((_tl7896779256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7896979249_)))
                    (_hd7896879253_
                     (let () (declare (not safe)) (##car _e7896979249_))))
                (___kont7967079671_ _tl7896779256_ _hd7896879253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7967279673_)))))))
                                  (_recur78954_
                                   _hd78949_
                                   _tgt78554_
                                   (let ((__tmp79851
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79848
                                          (let ((__tmp79849
                                                 (let ((__tmp79850
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78952_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78951_
                                                         __tmp79850))))
                                            (declare (not safe))
                                            (cons _fender78950_ __tmp79849))))
                                     (declare (not safe))
                                     (cons __tmp79851 __tmp79848))))))
                             (_generate-clauses78562_
                              (lambda (_clauses78685_)
                                (let _lp78688_ ((_rest78691_ _clauses78685_)
                                                (_E78693_ (gx#genident 'E))
                                                (_r78694_ '()))
                                  (let* ((___stx7970379704_ _rest78691_)
                                         (_g7869778709_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7970379704_))))
                                    (let ((___kont7970679707_
                                           (lambda (_L78774_ _L78776_)
                                             (let* ((___stx7968379684_
                                                     _L78776_)
                                                    (_g7878878799_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7968379684_))))
                                               (let ((___kont7968679687_
                                                      (lambda (_L78928_)
                                                        (if (gx#stx-null?
                                                             _L78774_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78928_)
                             (let ((__tmp79860 (gx#stx-null? _L78928_)))
                               (declare (not safe))
                               (not __tmp79860)))
                        (let ((__tmp79852
                               (let ((__tmp79853
                                      (let ((__tmp79854
                                             (gx#stx-wrap-source
                                              (let ((__tmp79859
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79855
                                                     (let ((__tmp79856
                                                            (let ((__tmp79857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79858 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79858 _L78928_))))
                      (declare (not safe))
                      (cons __tmp79857 '()))))
               (declare (not safe))
               (cons '() __tmp79856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79859 __tmp79855))
                                              (gx#stx-source _L78776_))))
                                        (declare (not safe))
                                        (cons __tmp79854 '()))))
                                 (declare (not safe))
                                 (cons _E78693_ __tmp79853))))
                          (declare (not safe))
                          (cons __tmp79852 _r78694_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78402_
                         _L78776_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78402_
                     _L78776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7968879689_
                                                      (lambda ()
                                                        (let* ((_g7881078818_
                                                                (lambda (_g7881178814_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7881178814_)))
                       (_g7880978907_
                        (lambda (_g7881178822_)
                          ((lambda (_L78825_)
                             (let ()
                               (let* ((_g7884178849_
                                       (lambda (_g7884278845_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7884278845_)))
                                      (_g7884078903_
                                       (lambda (_g7884278853_)
                                         ((lambda (_L78856_)
                                            (let ()
                                              (let* ((_g7886978877_
                                                      (lambda (_g7887078873_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7887078873_)))
                                                     (_g7886878899_
                                                      (lambda (_g7887078881_)
                                                        ((lambda (_L78884_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78688_
                                                                _L78774_
                                                                _L78825_
                                                                (let ((__tmp79861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79862
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78884_ '()))))
                                 (declare (not safe))
                                 (cons _E78693_ __tmp79862))))
                          (declare (not safe))
                          (cons __tmp79861 _r78694_))))))
                 _g7887078881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7886878899_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79865
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79863
                                                         (let ((__tmp79864
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78856_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79865
                                                          __tmp79863))
                                                  (gx#stx-source _L78776_))))))
                                          _g7884278853_))))
                                 (_g7884078903_
                                  (_generate-clause78559_
                                   _L78776_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78825_ '())))))))
                           _g7881178822_))))
                  (_g7880978907_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7968379684_)
                                                     (let ((_e7879378918_
                                                            (gx#syntax-e
                                                             ___stx7968379684_)))
                                                       (let ((_tl7879178925_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7879378918_)))
                     (_hd7879278922_
                      (let () (declare (not safe)) (##car _e7879378918_))))
                 (if (gx#identifier? _hd7879278922_)
                     (if (gx#free-identifier=? |gx[1]#_g79866_| _hd7879278922_)
                         (___kont7968679687_ _tl7879178925_)
                         (___kont7968879689_))
                     (___kont7968879689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7968879689_))))))
                                          (___kont7970879709_
                                           (lambda ()
                                             (let* ((_g7872078728_
                                                     (lambda (_g7872178724_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7872178724_)))
                                                    (_g7871978753_
                                                     (lambda (_g7872178732_)
                                                       ((lambda (_L78735_)
                                                          (let ()
                                                            (let ((__tmp79867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79868
                                  (let ((__tmp79869
                                         (gx#stx-wrap-source
                                          (let ((__tmp79877
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79870
                                                 (let ((__tmp79871
                                                        (let ((__tmp79872
                                                               (let ((__tmp79876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79873
                              (let ((__tmp79874
                                     (let ((__tmp79875
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78735_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79875))))
                                (declare (not safe))
                                (cons '#f __tmp79874))))
                         (declare (not safe))
                         (cons __tmp79876 __tmp79873))))
                  (declare (not safe))
                  (cons __tmp79872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79871))))
                                            (declare (not safe))
                                            (cons __tmp79877 __tmp79870))
                                          (gx#stx-source _stx78402_))))
                                    (declare (not safe))
                                    (cons __tmp79869 '()))))
                             (declare (not safe))
                             (cons _E78693_ __tmp79868))))
                      (declare (not safe))
                      (cons __tmp79867 _r78694_))))
                _g7872178732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7871978753_ _tgt78554_)))))
                                      (if (gx#stx-pair? ___stx7970379704_)
                                          (let ((_e7870378764_
                                                 (gx#syntax-e
                                                  ___stx7970379704_)))
                                            (let ((_tl7870178771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7870378764_)))
                                                  (_hd7870278768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7870378764_))))
                                              (___kont7970679707_
                                               _tl7870178771_
                                               _hd7870278768_)))
                                          (___kont7970879709_))))))))
                      (let* ((_bind78564_
                              (_generate-clauses78562_ _clauses78557_))
                             (_g7856778584_
                              (lambda (_g7856878580_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7856878580_)))
                             (_g7856678681_
                              (lambda (_g7856878588_)
                                (if (gx#stx-pair/null? _g7856878588_)
                                    (let ((_g79878_
                                           (gx#syntax-split-splice
                                            _g7856878588_
                                            '0)))
                                      (begin
                                        (let ((_g79879_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79878_)
                                                     (##vector-length _g79878_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79879_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79879_)))
                                        (let ((_target7857078591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79878_ 0)))
                                              (_tl7857278594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79878_ 1))))
                                          (if (gx#stx-null? _tl7857278594_)
                                              (letrec ((_loop7857378597_
                                                        (lambda (_hd7857178601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7857778604_)
                  (if (gx#stx-pair? _hd7857178601_)
                      (let ((_e7857478607_ (gx#syntax-e _hd7857178601_)))
                        (let ((_lp-hd7857578611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7857478607_)))
                              (_lp-tl7857678614_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7857478607_))))
                          (_loop7857378597_
                           _lp-tl7857678614_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7857578611_ _bind-try7857778604_)))))
                      (let ((_bind-try7857878617_
                             (reverse _bind-try7857778604_)))
                        ((lambda (_L78621_)
                           (let ()
                             (let* ((_g7863978647_
                                     (lambda (_g7864078643_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7864078643_)))
                                    (_g7863878677_
                                     (lambda (_g7864078651_)
                                       ((lambda (_L78654_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79885
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79880
                                                     (let ((__tmp79883
                                                            (let ((__tmp79884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7866878671_ _g7866978674_)
                             (let ()
                               (declare (not safe))
                               (cons _g7866878671_ _g7866978674_)))))
                      (declare (not safe))
                      (foldr1 __tmp79884 '() _L78621_)))
                   (__tmp79881
                    (let ((__tmp79882
                           (let () (declare (not safe)) (cons _L78654_ '()))))
                      (declare (not safe))
                      (cons __tmp79882 '()))))
               (declare (not safe))
               (cons __tmp79883 __tmp79881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79885
                                                      __tmp79880)))))
                                        _g7864078651_))))
                               (_g7863878677_ (car (last _bind78564_))))))
                         _bind-try7857878617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7857378597_
                                                 _target7857078591_
                                                 '()))
                                              (_g7856778584_ _g7856878588_)))))
                                    (_g7856778584_ _g7856878588_)))))
                        (_g7856678681_ _bind78564_))))))
          (let* ((_g7840878427_
                  (lambda (_g7840978423_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7840978423_)))
                 (_g7840778550_
                  (lambda (_g7840978431_)
                    (if (gx#stx-pair? _g7840978431_)
                        (let ((_e7841578434_ (gx#syntax-e _g7840978431_)))
                          (let ((_hd7841478438_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7841578434_)))
                                (_tl7841378441_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7841578434_))))
                            (if (gx#stx-pair? _tl7841378441_)
                                (let ((_e7841878444_
                                       (gx#syntax-e _tl7841378441_)))
                                  (let ((_hd7841778448_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7841878444_)))
                                        (_tl7841678451_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7841878444_))))
                                    (if (gx#stx-pair? _tl7841678451_)
                                        (let ((_e7842178454_
                                               (gx#syntax-e _tl7841678451_)))
                                          (let ((_hd7842078458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7842178454_)))
                                                (_tl7841978461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7842178454_))))
                                            ((lambda (_L78464_
                                                      _L78466_
                                                      _L78467_)
                                               (if (and (gx#identifier-list?
                                                         _L78466_)
                                                        (gx#stx-list?
                                                         _L78464_))
                                                   (let* ((_g7848578493_
                                                           (lambda (_g7848678489_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7848678489_)))
                                                          (_g7848478546_
                                                           (lambda (_g7848678497_)
                                                             ((lambda (_L78500_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7851278520_
                                  (lambda (_g7851378516_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7851378516_)))
                                 (_g7851178542_
                                  (lambda (_g7851378524_)
                                    ((lambda (_L78527_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79891
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79886
                                                  (let ((__tmp79888
                                                         (let ((__tmp79889
                                                                (let ((__tmp79890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78467_ '()))))
                          (declare (not safe))
                          (cons _L78500_ __tmp79890))))
                   (declare (not safe))
                   (cons __tmp79889 '())))
                (__tmp79887 (let () (declare (not safe)) (cons _L78527_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79888
                                                          __tmp79887))))
                                             (declare (not safe))
                                             (cons __tmp79891 __tmp79886)))))
                                     _g7851378524_))))
                            (_g7851178542_
                             (_generate78405_
                              _L78500_
                              (gx#syntax->list _L78466_)
                              _L78464_)))))
                      _g7848678497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7848478546_
                                                      (gx#genident 'e)))
                                                   (_g7840878427_
                                                    _g7840978431_)))
                                             _tl7841978461_
                                             _hd7842078458_
                                             _hd7841778448_)))
                                        (_g7840878427_ _g7840978431_))))
                                (_g7840878427_ _g7840978431_))))
                        (_g7840878427_ _g7840978431_)))))
            (_g7840778550_ _stx78402_)))))))
