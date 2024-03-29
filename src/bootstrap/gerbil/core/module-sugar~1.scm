(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx44743_)
      (let* ((___stx4734547346_ _$stx44743_)
             (_g4474844767_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4734547346_))))
        (let ((___kont4734847349_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4735047351_
               (lambda (_L44794_ _L44796_ _L44797_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L44796_
                                   (cons (cons _L44797_ _L44794_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L44796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4734547346_)
              (let ((_e4475244819_ (gx#syntax-e ___stx4734547346_)))
                (let ((_tl4475044826_
                       (let () (declare (not safe)) (##cdr _e4475244819_)))
                      (_hd4475144823_
                       (let () (declare (not safe)) (##car _e4475244819_))))
                  (if (gx#stx-null? _tl4475044826_)
                      (___kont4734847349_)
                      (if (gx#stx-pair? _tl4475044826_)
                          (let ((_e4476144784_ (gx#syntax-e _tl4475044826_)))
                            (let ((_tl4475944791_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4476144784_)))
                                  (_hd4476044788_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4476144784_))))
                              (___kont4735047351_
                               _tl4475944791_
                               _hd4476044788_
                               _hd4475144823_)))
                          (let () (declare (not safe)) (_g4474844767_))))))
              (let () (declare (not safe)) (_g4474844767_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx44837_)
      (let* ((___stx4737547376_ _$stx44837_)
             (_g4484244882_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4737547376_))))
        (let ((___kont4737847379_
               (lambda (_L45020_ _L45022_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L45022_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L45020_ '()))
                                   '())))))
              (___kont4738047381_
               (lambda (_L44949_ _L44951_ _L44952_ _L44953_)
                 (cons _L44953_
                       (cons _L44952_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L44951_
                                               (let ((__tmp47641
                                                      (lambda (_g4497444977_
                                                               _g4497544980_)
                                                        (cons _g4497444977_
                                                              _g4497544980_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp47641
                                                  '()
                                                  _L44949_))))
                                   '()))))))
          (let* ((___match4743047431_
                  (lambda (_e4486144889_
                           _hd4486044893_
                           _tl4485944896_
                           _e4486444899_
                           _hd4486344903_
                           _tl4486244906_
                           _e4486744909_
                           _hd4486644913_
                           _tl4486544916_
                           ___splice4738247383_
                           _target4486844919_
                           _tl4487044922_)
                    (letrec ((_loop4487144925_
                              (lambda (_hd4486944929_ _body4487544932_)
                                (if (gx#stx-pair? _hd4486944929_)
                                    (let ((_e4487244935_
                                           (gx#syntax-e _hd4486944929_)))
                                      (let ((_lp-tl4487444942_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4487244935_)))
                                            (_lp-hd4487344939_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4487244935_))))
                                        (_loop4487144925_
                                         _lp-tl4487444942_
                                         (cons _lp-hd4487344939_
                                               _body4487544932_))))
                                    (let ((_body4487644945_
                                           (reverse _body4487544932_)))
                                      (let ((_L44949_ _body4487644945_)
                                            (_L44951_ _tl4486544916_)
                                            (_L44952_ _hd4486644913_)
                                            (_L44953_ _hd4486044893_))
                                        (if (gx#identifier? _L44952_)
                                            (___kont4738047381_
                                             _L44949_
                                             _L44951_
                                             _L44952_
                                             _L44953_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4484244882_)))))))))
                      (_loop4487144925_ _target4486844919_ '()))))
                 (___match4740447405_
                  (lambda (_e4484844990_
                           _hd4484744994_
                           _tl4484644997_
                           _e4485145000_
                           _hd4485045004_
                           _tl4484945007_
                           _e4485445010_
                           _hd4485345014_
                           _tl4485245017_)
                    (let ((_L45020_ _hd4485345014_) (_L45022_ _hd4485045004_))
                      (if (gx#identifier? _L45022_)
                          (___kont4737847379_ _L45020_ _L45022_)
                          (if (gx#stx-pair? _hd4485045004_)
                              (let ((_e4486744909_
                                     (gx#syntax-e _hd4485045004_)))
                                (let ((_tl4486544916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4486744909_)))
                                      (_hd4486644913_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4486744909_))))
                                  (if (gx#stx-pair/null? _tl4484945007_)
                                      (let ((___splice4738247383_
                                             (gx#syntax-split-splice
                                              _tl4484945007_
                                              '0)))
                                        (let ((_tl4487044922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4738247383_
                                                  '1)))
                                              (_target4486844919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4738247383_
                                                  '0))))
                                          (if (gx#stx-null? _tl4487044922_)
                                              (___match4743047431_
                                               _e4484844990_
                                               _hd4484744994_
                                               _tl4484644997_
                                               _e4485145000_
                                               _hd4485045004_
                                               _tl4484945007_
                                               _e4486744909_
                                               _hd4486644913_
                                               _tl4486544916_
                                               ___splice4738247383_
                                               _target4486844919_
                                               _tl4487044922_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4484244882_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4484244882_)))))
                              (let ()
                                (declare (not safe))
                                (_g4484244882_))))))))
            (if (gx#stx-pair? ___stx4737547376_)
                (let ((_e4484844990_ (gx#syntax-e ___stx4737547376_)))
                  (let ((_tl4484644997_
                         (let () (declare (not safe)) (##cdr _e4484844990_)))
                        (_hd4484744994_
                         (let () (declare (not safe)) (##car _e4484844990_))))
                    (if (gx#stx-pair? _tl4484644997_)
                        (let ((_e4485145000_ (gx#syntax-e _tl4484644997_)))
                          (let ((_tl4484945007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4485145000_)))
                                (_hd4485045004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4485145000_))))
                            (if (gx#stx-pair? _tl4484945007_)
                                (let ((_e4485445010_
                                       (gx#syntax-e _tl4484945007_)))
                                  (let ((_tl4485245017_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4485445010_)))
                                        (_hd4485345014_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4485445010_))))
                                    (if (gx#stx-null? _tl4485245017_)
                                        (___match4740447405_
                                         _e4484844990_
                                         _hd4484744994_
                                         _tl4484644997_
                                         _e4485145000_
                                         _hd4485045004_
                                         _tl4484945007_
                                         _e4485445010_
                                         _hd4485345014_
                                         _tl4485245017_)
                                        (if (gx#stx-pair? _hd4485045004_)
                                            (let ((_e4486744909_
                                                   (gx#syntax-e
                                                    _hd4485045004_)))
                                              (let ((_tl4486544916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4486744909_)))
                                                    (_hd4486644913_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4486744909_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4484945007_)
                                                    (let ((___splice4738247383_
                                                           (gx#syntax-split-splice
                                                            _tl4484945007_
                                                            '0)))
                                                      (let ((_tl4487044922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4738247383_ '1)))
                    (_target4486844919_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4738247383_ '0))))
                (if (gx#stx-null? _tl4487044922_)
                    (___match4743047431_
                     _e4484844990_
                     _hd4484744994_
                     _tl4484644997_
                     _e4485145000_
                     _hd4485045004_
                     _tl4484945007_
                     _e4486744909_
                     _hd4486644913_
                     _tl4486544916_
                     ___splice4738247383_
                     _target4486844919_
                     _tl4487044922_)
                    (let () (declare (not safe)) (_g4484244882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4484244882_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4484244882_))))))
                                (if (gx#stx-pair? _hd4485045004_)
                                    (let ((_e4486744909_
                                           (gx#syntax-e _hd4485045004_)))
                                      (let ((_tl4486544916_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4486744909_)))
                                            (_hd4486644913_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4486744909_))))
                                        (if (gx#stx-pair/null? _tl4484945007_)
                                            (let ((___splice4738247383_
                                                   (gx#syntax-split-splice
                                                    _tl4484945007_
                                                    '0)))
                                              (let ((_tl4487044922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4738247383_
                                                        '1)))
                                                    (_target4486844919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4738247383_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4487044922_)
                                                    (___match4743047431_
                                                     _e4484844990_
                                                     _hd4484744994_
                                                     _tl4484644997_
                                                     _e4485145000_
                                                     _hd4485045004_
                                                     _tl4484945007_
                                                     _e4486744909_
                                                     _hd4486644913_
                                                     _tl4486544916_
                                                     ___splice4738247383_
                                                     _target4486844919_
                                                     _tl4487044922_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4484244882_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4484244882_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4484244882_))))))
                        (let () (declare (not safe)) (_g4484244882_)))))
                (let () (declare (not safe)) (_g4484244882_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx45042_)
      (let* ((___stx4743347434_ _$stx45042_)
             (_g4504745087_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4743347434_))))
        (let ((___kont4743647437_
               (lambda (_L45225_ _L45227_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L45227_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L45225_ '()))
                                   '())))))
              (___kont4743847439_
               (lambda (_L45154_ _L45156_ _L45157_ _L45158_)
                 (cons _L45158_
                       (cons _L45157_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L45156_
                                               (let ((__tmp47642
                                                      (lambda (_g4517945182_
                                                               _g4518045185_)
                                                        (cons _g4517945182_
                                                              _g4518045185_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp47642
                                                  '()
                                                  _L45154_))))
                                   '()))))))
          (let* ((___match4748847489_
                  (lambda (_e4506645094_
                           _hd4506545098_
                           _tl4506445101_
                           _e4506945104_
                           _hd4506845108_
                           _tl4506745111_
                           _e4507245114_
                           _hd4507145118_
                           _tl4507045121_
                           ___splice4744047441_
                           _target4507345124_
                           _tl4507545127_)
                    (letrec ((_loop4507645130_
                              (lambda (_hd4507445134_ _body4508045137_)
                                (if (gx#stx-pair? _hd4507445134_)
                                    (let ((_e4507745140_
                                           (gx#syntax-e _hd4507445134_)))
                                      (let ((_lp-tl4507945147_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4507745140_)))
                                            (_lp-hd4507845144_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4507745140_))))
                                        (_loop4507645130_
                                         _lp-tl4507945147_
                                         (cons _lp-hd4507845144_
                                               _body4508045137_))))
                                    (let ((_body4508145150_
                                           (reverse _body4508045137_)))
                                      (let ((_L45154_ _body4508145150_)
                                            (_L45156_ _tl4507045121_)
                                            (_L45157_ _hd4507145118_)
                                            (_L45158_ _hd4506545098_))
                                        (if (gx#identifier? _L45157_)
                                            (___kont4743847439_
                                             _L45154_
                                             _L45156_
                                             _L45157_
                                             _L45158_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4504745087_)))))))))
                      (_loop4507645130_ _target4507345124_ '()))))
                 (___match4746247463_
                  (lambda (_e4505345195_
                           _hd4505245199_
                           _tl4505145202_
                           _e4505645205_
                           _hd4505545209_
                           _tl4505445212_
                           _e4505945215_
                           _hd4505845219_
                           _tl4505745222_)
                    (let ((_L45225_ _hd4505845219_) (_L45227_ _hd4505545209_))
                      (if (gx#identifier? _L45227_)
                          (___kont4743647437_ _L45225_ _L45227_)
                          (if (gx#stx-pair? _hd4505545209_)
                              (let ((_e4507245114_
                                     (gx#syntax-e _hd4505545209_)))
                                (let ((_tl4507045121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4507245114_)))
                                      (_hd4507145118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4507245114_))))
                                  (if (gx#stx-pair/null? _tl4505445212_)
                                      (let ((___splice4744047441_
                                             (gx#syntax-split-splice
                                              _tl4505445212_
                                              '0)))
                                        (let ((_tl4507545127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4744047441_
                                                  '1)))
                                              (_target4507345124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4744047441_
                                                  '0))))
                                          (if (gx#stx-null? _tl4507545127_)
                                              (___match4748847489_
                                               _e4505345195_
                                               _hd4505245199_
                                               _tl4505145202_
                                               _e4505645205_
                                               _hd4505545209_
                                               _tl4505445212_
                                               _e4507245114_
                                               _hd4507145118_
                                               _tl4507045121_
                                               ___splice4744047441_
                                               _target4507345124_
                                               _tl4507545127_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4504745087_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4504745087_)))))
                              (let ()
                                (declare (not safe))
                                (_g4504745087_))))))))
            (if (gx#stx-pair? ___stx4743347434_)
                (let ((_e4505345195_ (gx#syntax-e ___stx4743347434_)))
                  (let ((_tl4505145202_
                         (let () (declare (not safe)) (##cdr _e4505345195_)))
                        (_hd4505245199_
                         (let () (declare (not safe)) (##car _e4505345195_))))
                    (if (gx#stx-pair? _tl4505145202_)
                        (let ((_e4505645205_ (gx#syntax-e _tl4505145202_)))
                          (let ((_tl4505445212_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4505645205_)))
                                (_hd4505545209_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4505645205_))))
                            (if (gx#stx-pair? _tl4505445212_)
                                (let ((_e4505945215_
                                       (gx#syntax-e _tl4505445212_)))
                                  (let ((_tl4505745222_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4505945215_)))
                                        (_hd4505845219_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4505945215_))))
                                    (if (gx#stx-null? _tl4505745222_)
                                        (___match4746247463_
                                         _e4505345195_
                                         _hd4505245199_
                                         _tl4505145202_
                                         _e4505645205_
                                         _hd4505545209_
                                         _tl4505445212_
                                         _e4505945215_
                                         _hd4505845219_
                                         _tl4505745222_)
                                        (if (gx#stx-pair? _hd4505545209_)
                                            (let ((_e4507245114_
                                                   (gx#syntax-e
                                                    _hd4505545209_)))
                                              (let ((_tl4507045121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4507245114_)))
                                                    (_hd4507145118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4507245114_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4505445212_)
                                                    (let ((___splice4744047441_
                                                           (gx#syntax-split-splice
                                                            _tl4505445212_
                                                            '0)))
                                                      (let ((_tl4507545127_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4744047441_ '1)))
                    (_target4507345124_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4744047441_ '0))))
                (if (gx#stx-null? _tl4507545127_)
                    (___match4748847489_
                     _e4505345195_
                     _hd4505245199_
                     _tl4505145202_
                     _e4505645205_
                     _hd4505545209_
                     _tl4505445212_
                     _e4507245114_
                     _hd4507145118_
                     _tl4507045121_
                     ___splice4744047441_
                     _target4507345124_
                     _tl4507545127_)
                    (let () (declare (not safe)) (_g4504745087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4504745087_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4504745087_))))))
                                (if (gx#stx-pair? _hd4505545209_)
                                    (let ((_e4507245114_
                                           (gx#syntax-e _hd4505545209_)))
                                      (let ((_tl4507045121_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4507245114_)))
                                            (_hd4507145118_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4507245114_))))
                                        (if (gx#stx-pair/null? _tl4505445212_)
                                            (let ((___splice4744047441_
                                                   (gx#syntax-split-splice
                                                    _tl4505445212_
                                                    '0)))
                                              (let ((_tl4507545127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4744047441_
                                                        '1)))
                                                    (_target4507345124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4744047441_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4507545127_)
                                                    (___match4748847489_
                                                     _e4505345195_
                                                     _hd4505245199_
                                                     _tl4505145202_
                                                     _e4505645205_
                                                     _hd4505545209_
                                                     _tl4505445212_
                                                     _e4507245114_
                                                     _hd4507145118_
                                                     _tl4507045121_
                                                     ___splice4744047441_
                                                     _target4507345124_
                                                     _tl4507545127_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4504745087_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4504745087_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4504745087_))))))
                        (let () (declare (not safe)) (_g4504745087_)))))
                (let () (declare (not safe)) (_g4504745087_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx45247_)
      (let* ((___stx4749147492_ _$stx45247_)
             (_g4525245292_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4749147492_))))
        (let ((___kont4749447495_
               (lambda (_L45430_ _L45432_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L45432_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L45430_ '()))
                                   '())))))
              (___kont4749647497_
               (lambda (_L45359_ _L45361_ _L45362_ _L45363_)
                 (cons _L45363_
                       (cons _L45362_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L45361_
                                               (let ((__tmp47643
                                                      (lambda (_g4538445387_
                                                               _g4538545390_)
                                                        (cons _g4538445387_
                                                              _g4538545390_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp47643
                                                  '()
                                                  _L45359_))))
                                   '()))))))
          (let* ((___match4754647547_
                  (lambda (_e4527145299_
                           _hd4527045303_
                           _tl4526945306_
                           _e4527445309_
                           _hd4527345313_
                           _tl4527245316_
                           _e4527745319_
                           _hd4527645323_
                           _tl4527545326_
                           ___splice4749847499_
                           _target4527845329_
                           _tl4528045332_)
                    (letrec ((_loop4528145335_
                              (lambda (_hd4527945339_ _body4528545342_)
                                (if (gx#stx-pair? _hd4527945339_)
                                    (let ((_e4528245345_
                                           (gx#syntax-e _hd4527945339_)))
                                      (let ((_lp-tl4528445352_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4528245345_)))
                                            (_lp-hd4528345349_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4528245345_))))
                                        (_loop4528145335_
                                         _lp-tl4528445352_
                                         (cons _lp-hd4528345349_
                                               _body4528545342_))))
                                    (let ((_body4528645355_
                                           (reverse _body4528545342_)))
                                      (let ((_L45359_ _body4528645355_)
                                            (_L45361_ _tl4527545326_)
                                            (_L45362_ _hd4527645323_)
                                            (_L45363_ _hd4527045303_))
                                        (if (gx#identifier? _L45362_)
                                            (___kont4749647497_
                                             _L45359_
                                             _L45361_
                                             _L45362_
                                             _L45363_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4525245292_)))))))))
                      (_loop4528145335_ _target4527845329_ '()))))
                 (___match4752047521_
                  (lambda (_e4525845400_
                           _hd4525745404_
                           _tl4525645407_
                           _e4526145410_
                           _hd4526045414_
                           _tl4525945417_
                           _e4526445420_
                           _hd4526345424_
                           _tl4526245427_)
                    (let ((_L45430_ _hd4526345424_) (_L45432_ _hd4526045414_))
                      (if (gx#identifier? _L45432_)
                          (___kont4749447495_ _L45430_ _L45432_)
                          (if (gx#stx-pair? _hd4526045414_)
                              (let ((_e4527745319_
                                     (gx#syntax-e _hd4526045414_)))
                                (let ((_tl4527545326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4527745319_)))
                                      (_hd4527645323_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4527745319_))))
                                  (if (gx#stx-pair/null? _tl4525945417_)
                                      (let ((___splice4749847499_
                                             (gx#syntax-split-splice
                                              _tl4525945417_
                                              '0)))
                                        (let ((_tl4528045332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4749847499_
                                                  '1)))
                                              (_target4527845329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4749847499_
                                                  '0))))
                                          (if (gx#stx-null? _tl4528045332_)
                                              (___match4754647547_
                                               _e4525845400_
                                               _hd4525745404_
                                               _tl4525645407_
                                               _e4526145410_
                                               _hd4526045414_
                                               _tl4525945417_
                                               _e4527745319_
                                               _hd4527645323_
                                               _tl4527545326_
                                               ___splice4749847499_
                                               _target4527845329_
                                               _tl4528045332_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4525245292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4525245292_)))))
                              (let ()
                                (declare (not safe))
                                (_g4525245292_))))))))
            (if (gx#stx-pair? ___stx4749147492_)
                (let ((_e4525845400_ (gx#syntax-e ___stx4749147492_)))
                  (let ((_tl4525645407_
                         (let () (declare (not safe)) (##cdr _e4525845400_)))
                        (_hd4525745404_
                         (let () (declare (not safe)) (##car _e4525845400_))))
                    (if (gx#stx-pair? _tl4525645407_)
                        (let ((_e4526145410_ (gx#syntax-e _tl4525645407_)))
                          (let ((_tl4525945417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4526145410_)))
                                (_hd4526045414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4526145410_))))
                            (if (gx#stx-pair? _tl4525945417_)
                                (let ((_e4526445420_
                                       (gx#syntax-e _tl4525945417_)))
                                  (let ((_tl4526245427_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4526445420_)))
                                        (_hd4526345424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4526445420_))))
                                    (if (gx#stx-null? _tl4526245427_)
                                        (___match4752047521_
                                         _e4525845400_
                                         _hd4525745404_
                                         _tl4525645407_
                                         _e4526145410_
                                         _hd4526045414_
                                         _tl4525945417_
                                         _e4526445420_
                                         _hd4526345424_
                                         _tl4526245427_)
                                        (if (gx#stx-pair? _hd4526045414_)
                                            (let ((_e4527745319_
                                                   (gx#syntax-e
                                                    _hd4526045414_)))
                                              (let ((_tl4527545326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4527745319_)))
                                                    (_hd4527645323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4527745319_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4525945417_)
                                                    (let ((___splice4749847499_
                                                           (gx#syntax-split-splice
                                                            _tl4525945417_
                                                            '0)))
                                                      (let ((_tl4528045332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4749847499_ '1)))
                    (_target4527845329_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4749847499_ '0))))
                (if (gx#stx-null? _tl4528045332_)
                    (___match4754647547_
                     _e4525845400_
                     _hd4525745404_
                     _tl4525645407_
                     _e4526145410_
                     _hd4526045414_
                     _tl4525945417_
                     _e4527745319_
                     _hd4527645323_
                     _tl4527545326_
                     ___splice4749847499_
                     _target4527845329_
                     _tl4528045332_)
                    (let () (declare (not safe)) (_g4525245292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4525245292_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4525245292_))))))
                                (if (gx#stx-pair? _hd4526045414_)
                                    (let ((_e4527745319_
                                           (gx#syntax-e _hd4526045414_)))
                                      (let ((_tl4527545326_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4527745319_)))
                                            (_hd4527645323_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4527745319_))))
                                        (if (gx#stx-pair/null? _tl4525945417_)
                                            (let ((___splice4749847499_
                                                   (gx#syntax-split-splice
                                                    _tl4525945417_
                                                    '0)))
                                              (let ((_tl4528045332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4749847499_
                                                        '1)))
                                                    (_target4527845329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4749847499_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4528045332_)
                                                    (___match4754647547_
                                                     _e4525845400_
                                                     _hd4525745404_
                                                     _tl4525645407_
                                                     _e4526145410_
                                                     _hd4526045414_
                                                     _tl4525945417_
                                                     _e4527745319_
                                                     _hd4527645323_
                                                     _tl4527545326_
                                                     ___splice4749847499_
                                                     _target4527845329_
                                                     _tl4528045332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4525245292_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4525245292_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4525245292_))))))
                        (let () (declare (not safe)) (_g4525245292_)))))
                (let () (declare (not safe)) (_g4525245292_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx45452_)
       (let* ((_g4545545475_
               (lambda (_g4545645471_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4545645471_)))
              (_g4545445546_
               (lambda (_g4545645479_)
                 (if (gx#stx-pair? _g4545645479_)
                     (let ((_e4546045482_ (gx#syntax-e _g4545645479_)))
                       (let ((_hd4545945486_
                              (let ()
                                (declare (not safe))
                                (##car _e4546045482_)))
                             (_tl4545845489_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4546045482_))))
                         (if (gx#stx-pair/null? _tl4545845489_)
                             (let ((_g47644_
                                    (gx#syntax-split-splice
                                     _tl4545845489_
                                     '0)))
                               (begin
                                 (let ((_g47645_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g47644_)
                                              (##vector-length _g47644_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g47645_ 2)))
                                       (error "Context expects 2 values"
                                              _g47645_)))
                                 (let ((_target4546145492_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g47644_ 0)))
                                       (_tl4546345495_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g47644_ 1))))
                                   (if (gx#stx-null? _tl4546345495_)
                                       (letrec ((_loop4546445498_
                                                 (lambda (_hd4546245502_
                                                          _body4546845505_)
                                                   (if (gx#stx-pair?
                                                        _hd4546245502_)
                                                       (let ((_e4546545508_
                                                              (gx#syntax-e
                                                               _hd4546245502_)))
                                                         (let ((_lp-hd4546645512_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4546545508_)))
                       (_lp-tl4546745515_
                        (let () (declare (not safe)) (##cdr _e4546545508_))))
                   (_loop4546445498_
                    _lp-tl4546745515_
                    (cons _lp-hd4546645512_ _body4546845505_))))
               (let ((_body4546945518_ (reverse _body4546845505_)))
                 ((lambda (_L45522_)
                    (cons 'phi:
                          (cons '1
                                (let ((__tmp47646
                                       (lambda (_g4553745540_ _g4553845543_)
                                         (cons _g4553745540_ _g4553845543_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp47646 '() _L45522_)))))
                  _body4546945518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4546445498_
                                          _target4546145492_
                                          '()))
                                       (_g4545545475_ _g4545645479_)))))
                             (_g4545545475_ _g4545645479_))))
                     (_g4545545475_ _g4545645479_)))))
         (_g4545445546_ _stx45452_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx45551_)
       (let* ((_g4555445574_
               (lambda (_g4555545570_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4555545570_)))
              (_g4555345645_
               (lambda (_g4555545578_)
                 (if (gx#stx-pair? _g4555545578_)
                     (let ((_e4555945581_ (gx#syntax-e _g4555545578_)))
                       (let ((_hd4555845585_
                              (let ()
                                (declare (not safe))
                                (##car _e4555945581_)))
                             (_tl4555745588_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4555945581_))))
                         (if (gx#stx-pair/null? _tl4555745588_)
                             (let ((_g47647_
                                    (gx#syntax-split-splice
                                     _tl4555745588_
                                     '0)))
                               (begin
                                 (let ((_g47648_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g47647_)
                                              (##vector-length _g47647_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g47648_ 2)))
                                       (error "Context expects 2 values"
                                              _g47648_)))
                                 (let ((_target4556045591_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g47647_ 0)))
                                       (_tl4556245594_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g47647_ 1))))
                                   (if (gx#stx-null? _tl4556245594_)
                                       (letrec ((_loop4556345597_
                                                 (lambda (_hd4556145601_
                                                          _body4556745604_)
                                                   (if (gx#stx-pair?
                                                        _hd4556145601_)
                                                       (let ((_e4556445607_
                                                              (gx#syntax-e
                                                               _hd4556145601_)))
                                                         (let ((_lp-hd4556545611_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4556445607_)))
                       (_lp-tl4556645614_
                        (let () (declare (not safe)) (##cdr _e4556445607_))))
                   (_loop4556345597_
                    _lp-tl4556645614_
                    (cons _lp-hd4556545611_ _body4556745604_))))
               (let ((_body4556845617_ (reverse _body4556745604_)))
                 ((lambda (_L45621_)
                    (cons 'phi:
                          (cons '-1
                                (let ((__tmp47649
                                       (lambda (_g4563645639_ _g4563745642_)
                                         (cons _g4563645639_ _g4563745642_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp47649 '() _L45621_)))))
                  _body4556845617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4556345597_
                                          _target4556045591_
                                          '()))
                                       (_g4555445574_ _g4555545578_)))))
                             (_g4555445574_ _g4555545578_))))
                     (_g4555445574_ _g4555545578_)))))
         (_g4555345645_ _stx45551_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx45650_)
       (let* ((_g4565345677_
               (lambda (_g4565445673_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4565445673_)))
              (_g4565245799_
               (lambda (_g4565445681_)
                 (if (gx#stx-pair? _g4565445681_)
                     (let ((_e4565945684_ (gx#syntax-e _g4565445681_)))
                       (let ((_hd4565845688_
                              (let ()
                                (declare (not safe))
                                (##car _e4565945684_)))
                             (_tl4565745691_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4565945684_))))
                         (if (gx#stx-pair? _tl4565745691_)
                             (let ((_e4566245694_
                                    (gx#syntax-e _tl4565745691_)))
                               (let ((_hd4566145698_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4566245694_)))
                                     (_tl4566045701_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4566245694_))))
                                 (if (gx#stx-pair/null? _tl4566045701_)
                                     (let ((_g47650_
                                            (gx#syntax-split-splice
                                             _tl4566045701_
                                             '0)))
                                       (begin
                                         (let ((_g47651_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47650_)
                                                      (##vector-length
                                                       _g47650_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47651_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47651_)))
                                         (let ((_target4566345704_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47650_ 0)))
                                               (_tl4566545707_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47650_ 1))))
                                           (if (gx#stx-null? _tl4566545707_)
                                               (letrec ((_loop4566645710_
                                                         (lambda (_hd4566445714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4567045717_)
                   (if (gx#stx-pair? _hd4566445714_)
                       (let ((_e4566745720_ (gx#syntax-e _hd4566445714_)))
                         (let ((_lp-hd4566845724_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4566745720_)))
                               (_lp-tl4566945727_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4566745720_))))
                           (_loop4566645710_
                            _lp-tl4566945727_
                            (cons _lp-hd4566845724_ _id4567045717_))))
                       (let ((_id4567145730_ (reverse _id4567045717_)))
                         ((lambda (_L45734_ _L45736_)
                            (if (gx#identifier-list?
                                 (let ((__tmp47652
                                        (lambda (_g4575345756_ _g4575445759_)
                                          (cons _g4575345756_ _g4575445759_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp47652 '() _L45734_)))
                                (let* ((_keys45770_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp47653
                                                (lambda (_g4576145764_
                                                         _g4576245767_)
                                                  (cons _g4576145764_
                                                        _g4576245767_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47653
                                            '()
                                            _L45734_))))
                                       (_keytab45781_
                                        (let ((_ht45773_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g4577545777_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht45773_
                                                _g4577545777_
                                                '#t)))
                                           _keys45770_)
                                          _ht45773_))
                                       (_imports45784_
                                        (gx#core-expand-import-source
                                         _L45736_))
                                       (_fold-e45794_
                                        (letrec ((_fold-e45787_
                                                  (lambda (_in45790_ _r45792_)
                                                    (if (gx#module-import?
                                                         _in45790_)
                                                        (if (let ((__tmp47654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in45790_)))
                      (declare (not safe))
                      (hash-get _keytab45781_ __tmp47654))
                    (cons _in45790_ _r45792_)
                    _r45792_)
                (if (gx#import-set? _in45790_)
                    (let ((__tmp47655 (gx#import-set-imports _in45790_)))
                      (declare (not safe))
                      (foldl1 _fold-e45787_ _r45792_ __tmp47655))
                    _r45792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e45787_)))
                                  (cons 'begin:
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e45794_
                                                  '()
                                                  _imports45784_))))
                                (_g4565345677_ _g4565445681_)))
                          _id4567145730_
                          _hd4566145698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4566645710_
                                                  _target4566345704_
                                                  '()))
                                               (_g4565345677_
                                                _g4565445681_)))))
                                     (_g4565345677_ _g4565445681_))))
                             (_g4565345677_ _g4565445681_))))
                     (_g4565345677_ _g4565445681_)))))
         (_g4565245799_ _stx45650_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx45804_)
       (let* ((_g4580745831_
               (lambda (_g4580845827_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4580845827_)))
              (_g4580645953_
               (lambda (_g4580845835_)
                 (if (gx#stx-pair? _g4580845835_)
                     (let ((_e4581345838_ (gx#syntax-e _g4580845835_)))
                       (let ((_hd4581245842_
                              (let ()
                                (declare (not safe))
                                (##car _e4581345838_)))
                             (_tl4581145845_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4581345838_))))
                         (if (gx#stx-pair? _tl4581145845_)
                             (let ((_e4581645848_
                                    (gx#syntax-e _tl4581145845_)))
                               (let ((_hd4581545852_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4581645848_)))
                                     (_tl4581445855_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4581645848_))))
                                 (if (gx#stx-pair/null? _tl4581445855_)
                                     (let ((_g47656_
                                            (gx#syntax-split-splice
                                             _tl4581445855_
                                             '0)))
                                       (begin
                                         (let ((_g47657_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47656_)
                                                      (##vector-length
                                                       _g47656_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47657_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47657_)))
                                         (let ((_target4581745858_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47656_ 0)))
                                               (_tl4581945861_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47656_ 1))))
                                           (if (gx#stx-null? _tl4581945861_)
                                               (letrec ((_loop4582045864_
                                                         (lambda (_hd4581845868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4582445871_)
                   (if (gx#stx-pair? _hd4581845868_)
                       (let ((_e4582145874_ (gx#syntax-e _hd4581845868_)))
                         (let ((_lp-hd4582245878_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4582145874_)))
                               (_lp-tl4582345881_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4582145874_))))
                           (_loop4582045864_
                            _lp-tl4582345881_
                            (cons _lp-hd4582245878_ _id4582445871_))))
                       (let ((_id4582545884_ (reverse _id4582445871_)))
                         ((lambda (_L45888_ _L45890_)
                            (if (gx#identifier-list?
                                 (let ((__tmp47658
                                        (lambda (_g4590745910_ _g4590845913_)
                                          (cons _g4590745910_ _g4590845913_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp47658 '() _L45888_)))
                                (let* ((_keys45924_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp47659
                                                (lambda (_g4591545918_
                                                         _g4591645921_)
                                                  (cons _g4591545918_
                                                        _g4591645921_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47659
                                            '()
                                            _L45888_))))
                                       (_keytab45935_
                                        (let ((_ht45927_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g4592945931_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht45927_
                                                _g4592945931_
                                                '#t)))
                                           _keys45924_)
                                          _ht45927_))
                                       (_imports45938_
                                        (gx#core-expand-import-source
                                         _L45890_))
                                       (_fold-e45948_
                                        (letrec ((_fold-e45941_
                                                  (lambda (_in45944_ _r45946_)
                                                    (if (gx#module-import?
                                                         _in45944_)
                                                        (if (let ((__tmp47660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in45944_)))
                      (declare (not safe))
                      (hash-get _keytab45935_ __tmp47660))
                    _r45946_
                    (cons _in45944_ _r45946_))
                (if (gx#import-set? _in45944_)
                    (let ((__tmp47661 (gx#import-set-imports _in45944_)))
                      (declare (not safe))
                      (foldl1 _fold-e45941_ _r45946_ __tmp47661))
                    (cons _in45944_ _r45946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e45941_)))
                                  (cons 'begin:
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e45948_
                                                  '()
                                                  _imports45938_))))
                                (_g4580745831_ _g4580845835_)))
                          _id4582545884_
                          _hd4581545852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4582045864_
                                                  _target4581745858_
                                                  '()))
                                               (_g4580745831_
                                                _g4580845835_)))))
                                     (_g4580745831_ _g4580845835_))))
                             (_g4580745831_ _g4580845835_))))
                     (_g4580745831_ _g4580845835_)))))
         (_g4580645953_ _stx45804_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in46005_ _rename46007_)
      (gx#make-module-import
       (gx#module-import-source _in46005_)
       _rename46007_
       (gx#module-import-phi _in46005_)
       (gx#module-import-weak? _in46005_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name45958_ _pre45960_)
      (let* ((_name4596145969_ _name45958_)
             (_else4596345981_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (make-symbol__1 _pre45960_ _name45958_))))
             (_K4596545989_
              (lambda (_mark45985_ _id45987_)
                (cons (let ()
                        (declare (not safe))
                        (make-symbol__1 _pre45960_ _id45987_))
                      _mark45985_))))
        (if (let () (declare (not safe)) (##pair? _name4596145969_))
            (let ((_hd4596645993_
                   (let () (declare (not safe)) (##car _name4596145969_)))
                  (_tl4596745996_
                   (let () (declare (not safe)) (##cdr _name4596145969_))))
              (let* ((_id45999_ _hd4596645993_) (_mark46002_ _tl4596745996_))
                (declare (not safe))
                (_K4596545989_ _mark46002_ _id45999_)))
            (let () (declare (not safe)) (_else4596345981_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx46009_)
       (let* ((_g4601246045_
               (lambda (_g4601346041_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4601346041_)))
              (_g4601146232_
               (lambda (_g4601346049_)
                 (if (gx#stx-pair? _g4601346049_)
                     (let ((_e4601946052_ (gx#syntax-e _g4601346049_)))
                       (let ((_hd4601846056_
                              (let ()
                                (declare (not safe))
                                (##car _e4601946052_)))
                             (_tl4601746059_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4601946052_))))
                         (if (gx#stx-pair? _tl4601746059_)
                             (let ((_e4602246062_
                                    (gx#syntax-e _tl4601746059_)))
                               (let ((_hd4602146066_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4602246062_)))
                                     (_tl4602046069_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4602246062_))))
                                 (if (gx#stx-pair/null? _tl4602046069_)
                                     (let ((_g47662_
                                            (gx#syntax-split-splice
                                             _tl4602046069_
                                             '0)))
                                       (begin
                                         (let ((_g47663_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47662_)
                                                      (##vector-length
                                                       _g47662_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47663_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47663_)))
                                         (let ((_target4602346072_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47662_ 0)))
                                               (_tl4602546075_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47662_ 1))))
                                           (if (gx#stx-null? _tl4602546075_)
                                               (letrec ((_loop4602646078_
                                                         (lambda (_hd4602446082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4603046085_
                          _id4603146087_)
                   (if (gx#stx-pair? _hd4602446082_)
                       (let ((_e4602746090_ (gx#syntax-e _hd4602446082_)))
                         (let ((_lp-hd4602846094_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4602746090_)))
                               (_lp-tl4602946097_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4602746090_))))
                           (if (gx#stx-pair? _lp-hd4602846094_)
                               (let ((_e4603646100_
                                      (gx#syntax-e _lp-hd4602846094_)))
                                 (let ((_hd4603546104_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4603646100_)))
                                       (_tl4603446107_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4603646100_))))
                                   (if (gx#stx-pair? _tl4603446107_)
                                       (let ((_e4603946110_
                                              (gx#syntax-e _tl4603446107_)))
                                         (let ((_hd4603846114_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4603946110_)))
                                               (_tl4603746117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4603946110_))))
                                           (if (gx#stx-null? _tl4603746117_)
                                               (_loop4602646078_
                                                _lp-tl4602946097_
                                                (cons _hd4603846114_
                                                      _new-id4603046085_)
                                                (cons _hd4603546104_
                                                      _id4603146087_))
                                               (_g4601246045_ _g4601346049_))))
                                       (_g4601246045_ _g4601346049_))))
                               (_g4601246045_ _g4601346049_))))
                       (let ((_new-id4603246120_ (reverse _new-id4603046085_))
                             (_id4603346123_ (reverse _id4603146087_)))
                         ((lambda (_L46126_ _L46128_ _L46129_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp47664
                                             (lambda (_g4614746150_
                                                      _g4614846153_)
                                               (cons _g4614746150_
                                                     _g4614846153_))))
                                        (declare (not safe))
                                        (__foldr1 __tmp47664 '() _L46128_)))
                                     (gx#identifier-list?
                                      (let ((__tmp47665
                                             (lambda (_g4615546158_
                                                      _g4615646161_)
                                               (cons _g4615546158_
                                                     _g4615646161_))))
                                        (declare (not safe))
                                        (__foldr1 __tmp47665 '() _L46126_))))
                                (let* ((_keytab46164_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found46167_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (__46190_
                                        (for-each
                                         (lambda (_id46170_ _new-id46172_)
                                           (let ((__tmp47667
                                                  (gx#core-identifier-key
                                                   _id46170_))
                                                 (__tmp47666
                                                  (gx#core-identifier-key
                                                   _new-id46172_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab46164_
                                              __tmp47667
                                              __tmp47666)))
                                         (let ((__tmp47668
                                                (lambda (_g4617346176_
                                                         _g4617446179_)
                                                  (cons _g4617346176_
                                                        _g4617446179_))))
                                           (declare (not safe))
                                           (__foldr1 __tmp47668 '() _L46128_))
                                         (let ((__tmp47669
                                                (lambda (_g4618146184_
                                                         _g4618246187_)
                                                  (cons _g4618146184_
                                                        _g4618246187_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47669
                                            '()
                                            _L46126_))))
                                       (_imports46193_
                                        (gx#core-expand-import-source
                                         _L46129_))
                                       (_fold-e46213_
                                        (letrec ((_fold-e46196_
                                                  (lambda (_in46199_ _r46201_)
                                                    (if (gx#module-import?
                                                         _in46199_)
                                                        (let* ((_name46203_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in46199_))
                       (_$e46206_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab46164_ _name46203_))))
                  (if _$e46206_
                      ((lambda (_rename46210_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found46167_ _name46203_ '#t))
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core/module-sugar[1]#module-import-rename|
                                  _in46199_
                                  _rename46210_))
                               _r46201_))
                       _$e46206_)
                      (cons _in46199_ _r46201_)))
                (if (gx#import-set? _in46199_)
                    (let ((__tmp47670 (gx#import-set-imports _in46199_)))
                      (declare (not safe))
                      (foldl1 _fold-e46196_ _r46201_ __tmp47670))
                    (cons _in46199_ _r46201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e46196_))
                                       (_new-imports46216_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e46213_
                                                  '()
                                                  _imports46193_))))
                                  (for-each
                                   (lambda (_id46221_)
                                     (if (let ((__tmp47671
                                                (gx#core-identifier-key
                                                 _id46221_)))
                                           (declare (not safe))
                                           (hash-get _found46167_ __tmp47671))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx46009_
                                          _id46221_)))
                                   (let ((__tmp47672
                                          (lambda (_g4622346226_ _g4622446229_)
                                            (cons _g4622346226_
                                                  _g4622446229_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp47672 '() _L46128_)))
                                  (cons 'begin: _new-imports46216_))
                                (_g4601246045_ _g4601346049_)))
                          _new-id4603246120_
                          _id4603346123_
                          _hd4602146066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4602646078_
                                                  _target4602346072_
                                                  '()
                                                  '()))
                                               (_g4601246045_
                                                _g4601346049_)))))
                                     (_g4601246045_ _g4601346049_))))
                             (_g4601246045_ _g4601346049_))))
                     (_g4601246045_ _g4601346049_)))))
         (_g4601146232_ _stx46009_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx46237_)
       (let* ((_g4624046258_
               (lambda (_g4624146254_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4624146254_)))
              (_g4623946337_
               (lambda (_g4624146262_)
                 (if (gx#stx-pair? _g4624146262_)
                     (let ((_e4624646265_ (gx#syntax-e _g4624146262_)))
                       (let ((_hd4624546269_
                              (let ()
                                (declare (not safe))
                                (##car _e4624646265_)))
                             (_tl4624446272_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4624646265_))))
                         (if (gx#stx-pair? _tl4624446272_)
                             (let ((_e4624946275_
                                    (gx#syntax-e _tl4624446272_)))
                               (let ((_hd4624846279_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4624946275_)))
                                     (_tl4624746282_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4624946275_))))
                                 (if (gx#stx-pair? _tl4624746282_)
                                     (let ((_e4625246285_
                                            (gx#syntax-e _tl4624746282_)))
                                       (let ((_hd4625146289_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4625246285_)))
                                             (_tl4625046292_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4625246285_))))
                                         (if (gx#stx-null? _tl4625046292_)
                                             ((lambda (_L46295_ _L46297_)
                                                (if (gx#identifier? _L46295_)
                                                    (let* ((_pre46313_
                                                            (gx#stx-e
                                                             _L46295_))
                                                           (_imports46316_
                                                            (gx#core-expand-import-source
                                                             _L46297_))
                                                           (_rename-e46322_
                                                            (lambda (_name46319_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name46319_
                         _pre46313_))))
                   (_fold-e46332_
                    (letrec ((_fold-e46325_
                              (lambda (_in46328_ _r46330_)
                                (if (gx#module-import? _in46328_)
                                    (cons (let ((__tmp47673
                                                 (_rename-e46322_
                                                  (gx#module-import-name
                                                   _in46328_))))
                                            (declare (not safe))
                                            (|gerbil/core/module-sugar[1]#module-import-rename|
                                             _in46328_
                                             __tmp47673))
                                          _r46330_)
                                    (if (gx#import-set? _in46328_)
                                        (let ((__tmp47674
                                               (gx#import-set-imports
                                                _in46328_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e46325_
                                                  _r46330_
                                                  __tmp47674))
                                        (cons _in46328_ _r46330_))))))
                      _fold-e46325_)))
              (cons 'begin:
                    (let ()
                      (declare (not safe))
                      (foldl1 _fold-e46332_ '() _imports46316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4624046258_
                                                     _g4624146262_)))
                                              _hd4625146289_
                                              _hd4624846279_)
                                             (_g4624046258_ _g4624146262_))))
                                     (_g4624046258_ _g4624146262_))))
                             (_g4624046258_ _g4624146262_))))
                     (_g4624046258_ _g4624146262_)))))
         (_g4623946337_ _stx46237_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx46341_)
       (letrec ((_flatten46344_
                 (lambda (_list-of-lists46599_)
                   (let ((__tmp47675
                          (lambda (_v46602_ _acc46604_)
                            (if (let () (declare (not safe)) (null? _v46602_))
                                _acc46604_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v46602_))
                                    (append (_flatten46344_ _v46602_)
                                            _acc46604_)
                                    (cons _v46602_ _acc46604_))))))
                     (declare (not safe))
                     (__foldr1 __tmp47675 '() _list-of-lists46599_))))
                (_expand-path46346_
                 (lambda (_top46467_ _mod46469_)
                   (let* ((___stx4754947550_ _mod46469_)
                          (_g4647246494_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4754947550_))))
                     (let ((___kont4755247553_
                            (lambda (_L46562_ _L46564_)
                              (map (lambda (_mod46579_)
                                     (gx#stx-identifier
                                      _top46467_
                                      _top46467_
                                      '"/"
                                      _mod46579_))
                                   (_flatten46344_
                                    (map (lambda (_g4658146583_)
                                           (_expand-path46346_
                                            _L46564_
                                            _g4658146583_))
                                         (let ((__tmp47676
                                                (lambda (_g4658646589_
                                                         _g4658746592_)
                                                  (cons _g4658646589_
                                                        _g4658746592_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47676
                                            '()
                                            _L46562_)))))))
                           (___kont4755647557_
                            (lambda (_L46501_)
                              (gx#stx-identifier
                               _top46467_
                               _top46467_
                               '"/"
                               _L46501_))))
                       (let* ((_g4647146515_
                               (lambda ()
                                 (let ((_L46501_ ___stx4754947550_))
                                   (if (or (gx#identifier? _L46501_)
                                           (gx#stx-fixnum? _L46501_))
                                       (___kont4755647557_ _L46501_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4647246494_))))))
                              (___match4757247573_
                               (lambda (_e4647846522_
                                        _hd4647746526_
                                        _tl4647646529_
                                        ___splice4755447555_
                                        _target4647946532_
                                        _tl4648146535_)
                                 (letrec ((_loop4648246538_
                                           (lambda (_hd4648046542_
                                                    _mod4648646545_)
                                             (if (gx#stx-pair? _hd4648046542_)
                                                 (let ((_e4648346548_
                                                        (gx#syntax-e
                                                         _hd4648046542_)))
                                                   (let ((_lp-tl4648546555_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4648346548_)))
                                                         (_lp-hd4648446552_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4648346548_))))
                                                     (_loop4648246538_
                                                      _lp-tl4648546555_
                                                      (cons _lp-hd4648446552_
                                                            _mod4648646545_))))
                                                 (let ((_mod4648746558_
                                                        (reverse _mod4648646545_)))
                                                   (___kont4755247553_
                                                    _mod4648746558_
                                                    _hd4647746526_))))))
                                   (_loop4648246538_
                                    _target4647946532_
                                    '())))))
                         (if (gx#stx-pair? ___stx4754947550_)
                             (let ((_e4647846522_
                                    (gx#syntax-e ___stx4754947550_)))
                               (let ((_tl4647646529_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4647846522_)))
                                     (_hd4647746526_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4647846522_))))
                                 (if (gx#stx-pair/null? _tl4647646529_)
                                     (let ((___splice4755447555_
                                            (gx#syntax-split-splice
                                             _tl4647646529_
                                             '0)))
                                       (let ((_tl4648146535_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4755447555_
                                                 '1)))
                                             (_target4647946532_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4755447555_
                                                 '0))))
                                         (if (gx#stx-null? _tl4648146535_)
                                             (___match4757247573_
                                              _e4647846522_
                                              _hd4647746526_
                                              _tl4647646529_
                                              ___splice4755447555_
                                              _target4647946532_
                                              _tl4648146535_)
                                             (let ()
                                               (declare (not safe))
                                               (_g4647146515_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g4647146515_)))))
                             (let ()
                               (declare (not safe))
                               (_g4647146515_)))))))))
         (let* ((_g4634846372_
                 (lambda (_g4634946368_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g4634946368_)))
                (_g4634746463_
                 (lambda (_g4634946376_)
                   (if (gx#stx-pair? _g4634946376_)
                       (let ((_e4635446379_ (gx#syntax-e _g4634946376_)))
                         (let ((_hd4635346383_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4635446379_)))
                               (_tl4635246386_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4635446379_))))
                           (if (gx#stx-pair? _tl4635246386_)
                               (let ((_e4635746389_
                                      (gx#syntax-e _tl4635246386_)))
                                 (let ((_hd4635646393_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4635746389_)))
                                       (_tl4635546396_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4635746389_))))
                                   (if (gx#stx-pair/null? _tl4635546396_)
                                       (let ((_g47677_
                                              (gx#syntax-split-splice
                                               _tl4635546396_
                                               '0)))
                                         (begin
                                           (let ((_g47678_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g47677_)
                                                        (##vector-length
                                                         _g47677_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g47678_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g47678_)))
                                           (let ((_target4635846399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g47677_ 0)))
                                                 (_tl4636046402_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g47677_
                                                     1))))
                                             (if (gx#stx-null? _tl4636046402_)
                                                 (letrec ((_loop4636146405_
                                                           (lambda (_hd4635946409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod4636546412_)
                     (if (gx#stx-pair? _hd4635946409_)
                         (let ((_e4636246415_ (gx#syntax-e _hd4635946409_)))
                           (let ((_lp-hd4636346419_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4636246415_)))
                                 (_lp-tl4636446422_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4636246415_))))
                             (_loop4636146405_
                              _lp-tl4636446422_
                              (cons _lp-hd4636346419_ _mod4636546412_))))
                         (let ((_mod4636646425_ (reverse _mod4636546412_)))
                           ((lambda (_L46429_ _L46431_)
                              (cons 'begin:
                                    (_flatten46344_
                                     (map (lambda (_g4644946451_)
                                            (_expand-path46346_
                                             _L46431_
                                             _g4644946451_))
                                          (let ((__tmp47679
                                                 (lambda (_g4645446457_
                                                          _g4645546460_)
                                                   (cons _g4645446457_
                                                         _g4645546460_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp47679
                                             '()
                                             _L46429_))))))
                            _mod4636646425_
                            _hd4635646393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4636146405_
                                                    _target4635846399_
                                                    '()))
                                                 (_g4634846372_
                                                  _g4634946376_)))))
                                       (_g4634846372_ _g4634946376_))))
                               (_g4634846372_ _g4634946376_))))
                       (_g4634846372_ _g4634946376_)))))
           (_g4634746463_ _stx46341_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx46608_)
       (let* ((_g4661146635_
               (lambda (_g4661246631_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4661246631_)))
              (_g4661046757_
               (lambda (_g4661246639_)
                 (if (gx#stx-pair? _g4661246639_)
                     (let ((_e4661746642_ (gx#syntax-e _g4661246639_)))
                       (let ((_hd4661646646_
                              (let ()
                                (declare (not safe))
                                (##car _e4661746642_)))
                             (_tl4661546649_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4661746642_))))
                         (if (gx#stx-pair? _tl4661546649_)
                             (let ((_e4662046652_
                                    (gx#syntax-e _tl4661546649_)))
                               (let ((_hd4661946656_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4662046652_)))
                                     (_tl4661846659_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4662046652_))))
                                 (if (gx#stx-pair/null? _tl4661846659_)
                                     (let ((_g47680_
                                            (gx#syntax-split-splice
                                             _tl4661846659_
                                             '0)))
                                       (begin
                                         (let ((_g47681_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47680_)
                                                      (##vector-length
                                                       _g47680_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47681_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47681_)))
                                         (let ((_target4662146662_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47680_ 0)))
                                               (_tl4662346665_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47680_ 1))))
                                           (if (gx#stx-null? _tl4662346665_)
                                               (letrec ((_loop4662446668_
                                                         (lambda (_hd4662246672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4662846675_)
                   (if (gx#stx-pair? _hd4662246672_)
                       (let ((_e4662546678_ (gx#syntax-e _hd4662246672_)))
                         (let ((_lp-hd4662646682_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4662546678_)))
                               (_lp-tl4662746685_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4662546678_))))
                           (_loop4662446668_
                            _lp-tl4662746685_
                            (cons _lp-hd4662646682_ _id4662846675_))))
                       (let ((_id4662946688_ (reverse _id4662846675_)))
                         ((lambda (_L46692_ _L46694_)
                            (if (gx#identifier-list?
                                 (let ((__tmp47682
                                        (lambda (_g4671146714_ _g4671246717_)
                                          (cons _g4671146714_ _g4671246717_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp47682 '() _L46692_)))
                                (let* ((_keys46728_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp47683
                                                (lambda (_g4671946722_
                                                         _g4672046725_)
                                                  (cons _g4671946722_
                                                        _g4672046725_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47683
                                            '()
                                            _L46692_))))
                                       (_keytab46739_
                                        (let ((_ht46731_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g4673346735_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht46731_
                                                _g4673346735_
                                                '#t)))
                                           _keys46728_)
                                          _ht46731_))
                                       (_exports46742_
                                        (gx#core-expand-export-source
                                         _L46694_))
                                       (_fold-e46752_
                                        (letrec ((_fold-e46745_
                                                  (lambda (_out46748_ _r46750_)
                                                    (if (gx#module-export?
                                                         _out46748_)
                                                        (if (let ((__tmp47684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out46748_)))
                      (declare (not safe))
                      (hash-get _keytab46739_ __tmp47684))
                    _r46750_
                    (cons _out46748_ _r46750_))
                (if (gx#export-set? _out46748_)
                    (let ((__tmp47685 (gx#export-set-exports _out46748_)))
                      (declare (not safe))
                      (foldl1 _fold-e46745_ _r46750_ __tmp47685))
                    _r46750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e46745_)))
                                  (cons 'begin:
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e46752_
                                                  '()
                                                  _exports46742_))))
                                (_g4661146635_ _g4661246639_)))
                          _id4662946688_
                          _hd4661946656_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4662446668_
                                                  _target4662146662_
                                                  '()))
                                               (_g4661146635_
                                                _g4661246639_)))))
                                     (_g4661146635_ _g4661246639_))))
                             (_g4661146635_ _g4661246639_))))
                     (_g4661146635_ _g4661246639_)))))
         (_g4661046757_ _stx46608_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out46762_ _rename46764_)
      (gx#make-module-export
       (gx#module-export-context _out46762_)
       (gx#module-export-key _out46762_)
       (gx#module-export-phi _out46762_)
       _rename46764_
       (gx#module-export-weak? _out46762_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx46766_)
       (let* ((_g4676946802_
               (lambda (_g4677046798_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4677046798_)))
              (_g4676846989_
               (lambda (_g4677046806_)
                 (if (gx#stx-pair? _g4677046806_)
                     (let ((_e4677646809_ (gx#syntax-e _g4677046806_)))
                       (let ((_hd4677546813_
                              (let ()
                                (declare (not safe))
                                (##car _e4677646809_)))
                             (_tl4677446816_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4677646809_))))
                         (if (gx#stx-pair? _tl4677446816_)
                             (let ((_e4677946819_
                                    (gx#syntax-e _tl4677446816_)))
                               (let ((_hd4677846823_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4677946819_)))
                                     (_tl4677746826_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4677946819_))))
                                 (if (gx#stx-pair/null? _tl4677746826_)
                                     (let ((_g47686_
                                            (gx#syntax-split-splice
                                             _tl4677746826_
                                             '0)))
                                       (begin
                                         (let ((_g47687_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47686_)
                                                      (##vector-length
                                                       _g47686_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47687_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47687_)))
                                         (let ((_target4678046829_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47686_ 0)))
                                               (_tl4678246832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g47686_ 1))))
                                           (if (gx#stx-null? _tl4678246832_)
                                               (letrec ((_loop4678346835_
                                                         (lambda (_hd4678146839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4678746842_
                          _id4678846844_)
                   (if (gx#stx-pair? _hd4678146839_)
                       (let ((_e4678446847_ (gx#syntax-e _hd4678146839_)))
                         (let ((_lp-hd4678546851_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4678446847_)))
                               (_lp-tl4678646854_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4678446847_))))
                           (if (gx#stx-pair? _lp-hd4678546851_)
                               (let ((_e4679346857_
                                      (gx#syntax-e _lp-hd4678546851_)))
                                 (let ((_hd4679246861_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4679346857_)))
                                       (_tl4679146864_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4679346857_))))
                                   (if (gx#stx-pair? _tl4679146864_)
                                       (let ((_e4679646867_
                                              (gx#syntax-e _tl4679146864_)))
                                         (let ((_hd4679546871_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4679646867_)))
                                               (_tl4679446874_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4679646867_))))
                                           (if (gx#stx-null? _tl4679446874_)
                                               (_loop4678346835_
                                                _lp-tl4678646854_
                                                (cons _hd4679546871_
                                                      _new-id4678746842_)
                                                (cons _hd4679246861_
                                                      _id4678846844_))
                                               (_g4676946802_ _g4677046806_))))
                                       (_g4676946802_ _g4677046806_))))
                               (_g4676946802_ _g4677046806_))))
                       (let ((_new-id4678946877_ (reverse _new-id4678746842_))
                             (_id4679046880_ (reverse _id4678846844_)))
                         ((lambda (_L46883_ _L46885_ _L46886_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp47688
                                             (lambda (_g4690446907_
                                                      _g4690546910_)
                                               (cons _g4690446907_
                                                     _g4690546910_))))
                                        (declare (not safe))
                                        (__foldr1 __tmp47688 '() _L46885_)))
                                     (gx#identifier-list?
                                      (let ((__tmp47689
                                             (lambda (_g4691246915_
                                                      _g4691346918_)
                                               (cons _g4691246915_
                                                     _g4691346918_))))
                                        (declare (not safe))
                                        (__foldr1 __tmp47689 '() _L46883_))))
                                (let* ((_keytab46921_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found46924_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (__46947_
                                        (for-each
                                         (lambda (_id46927_ _new-id46929_)
                                           (let ((__tmp47691
                                                  (gx#core-identifier-key
                                                   _id46927_))
                                                 (__tmp47690
                                                  (gx#core-identifier-key
                                                   _new-id46929_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab46921_
                                              __tmp47691
                                              __tmp47690)))
                                         (let ((__tmp47692
                                                (lambda (_g4693046933_
                                                         _g4693146936_)
                                                  (cons _g4693046933_
                                                        _g4693146936_))))
                                           (declare (not safe))
                                           (__foldr1 __tmp47692 '() _L46885_))
                                         (let ((__tmp47693
                                                (lambda (_g4693846941_
                                                         _g4693946944_)
                                                  (cons _g4693846941_
                                                        _g4693946944_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp47693
                                            '()
                                            _L46883_))))
                                       (_exports46950_
                                        (gx#core-expand-export-source
                                         _L46886_))
                                       (_fold-e46970_
                                        (letrec ((_fold-e46953_
                                                  (lambda (_out46956_ _r46958_)
                                                    (if (gx#module-export?
                                                         _out46956_)
                                                        (let* ((_name46960_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out46956_))
                       (_$e46963_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab46921_ _name46960_))))
                  (if _$e46963_
                      ((lambda (_rename46967_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found46924_ _name46960_ '#t))
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core/module-sugar[1]#module-export-rename|
                                  _out46956_
                                  _rename46967_))
                               _r46958_))
                       _$e46963_)
                      (cons _out46956_ _r46958_)))
                (if (gx#export-set? _out46956_)
                    (let ((__tmp47694 (gx#export-set-exports _out46956_)))
                      (declare (not safe))
                      (foldl1 _fold-e46953_ _r46958_ __tmp47694))
                    (cons _out46956_ _r46958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e46953_))
                                       (_new-exports46973_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e46970_
                                                  '()
                                                  _exports46950_))))
                                  (for-each
                                   (lambda (_id46978_)
                                     (if (let ((__tmp47695
                                                (gx#core-identifier-key
                                                 _id46978_)))
                                           (declare (not safe))
                                           (hash-get _found46924_ __tmp47695))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx46766_
                                          _id46978_)))
                                   (let ((__tmp47696
                                          (lambda (_g4698046983_ _g4698146986_)
                                            (cons _g4698046983_
                                                  _g4698146986_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp47696 '() _L46885_)))
                                  (cons 'begin: _new-exports46973_))
                                (_g4676946802_ _g4677046806_)))
                          _new-id4678946877_
                          _id4679046880_
                          _hd4677846823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4678346835_
                                                  _target4678046829_
                                                  '()
                                                  '()))
                                               (_g4676946802_
                                                _g4677046806_)))))
                                     (_g4676946802_ _g4677046806_))))
                             (_g4676946802_ _g4677046806_))))
                     (_g4676946802_ _g4677046806_)))))
         (_g4676846989_ _stx46766_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx46994_)
       (let* ((_g4699747015_
               (lambda (_g4699847011_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4699847011_)))
              (_g4699647094_
               (lambda (_g4699847019_)
                 (if (gx#stx-pair? _g4699847019_)
                     (let ((_e4700347022_ (gx#syntax-e _g4699847019_)))
                       (let ((_hd4700247026_
                              (let ()
                                (declare (not safe))
                                (##car _e4700347022_)))
                             (_tl4700147029_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4700347022_))))
                         (if (gx#stx-pair? _tl4700147029_)
                             (let ((_e4700647032_
                                    (gx#syntax-e _tl4700147029_)))
                               (let ((_hd4700547036_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4700647032_)))
                                     (_tl4700447039_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4700647032_))))
                                 (if (gx#stx-pair? _tl4700447039_)
                                     (let ((_e4700947042_
                                            (gx#syntax-e _tl4700447039_)))
                                       (let ((_hd4700847046_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4700947042_)))
                                             (_tl4700747049_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4700947042_))))
                                         (if (gx#stx-null? _tl4700747049_)
                                             ((lambda (_L47052_ _L47054_)
                                                (if (gx#identifier? _L47052_)
                                                    (let* ((_pre47070_
                                                            (gx#stx-e
                                                             _L47052_))
                                                           (_exports47073_
                                                            (gx#core-expand-export-source
                                                             _L47054_))
                                                           (_rename-e47079_
                                                            (lambda (_name47076_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name47076_
                         _pre47070_))))
                   (_fold-e47089_
                    (letrec ((_fold-e47082_
                              (lambda (_out47085_ _r47087_)
                                (if (gx#module-export? _out47085_)
                                    (cons (let ((__tmp47697
                                                 (_rename-e47079_
                                                  (gx#module-export-name
                                                   _out47085_))))
                                            (declare (not safe))
                                            (|gerbil/core/module-sugar[1]#module-export-rename|
                                             _out47085_
                                             __tmp47697))
                                          _r47087_)
                                    (if (gx#export-set? _out47085_)
                                        (let ((__tmp47698
                                               (gx#export-set-exports
                                                _out47085_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e47082_
                                                  _r47087_
                                                  __tmp47698))
                                        (cons _out47085_ _r47087_))))))
                      _fold-e47082_)))
              (cons 'begin:
                    (let ()
                      (declare (not safe))
                      (foldl1 _fold-e47089_ '() _exports47073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4699747015_
                                                     _g4699847019_)))
                                              _hd4700847046_
                                              _hd4700547036_)
                                             (_g4699747015_ _g4699847019_))))
                                     (_g4699747015_ _g4699847019_))))
                             (_g4699747015_ _g4699847019_))))
                     (_g4699747015_ _g4699847019_)))))
         (_g4699647094_ _stx46994_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx47098_)
       (letrec ((_identifiers47101_
                 (lambda (_id47333_ _unchecked?47335_)
                   (let ((_info47337_ (gx#syntax-local-value _id47333_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _info47337_))
                         (cons _id47333_
                               (cons (let ((__obj47634 _info47337_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47634
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47634
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj47634
                                            'type-descriptor)))
                                     (let ((__tmp47700
                                            (cons (let ((__obj47635
                                                         _info47337_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47635
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47635
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj47635
                                                         'predicate)))
                                                  (let ((__tmp47702
                                                         (let ((__tmp47704
                                                                (if _unchecked?47335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47706
                                   (map cdr
                                        (let ((__obj47636 _info47337_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj47636
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj47636
                                                 '16
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj47636
                                               'unchecked-mutators)))))
                                  (__tmp47705
                                   (map cdr
                                        (let ((__obj47637 _info47337_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj47637
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj47637
                                                 '15
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj47637
                                               'unchecked-accessors))))))
                              (declare (not safe))
                              (__foldr1 cons __tmp47706 __tmp47705))
                            '()))
                       (__tmp47703
                        (map cdr
                             (let ((__obj47638 _info47337_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj47638
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj47638
                                      '14
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj47638
                                    'mutators))))))
                   (declare (not safe))
                   (__foldr1 cons __tmp47704 __tmp47703)))
                (__tmp47701
                 (map cdr
                      (let ((__obj47639 _info47337_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj47639
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj47639
                               '13
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj47639
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     __tmp47702
                                                     __tmp47701))))
                                           (__tmp47699
                                            (let ((_ctor47340_
                                                   (let ((__obj47640
                                                          _info47337_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj47640
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj47640
                                                            '11
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj47640
                                                          'constructor)))))
                                              (if _ctor47340_
                                                  (cons _ctor47340_ '())
                                                  '()))))
                                       (declare (not safe))
                                       (__foldr1 cons __tmp47700 __tmp47699))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx47098_
                          _id47333_))))))
         (let* ((___stx4757547576_ _stx47098_)
                (_g4710547146_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4757547576_))))
           (let ((___kont4757847579_
                  (lambda (_L47294_ _L47296_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_g4731547317_)
                              (_identifiers47101_
                               _g4731547317_
                               (gx#stx-e _L47296_)))
                            (let ((__tmp47707
                                   (lambda (_g4732047323_ _g4732147326_)
                                     (cons _g4732047323_ _g4732147326_))))
                              (declare (not safe))
                              (__foldr1 __tmp47707 '() _L47294_)))))))
                 (___kont4758247583_
                  (lambda (_L47193_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_g4720947211_)
                              (_identifiers47101_ _g4720947211_ '#f))
                            (let ((__tmp47708
                                   (lambda (_g4721447217_ _g4721547220_)
                                     (cons _g4721447217_ _g4721547220_))))
                              (declare (not safe))
                              (__foldr1 __tmp47708 '() _L47193_))))))))
             (let* ((___match4763247633_
                     (lambda (_e4713147153_
                              _hd4713047157_
                              _tl4712947160_
                              ___splice4758447585_
                              _target4713247163_
                              _tl4713447166_)
                       (letrec ((_loop4713547169_
                                 (lambda (_hd4713347173_ _id4713947176_)
                                   (if (gx#stx-pair? _hd4713347173_)
                                       (let ((_e4713647179_
                                              (gx#syntax-e _hd4713347173_)))
                                         (let ((_lp-tl4713847186_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4713647179_)))
                                               (_lp-hd4713747183_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4713647179_))))
                                           (_loop4713547169_
                                            _lp-tl4713847186_
                                            (cons _lp-hd4713747183_
                                                  _id4713947176_))))
                                       (let ((_id4714047189_
                                              (reverse _id4713947176_)))
                                         (___kont4758247583_
                                          _id4714047189_))))))
                         (_loop4713547169_ _target4713247163_ '()))))
                    (___match4761847619_
                     (lambda (_e4711147230_
                              _hd4711047234_
                              _tl4710947237_
                              _e4711447240_
                              _hd4711347244_
                              _tl4711247247_
                              _e4711547250_
                              _e4711847254_
                              _hd4711747258_
                              _tl4711647261_
                              ___splice4758047581_
                              _target4711947264_
                              _tl4712147267_)
                       (letrec ((_loop4712247270_
                                 (lambda (_hd4712047274_ _id4712647277_)
                                   (if (gx#stx-pair? _hd4712047274_)
                                       (let ((_e4712347280_
                                              (gx#syntax-e _hd4712047274_)))
                                         (let ((_lp-tl4712547287_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4712347280_)))
                                               (_lp-hd4712447284_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4712347280_))))
                                           (_loop4712247270_
                                            _lp-tl4712547287_
                                            (cons _lp-hd4712447284_
                                                  _id4712647277_))))
                                       (let ((_id4712747290_
                                              (reverse _id4712647277_)))
                                         (___kont4757847579_
                                          _id4712747290_
                                          _hd4711747258_))))))
                         (_loop4712247270_ _target4711947264_ '())))))
               (if (gx#stx-pair? ___stx4757547576_)
                   (let ((_e4711147230_ (gx#syntax-e ___stx4757547576_)))
                     (let ((_tl4710947237_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4711147230_)))
                           (_hd4711047234_
                            (let ()
                              (declare (not safe))
                              (##car _e4711147230_))))
                       (if (gx#stx-pair? _tl4710947237_)
                           (let ((_e4711447240_ (gx#syntax-e _tl4710947237_)))
                             (let ((_tl4711247247_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4711447240_)))
                                   (_hd4711347244_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4711447240_))))
                               (if (gx#stx-datum? _hd4711347244_)
                                   (let ((_e4711547250_
                                          (gx#stx-e _hd4711347244_)))
                                     (if (equal? _e4711547250_ 'unchecked:)
                                         (if (gx#stx-pair? _tl4711247247_)
                                             (let ((_e4711847254_
                                                    (gx#syntax-e
                                                     _tl4711247247_)))
                                               (let ((_tl4711647261_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4711847254_)))
                                                     (_hd4711747258_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4711847254_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl4711647261_)
                                                     (let ((___splice4758047581_
                                                            (gx#syntax-split-splice
                                                             _tl4711647261_
                                                             '0)))
                                                       (let ((_tl4712147267_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4758047581_ '1)))
                     (_target4711947264_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4758047581_ '0))))
                 (if (gx#stx-null? _tl4712147267_)
                     (___match4761847619_
                      _e4711147230_
                      _hd4711047234_
                      _tl4710947237_
                      _e4711447240_
                      _hd4711347244_
                      _tl4711247247_
                      _e4711547250_
                      _e4711847254_
                      _hd4711747258_
                      _tl4711647261_
                      ___splice4758047581_
                      _target4711947264_
                      _tl4712147267_)
                     (if (gx#stx-pair/null? _tl4710947237_)
                         (let ((___splice4758447585_
                                (gx#syntax-split-splice _tl4710947237_ '0)))
                           (let ((_tl4713447166_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4758447585_ '1)))
                                 (_target4713247163_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4758447585_ '0))))
                             (if (gx#stx-null? _tl4713447166_)
                                 (___match4763247633_
                                  _e4711147230_
                                  _hd4711047234_
                                  _tl4710947237_
                                  ___splice4758447585_
                                  _target4713247163_
                                  _tl4713447166_)
                                 (let ()
                                   (declare (not safe))
                                   (_g4710547146_)))))
                         (let () (declare (not safe)) (_g4710547146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl4710947237_)
                                                         (let ((___splice4758447585_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4710947237_
                         '0)))
                   (let ((_tl4713447166_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4758447585_ '1)))
                         (_target4713247163_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4758447585_ '0))))
                     (if (gx#stx-null? _tl4713447166_)
                         (___match4763247633_
                          _e4711147230_
                          _hd4711047234_
                          _tl4710947237_
                          ___splice4758447585_
                          _target4713247163_
                          _tl4713447166_)
                         (let () (declare (not safe)) (_g4710547146_)))))
                 (let () (declare (not safe)) (_g4710547146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl4710947237_)
                                                 (let ((___splice4758447585_
                                                        (gx#syntax-split-splice
                                                         _tl4710947237_
                                                         '0)))
                                                   (let ((_tl4713447166_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4758447585_
                                                             '1)))
                                                         (_target4713247163_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4758447585_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl4713447166_)
                                                         (___match4763247633_
                                                          _e4711147230_
                                                          _hd4711047234_
                                                          _tl4710947237_
                                                          ___splice4758447585_
                                                          _target4713247163_
                                                          _tl4713447166_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g4710547146_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g4710547146_))))
                                         (if (gx#stx-pair/null? _tl4710947237_)
                                             (let ((___splice4758447585_
                                                    (gx#syntax-split-splice
                                                     _tl4710947237_
                                                     '0)))
                                               (let ((_tl4713447166_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4758447585_
                                                         '1)))
                                                     (_target4713247163_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4758447585_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl4713447166_)
                                                     (___match4763247633_
                                                      _e4711147230_
                                                      _hd4711047234_
                                                      _tl4710947237_
                                                      ___splice4758447585_
                                                      _target4713247163_
                                                      _tl4713447166_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g4710547146_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g4710547146_)))))
                                   (if (gx#stx-pair/null? _tl4710947237_)
                                       (let ((___splice4758447585_
                                              (gx#syntax-split-splice
                                               _tl4710947237_
                                               '0)))
                                         (let ((_tl4713447166_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4758447585_
                                                   '1)))
                                               (_target4713247163_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4758447585_
                                                   '0))))
                                           (if (gx#stx-null? _tl4713447166_)
                                               (___match4763247633_
                                                _e4711147230_
                                                _hd4711047234_
                                                _tl4710947237_
                                                ___splice4758447585_
                                                _target4713247163_
                                                _tl4713447166_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4710547146_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4710547146_))))))
                           (if (gx#stx-pair/null? _tl4710947237_)
                               (let ((___splice4758447585_
                                      (gx#syntax-split-splice
                                       _tl4710947237_
                                       '0)))
                                 (let ((_tl4713447166_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4758447585_
                                           '1)))
                                       (_target4713247163_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4758447585_
                                           '0))))
                                   (if (gx#stx-null? _tl4713447166_)
                                       (___match4763247633_
                                        _e4711147230_
                                        _hd4711047234_
                                        _tl4710947237_
                                        ___splice4758447585_
                                        _target4713247163_
                                        _tl4713447166_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4710547146_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4710547146_))))))
                   (let () (declare (not safe)) (_g4710547146_)))))))))))
