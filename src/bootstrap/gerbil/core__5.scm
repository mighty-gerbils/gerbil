(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g48712_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4409444095_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4409444095_))))
          (let ((___kont4409744098_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp48635 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48628
                          (let ((__tmp48629
                                 (let ((__tmp48630
                                        (let ((__tmp48634
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp48631
                                               (let ((__tmp48632
                                                      (let ((__tmp48633
                                                             (lambda (_g1719217195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719317198_)
                       (let ()
                         (declare (not safe))
                         (cons _g1719217195_ _g1719317198_)))))
                (declare (not safe))
                (foldr1 __tmp48633 '() _L17170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17172_ __tmp48632))))
                                          (declare (not safe))
                                          (cons __tmp48634 __tmp48631))))
                                   (declare (not safe))
                                   (cons __tmp48630 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp48629))))
                     (declare (not safe))
                     (cons __tmp48635 __tmp48628))))
                (___kont4410144102_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp48638 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48636
                          (let ((__tmp48637
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp48637))))
                     (declare (not safe))
                     (cons __tmp48638 __tmp48636)))))
            (let* ((___match4414944150_
                    (lambda (_e1703517054_
                             _hd1703417058_
                             _tl1703317061_
                             _e1703817064_
                             _hd1703717068_
                             _tl1703617071_
                             _e1704117074_
                             _hd1704017078_
                             _tl1703917081_)
                      (let ((_L17084_ _hd1704017078_)
                            (_L17086_ _hd1703717068_))
                        (if (gx#identifier? _L17086_)
                            (___kont4410144102_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4414144142_
                    (lambda (_e1703517054_
                             _hd1703417058_
                             _tl1703317061_
                             _e1703817064_
                             _hd1703717068_
                             _tl1703617071_)
                      (if (gx#stx-pair? _tl1703617071_)
                          (let ((_e1704117074_ (gx#syntax-e _tl1703617071_)))
                            (let ((_tl1703917081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1704117074_)))
                                  (_hd1704017078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1704117074_))))
                              (if (gx#stx-null? _tl1703917081_)
                                  (___match4414944150_
                                   _e1703517054_
                                   _hd1703417058_
                                   _tl1703317061_
                                   _e1703817064_
                                   _hd1703717068_
                                   _tl1703617071_
                                   _e1704117074_
                                   _hd1704017078_
                                   _tl1703917081_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1700817047_)))))
                          (let () (declare (not safe)) (_g1700817047_)))))
                   (___match4412944130_
                    (lambda (_e1701517110_
                             _hd1701417114_
                             _tl1701317117_
                             _e1701817120_
                             _hd1701717124_
                             _tl1701617127_
                             _e1702117130_
                             _hd1702017134_
                             _tl1701917137_
                             ___splice4409944100_
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
                                              (_L17172_ _tl1701917137_)
                                              (_L17173_ _hd1702017134_))
                                          (if (gx#identifier? _L17173_)
                                              (___kont4409744098_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4414144142_
                                               _e1701517110_
                                               _hd1701417114_
                                               _tl1701317117_
                                               _e1701817120_
                                               _hd1701717124_
                                               _tl1701617127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4409444095_)
                  (let ((_e1701517110_ (gx#syntax-e ___stx4409444095_)))
                    (let ((_tl1701317117_
                           (let () (declare (not safe)) (##cdr _e1701517110_)))
                          (_hd1701417114_
                           (let ()
                             (declare (not safe))
                             (##car _e1701517110_))))
                      (if (gx#stx-pair? _tl1701317117_)
                          (let ((_e1701817120_ (gx#syntax-e _tl1701317117_)))
                            (let ((_tl1701617127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1701817120_)))
                                  (_hd1701717124_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1701817120_))))
                              (if (gx#stx-pair? _hd1701717124_)
                                  (let ((_e1702117130_
                                         (gx#syntax-e _hd1701717124_)))
                                    (let ((_tl1701917137_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1702117130_)))
                                          (_hd1702017134_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1702117130_))))
                                      (if (gx#stx-pair/null? _tl1701617127_)
                                          (let ((___splice4409944100_
                                                 (gx#syntax-split-splice
                                                  _tl1701617127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4409944100_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4409944100_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4412944130_
                                                   _e1701517110_
                                                   _hd1701417114_
                                                   _tl1701317117_
                                                   _e1701817120_
                                                   _hd1701717124_
                                                   _tl1701617127_
                                                   _e1702117130_
                                                   _hd1702017134_
                                                   _tl1701917137_
                                                   ___splice4409944100_
                                                   _target1702217140_
                                                   _tl1702417143_)
                                                  (if (gx#stx-pair?
                                                       _tl1701617127_)
                                                      (let ((_e1704117074_
                                                             (gx#syntax-e
                                                              _tl1701617127_)))
                                                        (let ((_tl1703917081_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1704117074_)))
                      (_hd1704017078_
                       (let () (declare (not safe)) (##car _e1704117074_))))
                  (if (gx#stx-null? _tl1703917081_)
                      (___match4414944150_
                       _e1701517110_
                       _hd1701417114_
                       _tl1701317117_
                       _e1701817120_
                       _hd1701717124_
                       _tl1701617127_
                       _e1704117074_
                       _hd1704017078_
                       _tl1703917081_)
                      (let () (declare (not safe)) (_g1700817047_)))))
              (let () (declare (not safe)) (_g1700817047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl1701617127_)
                                              (let ((_e1704117074_
                                                     (gx#syntax-e
                                                      _tl1701617127_)))
                                                (let ((_tl1703917081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1704117074_)))
                                                      (_hd1704017078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1704117074_))))
                                                  (if (gx#stx-null?
                                                       _tl1703917081_)
                                                      (___match4414944150_
                                                       _e1701517110_
                                                       _hd1701417114_
                                                       _tl1701317117_
                                                       _e1701817120_
                                                       _hd1701717124_
                                                       _tl1701617127_
                                                       _e1704117074_
                                                       _hd1704017078_
                                                       _tl1703917081_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1700817047_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1700817047_))))))
                                  (if (gx#stx-pair? _tl1701617127_)
                                      (let ((_e1704117074_
                                             (gx#syntax-e _tl1701617127_)))
                                        (let ((_tl1703917081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1704117074_)))
                                              (_hd1704017078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1704117074_))))
                                          (if (gx#stx-null? _tl1703917081_)
                                              (___match4414944150_
                                               _e1701517110_
                                               _hd1701417114_
                                               _tl1701317117_
                                               _e1701817120_
                                               _hd1701717124_
                                               _tl1701617127_
                                               _e1704117074_
                                               _hd1704017078_
                                               _tl1703917081_)
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
                      (let ((_e1721617253_ (gx#syntax-e _g1721017250_)))
                        (let ((_hd1721517257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1721617253_)))
                              (_tl1721417260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1721617253_))))
                          (if (gx#stx-pair? _tl1721417260_)
                              (let ((_e1721917263_
                                     (gx#syntax-e _tl1721417260_)))
                                (let ((_hd1721817267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1721917263_)))
                                      (_tl1721717270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1721917263_))))
                                  (if (gx#stx-pair? _hd1721817267_)
                                      (let ((_e1722217273_
                                             (gx#syntax-e _hd1721817267_)))
                                        (let ((_hd1722117277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1722217273_)))
                                              (_tl1722017280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1722217273_))))
                                          (if (gx#stx-pair/null?
                                               _tl1722017280_)
                                              (let ((_g48639_
                                                     (gx#syntax-split-splice
                                                      _tl1722017280_
                                                      '0)))
                                                (begin
                                                  (let ((_g48640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g48639_)
                                                               (##vector-length
                                                                _g48639_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g48640_ 2)))
                (error "Context expects 2 values" _g48640_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48639_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48639_
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
                                  (if (gx#stx-pair/null? _tl1721717270_)
                                      (let ((_g48641_
                                             (gx#syntax-split-splice
                                              _tl1721717270_
                                              '0)))
                                        (begin
                                          (let ((_g48642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48641_)
                                                       (##vector-length
                                                        _g48641_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48642_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48642_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48641_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48641_ 1))))
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
                                       (let ((__tmp48688
                                              (lambda (_g1737017373_
                                                       _g1737117376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1737017373_
                                                        _g1737117376_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48688 '() _L17345_))))
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
                                                              (let ((_g48643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g48644_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g48643_)
                                       (##vector-length _g48643_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g48644_ 2)))
                                (error "Context expects 2 values" _g48644_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48643_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48643_ 1))))
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
                                                (let ((__tmp48647
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp48645
                                                       (let ((__tmp48646
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp48646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48647 __tmp48645))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp48654
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp48648
                                         (let ((__tmp48651
                                                (let ((__tmp48652
                                                       (let ((__tmp48653
                                                              (lambda (_g1754017543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1754117546_)
                        (let ()
                          (declare (not safe))
                          (cons _g1754017543_ _g1754117546_)))))
                 (declare (not safe))
                 (foldr1 __tmp48653 '() _L17345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17394_ __tmp48652)))
                                               (__tmp48649
                                                (let ((__tmp48650
                                                       (lambda (_g1753817549_
                                                                _g1753917552_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1753817549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1753917552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48650
                                                          '()
                                                          _L17343_))))
                                           (declare (not safe))
                                           (cons __tmp48651 __tmp48649))))
                                    (declare (not safe))
                                    (cons __tmp48654 __tmp48648))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp48686 (gx#datum->syntax '#f 'defrules))
                         (__tmp48655
                          (let ((__tmp48656
                                 (let ((__tmp48657
                                        (let ((__tmp48670
                                               (let ((__tmp48682
                                                      (let ((__tmp48685
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp48683
                                                             (let ((__tmp48684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1756417567_ _g1756517570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1756417567_ _g1756517570_)))))
                       (declare (not safe))
                       (foldr1 __tmp48684 '() _L17460_))))
                (declare (not safe))
                (cons __tmp48685 __tmp48683)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48671
                                                      (let ((__tmp48672
                                                             (let ((__tmp48675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48681 (gx#datum->syntax '#f 'lambda))
                                  (__tmp48676
                                   (let ((__tmp48679
                                          (let ((__tmp48680
                                                 (lambda (_g1756217573_
                                                          _g1756317576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217573_
                                                           _g1756317576_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48680 '() _L17345_)))
                                         (__tmp48677
                                          (let ((__tmp48678
                                                 (lambda (_g1756017579_
                                                          _g1756117582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017579_
                                                           _g1756117582_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48678 '() _L17343_))))
                                     (declare (not safe))
                                     (cons __tmp48679 __tmp48677))))
                              (declare (not safe))
                              (cons __tmp48681 __tmp48676)))
                           (__tmp48673
                            (let ((__tmp48674
                                   (lambda (_g1755817585_ _g1755917588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1755817585_ _g1755917588_)))))
                              (declare (not safe))
                              (foldr1 __tmp48674 '() _L17460_))))
                       (declare (not safe))
                       (cons __tmp48675 __tmp48673))))
                (declare (not safe))
                (cons __tmp48672 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48682 __tmp48671)))
                                              (__tmp48658
                                               (let ((__tmp48659
                                                      (let ((__tmp48669
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp48660
                                                             (let ((__tmp48662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48668
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp48663
                                   (let ((__tmp48664
                                          (let ((__tmp48667
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp48665
                                                 (let ((__tmp48666
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp48666 '()))))
                                            (declare (not safe))
                                            (cons __tmp48667 __tmp48665))))
                                     (declare (not safe))
                                     (cons __tmp48664 '()))))
                              (declare (not safe))
                              (cons __tmp48668 __tmp48663)))
                           (__tmp48661
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp48662 __tmp48661))))
                (declare (not safe))
                (cons __tmp48669 __tmp48660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48659 '()))))
                                          (declare (not safe))
                                          (cons __tmp48670 __tmp48658))))
                                   (declare (not safe))
                                   (cons '() __tmp48657))))
                            (declare (not safe))
                            (cons _L17346_ __tmp48656))))
                     (declare (not safe))
                     (cons __tmp48686 __tmp48655))
                   (gx#stx-source _stx17206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741717456_))))))
                                  (_loop1741217436_ _target1740917430_ '()))
                                (_g1740617423_ _g1740717427_)))))
                      (_g1740617423_ _g1740717427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1740517591_
                                                   (gx#gentemps
                                                    (let ((__tmp48687
                                                           (lambda (_g1759417597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1759517600_)
                     (let ()
                       (declare (not safe))
                       (cons _g1759417597_ _g1759517600_)))))
              (declare (not safe))
              (foldr1 __tmp48687 '() _L17345_)))))))
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
        (let* ((___stx4415244153_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4415244153_))))
          (let ((___kont4415544156_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp48706 (gx#datum->syntax '#f 'defrules))
                         (__tmp48689
                          (let ((__tmp48690
                                 (let ((__tmp48691
                                        (let ((__tmp48692
                                               (let ((__tmp48705
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp48693
                                                      (let ((__tmp48698
                                                             (let ((__tmp48704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp48699
                            (let ((__tmp48700
                                   (let ((__tmp48703
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp48701
                                          (let ((__tmp48702
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp48702 '()))))
                                     (declare (not safe))
                                     (cons __tmp48703 __tmp48701))))
                              (declare (not safe))
                              (cons __tmp48700 '()))))
                       (declare (not safe))
                       (cons __tmp48704 __tmp48699)))
                    (__tmp48694
                     (let ((__tmp48695
                            (let ((__tmp48697 (gx#datum->syntax '#f 'quote))
                                  (__tmp48696
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp48697 __tmp48696))))
                       (declare (not safe))
                       (cons __tmp48695 '()))))
                (declare (not safe))
                (cons __tmp48698 __tmp48694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48705
                                                       __tmp48693))))
                                          (declare (not safe))
                                          (cons __tmp48692 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48691))))
                            (declare (not safe))
                            (cons _L17771_ __tmp48690))))
                     (declare (not safe))
                     (cons __tmp48706 __tmp48689))))
                (___kont4415744158_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp48707
                          (let ((__tmp48708
                                 (let ((__tmp48709
                                        (let ((__tmp48711
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48710
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48711 __tmp48710))))
                                   (declare (not safe))
                                   (cons __tmp48709 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp48708))))
                     (declare (not safe))
                     (cons _L17695_ __tmp48707)))))
            (let* ((___match4421744218_
                    (lambda (_e1764317662_
                             _hd1764217666_
                             _tl1764117669_
                             _e1764617672_
                             _hd1764517676_
                             _tl1764417679_
                             _e1764917682_
                             _hd1764817686_
                             _tl1764717689_)
                      (let ((_L17692_ _hd1764817686_)
                            (_L17694_ _hd1764517676_)
                            (_L17695_ _hd1764217666_))
                        (if (and (gx#identifier? _L17694_)
                                 (gx#stx-datum? _L17692_))
                            (___kont4415744158_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4419744198_
                    (lambda (_e1762517719_
                             _hd1762417723_
                             _tl1762317726_
                             _e1762817729_
                             _hd1762717733_
                             _tl1762617736_
                             _e1763117739_
                             _hd1763017743_
                             _tl1762917746_
                             _e1763417749_
                             _hd1763317753_
                             _tl1763217756_
                             _e1763717759_
                             _hd1763617763_
                             _tl1763517766_)
                      (let ((_L17769_ _hd1763617763_)
                            (_L17771_ _hd1762717733_))
                        (if (gx#identifier? _L17771_)
                            (___kont4415544156_ _L17769_ _L17771_)
                            (___match4421744218_
                             _e1762517719_
                             _hd1762417723_
                             _tl1762317726_
                             _e1762817729_
                             _hd1762717733_
                             _tl1762617736_
                             _e1763117739_
                             _hd1763017743_
                             _tl1762917746_))))))
              (if (gx#stx-pair? ___stx4415244153_)
                  (let ((_e1762517719_ (gx#syntax-e ___stx4415244153_)))
                    (let ((_tl1762317726_
                           (let () (declare (not safe)) (##cdr _e1762517719_)))
                          (_hd1762417723_
                           (let ()
                             (declare (not safe))
                             (##car _e1762517719_))))
                      (if (gx#stx-pair? _tl1762317726_)
                          (let ((_e1762817729_ (gx#syntax-e _tl1762317726_)))
                            (let ((_tl1762617736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1762817729_)))
                                  (_hd1762717733_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1762817729_))))
                              (if (gx#stx-pair? _tl1762617736_)
                                  (let ((_e1763117739_
                                         (gx#syntax-e _tl1762617736_)))
                                    (let ((_tl1762917746_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1763117739_)))
                                          (_hd1763017743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1763117739_))))
                                      (if (gx#stx-pair? _hd1763017743_)
                                          (let ((_e1763417749_
                                                 (gx#syntax-e _hd1763017743_)))
                                            (let ((_tl1763217756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1763417749_)))
                                                  (_hd1763317753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1763417749_))))
                                              (if (gx#identifier?
                                                   _hd1763317753_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g48712_|
                                                       _hd1763317753_)
                                                      (if (gx#stx-pair?
                                                           _tl1763217756_)
                                                          (let ((_e1763717759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1763217756_)))
                    (let ((_tl1763517766_
                           (let () (declare (not safe)) (##cdr _e1763717759_)))
                          (_hd1763617763_
                           (let ()
                             (declare (not safe))
                             (##car _e1763717759_))))
                      (if (gx#stx-null? _tl1763517766_)
                          (if (gx#stx-null? _tl1762917746_)
                              (___match4419744198_
                               _e1762517719_
                               _hd1762417723_
                               _tl1762317726_
                               _e1762817729_
                               _hd1762717733_
                               _tl1762617736_
                               _e1763117739_
                               _hd1763017743_
                               _tl1762917746_
                               _e1763417749_
                               _hd1763317753_
                               _tl1763217756_
                               _e1763717759_
                               _hd1763617763_
                               _tl1763517766_)
                              (let () (declare (not safe)) (_g1761917655_)))
                          (if (gx#stx-null? _tl1762917746_)
                              (___match4421744218_
                               _e1762517719_
                               _hd1762417723_
                               _tl1762317726_
                               _e1762817729_
                               _hd1762717733_
                               _tl1762617736_
                               _e1763117739_
                               _hd1763017743_
                               _tl1762917746_)
                              (let () (declare (not safe)) (_g1761917655_))))))
                  (if (gx#stx-null? _tl1762917746_)
                      (___match4421744218_
                       _e1762517719_
                       _hd1762417723_
                       _tl1762317726_
                       _e1762817729_
                       _hd1762717733_
                       _tl1762617736_
                       _e1763117739_
                       _hd1763017743_
                       _tl1762917746_)
                      (let () (declare (not safe)) (_g1761917655_))))
              (if (gx#stx-null? _tl1762917746_)
                  (___match4421744218_
                   _e1762517719_
                   _hd1762417723_
                   _tl1762317726_
                   _e1762817729_
                   _hd1762717733_
                   _tl1762617736_
                   _e1763117739_
                   _hd1763017743_
                   _tl1762917746_)
                  (let () (declare (not safe)) (_g1761917655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1762917746_)
                                                      (___match4421744218_
                                                       _e1762517719_
                                                       _hd1762417723_
                                                       _tl1762317726_
                                                       _e1762817729_
                                                       _hd1762717733_
                                                       _tl1762617736_
                                                       _e1763117739_
                                                       _hd1763017743_
                                                       _tl1762917746_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1761917655_))))))
                                          (if (gx#stx-null? _tl1762917746_)
                                              (___match4421744218_
                                               _e1762517719_
                                               _hd1762417723_
                                               _tl1762317726_
                                               _e1762817729_
                                               _hd1762717733_
                                               _tl1762617736_
                                               _e1763117739_
                                               _hd1763017743_
                                               _tl1762917746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1761917655_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1761917655_)))))
                          (let () (declare (not safe)) (_g1761917655_)))))
                  (let () (declare (not safe)) (_g1761917655_))))))))))
