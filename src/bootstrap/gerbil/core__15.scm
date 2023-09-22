(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx33880_)
      (let* ((___stx4196841969_ _$stx33880_)
             (_g3388533904_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4196841969_))))
        (let ((___kont4197141972_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4197341974_
               (lambda (_L33931_ _L33933_ _L33934_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L33933_
                                   (cons (cons _L33934_ _L33931_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L33933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4196841969_)
              (let ((_e3388933957_ (gx#syntax-e ___stx4196841969_)))
                (let ((_tl3388733964_
                       (let () (declare (not safe)) (##cdr _e3388933957_)))
                      (_hd3388833961_
                       (let () (declare (not safe)) (##car _e3388933957_))))
                  (if (gx#stx-null? _tl3388733964_)
                      (___kont4197141972_)
                      (if (gx#stx-pair? _tl3388733964_)
                          (let ((_e3389833921_ (gx#syntax-e _tl3388733964_)))
                            (let ((_tl3389633928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3389833921_)))
                                  (_hd3389733925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3389833921_))))
                              (___kont4197341974_
                               _tl3389633928_
                               _hd3389733925_
                               _hd3388833961_)))
                          (let () (declare (not safe)) (_g3388533904_))))))
              (let () (declare (not safe)) (_g3388533904_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx33975_)
      (let* ((___stx4199841999_ _$stx33975_)
             (_g3398034020_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4199841999_))))
        (let ((___kont4200142002_
               (lambda (_L34158_ _L34160_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34160_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L34158_ '()))
                                   '())))))
              (___kont4200342004_
               (lambda (_L34087_ _L34089_ _L34090_ _L34091_)
                 (cons _L34091_
                       (cons _L34090_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34089_
                                               (foldr (lambda (_g3411234115_
                                                               _g3411334118_)
                                                        (cons _g3411234115_
                                                              _g3411334118_))
                                                      '()
                                                      _L34087_)))
                                   '()))))))
          (let* ((___match4205342054_
                  (lambda (_e3399934027_
                           _hd3399834031_
                           _tl3399734034_
                           _e3400234037_
                           _hd3400134041_
                           _tl3400034044_
                           _e3400534047_
                           _hd3400434051_
                           _tl3400334054_
                           ___splice4200542006_
                           _target3400634057_
                           _tl3400834060_)
                    (letrec ((_loop3400934063_
                              (lambda (_hd3400734067_ _body3401334070_)
                                (if (gx#stx-pair? _hd3400734067_)
                                    (let ((_e3401034073_
                                           (gx#syntax-e _hd3400734067_)))
                                      (let ((_lp-tl3401234080_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3401034073_)))
                                            (_lp-hd3401134077_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3401034073_))))
                                        (_loop3400934063_
                                         _lp-tl3401234080_
                                         (cons _lp-hd3401134077_
                                               _body3401334070_))))
                                    (let ((_body3401434083_
                                           (reverse _body3401334070_)))
                                      (let ((_L34087_ _body3401434083_)
                                            (_L34089_ _tl3400334054_)
                                            (_L34090_ _hd3400434051_)
                                            (_L34091_ _hd3399834031_))
                                        (if (gx#identifier? _L34090_)
                                            (___kont4200342004_
                                             _L34087_
                                             _L34089_
                                             _L34090_
                                             _L34091_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3398034020_)))))))))
                      (_loop3400934063_ _target3400634057_ '()))))
                 (___match4202742028_
                  (lambda (_e3398634128_
                           _hd3398534132_
                           _tl3398434135_
                           _e3398934138_
                           _hd3398834142_
                           _tl3398734145_
                           _e3399234148_
                           _hd3399134152_
                           _tl3399034155_)
                    (let ((_L34158_ _hd3399134152_) (_L34160_ _hd3398834142_))
                      (if (gx#identifier? _L34160_)
                          (___kont4200142002_ _L34158_ _L34160_)
                          (if (gx#stx-pair? _hd3398834142_)
                              (let ((_e3400534047_
                                     (gx#syntax-e _hd3398834142_)))
                                (let ((_tl3400334054_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3400534047_)))
                                      (_hd3400434051_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3400534047_))))
                                  (if (gx#stx-pair/null? _tl3398734145_)
                                      (let ((___splice4200542006_
                                             (gx#syntax-split-splice
                                              _tl3398734145_
                                              '0)))
                                        (let ((_tl3400834060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4200542006_
                                                  '1)))
                                              (_target3400634057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4200542006_
                                                  '0))))
                                          (if (gx#stx-null? _tl3400834060_)
                                              (___match4205342054_
                                               _e3398634128_
                                               _hd3398534132_
                                               _tl3398434135_
                                               _e3398934138_
                                               _hd3398834142_
                                               _tl3398734145_
                                               _e3400534047_
                                               _hd3400434051_
                                               _tl3400334054_
                                               ___splice4200542006_
                                               _target3400634057_
                                               _tl3400834060_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3398034020_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3398034020_)))))
                              (let ()
                                (declare (not safe))
                                (_g3398034020_))))))))
            (if (gx#stx-pair? ___stx4199841999_)
                (let ((_e3398634128_ (gx#syntax-e ___stx4199841999_)))
                  (let ((_tl3398434135_
                         (let () (declare (not safe)) (##cdr _e3398634128_)))
                        (_hd3398534132_
                         (let () (declare (not safe)) (##car _e3398634128_))))
                    (if (gx#stx-pair? _tl3398434135_)
                        (let ((_e3398934138_ (gx#syntax-e _tl3398434135_)))
                          (let ((_tl3398734145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3398934138_)))
                                (_hd3398834142_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3398934138_))))
                            (if (gx#stx-pair? _tl3398734145_)
                                (let ((_e3399234148_
                                       (gx#syntax-e _tl3398734145_)))
                                  (let ((_tl3399034155_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3399234148_)))
                                        (_hd3399134152_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3399234148_))))
                                    (if (gx#stx-null? _tl3399034155_)
                                        (___match4202742028_
                                         _e3398634128_
                                         _hd3398534132_
                                         _tl3398434135_
                                         _e3398934138_
                                         _hd3398834142_
                                         _tl3398734145_
                                         _e3399234148_
                                         _hd3399134152_
                                         _tl3399034155_)
                                        (if (gx#stx-pair? _hd3398834142_)
                                            (let ((_e3400534047_
                                                   (gx#syntax-e
                                                    _hd3398834142_)))
                                              (let ((_tl3400334054_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3400534047_)))
                                                    (_hd3400434051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3400534047_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3398734145_)
                                                    (let ((___splice4200542006_
                                                           (gx#syntax-split-splice
                                                            _tl3398734145_
                                                            '0)))
                                                      (let ((_tl3400834060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4200542006_ '1)))
                    (_target3400634057_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4200542006_ '0))))
                (if (gx#stx-null? _tl3400834060_)
                    (___match4205342054_
                     _e3398634128_
                     _hd3398534132_
                     _tl3398434135_
                     _e3398934138_
                     _hd3398834142_
                     _tl3398734145_
                     _e3400534047_
                     _hd3400434051_
                     _tl3400334054_
                     ___splice4200542006_
                     _target3400634057_
                     _tl3400834060_)
                    (let () (declare (not safe)) (_g3398034020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3398034020_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3398034020_))))))
                                (if (gx#stx-pair? _hd3398834142_)
                                    (let ((_e3400534047_
                                           (gx#syntax-e _hd3398834142_)))
                                      (let ((_tl3400334054_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3400534047_)))
                                            (_hd3400434051_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3400534047_))))
                                        (if (gx#stx-pair/null? _tl3398734145_)
                                            (let ((___splice4200542006_
                                                   (gx#syntax-split-splice
                                                    _tl3398734145_
                                                    '0)))
                                              (let ((_tl3400834060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4200542006_
                                                        '1)))
                                                    (_target3400634057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4200542006_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3400834060_)
                                                    (___match4205342054_
                                                     _e3398634128_
                                                     _hd3398534132_
                                                     _tl3398434135_
                                                     _e3398934138_
                                                     _hd3398834142_
                                                     _tl3398734145_
                                                     _e3400534047_
                                                     _hd3400434051_
                                                     _tl3400334054_
                                                     ___splice4200542006_
                                                     _target3400634057_
                                                     _tl3400834060_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3398034020_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3398034020_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3398034020_))))))
                        (let () (declare (not safe)) (_g3398034020_)))))
                (let () (declare (not safe)) (_g3398034020_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34180_)
      (let* ((___stx4205642057_ _$stx34180_)
             (_g3418534225_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4205642057_))))
        (let ((___kont4205942060_
               (lambda (_L34363_ _L34365_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34365_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L34363_ '()))
                                   '())))))
              (___kont4206142062_
               (lambda (_L34292_ _L34294_ _L34295_ _L34296_)
                 (cons _L34296_
                       (cons _L34295_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34294_
                                               (foldr (lambda (_g3431734320_
                                                               _g3431834323_)
                                                        (cons _g3431734320_
                                                              _g3431834323_))
                                                      '()
                                                      _L34292_)))
                                   '()))))))
          (let* ((___match4211142112_
                  (lambda (_e3420434232_
                           _hd3420334236_
                           _tl3420234239_
                           _e3420734242_
                           _hd3420634246_
                           _tl3420534249_
                           _e3421034252_
                           _hd3420934256_
                           _tl3420834259_
                           ___splice4206342064_
                           _target3421134262_
                           _tl3421334265_)
                    (letrec ((_loop3421434268_
                              (lambda (_hd3421234272_ _body3421834275_)
                                (if (gx#stx-pair? _hd3421234272_)
                                    (let ((_e3421534278_
                                           (gx#syntax-e _hd3421234272_)))
                                      (let ((_lp-tl3421734285_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3421534278_)))
                                            (_lp-hd3421634282_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3421534278_))))
                                        (_loop3421434268_
                                         _lp-tl3421734285_
                                         (cons _lp-hd3421634282_
                                               _body3421834275_))))
                                    (let ((_body3421934288_
                                           (reverse _body3421834275_)))
                                      (let ((_L34292_ _body3421934288_)
                                            (_L34294_ _tl3420834259_)
                                            (_L34295_ _hd3420934256_)
                                            (_L34296_ _hd3420334236_))
                                        (if (gx#identifier? _L34295_)
                                            (___kont4206142062_
                                             _L34292_
                                             _L34294_
                                             _L34295_
                                             _L34296_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3418534225_)))))))))
                      (_loop3421434268_ _target3421134262_ '()))))
                 (___match4208542086_
                  (lambda (_e3419134333_
                           _hd3419034337_
                           _tl3418934340_
                           _e3419434343_
                           _hd3419334347_
                           _tl3419234350_
                           _e3419734353_
                           _hd3419634357_
                           _tl3419534360_)
                    (let ((_L34363_ _hd3419634357_) (_L34365_ _hd3419334347_))
                      (if (gx#identifier? _L34365_)
                          (___kont4205942060_ _L34363_ _L34365_)
                          (if (gx#stx-pair? _hd3419334347_)
                              (let ((_e3421034252_
                                     (gx#syntax-e _hd3419334347_)))
                                (let ((_tl3420834259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3421034252_)))
                                      (_hd3420934256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3421034252_))))
                                  (if (gx#stx-pair/null? _tl3419234350_)
                                      (let ((___splice4206342064_
                                             (gx#syntax-split-splice
                                              _tl3419234350_
                                              '0)))
                                        (let ((_tl3421334265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4206342064_
                                                  '1)))
                                              (_target3421134262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4206342064_
                                                  '0))))
                                          (if (gx#stx-null? _tl3421334265_)
                                              (___match4211142112_
                                               _e3419134333_
                                               _hd3419034337_
                                               _tl3418934340_
                                               _e3419434343_
                                               _hd3419334347_
                                               _tl3419234350_
                                               _e3421034252_
                                               _hd3420934256_
                                               _tl3420834259_
                                               ___splice4206342064_
                                               _target3421134262_
                                               _tl3421334265_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3418534225_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3418534225_)))))
                              (let ()
                                (declare (not safe))
                                (_g3418534225_))))))))
            (if (gx#stx-pair? ___stx4205642057_)
                (let ((_e3419134333_ (gx#syntax-e ___stx4205642057_)))
                  (let ((_tl3418934340_
                         (let () (declare (not safe)) (##cdr _e3419134333_)))
                        (_hd3419034337_
                         (let () (declare (not safe)) (##car _e3419134333_))))
                    (if (gx#stx-pair? _tl3418934340_)
                        (let ((_e3419434343_ (gx#syntax-e _tl3418934340_)))
                          (let ((_tl3419234350_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3419434343_)))
                                (_hd3419334347_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3419434343_))))
                            (if (gx#stx-pair? _tl3419234350_)
                                (let ((_e3419734353_
                                       (gx#syntax-e _tl3419234350_)))
                                  (let ((_tl3419534360_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3419734353_)))
                                        (_hd3419634357_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3419734353_))))
                                    (if (gx#stx-null? _tl3419534360_)
                                        (___match4208542086_
                                         _e3419134333_
                                         _hd3419034337_
                                         _tl3418934340_
                                         _e3419434343_
                                         _hd3419334347_
                                         _tl3419234350_
                                         _e3419734353_
                                         _hd3419634357_
                                         _tl3419534360_)
                                        (if (gx#stx-pair? _hd3419334347_)
                                            (let ((_e3421034252_
                                                   (gx#syntax-e
                                                    _hd3419334347_)))
                                              (let ((_tl3420834259_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3421034252_)))
                                                    (_hd3420934256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3421034252_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3419234350_)
                                                    (let ((___splice4206342064_
                                                           (gx#syntax-split-splice
                                                            _tl3419234350_
                                                            '0)))
                                                      (let ((_tl3421334265_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4206342064_ '1)))
                    (_target3421134262_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4206342064_ '0))))
                (if (gx#stx-null? _tl3421334265_)
                    (___match4211142112_
                     _e3419134333_
                     _hd3419034337_
                     _tl3418934340_
                     _e3419434343_
                     _hd3419334347_
                     _tl3419234350_
                     _e3421034252_
                     _hd3420934256_
                     _tl3420834259_
                     ___splice4206342064_
                     _target3421134262_
                     _tl3421334265_)
                    (let () (declare (not safe)) (_g3418534225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3418534225_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3418534225_))))))
                                (if (gx#stx-pair? _hd3419334347_)
                                    (let ((_e3421034252_
                                           (gx#syntax-e _hd3419334347_)))
                                      (let ((_tl3420834259_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3421034252_)))
                                            (_hd3420934256_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3421034252_))))
                                        (if (gx#stx-pair/null? _tl3419234350_)
                                            (let ((___splice4206342064_
                                                   (gx#syntax-split-splice
                                                    _tl3419234350_
                                                    '0)))
                                              (let ((_tl3421334265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4206342064_
                                                        '1)))
                                                    (_target3421134262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4206342064_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3421334265_)
                                                    (___match4211142112_
                                                     _e3419134333_
                                                     _hd3419034337_
                                                     _tl3418934340_
                                                     _e3419434343_
                                                     _hd3419334347_
                                                     _tl3419234350_
                                                     _e3421034252_
                                                     _hd3420934256_
                                                     _tl3420834259_
                                                     ___splice4206342064_
                                                     _target3421134262_
                                                     _tl3421334265_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3418534225_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3418534225_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3418534225_))))))
                        (let () (declare (not safe)) (_g3418534225_)))))
                (let () (declare (not safe)) (_g3418534225_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34385_)
      (let* ((___stx4211442115_ _$stx34385_)
             (_g3439034430_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4211442115_))))
        (let ((___kont4211742118_
               (lambda (_L34568_ _L34570_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34570_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L34568_ '()))
                                   '())))))
              (___kont4211942120_
               (lambda (_L34497_ _L34499_ _L34500_ _L34501_)
                 (cons _L34501_
                       (cons _L34500_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34499_
                                               (foldr (lambda (_g3452234525_
                                                               _g3452334528_)
                                                        (cons _g3452234525_
                                                              _g3452334528_))
                                                      '()
                                                      _L34497_)))
                                   '()))))))
          (let* ((___match4216942170_
                  (lambda (_e3440934437_
                           _hd3440834441_
                           _tl3440734444_
                           _e3441234447_
                           _hd3441134451_
                           _tl3441034454_
                           _e3441534457_
                           _hd3441434461_
                           _tl3441334464_
                           ___splice4212142122_
                           _target3441634467_
                           _tl3441834470_)
                    (letrec ((_loop3441934473_
                              (lambda (_hd3441734477_ _body3442334480_)
                                (if (gx#stx-pair? _hd3441734477_)
                                    (let ((_e3442034483_
                                           (gx#syntax-e _hd3441734477_)))
                                      (let ((_lp-tl3442234490_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3442034483_)))
                                            (_lp-hd3442134487_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3442034483_))))
                                        (_loop3441934473_
                                         _lp-tl3442234490_
                                         (cons _lp-hd3442134487_
                                               _body3442334480_))))
                                    (let ((_body3442434493_
                                           (reverse _body3442334480_)))
                                      (let ((_L34497_ _body3442434493_)
                                            (_L34499_ _tl3441334464_)
                                            (_L34500_ _hd3441434461_)
                                            (_L34501_ _hd3440834441_))
                                        (if (gx#identifier? _L34500_)
                                            (___kont4211942120_
                                             _L34497_
                                             _L34499_
                                             _L34500_
                                             _L34501_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3439034430_)))))))))
                      (_loop3441934473_ _target3441634467_ '()))))
                 (___match4214342144_
                  (lambda (_e3439634538_
                           _hd3439534542_
                           _tl3439434545_
                           _e3439934548_
                           _hd3439834552_
                           _tl3439734555_
                           _e3440234558_
                           _hd3440134562_
                           _tl3440034565_)
                    (let ((_L34568_ _hd3440134562_) (_L34570_ _hd3439834552_))
                      (if (gx#identifier? _L34570_)
                          (___kont4211742118_ _L34568_ _L34570_)
                          (if (gx#stx-pair? _hd3439834552_)
                              (let ((_e3441534457_
                                     (gx#syntax-e _hd3439834552_)))
                                (let ((_tl3441334464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3441534457_)))
                                      (_hd3441434461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3441534457_))))
                                  (if (gx#stx-pair/null? _tl3439734555_)
                                      (let ((___splice4212142122_
                                             (gx#syntax-split-splice
                                              _tl3439734555_
                                              '0)))
                                        (let ((_tl3441834470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4212142122_
                                                  '1)))
                                              (_target3441634467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4212142122_
                                                  '0))))
                                          (if (gx#stx-null? _tl3441834470_)
                                              (___match4216942170_
                                               _e3439634538_
                                               _hd3439534542_
                                               _tl3439434545_
                                               _e3439934548_
                                               _hd3439834552_
                                               _tl3439734555_
                                               _e3441534457_
                                               _hd3441434461_
                                               _tl3441334464_
                                               ___splice4212142122_
                                               _target3441634467_
                                               _tl3441834470_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3439034430_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3439034430_)))))
                              (let ()
                                (declare (not safe))
                                (_g3439034430_))))))))
            (if (gx#stx-pair? ___stx4211442115_)
                (let ((_e3439634538_ (gx#syntax-e ___stx4211442115_)))
                  (let ((_tl3439434545_
                         (let () (declare (not safe)) (##cdr _e3439634538_)))
                        (_hd3439534542_
                         (let () (declare (not safe)) (##car _e3439634538_))))
                    (if (gx#stx-pair? _tl3439434545_)
                        (let ((_e3439934548_ (gx#syntax-e _tl3439434545_)))
                          (let ((_tl3439734555_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3439934548_)))
                                (_hd3439834552_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3439934548_))))
                            (if (gx#stx-pair? _tl3439734555_)
                                (let ((_e3440234558_
                                       (gx#syntax-e _tl3439734555_)))
                                  (let ((_tl3440034565_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3440234558_)))
                                        (_hd3440134562_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3440234558_))))
                                    (if (gx#stx-null? _tl3440034565_)
                                        (___match4214342144_
                                         _e3439634538_
                                         _hd3439534542_
                                         _tl3439434545_
                                         _e3439934548_
                                         _hd3439834552_
                                         _tl3439734555_
                                         _e3440234558_
                                         _hd3440134562_
                                         _tl3440034565_)
                                        (if (gx#stx-pair? _hd3439834552_)
                                            (let ((_e3441534457_
                                                   (gx#syntax-e
                                                    _hd3439834552_)))
                                              (let ((_tl3441334464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3441534457_)))
                                                    (_hd3441434461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3441534457_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3439734555_)
                                                    (let ((___splice4212142122_
                                                           (gx#syntax-split-splice
                                                            _tl3439734555_
                                                            '0)))
                                                      (let ((_tl3441834470_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4212142122_ '1)))
                    (_target3441634467_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4212142122_ '0))))
                (if (gx#stx-null? _tl3441834470_)
                    (___match4216942170_
                     _e3439634538_
                     _hd3439534542_
                     _tl3439434545_
                     _e3439934548_
                     _hd3439834552_
                     _tl3439734555_
                     _e3441534457_
                     _hd3441434461_
                     _tl3441334464_
                     ___splice4212142122_
                     _target3441634467_
                     _tl3441834470_)
                    (let () (declare (not safe)) (_g3439034430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3439034430_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3439034430_))))))
                                (if (gx#stx-pair? _hd3439834552_)
                                    (let ((_e3441534457_
                                           (gx#syntax-e _hd3439834552_)))
                                      (let ((_tl3441334464_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3441534457_)))
                                            (_hd3441434461_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3441534457_))))
                                        (if (gx#stx-pair/null? _tl3439734555_)
                                            (let ((___splice4212142122_
                                                   (gx#syntax-split-splice
                                                    _tl3439734555_
                                                    '0)))
                                              (let ((_tl3441834470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4212142122_
                                                        '1)))
                                                    (_target3441634467_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4212142122_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3441834470_)
                                                    (___match4216942170_
                                                     _e3439634538_
                                                     _hd3439534542_
                                                     _tl3439434545_
                                                     _e3439934548_
                                                     _hd3439834552_
                                                     _tl3439734555_
                                                     _e3441534457_
                                                     _hd3441434461_
                                                     _tl3441334464_
                                                     ___splice4212142122_
                                                     _target3441634467_
                                                     _tl3441834470_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3439034430_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3439034430_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3439034430_))))))
                        (let () (declare (not safe)) (_g3439034430_)))))
                (let () (declare (not safe)) (_g3439034430_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx34590_)
       (let* ((_g3459334613_
               (lambda (_g3459434609_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3459434609_)))
              (_g3459234684_
               (lambda (_g3459434617_)
                 (if (gx#stx-pair? _g3459434617_)
                     (let ((_e3459834620_ (gx#syntax-e _g3459434617_)))
                       (let ((_hd3459734624_
                              (let ()
                                (declare (not safe))
                                (##car _e3459834620_)))
                             (_tl3459634627_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3459834620_))))
                         (if (gx#stx-pair/null? _tl3459634627_)
                             (let ((_g42605_
                                    (gx#syntax-split-splice
                                     _tl3459634627_
                                     '0)))
                               (begin
                                 (let ((_g42606_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42605_)
                                              (##vector-length _g42605_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42606_ 2)))
                                       (error "Context expects 2 values"
                                              _g42606_)))
                                 (let ((_target3459934630_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42605_ 0)))
                                       (_tl3460134633_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42605_ 1))))
                                   (if (gx#stx-null? _tl3460134633_)
                                       (letrec ((_loop3460234636_
                                                 (lambda (_hd3460034640_
                                                          _body3460634643_)
                                                   (if (gx#stx-pair?
                                                        _hd3460034640_)
                                                       (let ((_e3460334646_
                                                              (gx#syntax-e
                                                               _hd3460034640_)))
                                                         (let ((_lp-hd3460434650_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3460334646_)))
                       (_lp-tl3460534653_
                        (let () (declare (not safe)) (##cdr _e3460334646_))))
                   (_loop3460234636_
                    _lp-tl3460534653_
                    (cons _lp-hd3460434650_ _body3460634643_))))
               (let ((_body3460734656_ (reverse _body3460634643_)))
                 ((lambda (_L34660_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_g3467534678_ _g3467634681_)
                                         (cons _g3467534678_ _g3467634681_))
                                       '()
                                       _L34660_))))
                  _body3460734656_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3460234636_
                                          _target3459934630_
                                          '()))
                                       (_g3459334613_ _g3459434617_)))))
                             (_g3459334613_ _g3459434617_))))
                     (_g3459334613_ _g3459434617_)))))
         (_g3459234684_ _stx34590_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx34689_)
       (let* ((_g3469234712_
               (lambda (_g3469334708_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3469334708_)))
              (_g3469134783_
               (lambda (_g3469334716_)
                 (if (gx#stx-pair? _g3469334716_)
                     (let ((_e3469734719_ (gx#syntax-e _g3469334716_)))
                       (let ((_hd3469634723_
                              (let ()
                                (declare (not safe))
                                (##car _e3469734719_)))
                             (_tl3469534726_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3469734719_))))
                         (if (gx#stx-pair/null? _tl3469534726_)
                             (let ((_g42607_
                                    (gx#syntax-split-splice
                                     _tl3469534726_
                                     '0)))
                               (begin
                                 (let ((_g42608_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42607_)
                                              (##vector-length _g42607_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42608_ 2)))
                                       (error "Context expects 2 values"
                                              _g42608_)))
                                 (let ((_target3469834729_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42607_ 0)))
                                       (_tl3470034732_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42607_ 1))))
                                   (if (gx#stx-null? _tl3470034732_)
                                       (letrec ((_loop3470134735_
                                                 (lambda (_hd3469934739_
                                                          _body3470534742_)
                                                   (if (gx#stx-pair?
                                                        _hd3469934739_)
                                                       (let ((_e3470234745_
                                                              (gx#syntax-e
                                                               _hd3469934739_)))
                                                         (let ((_lp-hd3470334749_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3470234745_)))
                       (_lp-tl3470434752_
                        (let () (declare (not safe)) (##cdr _e3470234745_))))
                   (_loop3470134735_
                    _lp-tl3470434752_
                    (cons _lp-hd3470334749_ _body3470534742_))))
               (let ((_body3470634755_ (reverse _body3470534742_)))
                 ((lambda (_L34759_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_g3477434777_ _g3477534780_)
                                         (cons _g3477434777_ _g3477534780_))
                                       '()
                                       _L34759_))))
                  _body3470634755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3470134735_
                                          _target3469834729_
                                          '()))
                                       (_g3469234712_ _g3469334716_)))))
                             (_g3469234712_ _g3469334716_))))
                     (_g3469234712_ _g3469334716_)))))
         (_g3469134783_ _stx34689_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx34788_)
       (let* ((_g3479134815_
               (lambda (_g3479234811_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3479234811_)))
              (_g3479034937_
               (lambda (_g3479234819_)
                 (if (gx#stx-pair? _g3479234819_)
                     (let ((_e3479734822_ (gx#syntax-e _g3479234819_)))
                       (let ((_hd3479634826_
                              (let ()
                                (declare (not safe))
                                (##car _e3479734822_)))
                             (_tl3479534829_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3479734822_))))
                         (if (gx#stx-pair? _tl3479534829_)
                             (let ((_e3480034832_
                                    (gx#syntax-e _tl3479534829_)))
                               (let ((_hd3479934836_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3480034832_)))
                                     (_tl3479834839_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3480034832_))))
                                 (if (gx#stx-pair/null? _tl3479834839_)
                                     (let ((_g42609_
                                            (gx#syntax-split-splice
                                             _tl3479834839_
                                             '0)))
                                       (begin
                                         (let ((_g42610_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42609_)
                                                      (##vector-length
                                                       _g42609_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42610_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42610_)))
                                         (let ((_target3480134842_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42609_ 0)))
                                               (_tl3480334845_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42609_ 1))))
                                           (if (gx#stx-null? _tl3480334845_)
                                               (letrec ((_loop3480434848_
                                                         (lambda (_hd3480234852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3480834855_)
                   (if (gx#stx-pair? _hd3480234852_)
                       (let ((_e3480534858_ (gx#syntax-e _hd3480234852_)))
                         (let ((_lp-hd3480634862_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3480534858_)))
                               (_lp-tl3480734865_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3480534858_))))
                           (_loop3480434848_
                            _lp-tl3480734865_
                            (cons _lp-hd3480634862_ _id3480834855_))))
                       (let ((_id3480934868_ (reverse _id3480834855_)))
                         ((lambda (_L34872_ _L34874_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3489134894_ _g3489234897_)
                                          (cons _g3489134894_ _g3489234897_))
                                        '()
                                        _L34872_))
                                (let* ((_keys34908_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3489934902_
                                                         _g3490034905_)
                                                  (cons _g3489934902_
                                                        _g3490034905_))
                                                '()
                                                _L34872_)))
                                       (_keytab34919_
                                        (let ((_ht34911_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3491334915_)
                                             (hash-put!
                                              _ht34911_
                                              _g3491334915_
                                              '#t))
                                           _keys34908_)
                                          _ht34911_))
                                       (_imports34922_
                                        (gx#core-expand-import-source
                                         _L34874_))
                                       (_fold-e34932_
                                        (letrec ((_fold-e34925_
                                                  (lambda (_in34928_ _r34930_)
                                                    (if (gx#module-import?
                                                         _in34928_)
                                                        (if (hash-get
                                                             _keytab34919_
                                                             (gx#module-import-name
                                                              _in34928_))
                                                            (cons _in34928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r34930_)
                    _r34930_)
                (if (gx#import-set? _in34928_)
                    (foldl _fold-e34925_
                           _r34930_
                           (gx#import-set-imports _in34928_))
                    _r34930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e34925_)))
                                  (cons 'begin:
                                        (foldl _fold-e34932_
                                               '()
                                               _imports34922_)))
                                (_g3479134815_ _g3479234819_)))
                          _id3480934868_
                          _hd3479934836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3480434848_
                                                  _target3480134842_
                                                  '()))
                                               (_g3479134815_
                                                _g3479234819_)))))
                                     (_g3479134815_ _g3479234819_))))
                             (_g3479134815_ _g3479234819_))))
                     (_g3479134815_ _g3479234819_)))))
         (_g3479034937_ _stx34788_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx34942_)
       (let* ((_g3494534969_
               (lambda (_g3494634965_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3494634965_)))
              (_g3494435091_
               (lambda (_g3494634973_)
                 (if (gx#stx-pair? _g3494634973_)
                     (let ((_e3495134976_ (gx#syntax-e _g3494634973_)))
                       (let ((_hd3495034980_
                              (let ()
                                (declare (not safe))
                                (##car _e3495134976_)))
                             (_tl3494934983_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3495134976_))))
                         (if (gx#stx-pair? _tl3494934983_)
                             (let ((_e3495434986_
                                    (gx#syntax-e _tl3494934983_)))
                               (let ((_hd3495334990_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3495434986_)))
                                     (_tl3495234993_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3495434986_))))
                                 (if (gx#stx-pair/null? _tl3495234993_)
                                     (let ((_g42611_
                                            (gx#syntax-split-splice
                                             _tl3495234993_
                                             '0)))
                                       (begin
                                         (let ((_g42612_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42611_)
                                                      (##vector-length
                                                       _g42611_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42612_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42612_)))
                                         (let ((_target3495534996_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42611_ 0)))
                                               (_tl3495734999_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42611_ 1))))
                                           (if (gx#stx-null? _tl3495734999_)
                                               (letrec ((_loop3495835002_
                                                         (lambda (_hd3495635006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3496235009_)
                   (if (gx#stx-pair? _hd3495635006_)
                       (let ((_e3495935012_ (gx#syntax-e _hd3495635006_)))
                         (let ((_lp-hd3496035016_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3495935012_)))
                               (_lp-tl3496135019_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3495935012_))))
                           (_loop3495835002_
                            _lp-tl3496135019_
                            (cons _lp-hd3496035016_ _id3496235009_))))
                       (let ((_id3496335022_ (reverse _id3496235009_)))
                         ((lambda (_L35026_ _L35028_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3504535048_ _g3504635051_)
                                          (cons _g3504535048_ _g3504635051_))
                                        '()
                                        _L35026_))
                                (let* ((_keys35062_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3505335056_
                                                         _g3505435059_)
                                                  (cons _g3505335056_
                                                        _g3505435059_))
                                                '()
                                                _L35026_)))
                                       (_keytab35073_
                                        (let ((_ht35065_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3506735069_)
                                             (hash-put!
                                              _ht35065_
                                              _g3506735069_
                                              '#t))
                                           _keys35062_)
                                          _ht35065_))
                                       (_imports35076_
                                        (gx#core-expand-import-source
                                         _L35028_))
                                       (_fold-e35086_
                                        (letrec ((_fold-e35079_
                                                  (lambda (_in35082_ _r35084_)
                                                    (if (gx#module-import?
                                                         _in35082_)
                                                        (if (hash-get
                                                             _keytab35073_
                                                             (gx#module-import-name
                                                              _in35082_))
                                                            _r35084_
                                                            (cons _in35082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35084_))
                (if (gx#import-set? _in35082_)
                    (foldl _fold-e35079_
                           _r35084_
                           (gx#import-set-imports _in35082_))
                    (cons _in35082_ _r35084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35079_)))
                                  (cons 'begin:
                                        (foldl _fold-e35086_
                                               '()
                                               _imports35076_)))
                                (_g3494534969_ _g3494634973_)))
                          _id3496335022_
                          _hd3495334990_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3495835002_
                                                  _target3495534996_
                                                  '()))
                                               (_g3494534969_
                                                _g3494634973_)))))
                                     (_g3494534969_ _g3494634973_))))
                             (_g3494534969_ _g3494634973_))))
                     (_g3494534969_ _g3494634973_)))))
         (_g3494435091_ _stx34942_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35143_ _rename35145_)
      (gx#make-module-import
       (gx#module-import-source _in35143_)
       _rename35145_
       (gx#module-import-phi _in35143_)
       (gx#module-import-weak? _in35143_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35096_ _pre35098_)
      (let* ((_name3509935107_ _name35096_)
             (_else3510135119_
              (lambda () (make-symbol _pre35098_ _name35096_)))
             (_K3510335127_
              (lambda (_mark35123_ _id35125_)
                (cons (make-symbol _pre35098_ _id35125_) _mark35123_))))
        (if (let () (declare (not safe)) (##pair? _name3509935107_))
            (let ((_hd3510435131_
                   (let () (declare (not safe)) (##car _name3509935107_)))
                  (_tl3510535134_
                   (let () (declare (not safe)) (##cdr _name3509935107_))))
              (let* ((_id35137_ _hd3510435131_) (_mark35140_ _tl3510535134_))
                (declare (not safe))
                (_K3510335127_ _mark35140_ _id35137_)))
            (let () (declare (not safe)) (_else3510135119_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35147_)
       (let* ((_g3515035183_
               (lambda (_g3515135179_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3515135179_)))
              (_g3514935369_
               (lambda (_g3515135187_)
                 (if (gx#stx-pair? _g3515135187_)
                     (let ((_e3515735190_ (gx#syntax-e _g3515135187_)))
                       (let ((_hd3515635194_
                              (let ()
                                (declare (not safe))
                                (##car _e3515735190_)))
                             (_tl3515535197_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3515735190_))))
                         (if (gx#stx-pair? _tl3515535197_)
                             (let ((_e3516035200_
                                    (gx#syntax-e _tl3515535197_)))
                               (let ((_hd3515935204_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3516035200_)))
                                     (_tl3515835207_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3516035200_))))
                                 (if (gx#stx-pair/null? _tl3515835207_)
                                     (let ((_g42613_
                                            (gx#syntax-split-splice
                                             _tl3515835207_
                                             '0)))
                                       (begin
                                         (let ((_g42614_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42613_)
                                                      (##vector-length
                                                       _g42613_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42614_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42614_)))
                                         (let ((_target3516135210_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42613_ 0)))
                                               (_tl3516335213_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42613_ 1))))
                                           (if (gx#stx-null? _tl3516335213_)
                                               (letrec ((_loop3516435216_
                                                         (lambda (_hd3516235220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3516835223_
                          _id3516935225_)
                   (if (gx#stx-pair? _hd3516235220_)
                       (let ((_e3516535228_ (gx#syntax-e _hd3516235220_)))
                         (let ((_lp-hd3516635232_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3516535228_)))
                               (_lp-tl3516735235_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3516535228_))))
                           (if (gx#stx-pair? _lp-hd3516635232_)
                               (let ((_e3517435238_
                                      (gx#syntax-e _lp-hd3516635232_)))
                                 (let ((_hd3517335242_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3517435238_)))
                                       (_tl3517235245_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3517435238_))))
                                   (if (gx#stx-pair? _tl3517235245_)
                                       (let ((_e3517735248_
                                              (gx#syntax-e _tl3517235245_)))
                                         (let ((_hd3517635252_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3517735248_)))
                                               (_tl3517535255_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3517735248_))))
                                           (if (gx#stx-null? _tl3517535255_)
                                               (_loop3516435216_
                                                _lp-tl3516735235_
                                                (cons _hd3517635252_
                                                      _new-id3516835223_)
                                                (cons _hd3517335242_
                                                      _id3516935225_))
                                               (_g3515035183_ _g3515135187_))))
                                       (_g3515035183_ _g3515135187_))))
                               (_g3515035183_ _g3515135187_))))
                       (let ((_new-id3517035258_ (reverse _new-id3516835223_))
                             (_id3517135261_ (reverse _id3516935225_)))
                         ((lambda (_L35264_ _L35266_ _L35267_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3528535288_
                                                      _g3528635291_)
                                               (cons _g3528535288_
                                                     _g3528635291_))
                                             '()
                                             _L35266_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3529335296_
                                                      _g3529435299_)
                                               (cons _g3529335296_
                                                     _g3529435299_))
                                             '()
                                             _L35264_)))
                                (let* ((_keytab35302_ (make-hash-table))
                                       (_found35305_ (make-hash-table))
                                       (_g42615_
                                        (for-each
                                         (lambda (_id35308_ _new-id35310_)
                                           (hash-put!
                                            _keytab35302_
                                            (gx#core-identifier-key _id35308_)
                                            (gx#core-identifier-key
                                             _new-id35310_)))
                                         (foldr (lambda (_g3531135314_
                                                         _g3531235317_)
                                                  (cons _g3531135314_
                                                        _g3531235317_))
                                                '()
                                                _L35266_)
                                         (foldr (lambda (_g3531935322_
                                                         _g3532035325_)
                                                  (cons _g3531935322_
                                                        _g3532035325_))
                                                '()
                                                _L35264_)))
                                       (_imports35330_
                                        (gx#core-expand-import-source
                                         _L35267_))
                                       (_fold-e35350_
                                        (letrec ((_fold-e35333_
                                                  (lambda (_in35336_ _r35338_)
                                                    (if (gx#module-import?
                                                         _in35336_)
                                                        (let* ((_name35340_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35336_))
                       (_$e35343_ (hash-get _keytab35302_ _name35340_)))
                  (if _$e35343_
                      ((lambda (_rename35347_)
                         (hash-put! _found35305_ _name35340_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                  _in35336_
                                  _rename35347_))
                               _r35338_))
                       _$e35343_)
                      (cons _in35336_ _r35338_)))
                (if (gx#import-set? _in35336_)
                    (foldl _fold-e35333_
                           _r35338_
                           (gx#import-set-imports _in35336_))
                    (cons _in35336_ _r35338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35333_))
                                       (_new-imports35353_
                                        (foldl _fold-e35350_
                                               '()
                                               _imports35330_)))
                                  (for-each
                                   (lambda (_id35358_)
                                     (if (hash-get
                                          _found35305_
                                          (gx#core-identifier-key _id35358_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the import set"
                                          _stx35147_
                                          _id35358_)))
                                   (foldr (lambda (_g3536035363_ _g3536135366_)
                                            (cons _g3536035363_ _g3536135366_))
                                          '()
                                          _L35266_))
                                  (cons 'begin: _new-imports35353_))
                                (_g3515035183_ _g3515135187_)))
                          _new-id3517035258_
                          _id3517135261_
                          _hd3515935204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3516435216_
                                                  _target3516135210_
                                                  '()
                                                  '()))
                                               (_g3515035183_
                                                _g3515135187_)))))
                                     (_g3515035183_ _g3515135187_))))
                             (_g3515035183_ _g3515135187_))))
                     (_g3515035183_ _g3515135187_)))))
         (_g3514935369_ _stx35147_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35375_)
       (let* ((_g3537835396_
               (lambda (_g3537935392_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3537935392_)))
              (_g3537735475_
               (lambda (_g3537935400_)
                 (if (gx#stx-pair? _g3537935400_)
                     (let ((_e3538435403_ (gx#syntax-e _g3537935400_)))
                       (let ((_hd3538335407_
                              (let ()
                                (declare (not safe))
                                (##car _e3538435403_)))
                             (_tl3538235410_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3538435403_))))
                         (if (gx#stx-pair? _tl3538235410_)
                             (let ((_e3538735413_
                                    (gx#syntax-e _tl3538235410_)))
                               (let ((_hd3538635417_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3538735413_)))
                                     (_tl3538535420_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3538735413_))))
                                 (if (gx#stx-pair? _tl3538535420_)
                                     (let ((_e3539035423_
                                            (gx#syntax-e _tl3538535420_)))
                                       (let ((_hd3538935427_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3539035423_)))
                                             (_tl3538835430_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3539035423_))))
                                         (if (gx#stx-null? _tl3538835430_)
                                             ((lambda (_L35433_ _L35435_)
                                                (if (gx#identifier? _L35433_)
                                                    (let* ((_pre35451_
                                                            (gx#stx-e
                                                             _L35433_))
                                                           (_imports35454_
                                                            (gx#core-expand-import-source
                                                             _L35435_))
                                                           (_rename-e35460_
                                                            (lambda (_name35457_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name35457_
                         _pre35451_))))
                   (_fold-e35470_
                    (letrec ((_fold-e35463_
                              (lambda (_in35466_ _r35468_)
                                (if (gx#module-import? _in35466_)
                                    (cons (let ((__tmp42616
                                                 (_rename-e35460_
                                                  (gx#module-import-name
                                                   _in35466_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                             _in35466_
                                             __tmp42616))
                                          _r35468_)
                                    (if (gx#import-set? _in35466_)
                                        (foldl _fold-e35463_
                                               _r35468_
                                               (gx#import-set-imports
                                                _in35466_))
                                        (cons _in35466_ _r35468_))))))
                      _fold-e35463_)))
              (cons 'begin: (foldl _fold-e35470_ '() _imports35454_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3537835396_
                                                     _g3537935400_)))
                                              _hd3538935427_
                                              _hd3538635417_)
                                             (_g3537835396_ _g3537935400_))))
                                     (_g3537835396_ _g3537935400_))))
                             (_g3537835396_ _g3537935400_))))
                     (_g3537835396_ _g3537935400_)))))
         (_g3537735475_ _stx35375_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx35479_)
       (letrec ((_flatten35482_
                 (lambda (_list-of-lists35737_)
                   (foldr (lambda (_v35740_ _acc35742_)
                            (if (null? _v35740_)
                                _acc35742_
                                (if (pair? _v35740_)
                                    (append (_flatten35482_ _v35740_)
                                            _acc35742_)
                                    (cons _v35740_ _acc35742_))))
                          '()
                          _list-of-lists35737_)))
                (_expand-path35484_
                 (lambda (_top35605_ _mod35607_)
                   (let* ((___stx4217242173_ _mod35607_)
                          (_g3561035632_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4217242173_))))
                     (let ((___kont4217542176_
                            (lambda (_L35700_ _L35702_)
                              (map (lambda (_mod35717_)
                                     (gx#stx-identifier
                                      _top35605_
                                      _top35605_
                                      '"/"
                                      _mod35717_))
                                   (_flatten35482_
                                    (map (lambda (_g3571935721_)
                                           (_expand-path35484_
                                            _L35702_
                                            _g3571935721_))
                                         (foldr (lambda (_g3572435727_
                                                         _g3572535730_)
                                                  (cons _g3572435727_
                                                        _g3572535730_))
                                                '()
                                                _L35700_))))))
                           (___kont4217942180_
                            (lambda (_L35639_)
                              (gx#stx-identifier
                               _top35605_
                               _top35605_
                               '"/"
                               _L35639_))))
                       (let* ((_g3560935653_
                               (lambda ()
                                 (let ((_L35639_ ___stx4217242173_))
                                   (if (or (gx#identifier? _L35639_)
                                           (gx#stx-fixnum? _L35639_))
                                       (___kont4217942180_ _L35639_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3561035632_))))))
                              (___match4219542196_
                               (lambda (_e3561635660_
                                        _hd3561535664_
                                        _tl3561435667_
                                        ___splice4217742178_
                                        _target3561735670_
                                        _tl3561935673_)
                                 (letrec ((_loop3562035676_
                                           (lambda (_hd3561835680_
                                                    _mod3562435683_)
                                             (if (gx#stx-pair? _hd3561835680_)
                                                 (let ((_e3562135686_
                                                        (gx#syntax-e
                                                         _hd3561835680_)))
                                                   (let ((_lp-tl3562335693_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3562135686_)))
                                                         (_lp-hd3562235690_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3562135686_))))
                                                     (_loop3562035676_
                                                      _lp-tl3562335693_
                                                      (cons _lp-hd3562235690_
                                                            _mod3562435683_))))
                                                 (let ((_mod3562535696_
                                                        (reverse _mod3562435683_)))
                                                   (___kont4217542176_
                                                    _mod3562535696_
                                                    _hd3561535664_))))))
                                   (_loop3562035676_
                                    _target3561735670_
                                    '())))))
                         (if (gx#stx-pair? ___stx4217242173_)
                             (let ((_e3561635660_
                                    (gx#syntax-e ___stx4217242173_)))
                               (let ((_tl3561435667_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3561635660_)))
                                     (_hd3561535664_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3561635660_))))
                                 (if (gx#stx-pair/null? _tl3561435667_)
                                     (let ((___splice4217742178_
                                            (gx#syntax-split-splice
                                             _tl3561435667_
                                             '0)))
                                       (let ((_tl3561935673_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4217742178_
                                                 '1)))
                                             (_target3561735670_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4217742178_
                                                 '0))))
                                         (if (gx#stx-null? _tl3561935673_)
                                             (___match4219542196_
                                              _e3561635660_
                                              _hd3561535664_
                                              _tl3561435667_
                                              ___splice4217742178_
                                              _target3561735670_
                                              _tl3561935673_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3560935653_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3560935653_)))))
                             (let ()
                               (declare (not safe))
                               (_g3560935653_)))))))))
         (let* ((_g3548635510_
                 (lambda (_g3548735506_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3548735506_)))
                (_g3548535601_
                 (lambda (_g3548735514_)
                   (if (gx#stx-pair? _g3548735514_)
                       (let ((_e3549235517_ (gx#syntax-e _g3548735514_)))
                         (let ((_hd3549135521_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3549235517_)))
                               (_tl3549035524_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3549235517_))))
                           (if (gx#stx-pair? _tl3549035524_)
                               (let ((_e3549535527_
                                      (gx#syntax-e _tl3549035524_)))
                                 (let ((_hd3549435531_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3549535527_)))
                                       (_tl3549335534_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3549535527_))))
                                   (if (gx#stx-pair/null? _tl3549335534_)
                                       (let ((_g42617_
                                              (gx#syntax-split-splice
                                               _tl3549335534_
                                               '0)))
                                         (begin
                                           (let ((_g42618_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g42617_)
                                                        (##vector-length
                                                         _g42617_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g42618_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g42618_)))
                                           (let ((_target3549635537_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g42617_ 0)))
                                                 (_tl3549835540_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g42617_
                                                     1))))
                                             (if (gx#stx-null? _tl3549835540_)
                                                 (letrec ((_loop3549935543_
                                                           (lambda (_hd3549735547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3550335550_)
                     (if (gx#stx-pair? _hd3549735547_)
                         (let ((_e3550035553_ (gx#syntax-e _hd3549735547_)))
                           (let ((_lp-hd3550135557_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3550035553_)))
                                 (_lp-tl3550235560_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3550035553_))))
                             (_loop3549935543_
                              _lp-tl3550235560_
                              (cons _lp-hd3550135557_ _mod3550335550_))))
                         (let ((_mod3550435563_ (reverse _mod3550335550_)))
                           ((lambda (_L35567_ _L35569_)
                              (cons 'begin:
                                    (_flatten35482_
                                     (map (lambda (_g3558735589_)
                                            (_expand-path35484_
                                             _L35569_
                                             _g3558735589_))
                                          (foldr (lambda (_g3559235595_
                                                          _g3559335598_)
                                                   (cons _g3559235595_
                                                         _g3559335598_))
                                                 '()
                                                 _L35567_)))))
                            _mod3550435563_
                            _hd3549435531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3549935543_
                                                    _target3549635537_
                                                    '()))
                                                 (_g3548635510_
                                                  _g3548735514_)))))
                                       (_g3548635510_ _g3548735514_))))
                               (_g3548635510_ _g3548735514_))))
                       (_g3548635510_ _g3548735514_)))))
           (_g3548535601_ _stx35479_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx35746_)
       (let* ((_g3574935773_
               (lambda (_g3575035769_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3575035769_)))
              (_g3574835895_
               (lambda (_g3575035777_)
                 (if (gx#stx-pair? _g3575035777_)
                     (let ((_e3575535780_ (gx#syntax-e _g3575035777_)))
                       (let ((_hd3575435784_
                              (let ()
                                (declare (not safe))
                                (##car _e3575535780_)))
                             (_tl3575335787_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3575535780_))))
                         (if (gx#stx-pair? _tl3575335787_)
                             (let ((_e3575835790_
                                    (gx#syntax-e _tl3575335787_)))
                               (let ((_hd3575735794_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3575835790_)))
                                     (_tl3575635797_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3575835790_))))
                                 (if (gx#stx-pair/null? _tl3575635797_)
                                     (let ((_g42619_
                                            (gx#syntax-split-splice
                                             _tl3575635797_
                                             '0)))
                                       (begin
                                         (let ((_g42620_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42619_)
                                                      (##vector-length
                                                       _g42619_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42620_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42620_)))
                                         (let ((_target3575935800_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42619_ 0)))
                                               (_tl3576135803_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42619_ 1))))
                                           (if (gx#stx-null? _tl3576135803_)
                                               (letrec ((_loop3576235806_
                                                         (lambda (_hd3576035810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3576635813_)
                   (if (gx#stx-pair? _hd3576035810_)
                       (let ((_e3576335816_ (gx#syntax-e _hd3576035810_)))
                         (let ((_lp-hd3576435820_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3576335816_)))
                               (_lp-tl3576535823_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3576335816_))))
                           (_loop3576235806_
                            _lp-tl3576535823_
                            (cons _lp-hd3576435820_ _id3576635813_))))
                       (let ((_id3576735826_ (reverse _id3576635813_)))
                         ((lambda (_L35830_ _L35832_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3584935852_ _g3585035855_)
                                          (cons _g3584935852_ _g3585035855_))
                                        '()
                                        _L35830_))
                                (let* ((_keys35866_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3585735860_
                                                         _g3585835863_)
                                                  (cons _g3585735860_
                                                        _g3585835863_))
                                                '()
                                                _L35830_)))
                                       (_keytab35877_
                                        (let ((_ht35869_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3587135873_)
                                             (hash-put!
                                              _ht35869_
                                              _g3587135873_
                                              '#t))
                                           _keys35866_)
                                          _ht35869_))
                                       (_exports35880_
                                        (gx#core-expand-export-source
                                         _L35832_))
                                       (_fold-e35890_
                                        (letrec ((_fold-e35883_
                                                  (lambda (_out35886_ _r35888_)
                                                    (if (gx#module-export?
                                                         _out35886_)
                                                        (if (hash-get
                                                             _keytab35877_
                                                             (gx#module-export-name
                                                              _out35886_))
                                                            _r35888_
                                                            (cons _out35886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35888_))
                (if (gx#export-set? _out35886_)
                    (foldl _fold-e35883_
                           _r35888_
                           (gx#export-set-exports _out35886_))
                    _r35888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35883_)))
                                  (cons 'begin:
                                        (foldl _fold-e35890_
                                               '()
                                               _exports35880_)))
                                (_g3574935773_ _g3575035777_)))
                          _id3576735826_
                          _hd3575735794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3576235806_
                                                  _target3575935800_
                                                  '()))
                                               (_g3574935773_
                                                _g3575035777_)))))
                                     (_g3574935773_ _g3575035777_))))
                             (_g3574935773_ _g3575035777_))))
                     (_g3574935773_ _g3575035777_)))))
         (_g3574835895_ _stx35746_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out35900_ _rename35902_)
      (gx#make-module-export
       (gx#module-export-context _out35900_)
       (gx#module-export-key _out35900_)
       (gx#module-export-phi _out35900_)
       _rename35902_
       (gx#module-export-weak? _out35900_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx35904_)
       (let* ((_g3590735940_
               (lambda (_g3590835936_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3590835936_)))
              (_g3590636126_
               (lambda (_g3590835944_)
                 (if (gx#stx-pair? _g3590835944_)
                     (let ((_e3591435947_ (gx#syntax-e _g3590835944_)))
                       (let ((_hd3591335951_
                              (let ()
                                (declare (not safe))
                                (##car _e3591435947_)))
                             (_tl3591235954_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3591435947_))))
                         (if (gx#stx-pair? _tl3591235954_)
                             (let ((_e3591735957_
                                    (gx#syntax-e _tl3591235954_)))
                               (let ((_hd3591635961_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3591735957_)))
                                     (_tl3591535964_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3591735957_))))
                                 (if (gx#stx-pair/null? _tl3591535964_)
                                     (let ((_g42621_
                                            (gx#syntax-split-splice
                                             _tl3591535964_
                                             '0)))
                                       (begin
                                         (let ((_g42622_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42621_)
                                                      (##vector-length
                                                       _g42621_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42622_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42622_)))
                                         (let ((_target3591835967_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42621_ 0)))
                                               (_tl3592035970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42621_ 1))))
                                           (if (gx#stx-null? _tl3592035970_)
                                               (letrec ((_loop3592135973_
                                                         (lambda (_hd3591935977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3592535980_
                          _id3592635982_)
                   (if (gx#stx-pair? _hd3591935977_)
                       (let ((_e3592235985_ (gx#syntax-e _hd3591935977_)))
                         (let ((_lp-hd3592335989_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3592235985_)))
                               (_lp-tl3592435992_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3592235985_))))
                           (if (gx#stx-pair? _lp-hd3592335989_)
                               (let ((_e3593135995_
                                      (gx#syntax-e _lp-hd3592335989_)))
                                 (let ((_hd3593035999_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3593135995_)))
                                       (_tl3592936002_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3593135995_))))
                                   (if (gx#stx-pair? _tl3592936002_)
                                       (let ((_e3593436005_
                                              (gx#syntax-e _tl3592936002_)))
                                         (let ((_hd3593336009_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3593436005_)))
                                               (_tl3593236012_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3593436005_))))
                                           (if (gx#stx-null? _tl3593236012_)
                                               (_loop3592135973_
                                                _lp-tl3592435992_
                                                (cons _hd3593336009_
                                                      _new-id3592535980_)
                                                (cons _hd3593035999_
                                                      _id3592635982_))
                                               (_g3590735940_ _g3590835944_))))
                                       (_g3590735940_ _g3590835944_))))
                               (_g3590735940_ _g3590835944_))))
                       (let ((_new-id3592736015_ (reverse _new-id3592535980_))
                             (_id3592836018_ (reverse _id3592635982_)))
                         ((lambda (_L36021_ _L36023_ _L36024_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3604236045_
                                                      _g3604336048_)
                                               (cons _g3604236045_
                                                     _g3604336048_))
                                             '()
                                             _L36023_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3605036053_
                                                      _g3605136056_)
                                               (cons _g3605036053_
                                                     _g3605136056_))
                                             '()
                                             _L36021_)))
                                (let* ((_keytab36059_ (make-hash-table))
                                       (_found36062_ (make-hash-table))
                                       (_g42623_
                                        (for-each
                                         (lambda (_id36065_ _new-id36067_)
                                           (hash-put!
                                            _keytab36059_
                                            (gx#core-identifier-key _id36065_)
                                            (gx#core-identifier-key
                                             _new-id36067_)))
                                         (foldr (lambda (_g3606836071_
                                                         _g3606936074_)
                                                  (cons _g3606836071_
                                                        _g3606936074_))
                                                '()
                                                _L36023_)
                                         (foldr (lambda (_g3607636079_
                                                         _g3607736082_)
                                                  (cons _g3607636079_
                                                        _g3607736082_))
                                                '()
                                                _L36021_)))
                                       (_exports36087_
                                        (gx#core-expand-export-source
                                         _L36024_))
                                       (_fold-e36107_
                                        (letrec ((_fold-e36090_
                                                  (lambda (_out36093_ _r36095_)
                                                    (if (gx#module-export?
                                                         _out36093_)
                                                        (let* ((_name36097_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36093_))
                       (_$e36100_ (hash-get _keytab36059_ _name36097_)))
                  (if _$e36100_
                      ((lambda (_rename36104_)
                         (hash-put! _found36062_ _name36097_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                  _out36093_
                                  _rename36104_))
                               _r36095_))
                       _$e36100_)
                      (cons _out36093_ _r36095_)))
                (if (gx#export-set? _out36093_)
                    (foldl _fold-e36090_
                           _r36095_
                           (gx#export-set-exports _out36093_))
                    (cons _out36093_ _r36095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36090_))
                                       (_new-exports36110_
                                        (foldl _fold-e36107_
                                               '()
                                               _exports36087_)))
                                  (for-each
                                   (lambda (_id36115_)
                                     (if (hash-get
                                          _found36062_
                                          (gx#core-identifier-key _id36115_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the export set"
                                          _stx35904_
                                          _id36115_)))
                                   (foldr (lambda (_g3611736120_ _g3611836123_)
                                            (cons _g3611736120_ _g3611836123_))
                                          '()
                                          _L36023_))
                                  (cons 'begin: _new-exports36110_))
                                (_g3590735940_ _g3590835944_)))
                          _new-id3592736015_
                          _id3592836018_
                          _hd3591635961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3592135973_
                                                  _target3591835967_
                                                  '()
                                                  '()))
                                               (_g3590735940_
                                                _g3590835944_)))))
                                     (_g3590735940_ _g3590835944_))))
                             (_g3590735940_ _g3590835944_))))
                     (_g3590735940_ _g3590835944_)))))
         (_g3590636126_ _stx35904_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36132_)
       (let* ((_g3613536153_
               (lambda (_g3613636149_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3613636149_)))
              (_g3613436232_
               (lambda (_g3613636157_)
                 (if (gx#stx-pair? _g3613636157_)
                     (let ((_e3614136160_ (gx#syntax-e _g3613636157_)))
                       (let ((_hd3614036164_
                              (let ()
                                (declare (not safe))
                                (##car _e3614136160_)))
                             (_tl3613936167_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3614136160_))))
                         (if (gx#stx-pair? _tl3613936167_)
                             (let ((_e3614436170_
                                    (gx#syntax-e _tl3613936167_)))
                               (let ((_hd3614336174_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3614436170_)))
                                     (_tl3614236177_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3614436170_))))
                                 (if (gx#stx-pair? _tl3614236177_)
                                     (let ((_e3614736180_
                                            (gx#syntax-e _tl3614236177_)))
                                       (let ((_hd3614636184_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3614736180_)))
                                             (_tl3614536187_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3614736180_))))
                                         (if (gx#stx-null? _tl3614536187_)
                                             ((lambda (_L36190_ _L36192_)
                                                (if (gx#identifier? _L36190_)
                                                    (let* ((_pre36208_
                                                            (gx#stx-e
                                                             _L36190_))
                                                           (_exports36211_
                                                            (gx#core-expand-export-source
                                                             _L36192_))
                                                           (_rename-e36217_
                                                            (lambda (_name36214_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36214_
                         _pre36208_))))
                   (_fold-e36227_
                    (letrec ((_fold-e36220_
                              (lambda (_out36223_ _r36225_)
                                (if (gx#module-export? _out36223_)
                                    (cons (let ((__tmp42624
                                                 (_rename-e36217_
                                                  (gx#module-export-name
                                                   _out36223_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                             _out36223_
                                             __tmp42624))
                                          _r36225_)
                                    (if (gx#export-set? _out36223_)
                                        (foldl _fold-e36220_
                                               _r36225_
                                               (gx#export-set-exports
                                                _out36223_))
                                        (cons _out36223_ _r36225_))))))
                      _fold-e36220_)))
              (cons 'begin: (foldl _fold-e36227_ '() _exports36211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3613536153_
                                                     _g3613636157_)))
                                              _hd3614636184_
                                              _hd3614336174_)
                                             (_g3613536153_ _g3613636157_))))
                                     (_g3613536153_ _g3613636157_))))
                             (_g3613536153_ _g3613636157_))))
                     (_g3613536153_ _g3613636157_)))))
         (_g3613436232_ _stx36132_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36236_)
       (let* ((_g3623936259_
               (lambda (_g3624036255_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3624036255_)))
              (_g3623836494_
               (lambda (_g3624036263_)
                 (if (gx#stx-pair? _g3624036263_)
                     (let ((_e3624436266_ (gx#syntax-e _g3624036263_)))
                       (let ((_hd3624336270_
                              (let ()
                                (declare (not safe))
                                (##car _e3624436266_)))
                             (_tl3624236273_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3624436266_))))
                         (if (gx#stx-pair/null? _tl3624236273_)
                             (let ((_g42625_
                                    (gx#syntax-split-splice
                                     _tl3624236273_
                                     '0)))
                               (begin
                                 (let ((_g42626_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42625_)
                                              (##vector-length _g42625_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42626_ 2)))
                                       (error "Context expects 2 values"
                                              _g42626_)))
                                 (let ((_target3624536276_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42625_ 0)))
                                       (_tl3624736279_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42625_ 1))))
                                   (if (gx#stx-null? _tl3624736279_)
                                       (letrec ((_loop3624836282_
                                                 (lambda (_hd3624636286_
                                                          _id3625236289_)
                                                   (if (gx#stx-pair?
                                                        _hd3624636286_)
                                                       (let ((_e3624936292_
                                                              (gx#syntax-e
                                                               _hd3624636286_)))
                                                         (let ((_lp-hd3625036296_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3624936292_)))
                       (_lp-tl3625136299_
                        (let () (declare (not safe)) (##cdr _e3624936292_))))
                   (_loop3624836282_
                    _lp-tl3625136299_
                    (cons _lp-hd3625036296_ _id3625236289_))))
               (let ((_id3625336302_ (reverse _id3625236289_)))
                 ((lambda (_L36306_)
                    (let _lp36322_ ((_rest36325_
                                     (foldr (lambda (_g3648536488_
                                                     _g3648636491_)
                                              (cons _g3648536488_
                                                    _g3648636491_))
                                            '()
                                            _L36306_))
                                    (_ids36327_ '()))
                      (let* ((___stx4219842199_ _rest36325_)
                             (_g3633036342_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4219842199_))))
                        (let ((___kont4220142202_
                               (lambda (_L36370_ _L36372_)
                                 (let ((_info36387_
                                        (gx#syntax-local-value
                                         _L36372_
                                         false)))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                          _info36387_))
                                       (let* ((_g3638936406_
                                               (slot-ref
                                                _info36387_
                                                'expander-identifiers))
                                              (_E3639136412_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g3638936406_)))
                                              (_K3639236424_
                                               (lambda (_setf36416_
                                                        _getf36418_
                                                        _type?36419_
                                                        _make-type36420_
                                                        _type::t36421_
                                                        _super36422_)
                                                 (_lp36322_
                                                  _L36370_
                                                  (cons _L36372_
                                                        (cons _type::t36421_
                                                              (cons _make-type36420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _type?36419_
                                  (foldr cons
                                         (foldr cons _ids36327_ _setf36416_)
                                         _getf36418_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _g3638936406_))
                                             (let ((_hd3639336428_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _g3638936406_)))
                                                   (_tl3639436431_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _g3638936406_))))
                                               (let ((_super36434_
                                                      _hd3639336428_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _tl3639436431_))
                                                     (let ((_hd3639536437_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _tl3639436431_)))
                                                           (_tl3639636440_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _tl3639436431_))))
                                                       (let ((_type::t36443_
                                                              _hd3639536437_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##pair? _tl3639636440_))
                     (let ((_hd3639736446_
                            (let ()
                              (declare (not safe))
                              (##car _tl3639636440_)))
                           (_tl3639836449_
                            (let ()
                              (declare (not safe))
                              (##cdr _tl3639636440_))))
                       (let ((_make-type36452_ _hd3639736446_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _tl3639836449_))
                             (let ((_hd3639936455_
                                    (let ()
                                      (declare (not safe))
                                      (##car _tl3639836449_)))
                                   (_tl3640036458_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl3639836449_))))
                               (let ((_type?36461_ _hd3639936455_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl3640036458_))
                                     (let ((_hd3640136464_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl3640036458_)))
                                           (_tl3640236467_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl3640036458_))))
                                       (let ((_getf36470_ _hd3640136464_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _tl3640236467_))
                                             (let ((_hd3640336473_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl3640236467_)))
                                                   (_tl3640436476_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _tl3640236467_))))
                                               (let ((_setf36479_
                                                      _hd3640336473_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _tl3640436476_))
                                                     (_K3639236424_
                                                      _setf36479_
                                                      _getf36470_
                                                      _type?36461_
                                                      _make-type36452_
                                                      _type::t36443_
                                                      _super36434_)
                                                     (_E3639136412_))))
                                             (_E3639136412_))))
                                     (_E3639136412_))))
                             (_E3639136412_))))
                     (_E3639136412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3639136412_))))
                                             (_E3639136412_)))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Incomplete type info"
                                        _stx36236_
                                        _L36372_)))))
                              (___kont4220342204_
                               (lambda () (cons 'begin: _ids36327_))))
                          (if (gx#stx-pair? ___stx4219842199_)
                              (let ((_e3633636360_
                                     (gx#syntax-e ___stx4219842199_)))
                                (let ((_tl3633436367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3633636360_)))
                                      (_hd3633536364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3633636360_))))
                                  (___kont4220142202_
                                   _tl3633436367_
                                   _hd3633536364_)))
                              (___kont4220342204_))))))
                  _id3625336302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3624836282_
                                          _target3624536276_
                                          '()))
                                       (_g3623936259_ _g3624036263_)))))
                             (_g3623936259_ _g3624036263_))))
                     (_g3623936259_ _g3624036263_)))))
         (_g3623836494_ _stx36236_))))))
