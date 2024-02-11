(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g49181_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4436944370_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4436944370_))))
          (let ((___kont4437244373_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp49104 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp49097
                          (let ((__tmp49098
                                 (let ((__tmp49099
                                        (let ((__tmp49103
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp49100
                                               (let ((__tmp49101
                                                      (let ((__tmp49102
                                                             (lambda (_g1719217195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719317198_)
                       (let ()
                         (declare (not safe))
                         (cons _g1719217195_ _g1719317198_)))))
                (declare (not safe))
                (foldr1 __tmp49102 '() _L17170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17172_ __tmp49101))))
                                          (declare (not safe))
                                          (cons __tmp49103 __tmp49100))))
                                   (declare (not safe))
                                   (cons __tmp49099 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp49098))))
                     (declare (not safe))
                     (cons __tmp49104 __tmp49097))))
                (___kont4437644377_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp49107 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp49105
                          (let ((__tmp49106
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp49106))))
                     (declare (not safe))
                     (cons __tmp49107 __tmp49105)))))
            (let* ((___match4442444425_
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
                            (___kont4437644377_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4441644417_
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
                                  (___match4442444425_
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
                   (___match4440444405_
                    (lambda (_e1701517110_
                             _hd1701417114_
                             _tl1701317117_
                             _e1701817120_
                             _hd1701717124_
                             _tl1701617127_
                             _e1702117130_
                             _hd1702017134_
                             _tl1701917137_
                             ___splice4437444375_
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
                                              (___kont4437244373_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4441644417_
                                               _e1701517110_
                                               _hd1701417114_
                                               _tl1701317117_
                                               _e1701817120_
                                               _hd1701717124_
                                               _tl1701617127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4436944370_)
                  (let ((_e1701517110_ (gx#syntax-e ___stx4436944370_)))
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
                                          (let ((___splice4437444375_
                                                 (gx#syntax-split-splice
                                                  _tl1701617127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4437444375_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4437444375_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4440444405_
                                                   _e1701517110_
                                                   _hd1701417114_
                                                   _tl1701317117_
                                                   _e1701817120_
                                                   _hd1701717124_
                                                   _tl1701617127_
                                                   _e1702117130_
                                                   _hd1702017134_
                                                   _tl1701917137_
                                                   ___splice4437444375_
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
                      (___match4442444425_
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
                                                      (___match4442444425_
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
                                              (___match4442444425_
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
                                              (let ((_g49108_
                                                     (gx#syntax-split-splice
                                                      _tl1722017280_
                                                      '0)))
                                                (begin
                                                  (let ((_g49109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49108_)
                                                               (##vector-length
                                                                _g49108_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49109_ 2)))
                (error "Context expects 2 values" _g49109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g49108_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g49108_
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
                                      (let ((_g49110_
                                             (gx#syntax-split-splice
                                              _tl1721717270_
                                              '0)))
                                        (begin
                                          (let ((_g49111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49110_)
                                                       (##vector-length
                                                        _g49110_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49111_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49111_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g49110_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g49110_ 1))))
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
                                       (let ((__tmp49157
                                              (lambda (_g1737017373_
                                                       _g1737117376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1737017373_
                                                        _g1737117376_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp49157 '() _L17345_))))
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
                                                              (let ((_g49112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g49113_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g49112_)
                                       (##vector-length _g49112_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g49113_ 2)))
                                (error "Context expects 2 values" _g49113_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49112_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g49112_ 1))))
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
                                                (let ((__tmp49116
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp49114
                                                       (let ((__tmp49115
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp49115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49116 __tmp49114))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp49123
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp49117
                                         (let ((__tmp49120
                                                (let ((__tmp49121
                                                       (let ((__tmp49122
                                                              (lambda (_g1754017543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1754117546_)
                        (let ()
                          (declare (not safe))
                          (cons _g1754017543_ _g1754117546_)))))
                 (declare (not safe))
                 (foldr1 __tmp49122 '() _L17345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17394_ __tmp49121)))
                                               (__tmp49118
                                                (let ((__tmp49119
                                                       (lambda (_g1753817549_
                                                                _g1753917552_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1753817549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1753917552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp49119
                                                          '()
                                                          _L17343_))))
                                           (declare (not safe))
                                           (cons __tmp49120 __tmp49118))))
                                    (declare (not safe))
                                    (cons __tmp49123 __tmp49117))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp49155 (gx#datum->syntax '#f 'defrules))
                         (__tmp49124
                          (let ((__tmp49125
                                 (let ((__tmp49126
                                        (let ((__tmp49139
                                               (let ((__tmp49151
                                                      (let ((__tmp49154
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp49152
                                                             (let ((__tmp49153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1756417567_ _g1756517570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1756417567_ _g1756517570_)))))
                       (declare (not safe))
                       (foldr1 __tmp49153 '() _L17460_))))
                (declare (not safe))
                (cons __tmp49154 __tmp49152)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49140
                                                      (let ((__tmp49141
                                                             (let ((__tmp49144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49150 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49145
                                   (let ((__tmp49148
                                          (let ((__tmp49149
                                                 (lambda (_g1756217573_
                                                          _g1756317576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217573_
                                                           _g1756317576_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49149 '() _L17345_)))
                                         (__tmp49146
                                          (let ((__tmp49147
                                                 (lambda (_g1756017579_
                                                          _g1756117582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017579_
                                                           _g1756117582_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49147 '() _L17343_))))
                                     (declare (not safe))
                                     (cons __tmp49148 __tmp49146))))
                              (declare (not safe))
                              (cons __tmp49150 __tmp49145)))
                           (__tmp49142
                            (let ((__tmp49143
                                   (lambda (_g1755817585_ _g1755917588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1755817585_ _g1755917588_)))))
                              (declare (not safe))
                              (foldr1 __tmp49143 '() _L17460_))))
                       (declare (not safe))
                       (cons __tmp49144 __tmp49142))))
                (declare (not safe))
                (cons __tmp49141 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49151 __tmp49140)))
                                              (__tmp49127
                                               (let ((__tmp49128
                                                      (let ((__tmp49138
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp49129
                                                             (let ((__tmp49131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49137
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp49132
                                   (let ((__tmp49133
                                          (let ((__tmp49136
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp49134
                                                 (let ((__tmp49135
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp49135 '()))))
                                            (declare (not safe))
                                            (cons __tmp49136 __tmp49134))))
                                     (declare (not safe))
                                     (cons __tmp49133 '()))))
                              (declare (not safe))
                              (cons __tmp49137 __tmp49132)))
                           (__tmp49130
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp49131 __tmp49130))))
                (declare (not safe))
                (cons __tmp49138 __tmp49129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49128 '()))))
                                          (declare (not safe))
                                          (cons __tmp49139 __tmp49127))))
                                   (declare (not safe))
                                   (cons '() __tmp49126))))
                            (declare (not safe))
                            (cons _L17346_ __tmp49125))))
                     (declare (not safe))
                     (cons __tmp49155 __tmp49124))
                   (gx#stx-source _stx17206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741717456_))))))
                                  (_loop1741217436_ _target1740917430_ '()))
                                (_g1740617423_ _g1740717427_)))))
                      (_g1740617423_ _g1740717427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1740517591_
                                                   (gx#gentemps
                                                    (let ((__tmp49156
                                                           (lambda (_g1759417597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1759517600_)
                     (let ()
                       (declare (not safe))
                       (cons _g1759417597_ _g1759517600_)))))
              (declare (not safe))
              (foldr1 __tmp49156 '() _L17345_)))))))
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
        (let* ((___stx4442744428_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4442744428_))))
          (let ((___kont4443044431_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp49175 (gx#datum->syntax '#f 'defrules))
                         (__tmp49158
                          (let ((__tmp49159
                                 (let ((__tmp49160
                                        (let ((__tmp49161
                                               (let ((__tmp49174
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp49162
                                                      (let ((__tmp49167
                                                             (let ((__tmp49173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp49168
                            (let ((__tmp49169
                                   (let ((__tmp49172
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp49170
                                          (let ((__tmp49171
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp49171 '()))))
                                     (declare (not safe))
                                     (cons __tmp49172 __tmp49170))))
                              (declare (not safe))
                              (cons __tmp49169 '()))))
                       (declare (not safe))
                       (cons __tmp49173 __tmp49168)))
                    (__tmp49163
                     (let ((__tmp49164
                            (let ((__tmp49166 (gx#datum->syntax '#f 'quote))
                                  (__tmp49165
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp49166 __tmp49165))))
                       (declare (not safe))
                       (cons __tmp49164 '()))))
                (declare (not safe))
                (cons __tmp49167 __tmp49163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49174
                                                       __tmp49162))))
                                          (declare (not safe))
                                          (cons __tmp49161 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp49160))))
                            (declare (not safe))
                            (cons _L17771_ __tmp49159))))
                     (declare (not safe))
                     (cons __tmp49175 __tmp49158))))
                (___kont4443244433_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp49176
                          (let ((__tmp49177
                                 (let ((__tmp49178
                                        (let ((__tmp49180
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49179
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49180 __tmp49179))))
                                   (declare (not safe))
                                   (cons __tmp49178 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp49177))))
                     (declare (not safe))
                     (cons _L17695_ __tmp49176)))))
            (let* ((___match4449244493_
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
                            (___kont4443244433_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4447244473_
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
                            (___kont4443044431_ _L17769_ _L17771_)
                            (___match4449244493_
                             _e1762517719_
                             _hd1762417723_
                             _tl1762317726_
                             _e1762817729_
                             _hd1762717733_
                             _tl1762617736_
                             _e1763117739_
                             _hd1763017743_
                             _tl1762917746_))))))
              (if (gx#stx-pair? ___stx4442744428_)
                  (let ((_e1762517719_ (gx#syntax-e ___stx4442744428_)))
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
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g49181_|
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
                              (___match4447244473_
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
                              (___match4449244493_
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
                      (___match4449244493_
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
                  (___match4449244493_
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
                                                      (___match4449244493_
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
                                              (___match4449244493_
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
