(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g51135_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4646546466_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4646546466_))))
          (let ((___kont4646846469_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp51066 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp51060
                          (let ((__tmp51061
                                 (let ((__tmp51062
                                        (let ((__tmp51065
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp51063
                                               (let ((__tmp51064
                                                      (foldr (lambda (_g1719217195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719317198_)
                       (let ()
                         (declare (not safe))
                         (cons _g1719217195_ _g1719317198_)))
                     '()
                     _L17170_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17172_ __tmp51064))))
                                          (declare (not safe))
                                          (cons __tmp51065 __tmp51063))))
                                   (declare (not safe))
                                   (cons __tmp51062 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp51061))))
                     (declare (not safe))
                     (cons __tmp51066 __tmp51060))))
                (___kont4647246473_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp51069 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp51067
                          (let ((__tmp51068
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp51068))))
                     (declare (not safe))
                     (cons __tmp51069 __tmp51067)))))
            (let* ((___match4652046521_
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
                            (___kont4647246473_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4651246513_
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
                                  (___match4652046521_
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
                   (___match4650046501_
                    (lambda (_e1701517110_
                             _hd1701417114_
                             _tl1701317117_
                             _e1701817120_
                             _hd1701717124_
                             _tl1701617127_
                             _e1702117130_
                             _hd1702017134_
                             _tl1701917137_
                             ___splice4647046471_
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
                                              (___kont4646846469_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4651246513_
                                               _e1701517110_
                                               _hd1701417114_
                                               _tl1701317117_
                                               _e1701817120_
                                               _hd1701717124_
                                               _tl1701617127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4646546466_)
                  (let ((_e1701517110_ (gx#syntax-e ___stx4646546466_)))
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
                                          (let ((___splice4647046471_
                                                 (gx#syntax-split-splice
                                                  _tl1701617127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4647046471_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4647046471_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4650046501_
                                                   _e1701517110_
                                                   _hd1701417114_
                                                   _tl1701317117_
                                                   _e1701817120_
                                                   _hd1701717124_
                                                   _tl1701617127_
                                                   _e1702117130_
                                                   _hd1702017134_
                                                   _tl1701917137_
                                                   ___splice4647046471_
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
                      (___match4652046521_
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
                                                      (___match4652046521_
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
                                              (___match4652046521_
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
                                              (let ((_g51070_
                                                     (gx#syntax-split-splice
                                                      _tl1722017280_
                                                      '0)))
                                                (begin
                                                  (let ((_g51071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g51070_)
                                                               (##vector-length
                                                                _g51070_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g51071_ 2)))
                (error "Context expects 2 values" _g51071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g51070_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g51070_
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
                                      (let ((_g51072_
                                             (gx#syntax-split-splice
                                              _tl1721717270_
                                              '0)))
                                        (begin
                                          (let ((_g51073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g51072_)
                                                       (##vector-length
                                                        _g51072_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g51073_ 2)))
                                                (error "Context expects 2 values"
                                                       _g51073_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g51072_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g51072_ 1))))
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
                                       (foldr (lambda (_g1737017373_
                                                       _g1737117376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1737017373_
                                                        _g1737117376_)))
                                              '()
                                              _L17345_)))
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
                                                              (let ((_g51074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g51075_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g51074_)
                                       (##vector-length _g51074_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g51075_ 2)))
                                (error "Context expects 2 values" _g51075_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g51074_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g51074_ 1))))
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
                                                (let ((__tmp51078
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp51076
                                                       (let ((__tmp51077
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp51077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp51078 __tmp51076))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp51083
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp51079
                                         (let ((__tmp51081
                                                (let ((__tmp51082
                                                       (foldr (lambda (_g1754017543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1754117546_)
                        (let ()
                          (declare (not safe))
                          (cons _g1754017543_ _g1754117546_)))
                      '()
                      _L17345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17394_ __tmp51082)))
                                               (__tmp51080
                                                (foldr (lambda (_g1753817549_
                                                                _g1753917552_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1753817549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1753917552_)))
               '()
               _L17343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp51081 __tmp51080))))
                                    (declare (not safe))
                                    (cons __tmp51083 __tmp51079))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp51111 (gx#datum->syntax '#f 'defrules))
                         (__tmp51084
                          (let ((__tmp51085
                                 (let ((__tmp51086
                                        (let ((__tmp51099
                                               (let ((__tmp51108
                                                      (let ((__tmp51110
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp51109
                                                             (foldr (lambda (_g1756417567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1756517570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1756417567_ _g1756517570_)))
                            '()
                            _L17460_)))
                (declare (not safe))
                (cons __tmp51110 __tmp51109)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp51100
                                                      (let ((__tmp51101
                                                             (let ((__tmp51103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51107 (gx#datum->syntax '#f 'lambda))
                                  (__tmp51104
                                   (let ((__tmp51106
                                          (foldr (lambda (_g1756217573_
                                                          _g1756317576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217573_
                                                           _g1756317576_)))
                                                 '()
                                                 _L17345_))
                                         (__tmp51105
                                          (foldr (lambda (_g1756017579_
                                                          _g1756117582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017579_
                                                           _g1756117582_)))
                                                 '()
                                                 _L17343_)))
                                     (declare (not safe))
                                     (cons __tmp51106 __tmp51105))))
                              (declare (not safe))
                              (cons __tmp51107 __tmp51104)))
                           (__tmp51102
                            (foldr (lambda (_g1755817585_ _g1755917588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1755817585_ _g1755917588_)))
                                   '()
                                   _L17460_)))
                       (declare (not safe))
                       (cons __tmp51103 __tmp51102))))
                (declare (not safe))
                (cons __tmp51101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51108 __tmp51100)))
                                              (__tmp51087
                                               (let ((__tmp51088
                                                      (let ((__tmp51098
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp51089
                                                             (let ((__tmp51091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51097
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp51092
                                   (let ((__tmp51093
                                          (let ((__tmp51096
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp51094
                                                 (let ((__tmp51095
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp51095 '()))))
                                            (declare (not safe))
                                            (cons __tmp51096 __tmp51094))))
                                     (declare (not safe))
                                     (cons __tmp51093 '()))))
                              (declare (not safe))
                              (cons __tmp51097 __tmp51092)))
                           (__tmp51090
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp51091 __tmp51090))))
                (declare (not safe))
                (cons __tmp51098 __tmp51089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51088 '()))))
                                          (declare (not safe))
                                          (cons __tmp51099 __tmp51087))))
                                   (declare (not safe))
                                   (cons '() __tmp51086))))
                            (declare (not safe))
                            (cons _L17346_ __tmp51085))))
                     (declare (not safe))
                     (cons __tmp51111 __tmp51084))
                   (gx#stx-source _stx17206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741717456_))))))
                                  (_loop1741217436_ _target1740917430_ '()))
                                (_g1740617423_ _g1740717427_)))))
                      (_g1740617423_ _g1740717427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1740517591_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g1759417597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1759517600_)
                     (let ()
                       (declare (not safe))
                       (cons _g1759417597_ _g1759517600_)))
                   '()
                   _L17345_))))))
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
        (let* ((___stx4652346524_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4652346524_))))
          (let ((___kont4652646527_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp51129 (gx#datum->syntax '#f 'defrules))
                         (__tmp51112
                          (let ((__tmp51113
                                 (let ((__tmp51114
                                        (let ((__tmp51115
                                               (let ((__tmp51128
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp51116
                                                      (let ((__tmp51121
                                                             (let ((__tmp51127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp51122
                            (let ((__tmp51123
                                   (let ((__tmp51126
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp51124
                                          (let ((__tmp51125
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp51125 '()))))
                                     (declare (not safe))
                                     (cons __tmp51126 __tmp51124))))
                              (declare (not safe))
                              (cons __tmp51123 '()))))
                       (declare (not safe))
                       (cons __tmp51127 __tmp51122)))
                    (__tmp51117
                     (let ((__tmp51118
                            (let ((__tmp51120 (gx#datum->syntax '#f 'quote))
                                  (__tmp51119
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp51120 __tmp51119))))
                       (declare (not safe))
                       (cons __tmp51118 '()))))
                (declare (not safe))
                (cons __tmp51121 __tmp51117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51128
                                                       __tmp51116))))
                                          (declare (not safe))
                                          (cons __tmp51115 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp51114))))
                            (declare (not safe))
                            (cons _L17771_ __tmp51113))))
                     (declare (not safe))
                     (cons __tmp51129 __tmp51112))))
                (___kont4652846529_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp51130
                          (let ((__tmp51131
                                 (let ((__tmp51132
                                        (let ((__tmp51134
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp51133
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp51134 __tmp51133))))
                                   (declare (not safe))
                                   (cons __tmp51132 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp51131))))
                     (declare (not safe))
                     (cons _L17695_ __tmp51130)))))
            (let* ((___match4658846589_
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
                            (___kont4652846529_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4656846569_
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
                            (___kont4652646527_ _L17769_ _L17771_)
                            (___match4658846589_
                             _e1762517719_
                             _hd1762417723_
                             _tl1762317726_
                             _e1762817729_
                             _hd1762717733_
                             _tl1762617736_
                             _e1763117739_
                             _hd1763017743_
                             _tl1762917746_))))))
              (if (gx#stx-pair? ___stx4652346524_)
                  (let ((_e1762517719_ (gx#syntax-e ___stx4652346524_)))
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
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g51135_|
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
                              (___match4656846569_
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
                              (___match4658846589_
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
                      (___match4658846589_
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
                  (___match4658846589_
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
                                                      (___match4658846589_
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
                                              (___match4658846589_
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
