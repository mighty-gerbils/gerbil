(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g48891_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx17003_)
        (let* ((___stx4436144362_ _$stx17003_)
               (_g1700817047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4436144362_))))
          (let ((___kont4436444365_
                 (lambda (_L17170_ _L17172_ _L17173_)
                   (let ((__tmp48814 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48807
                          (let ((__tmp48808
                                 (let ((__tmp48809
                                        (let ((__tmp48813
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp48810
                                               (let ((__tmp48811
                                                      (let ((__tmp48812
                                                             (lambda (_g1719217195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719317198_)
                       (let ()
                         (declare (not safe))
                         (cons _g1719217195_ _g1719317198_)))))
                (declare (not safe))
                (foldr1 __tmp48812 '() _L17170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17172_ __tmp48811))))
                                          (declare (not safe))
                                          (cons __tmp48813 __tmp48810))))
                                   (declare (not safe))
                                   (cons __tmp48809 '()))))
                            (declare (not safe))
                            (cons _L17173_ __tmp48808))))
                     (declare (not safe))
                     (cons __tmp48814 __tmp48807))))
                (___kont4436844369_
                 (lambda (_L17084_ _L17086_)
                   (let ((__tmp48817 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp48815
                          (let ((__tmp48816
                                 (let ()
                                   (declare (not safe))
                                   (cons _L17084_ '()))))
                            (declare (not safe))
                            (cons _L17086_ __tmp48816))))
                     (declare (not safe))
                     (cons __tmp48817 __tmp48815)))))
            (let* ((___match4441644417_
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
                            (___kont4436844369_ _L17084_ _L17086_)
                            (let () (declare (not safe)) (_g1700817047_))))))
                   (___match4440844409_
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
                                  (___match4441644417_
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
                   (___match4439644397_
                    (lambda (_e1701317110_
                             _hd1701417114_
                             _tl1701517117_
                             _e1701617120_
                             _hd1701717124_
                             _tl1701817127_
                             _e1701917130_
                             _hd1702017134_
                             _tl1702117137_
                             ___splice4436644367_
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
                                              (___kont4436444365_
                                               _L17170_
                                               _L17172_
                                               _L17173_)
                                              (___match4440844409_
                                               _e1701317110_
                                               _hd1701417114_
                                               _tl1701517117_
                                               _e1701617120_
                                               _hd1701717124_
                                               _tl1701817127_))))))))
                        (_loop1702517146_ _target1702217140_ '())))))
              (if (gx#stx-pair? ___stx4436144362_)
                  (let ((_e1701317110_ (gx#syntax-e ___stx4436144362_)))
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
                                          (let ((___splice4436644367_
                                                 (gx#syntax-split-splice
                                                  _tl1701817127_
                                                  '0)))
                                            (let ((_tl1702417143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4436644367_
                                                      '1)))
                                                  (_target1702217140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4436644367_
                                                      '0))))
                                              (if (gx#stx-null? _tl1702417143_)
                                                  (___match4439644397_
                                                   _e1701317110_
                                                   _hd1701417114_
                                                   _tl1701517117_
                                                   _e1701617120_
                                                   _hd1701717124_
                                                   _tl1701817127_
                                                   _e1701917130_
                                                   _hd1702017134_
                                                   _tl1702117137_
                                                   ___splice4436644367_
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
                      (___match4441644417_
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
                                                      (___match4441644417_
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
                                              (___match4441644417_
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
                                              (let ((_g48818_
                                                     (gx#syntax-split-splice
                                                      _tl1722217280_
                                                      '0)))
                                                (begin
                                                  (let ((_g48819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g48818_)
                                                               (##vector-length
                                                                _g48818_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g48819_ 2)))
                (error "Context expects 2 values" _g48819_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1722317283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48818_
                                                            0)))
                                                        (_tl1722517286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g48818_
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
                                      (let ((_g48820_
                                             (gx#syntax-split-splice
                                              _tl1721917270_
                                              '0)))
                                        (begin
                                          (let ((_g48821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48820_)
                                                       (##vector-length
                                                        _g48820_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48821_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48821_)))
                                          (let ((_target1723217313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48820_ 0)))
                                                (_tl1723417316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48820_ 1))))
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
                                       (let ((__tmp48822
                                              (lambda (_g1737017373_
                                                       _g1737117376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1737017373_
                                                        _g1737117376_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48822 '() _L17345_))))
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
                                                              (let ((_g48823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740717427_ '0)))
                        (begin
                          (let ((_g48824_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g48823_)
                                       (##vector-length _g48823_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g48824_ 2)))
                                (error "Context expects 2 values" _g48824_)))
                          (let ((_target1740917430_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48823_ 0)))
                                (_tl1741117433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g48823_ 1))))
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
                                                (let ((__tmp48827
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp48825
                                                       (let ((__tmp48826
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17492_ '()))))
                 (declare (not safe))
                 (cons _L17520_ __tmp48826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48827 __tmp48825))
                                                (gx#stx-source _stx17206_)))))
                                         _g1750617517_))))
                                (_g1750417535_
                                 (gx#stx-wrap-source
                                  (let ((__tmp48834
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp48828
                                         (let ((__tmp48831
                                                (let ((__tmp48832
                                                       (let ((__tmp48833
                                                              (lambda (_g1753817543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1753917546_)
                        (let ()
                          (declare (not safe))
                          (cons _g1753817543_ _g1753917546_)))))
                 (declare (not safe))
                 (foldr1 __tmp48833 '() _L17345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17394_ __tmp48832)))
                                               (__tmp48829
                                                (let ((__tmp48830
                                                       (lambda (_g1754017549_
                                                                _g1754117552_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1754017549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1754117552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48830
                                                          '()
                                                          _L17343_))))
                                           (declare (not safe))
                                           (cons __tmp48831 __tmp48829))))
                                    (declare (not safe))
                                    (cons __tmp48834 __tmp48828))
                                  (gx#stx-source _stx17206_))))))
                          _g1747817489_))))
                 (_g1747617555_
                  (gx#stx-wrap-source
                   (let ((__tmp48866 (gx#datum->syntax '#f 'defrules))
                         (__tmp48835
                          (let ((__tmp48836
                                 (let ((__tmp48837
                                        (let ((__tmp48850
                                               (let ((__tmp48862
                                                      (let ((__tmp48865
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp48863
                                                             (let ((__tmp48864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1755817567_ _g1755917570_)
                              (let ()
                                (declare (not safe))
                                (cons _g1755817567_ _g1755917570_)))))
                       (declare (not safe))
                       (foldr1 __tmp48864 '() _L17460_))))
                (declare (not safe))
                (cons __tmp48865 __tmp48863)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48851
                                                      (let ((__tmp48852
                                                             (let ((__tmp48855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48861 (gx#datum->syntax '#f 'lambda))
                                  (__tmp48856
                                   (let ((__tmp48859
                                          (let ((__tmp48860
                                                 (lambda (_g1756017573_
                                                          _g1756117576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756017573_
                                                           _g1756117576_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48860 '() _L17345_)))
                                         (__tmp48857
                                          (let ((__tmp48858
                                                 (lambda (_g1756217579_
                                                          _g1756317582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1756217579_
                                                           _g1756317582_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp48858 '() _L17343_))))
                                     (declare (not safe))
                                     (cons __tmp48859 __tmp48857))))
                              (declare (not safe))
                              (cons __tmp48861 __tmp48856)))
                           (__tmp48853
                            (let ((__tmp48854
                                   (lambda (_g1756417585_ _g1756517588_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1756417585_ _g1756517588_)))))
                              (declare (not safe))
                              (foldr1 __tmp48854 '() _L17460_))))
                       (declare (not safe))
                       (cons __tmp48855 __tmp48853))))
                (declare (not safe))
                (cons __tmp48852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48862 __tmp48851)))
                                              (__tmp48838
                                               (let ((__tmp48839
                                                      (let ((__tmp48849
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp48840
                                                             (let ((__tmp48842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48848
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp48843
                                   (let ((__tmp48844
                                          (let ((__tmp48847
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp48845
                                                 (let ((__tmp48846
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp48846 '()))))
                                            (declare (not safe))
                                            (cons __tmp48847 __tmp48845))))
                                     (declare (not safe))
                                     (cons __tmp48844 '()))))
                              (declare (not safe))
                              (cons __tmp48848 __tmp48843)))
                           (__tmp48841
                            (let () (declare (not safe)) (cons _L17394_ '()))))
                       (declare (not safe))
                       (cons __tmp48842 __tmp48841))))
                (declare (not safe))
                (cons __tmp48849 __tmp48840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48839 '()))))
                                          (declare (not safe))
                                          (cons __tmp48850 __tmp48838))))
                                   (declare (not safe))
                                   (cons '() __tmp48837))))
                            (declare (not safe))
                            (cons _L17346_ __tmp48836))))
                     (declare (not safe))
                     (cons __tmp48866 __tmp48835))
                   (gx#stx-source _stx17206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741717456_))))))
                                  (_loop1741217436_ _target1740917430_ '()))
                                (_g1740617423_ _g1740717427_)))))
                      (_g1740617423_ _g1740717427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1740517591_
                                                   (gx#gentemps
                                                    (let ((__tmp48867
                                                           (lambda (_g1759417597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1759517600_)
                     (let ()
                       (declare (not safe))
                       (cons _g1759417597_ _g1759517600_)))))
              (declare (not safe))
              (foldr1 __tmp48867 '() _L17345_)))))))
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
        (let* ((___stx4441944420_ _$stx17614_)
               (_g1761917655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4441944420_))))
          (let ((___kont4442244423_
                 (lambda (_L17769_ _L17771_)
                   (let ((__tmp48885 (gx#datum->syntax '#f 'defrules))
                         (__tmp48868
                          (let ((__tmp48869
                                 (let ((__tmp48870
                                        (let ((__tmp48871
                                               (let ((__tmp48884
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp48872
                                                      (let ((__tmp48877
                                                             (let ((__tmp48883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp48878
                            (let ((__tmp48879
                                   (let ((__tmp48882
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp48880
                                          (let ((__tmp48881
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp48881 '()))))
                                     (declare (not safe))
                                     (cons __tmp48882 __tmp48880))))
                              (declare (not safe))
                              (cons __tmp48879 '()))))
                       (declare (not safe))
                       (cons __tmp48883 __tmp48878)))
                    (__tmp48873
                     (let ((__tmp48874
                            (let ((__tmp48876 (gx#datum->syntax '#f 'quote))
                                  (__tmp48875
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17769_ '()))))
                              (declare (not safe))
                              (cons __tmp48876 __tmp48875))))
                       (declare (not safe))
                       (cons __tmp48874 '()))))
                (declare (not safe))
                (cons __tmp48877 __tmp48873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48884
                                                       __tmp48872))))
                                          (declare (not safe))
                                          (cons __tmp48871 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48870))))
                            (declare (not safe))
                            (cons _L17771_ __tmp48869))))
                     (declare (not safe))
                     (cons __tmp48885 __tmp48868))))
                (___kont4442444425_
                 (lambda (_L17692_ _L17694_ _L17695_)
                   (let ((__tmp48886
                          (let ((__tmp48887
                                 (let ((__tmp48888
                                        (let ((__tmp48890
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48889
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L17692_ '()))))
                                          (declare (not safe))
                                          (cons __tmp48890 __tmp48889))))
                                   (declare (not safe))
                                   (cons __tmp48888 '()))))
                            (declare (not safe))
                            (cons _L17694_ __tmp48887))))
                     (declare (not safe))
                     (cons _L17695_ __tmp48886)))))
            (let* ((___match4448444485_
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
                            (___kont4442444425_ _L17692_ _L17694_ _L17695_)
                            (let () (declare (not safe)) (_g1761917655_))))))
                   (___match4446444465_
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
                            (___kont4442244423_ _L17769_ _L17771_)
                            (___match4448444485_
                             _e1762317719_
                             _hd1762417723_
                             _tl1762517726_
                             _e1762617729_
                             _hd1762717733_
                             _tl1762817736_
                             _e1762917739_
                             _hd1763017743_
                             _tl1763117746_))))))
              (if (gx#stx-pair? ___stx4441944420_)
                  (let ((_e1762317719_ (gx#syntax-e ___stx4441944420_)))
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
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g48891_|
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
                              (___match4446444465_
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
                              (___match4448444485_
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
                      (___match4448444485_
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
                  (___match4448444485_
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
                                                      (___match4448444485_
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
                                              (___match4448444485_
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
