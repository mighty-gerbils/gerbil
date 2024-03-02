(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g50950_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4646646467_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4646646467_))))
          (let ((___kont4646946470_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp50881 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp50875
                          (let ((__tmp50876
                                 (let ((__tmp50877
                                        (let ((__tmp50880
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp50878
                                               (let ((__tmp50879
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
                                                 (cons _L17172_ __tmp50879))))
                                          (declare (not safe))
                                          (cons __tmp50880 __tmp50878))))
                                   (declare (not safe))
                                   (cons __tmp50877 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp50876))))
                     (declare (not safe))
                     (cons __tmp50881 __tmp50875))))
                (___kont4647346474_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp50884 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp50882
                          (let ((__tmp50883
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp50883))))
                     (declare (not safe))
                     (cons __tmp50884 __tmp50882)))))
            (let* ((___match4652146522_
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
                            (___kont4647346474_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4651346514_
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
                                  (___match4652146522_
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
                   (___match4650146502_
                    (lambda (_e1701517110_
                             _hd1701417114_
                             _tl1701317117_
                             _e1701817120_
                             _hd1701717124_
                             _tl1701617127_
                             _e1702117130_
                             _hd1702017134_
                             _tl1701917137_
                             ___splice4647146472_
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
                                              (___kont4646946470_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4651346514_
                                               _e1701517110_
                                               _hd1701417114_
                                               _tl1701317117_
                                               _e1701817120_
                                               _hd1701717124_
                                               _tl1701617127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4646646467_)
                  (let ((_e1701517110_ (gx#syntax-e ___stx4646646467_)))
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
                                          (let ((___splice4647146472_
                                                 (gx#syntax-split-splice
                                                  _tl1701617127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4647146472_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4647146472_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4650146502_
                                                   _e1701517110_
                                                   _hd1701417114_
                                                   _tl1701317117_
                                                   _e1701817120_
                                                   _hd1701717124_
                                                   _tl1701617127_
                                                   _e1702117130_
                                                   _hd1702017134_
                                                   _tl1701917137_
                                                   ___splice4647146472_
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
                      (___match4652146522_
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
                                                      (___match4652146522_
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
                                              (___match4652146522_
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
                                              (let ((_g50885_
                                                     (gx#syntax-split-splice
                                                      _tl1722017280_
                                                      '0)))
                                                (begin
                                                  (let ((_g50886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50885_)
                                                               (##vector-length
                                                                _g50885_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50886_ 2)))
                (error "Context expects 2 values" _g50886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50885_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50885_
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
                                      (let ((_g50887_
                                             (gx#syntax-split-splice
                                              _tl1721717270_
                                              '0)))
                                        (begin
                                          (let ((_g50888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50887_)
                                                       (##vector-length
                                                        _g50887_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50888_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50888_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50887_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50887_ 1))))
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
                                                              (let ((_g50889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g50890_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g50889_)
                                       (##vector-length _g50889_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g50890_ 2)))
                                (error "Context expects 2 values" _g50890_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g50889_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g50889_ 1))))
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
                                                (let ((__tmp50893
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp50891
                                                       (let ((__tmp50892
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp50892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50893 __tmp50891))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp50898
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp50894
                                         (let ((__tmp50896
                                                (let ((__tmp50897
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
                                                  (cons _L17394_ __tmp50897)))
                                               (__tmp50895
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
                                           (cons __tmp50896 __tmp50895))))
                                    (declare (not safe))
                                    (cons __tmp50898 __tmp50894))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp50926 (gx#datum->syntax '#f 'defrules))
                         (__tmp50899
                          (let ((__tmp50900
                                 (let ((__tmp50901
                                        (let ((__tmp50914
                                               (let ((__tmp50923
                                                      (let ((__tmp50925
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp50924
                                                             (foldr (lambda (_g1756417567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1756517570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1756417567_ _g1756517570_)))
                            '()
                            _L17460_)))
                (declare (not safe))
                (cons __tmp50925 __tmp50924)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50915
                                                      (let ((__tmp50916
                                                             (let ((__tmp50918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50922 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50919
                                   (let ((__tmp50921
                                          (foldr (lambda (_g1756217573_
                                                          _g1756317576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217573_
                                                           _g1756317576_)))
                                                 '()
                                                 _L17345_))
                                         (__tmp50920
                                          (foldr (lambda (_g1756017579_
                                                          _g1756117582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017579_
                                                           _g1756117582_)))
                                                 '()
                                                 _L17343_)))
                                     (declare (not safe))
                                     (cons __tmp50921 __tmp50920))))
                              (declare (not safe))
                              (cons __tmp50922 __tmp50919)))
                           (__tmp50917
                            (foldr (lambda (_g1755817585_ _g1755917588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1755817585_ _g1755917588_)))
                                   '()
                                   _L17460_)))
                       (declare (not safe))
                       (cons __tmp50918 __tmp50917))))
                (declare (not safe))
                (cons __tmp50916 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50923 __tmp50915)))
                                              (__tmp50902
                                               (let ((__tmp50903
                                                      (let ((__tmp50913
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp50904
                                                             (let ((__tmp50906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50912
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp50907
                                   (let ((__tmp50908
                                          (let ((__tmp50911
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp50909
                                                 (let ((__tmp50910
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp50910 '()))))
                                            (declare (not safe))
                                            (cons __tmp50911 __tmp50909))))
                                     (declare (not safe))
                                     (cons __tmp50908 '()))))
                              (declare (not safe))
                              (cons __tmp50912 __tmp50907)))
                           (__tmp50905
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp50906 __tmp50905))))
                (declare (not safe))
                (cons __tmp50913 __tmp50904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50903 '()))))
                                          (declare (not safe))
                                          (cons __tmp50914 __tmp50902))))
                                   (declare (not safe))
                                   (cons '() __tmp50901))))
                            (declare (not safe))
                            (cons _L17346_ __tmp50900))))
                     (declare (not safe))
                     (cons __tmp50926 __tmp50899))
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
        (let* ((___stx4652446525_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4652446525_))))
          (let ((___kont4652746528_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp50944 (gx#datum->syntax '#f 'defrules))
                         (__tmp50927
                          (let ((__tmp50928
                                 (let ((__tmp50929
                                        (let ((__tmp50930
                                               (let ((__tmp50943
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp50931
                                                      (let ((__tmp50936
                                                             (let ((__tmp50942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp50937
                            (let ((__tmp50938
                                   (let ((__tmp50941
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp50939
                                          (let ((__tmp50940
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp50940 '()))))
                                     (declare (not safe))
                                     (cons __tmp50941 __tmp50939))))
                              (declare (not safe))
                              (cons __tmp50938 '()))))
                       (declare (not safe))
                       (cons __tmp50942 __tmp50937)))
                    (__tmp50932
                     (let ((__tmp50933
                            (let ((__tmp50935 (gx#datum->syntax '#f 'quote))
                                  (__tmp50934
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp50935 __tmp50934))))
                       (declare (not safe))
                       (cons __tmp50933 '()))))
                (declare (not safe))
                (cons __tmp50936 __tmp50932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50943
                                                       __tmp50931))))
                                          (declare (not safe))
                                          (cons __tmp50930 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50929))))
                            (declare (not safe))
                            (cons _L17771_ __tmp50928))))
                     (declare (not safe))
                     (cons __tmp50944 __tmp50927))))
                (___kont4652946530_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp50945
                          (let ((__tmp50946
                                 (let ((__tmp50947
                                        (let ((__tmp50949
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp50948
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp50949 __tmp50948))))
                                   (declare (not safe))
                                   (cons __tmp50947 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp50946))))
                     (declare (not safe))
                     (cons _L17695_ __tmp50945)))))
            (let* ((___match4658946590_
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
                            (___kont4652946530_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4656946570_
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
                            (___kont4652746528_ _L17769_ _L17771_)
                            (___match4658946590_
                             _e1762517719_
                             _hd1762417723_
                             _tl1762317726_
                             _e1762817729_
                             _hd1762717733_
                             _tl1762617736_
                             _e1763117739_
                             _hd1763017743_
                             _tl1762917746_))))))
              (if (gx#stx-pair? ___stx4652446525_)
                  (let ((_e1762517719_ (gx#syntax-e ___stx4652446525_)))
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
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g50950_|
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
                              (___match4656946570_
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
                              (___match4658946590_
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
                      (___match4658946590_
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
                  (___match4658946590_
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
                                                      (___match4658946590_
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
                                              (___match4658946590_
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
