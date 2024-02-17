(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g48658_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4386043861_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4386043861_))))
          (let ((___kont4386343864_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp48581 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48574
                          (let ((__tmp48575
                                 (let ((__tmp48576
                                        (let ((__tmp48580
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp48577
                                               (let ((__tmp48578
                                                      (let ((__tmp48579
                                                             (lambda (_g1719217195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719317198_)
                       (let ()
                         (declare (not safe))
                         (cons _g1719217195_ _g1719317198_)))))
                (declare (not safe))
                (foldr1 __tmp48579 '() _L17170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17172_ __tmp48578))))
                                          (declare (not safe))
                                          (cons __tmp48580 __tmp48577))))
                                   (declare (not safe))
                                   (cons __tmp48576 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp48575))))
                     (declare (not safe))
                     (cons __tmp48581 __tmp48574))))
                (___kont4386743868_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp48584 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48582
                          (let ((__tmp48583
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp48583))))
                     (declare (not safe))
                     (cons __tmp48584 __tmp48582)))))
            (let* ((___match4391543916_
                    (lambda (_e1703317054_
                             _hd1703417058_
                             _tl1703517061_
                             _e1703617064_
                             _hd1703717068_
                             _tl1703817071_
                             _e1703917074_
                             _hd1704017078_
                             _tl1704117081_)
                      (let ((_L17084_ _hd1704017078_)
                            (_L17086_ _hd1703717068_))
                        (if (gx#identifier? _L17086_)
                            (___kont4386743868_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4390743908_
                    (lambda (_e1703317054_
                             _hd1703417058_
                             _tl1703517061_
                             _e1703617064_
                             _hd1703717068_
                             _tl1703817071_)
                      (if (gx#stx-pair? _tl1703817071_)
                          (let ((_e1703917074_ (gx#syntax-e _tl1703817071_)))
                            (let ((_tl1704117081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1703917074_)))
                                  (_hd1704017078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1703917074_))))
                              (if (gx#stx-null? _tl1704117081_)
                                  (___match4391543916_
                                   _e1703317054_
                                   _hd1703417058_
                                   _tl1703517061_
                                   _e1703617064_
                                   _hd1703717068_
                                   _tl1703817071_
                                   _e1703917074_
                                   _hd1704017078_
                                   _tl1704117081_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1700817047_)))))
                          (let () (declare (not safe)) (_g1700817047_)))))
                   (___match4389543896_
                    (lambda (_e1701317110_
                             _hd1701417114_
                             _tl1701517117_
                             _e1701617120_
                             _hd1701717124_
                             _tl1701817127_
                             _e1701917130_
                             _hd1702017134_
                             _tl1702117137_
                             ___splice4386543866_
                             _target1702217140_
                             _tl1702417143_)
                      (letrec ((_loop1702517146_
                                (lambda (_hd1702317150_ _body1702917153_)
                                  (if (gx#stx-pair? _hd1702317150_)
                                      (let ((_e1702617156_
                                             (gx#syntax-e _hd1702317150_)))
                                        (let ((_lp-tl1702817163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1702617156_)))
                                              (_lp-hd1702717160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1702617156_))))
                                          (_loop1702517146_
                                           _lp-tl1702817163_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1702717160_
                                                   _body1702917153_)))))
                                      (let ((_body1703017166_
                                             (reverse _body1702917153_)))
                                        (let ((_L17170_ _body1703017166_)
                                              (_L17172_ _tl1702117137_)
                                              (_L17173_ _hd1702017134_))
                                          (if (gx#identifier? _L17173_)
                                              (___kont4386343864_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4390743908_
                                               _e1701317110_
                                               _hd1701417114_
                                               _tl1701517117_
                                               _e1701617120_
                                               _hd1701717124_
                                               _tl1701817127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4386043861_)
                  (let ((_e1701317110_ (gx#syntax-e ___stx4386043861_)))
                    (let ((_tl1701517117_
                           (let () (declare (not safe)) (##cdr _e1701317110_)))
                          (_hd1701417114_
                           (let ()
                             (declare (not safe))
                             (##car _e1701317110_))))
                      (if (gx#stx-pair? _tl1701517117_)
                          (let ((_e1701617120_ (gx#syntax-e _tl1701517117_)))
                            (let ((_tl1701817127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1701617120_)))
                                  (_hd1701717124_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1701617120_))))
                              (if (gx#stx-pair? _hd1701717124_)
                                  (let ((_e1701917130_
                                         (gx#syntax-e _hd1701717124_)))
                                    (let ((_tl1702117137_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1701917130_)))
                                          (_hd1702017134_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1701917130_))))
                                      (if (gx#stx-pair/null? _tl1701817127_)
                                          (let ((___splice4386543866_
                                                 (gx#syntax-split-splice
                                                  _tl1701817127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4386543866_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4386543866_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4389543896_
                                                   _e1701317110_
                                                   _hd1701417114_
                                                   _tl1701517117_
                                                   _e1701617120_
                                                   _hd1701717124_
                                                   _tl1701817127_
                                                   _e1701917130_
                                                   _hd1702017134_
                                                   _tl1702117137_
                                                   ___splice4386543866_
                                                   _target1702217140_
                                                   _tl1702417143_)
                                                  (if (gx#stx-pair?
                                                       _tl1701817127_)
                                                      (let ((_e1703917074_
                                                             (gx#syntax-e
                                                              _tl1701817127_)))
                                                        (let ((_tl1704117081_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1703917074_)))
                      (_hd1704017078_
                       (let () (declare (not safe)) (##car _e1703917074_))))
                  (if (gx#stx-null? _tl1704117081_)
                      (___match4391543916_
                       _e1701317110_
                       _hd1701417114_
                       _tl1701517117_
                       _e1701617120_
                       _hd1701717124_
                       _tl1701817127_
                       _e1703917074_
                       _hd1704017078_
                       _tl1704117081_)
                      (let () (declare (not safe)) (_g1700817047_)))))
              (let () (declare (not safe)) (_g1700817047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl1701817127_)
                                              (let ((_e1703917074_
                                                     (gx#syntax-e
                                                      _tl1701817127_)))
                                                (let ((_tl1704117081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1703917074_)))
                                                      (_hd1704017078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1703917074_))))
                                                  (if (gx#stx-null?
                                                       _tl1704117081_)
                                                      (___match4391543916_
                                                       _e1701317110_
                                                       _hd1701417114_
                                                       _tl1701517117_
                                                       _e1701617120_
                                                       _hd1701717124_
                                                       _tl1701817127_
                                                       _e1703917074_
                                                       _hd1704017078_
                                                       _tl1704117081_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1700817047_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1700817047_))))))
                                  (if (gx#stx-pair? _tl1701817127_)
                                      (let ((_e1703917074_
                                             (gx#syntax-e _tl1701817127_)))
                                        (let ((_tl1704117081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1703917074_)))
                                              (_hd1704017078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1703917074_))))
                                          (if (gx#stx-null? _tl1704117081_)
                                              (___match4391543916_
                                               _e1701317110_
                                               _hd1701417114_
                                               _tl1701517117_
                                               _e1701617120_
                                               _hd1701717124_
                                               _tl1701817127_
                                               _e1703917074_
                                               _hd1704017078_
                                               _tl1704117081_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1700817047_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1700817047_))))))
                          (let () (declare (not safe)) (_g1700817047_)))))
                  (let () (declare (not safe)) (_g1700817047_))))))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
      (lambda (_stx17206_)
        (let* ((_g1720917246_
                (lambda (_g1721017242_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1721017242_)))
               (_g1720817607_
                (lambda (_g1721017250_)
                  (if (gx#stx-pair? _g1721017250_)
                      (let ((_e1721417253_ (gx#syntax-e _g1721017250_)))
                        (let ((_hd1721517257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1721417253_)))
                              (_tl1721617260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1721417253_))))
                          (if (gx#stx-pair? _tl1721617260_)
                              (let ((_e1721717263_
                                     (gx#syntax-e _tl1721617260_)))
                                (let ((_hd1721817267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1721717263_)))
                                      (_tl1721917270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1721717263_))))
                                  (if (gx#stx-pair? _hd1721817267_)
                                      (let ((_e1722017273_
                                             (gx#syntax-e _hd1721817267_)))
                                        (let ((_hd1722117277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1722017273_)))
                                              (_tl1722217280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1722017273_))))
                                          (if (gx#stx-pair/null?
                                               _tl1722217280_)
                                              (let ((_g48585_
                                                     (gx#syntax-split-splice
                                                      _tl1722217280_
                                                      '0)))
                                                (begin
                                                  (let ((_g48586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g48585_)
                                                               (##vector-length
                                                                _g48585_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g48586_ 2)))
                (error "Context expects 2 values" _g48586_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48585_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48585_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1722517286_)
                                                        (letrec ((_loop1722617289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1722417293_ _arg1723017296_)
                            (if (gx#stx-pair? _hd1722417293_)
                                (let ((_e1722717299_
                                       (gx#syntax-e _hd1722417293_)))
                                  (let ((_lp-hd1722817303_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1722717299_)))
                                        (_lp-tl1722917306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1722717299_))))
                                    (_loop1722617289_
                                     _lp-tl1722917306_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1722817303_
                                             _arg1723017296_)))))
                                (let ((_arg1723117309_
                                       (reverse _arg1723017296_)))
                                  (if (gx#stx-pair/null? _tl1721917270_)
                                      (let ((_g48587_
                                             (gx#syntax-split-splice
                                              _tl1721917270_
                                              '0)))
                                        (begin
                                          (let ((_g48588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48587_)
                                                       (##vector-length
                                                        _g48587_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48588_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48588_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48587_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48587_ 1))))
                                            (if (gx#stx-null? _tl1723417316_)
                                                (letrec ((_loop1723517319_
                                                          (lambda (_hd1723317323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1723917326_)
                    (if (gx#stx-pair? _hd1723317323_)
                        (let ((_e1723617329_ (gx#syntax-e _hd1723317323_)))
                          (let ((_lp-hd1723717333_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1723617329_)))
                                (_lp-tl1723817336_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1723617329_))))
                            (_loop1723517319_
                             _lp-tl1723817336_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1723717333_ _body1723917326_)))))
                        (let ((_body1724017339_ (reverse _body1723917326_)))
                          ((lambda (_L17343_ _L17345_ _L17346_)
                             (if (and (gx#identifier? _L17346_)
                                      (gx#identifier-list?
                                       (let ((__tmp48589
                                              (lambda (_g1737017373_
                                                       _g1737117376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1737017373_
                                                        _g1737117376_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48589 '() _L17345_))))
                                 (let* ((_g1737917387_
                                         (lambda (_g1738017383_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1738017383_)))
                                        (_g1737817603_
                                         (lambda (_g1738017391_)
                                           ((lambda (_L17394_)
                                              (let ()
                                                (let* ((_g1740617423_
                                                        (lambda (_g1740717419_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1740717419_)))
                                                       (_g1740517591_
                                                        (lambda (_g1740717427_)
                                                          (if (gx#stx-pair/null?
                                                               _g1740717427_)
                                                              (let ((_g48590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g48591_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g48590_)
                                       (##vector-length _g48590_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g48591_ 2)))
                                (error "Context expects 2 values" _g48591_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48590_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48590_ 1))))
                            (if (gx#stx-null? _tl1741117433_)
                                (letrec ((_loop1741217436_
                                          (lambda (_hd1741017440_
                                                   _xarg1741617443_)
                                            (if (gx#stx-pair? _hd1741017440_)
                                                (let ((_e1741317446_
                                                       (gx#syntax-e
                                                        _hd1741017440_)))
                                                  (let ((_lp-hd1741417450_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1741317446_)))
                                                        (_lp-tl1741517453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1741317446_))))
                                                    (_loop1741217436_
                                                     _lp-tl1741517453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd1741417450_
                                                             _xarg1741617443_)))))
                                                (let ((_xarg1741717456_
                                                       (reverse _xarg1741617443_)))
                                                  ((lambda (_L17460_)
                                                     (let ()
                                                       (let* ((_g1747717485_
                                                               (lambda (_g1747817481_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1747817481_)))
                      (_g1747617555_
                       (lambda (_g1747817489_)
                         ((lambda (_L17492_)
                            (let ()
                              (let* ((_g1750517513_
                                      (lambda (_g1750617509_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1750617509_)))
                                     (_g1750417535_
                                      (lambda (_g1750617517_)
                                        ((lambda (_L17520_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp48594
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp48592
                                                       (let ((__tmp48593
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp48593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48594 __tmp48592))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp48601
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp48595
                                         (let ((__tmp48598
                                                (let ((__tmp48599
                                                       (let ((__tmp48600
                                                              (lambda (_g1753817543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1753917546_)
                        (let ()
                          (declare (not safe))
                          (cons _g1753817543_ _g1753917546_)))))
                 (declare (not safe))
                 (foldr1 __tmp48600 '() _L17345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17394_ __tmp48599)))
                                               (__tmp48596
                                                (let ((__tmp48597
                                                       (lambda (_g1754017549_
                                                                _g1754117552_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1754017549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1754117552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48597
                                                          '()
                                                          _L17343_))))
                                           (declare (not safe))
                                           (cons __tmp48598 __tmp48596))))
                                    (declare (not safe))
                                    (cons __tmp48601 __tmp48595))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp48633 (gx#datum->syntax '#f 'defrules))
                         (__tmp48602
                          (let ((__tmp48603
                                 (let ((__tmp48604
                                        (let ((__tmp48617
                                               (let ((__tmp48629
                                                      (let ((__tmp48632
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp48630
                                                             (let ((__tmp48631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1755817567_ _g1755917570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1755817567_ _g1755917570_)))))
                       (declare (not safe))
                       (foldr1 __tmp48631 '() _L17460_))))
                (declare (not safe))
                (cons __tmp48632 __tmp48630)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48618
                                                      (let ((__tmp48619
                                                             (let ((__tmp48622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48628 (gx#datum->syntax '#f 'lambda))
                                  (__tmp48623
                                   (let ((__tmp48626
                                          (let ((__tmp48627
                                                 (lambda (_g1756017573_
                                                          _g1756117576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017573_
                                                           _g1756117576_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48627 '() _L17345_)))
                                         (__tmp48624
                                          (let ((__tmp48625
                                                 (lambda (_g1756217579_
                                                          _g1756317582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217579_
                                                           _g1756317582_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48625 '() _L17343_))))
                                     (declare (not safe))
                                     (cons __tmp48626 __tmp48624))))
                              (declare (not safe))
                              (cons __tmp48628 __tmp48623)))
                           (__tmp48620
                            (let ((__tmp48621
                                   (lambda (_g1756417585_ _g1756517588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1756417585_ _g1756517588_)))))
                              (declare (not safe))
                              (foldr1 __tmp48621 '() _L17460_))))
                       (declare (not safe))
                       (cons __tmp48622 __tmp48620))))
                (declare (not safe))
                (cons __tmp48619 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48629 __tmp48618)))
                                              (__tmp48605
                                               (let ((__tmp48606
                                                      (let ((__tmp48616
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp48607
                                                             (let ((__tmp48609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48615
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp48610
                                   (let ((__tmp48611
                                          (let ((__tmp48614
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp48612
                                                 (let ((__tmp48613
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp48613 '()))))
                                            (declare (not safe))
                                            (cons __tmp48614 __tmp48612))))
                                     (declare (not safe))
                                     (cons __tmp48611 '()))))
                              (declare (not safe))
                              (cons __tmp48615 __tmp48610)))
                           (__tmp48608
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp48609 __tmp48608))))
                (declare (not safe))
                (cons __tmp48616 __tmp48607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48606 '()))))
                                          (declare (not safe))
                                          (cons __tmp48617 __tmp48605))))
                                   (declare (not safe))
                                   (cons '() __tmp48604))))
                            (declare (not safe))
                            (cons _L17346_ __tmp48603))))
                     (declare (not safe))
                     (cons __tmp48633 __tmp48602))
                   (gx#stx-source _stx17206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741717456_))))))
                                  (_loop1741217436_ _target1740917430_ '()))
                                (_g1740617423_ _g1740717427_)))))
                      (_g1740617423_ _g1740717427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1740517591_
                                                   (gx#gentemps
                                                    (let ((__tmp48634
                                                           (lambda (_g1759417597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1759517600_)
                     (let ()
                       (declare (not safe))
                       (cons _g1759417597_ _g1759517600_)))))
              (declare (not safe))
              (foldr1 __tmp48634 '() _L17345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1738017391_))))
                                   (_g1737817603_
                                    (gx#stx-identifier
                                     _L17346_
                                     _L17346_
                                     '"__impl")))
                                 (_g1720917246_ _g1721017250_)))
                           _body1724017339_
                           _arg1723117309_
                           _hd1722117277_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1723517319_
                                                   _target1723217313_
                                                   '()))
                                                (_g1720917246_
                                                 _g1721017250_)))))
                                      (_g1720917246_ _g1721017250_)))))))
                  (_loop1722617289_ _target1722317283_ '()))
                (_g1720917246_ _g1721017250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1720917246_ _g1721017250_))))
                                      (_g1720917246_ _g1721017250_))))
                              (_g1720917246_ _g1721017250_))))
                      (_g1720917246_ _g1721017250_)))))
          (_g1720817607_ _stx17206_))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defconst|
      (lambda (_$stx17614_)
        (let* ((___stx4391843919_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4391843919_))))
          (let ((___kont4392143922_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp48652 (gx#datum->syntax '#f 'defrules))
                         (__tmp48635
                          (let ((__tmp48636
                                 (let ((__tmp48637
                                        (let ((__tmp48638
                                               (let ((__tmp48651
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp48639
                                                      (let ((__tmp48644
                                                             (let ((__tmp48650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp48645
                            (let ((__tmp48646
                                   (let ((__tmp48649
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp48647
                                          (let ((__tmp48648
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp48648 '()))))
                                     (declare (not safe))
                                     (cons __tmp48649 __tmp48647))))
                              (declare (not safe))
                              (cons __tmp48646 '()))))
                       (declare (not safe))
                       (cons __tmp48650 __tmp48645)))
                    (__tmp48640
                     (let ((__tmp48641
                            (let ((__tmp48643 (gx#datum->syntax '#f 'quote))
                                  (__tmp48642
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp48643 __tmp48642))))
                       (declare (not safe))
                       (cons __tmp48641 '()))))
                (declare (not safe))
                (cons __tmp48644 __tmp48640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48651
                                                       __tmp48639))))
                                          (declare (not safe))
                                          (cons __tmp48638 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48637))))
                            (declare (not safe))
                            (cons _L17771_ __tmp48636))))
                     (declare (not safe))
                     (cons __tmp48652 __tmp48635))))
                (___kont4392343924_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp48653
                          (let ((__tmp48654
                                 (let ((__tmp48655
                                        (let ((__tmp48657
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48656
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48657 __tmp48656))))
                                   (declare (not safe))
                                   (cons __tmp48655 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp48654))))
                     (declare (not safe))
                     (cons _L17695_ __tmp48653)))))
            (let* ((___match4398343984_
                    (lambda (_e1764117662_
                             _hd1764217666_
                             _tl1764317669_
                             _e1764417672_
                             _hd1764517676_
                             _tl1764617679_
                             _e1764717682_
                             _hd1764817686_
                             _tl1764917689_)
                      (let ((_L17692_ _hd1764817686_)
                            (_L17694_ _hd1764517676_)
                            (_L17695_ _hd1764217666_))
                        (if (and (gx#identifier? _L17694_)
                                 (gx#stx-datum? _L17692_))
                            (___kont4392343924_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4396343964_
                    (lambda (_e1762317719_
                             _hd1762417723_
                             _tl1762517726_
                             _e1762617729_
                             _hd1762717733_
                             _tl1762817736_
                             _e1762917739_
                             _hd1763017743_
                             _tl1763117746_
                             _e1763217749_
                             _hd1763317753_
                             _tl1763417756_
                             _e1763517759_
                             _hd1763617763_
                             _tl1763717766_)
                      (let ((_L17769_ _hd1763617763_)
                            (_L17771_ _hd1762717733_))
                        (if (gx#identifier? _L17771_)
                            (___kont4392143922_ _L17769_ _L17771_)
                            (___match4398343984_
                             _e1762317719_
                             _hd1762417723_
                             _tl1762517726_
                             _e1762617729_
                             _hd1762717733_
                             _tl1762817736_
                             _e1762917739_
                             _hd1763017743_
                             _tl1763117746_))))))
              (if (gx#stx-pair? ___stx4391843919_)
                  (let ((_e1762317719_ (gx#syntax-e ___stx4391843919_)))
                    (let ((_tl1762517726_
                           (let () (declare (not safe)) (##cdr _e1762317719_)))
                          (_hd1762417723_
                           (let ()
                             (declare (not safe))
                             (##car _e1762317719_))))
                      (if (gx#stx-pair? _tl1762517726_)
                          (let ((_e1762617729_ (gx#syntax-e _tl1762517726_)))
                            (let ((_tl1762817736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1762617729_)))
                                  (_hd1762717733_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1762617729_))))
                              (if (gx#stx-pair? _tl1762817736_)
                                  (let ((_e1762917739_
                                         (gx#syntax-e _tl1762817736_)))
                                    (let ((_tl1763117746_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1762917739_)))
                                          (_hd1763017743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1762917739_))))
                                      (if (gx#stx-pair? _hd1763017743_)
                                          (let ((_e1763217749_
                                                 (gx#syntax-e _hd1763017743_)))
                                            (let ((_tl1763417756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1763217749_)))
                                                  (_hd1763317753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1763217749_))))
                                              (if (gx#identifier?
                                                   _hd1763317753_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g48658_|
                                                       _hd1763317753_)
                                                      (if (gx#stx-pair?
                                                           _tl1763417756_)
                                                          (let ((_e1763517759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1763417756_)))
                    (let ((_tl1763717766_
                           (let () (declare (not safe)) (##cdr _e1763517759_)))
                          (_hd1763617763_
                           (let ()
                             (declare (not safe))
                             (##car _e1763517759_))))
                      (if (gx#stx-null? _tl1763717766_)
                          (if (gx#stx-null? _tl1763117746_)
                              (___match4396343964_
                               _e1762317719_
                               _hd1762417723_
                               _tl1762517726_
                               _e1762617729_
                               _hd1762717733_
                               _tl1762817736_
                               _e1762917739_
                               _hd1763017743_
                               _tl1763117746_
                               _e1763217749_
                               _hd1763317753_
                               _tl1763417756_
                               _e1763517759_
                               _hd1763617763_
                               _tl1763717766_)
                              (let () (declare (not safe)) (_g1761917655_)))
                          (if (gx#stx-null? _tl1763117746_)
                              (___match4398343984_
                               _e1762317719_
                               _hd1762417723_
                               _tl1762517726_
                               _e1762617729_
                               _hd1762717733_
                               _tl1762817736_
                               _e1762917739_
                               _hd1763017743_
                               _tl1763117746_)
                              (let () (declare (not safe)) (_g1761917655_))))))
                  (if (gx#stx-null? _tl1763117746_)
                      (___match4398343984_
                       _e1762317719_
                       _hd1762417723_
                       _tl1762517726_
                       _e1762617729_
                       _hd1762717733_
                       _tl1762817736_
                       _e1762917739_
                       _hd1763017743_
                       _tl1763117746_)
                      (let () (declare (not safe)) (_g1761917655_))))
              (if (gx#stx-null? _tl1763117746_)
                  (___match4398343984_
                   _e1762317719_
                   _hd1762417723_
                   _tl1762517726_
                   _e1762617729_
                   _hd1762717733_
                   _tl1762817736_
                   _e1762917739_
                   _hd1763017743_
                   _tl1763117746_)
                  (let () (declare (not safe)) (_g1761917655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1763117746_)
                                                      (___match4398343984_
                                                       _e1762317719_
                                                       _hd1762417723_
                                                       _tl1762517726_
                                                       _e1762617729_
                                                       _hd1762717733_
                                                       _tl1762817736_
                                                       _e1762917739_
                                                       _hd1763017743_
                                                       _tl1763117746_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1761917655_))))))
                                          (if (gx#stx-null? _tl1763117746_)
                                              (___match4398343984_
                                               _e1762317719_
                                               _hd1762417723_
                                               _tl1762517726_
                                               _e1762617729_
                                               _hd1762717733_
                                               _tl1762817736_
                                               _e1762917739_
                                               _hd1763017743_
                                               _tl1763117746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1761917655_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1761917655_)))))
                          (let () (declare (not safe)) (_g1761917655_)))))
                  (let () (declare (not safe)) (_g1761917655_))))))))))
