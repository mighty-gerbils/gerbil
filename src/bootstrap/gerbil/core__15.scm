(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx33787_)
      (let* ((___stx4187541876_ _$stx33787_)
             (_g3379233811_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4187541876_))))
        (let ((___kont4187841879_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4188041881_
               (lambda (_L33838_ _L33840_ _L33841_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L33840_
                                   (cons (cons _L33841_ _L33838_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L33840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4187541876_)
              (let ((_e3379433864_ (gx#syntax-e ___stx4187541876_)))
                (let ((_tl3379633871_
                       (let () (declare (not safe)) (##cdr _e3379433864_)))
                      (_hd3379533868_
                       (let () (declare (not safe)) (##car _e3379433864_))))
                  (if (gx#stx-null? _tl3379633871_)
                      (___kont4187841879_)
                      (if (gx#stx-pair? _tl3379633871_)
                          (let ((_e3380333828_ (gx#syntax-e _tl3379633871_)))
                            (let ((_tl3380533835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3380333828_)))
                                  (_hd3380433832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3380333828_))))
                              (___kont4188041881_
                               _tl3380533835_
                               _hd3380433832_
                               _hd3379533868_)))
                          (_g3379233811_)))))
              (_g3379233811_))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx33882_)
      (let* ((___stx4190541906_ _$stx33882_)
             (_g3388733927_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4190541906_))))
        (let ((___kont4190841909_
               (lambda (_L34065_ _L34067_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34067_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L34065_ '()))
                                   '())))))
              (___kont4191041911_
               (lambda (_L33994_ _L33996_ _L33997_ _L33998_)
                 (cons _L33998_
                       (cons _L33997_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L33996_
                                               (foldr (lambda (_g3401934022_
                                                               _g3402034025_)
                                                        (cons _g3401934022_
                                                              _g3402034025_))
                                                      '()
                                                      _L33994_)))
                                   '()))))))
          (let* ((___match4196041961_
                  (lambda (_e3390433934_
                           _hd3390533938_
                           _tl3390633941_
                           _e3390733944_
                           _hd3390833948_
                           _tl3390933951_
                           _e3391033954_
                           _hd3391133958_
                           _tl3391233961_
                           ___splice4191241913_
                           _target3391333964_
                           _tl3391533967_)
                    (letrec ((_loop3391633970_
                              (lambda (_hd3391433974_ _body3392033977_)
                                (if (gx#stx-pair? _hd3391433974_)
                                    (let ((_e3391733980_
                                           (gx#syntax-e _hd3391433974_)))
                                      (let ((_lp-tl3391933987_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3391733980_)))
                                            (_lp-hd3391833984_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3391733980_))))
                                        (_loop3391633970_
                                         _lp-tl3391933987_
                                         (cons _lp-hd3391833984_
                                               _body3392033977_))))
                                    (let ((_body3392133990_
                                           (reverse _body3392033977_)))
                                      (let ((_L33994_ _body3392133990_)
                                            (_L33996_ _tl3391233961_)
                                            (_L33997_ _hd3391133958_)
                                            (_L33998_ _hd3390533938_))
                                        (if (gx#identifier? _L33997_)
                                            (___kont4191041911_
                                             _L33994_
                                             _L33996_
                                             _L33997_
                                             _L33998_)
                                            (_g3388733927_))))))))
                      (_loop3391633970_ _target3391333964_ '()))))
                 (___match4193441935_
                  (lambda (_e3389134035_
                           _hd3389234039_
                           _tl3389334042_
                           _e3389434045_
                           _hd3389534049_
                           _tl3389634052_
                           _e3389734055_
                           _hd3389834059_
                           _tl3389934062_)
                    (let ((_L34065_ _hd3389834059_) (_L34067_ _hd3389534049_))
                      (if (gx#identifier? _L34067_)
                          (___kont4190841909_ _L34065_ _L34067_)
                          (if (gx#stx-pair? _hd3389534049_)
                              (let ((_e3391033954_
                                     (gx#syntax-e _hd3389534049_)))
                                (let ((_tl3391233961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3391033954_)))
                                      (_hd3391133958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3391033954_))))
                                  (if (gx#stx-pair/null? _tl3389634052_)
                                      (let ((___splice4191241913_
                                             (gx#syntax-split-splice
                                              _tl3389634052_
                                              '0)))
                                        (let ((_tl3391533967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4191241913_
                                                  '1)))
                                              (_target3391333964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4191241913_
                                                  '0))))
                                          (if (gx#stx-null? _tl3391533967_)
                                              (___match4196041961_
                                               _e3389134035_
                                               _hd3389234039_
                                               _tl3389334042_
                                               _e3389434045_
                                               _hd3389534049_
                                               _tl3389634052_
                                               _e3391033954_
                                               _hd3391133958_
                                               _tl3391233961_
                                               ___splice4191241913_
                                               _target3391333964_
                                               _tl3391533967_)
                                              (_g3388733927_))))
                                      (_g3388733927_))))
                              (_g3388733927_)))))))
            (if (gx#stx-pair? ___stx4190541906_)
                (let ((_e3389134035_ (gx#syntax-e ___stx4190541906_)))
                  (let ((_tl3389334042_
                         (let () (declare (not safe)) (##cdr _e3389134035_)))
                        (_hd3389234039_
                         (let () (declare (not safe)) (##car _e3389134035_))))
                    (if (gx#stx-pair? _tl3389334042_)
                        (let ((_e3389434045_ (gx#syntax-e _tl3389334042_)))
                          (let ((_tl3389634052_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3389434045_)))
                                (_hd3389534049_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3389434045_))))
                            (if (gx#stx-pair? _tl3389634052_)
                                (let ((_e3389734055_
                                       (gx#syntax-e _tl3389634052_)))
                                  (let ((_tl3389934062_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3389734055_)))
                                        (_hd3389834059_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3389734055_))))
                                    (if (gx#stx-null? _tl3389934062_)
                                        (___match4193441935_
                                         _e3389134035_
                                         _hd3389234039_
                                         _tl3389334042_
                                         _e3389434045_
                                         _hd3389534049_
                                         _tl3389634052_
                                         _e3389734055_
                                         _hd3389834059_
                                         _tl3389934062_)
                                        (if (gx#stx-pair? _hd3389534049_)
                                            (let ((_e3391033954_
                                                   (gx#syntax-e
                                                    _hd3389534049_)))
                                              (let ((_tl3391233961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3391033954_)))
                                                    (_hd3391133958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3391033954_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3389634052_)
                                                    (let ((___splice4191241913_
                                                           (gx#syntax-split-splice
                                                            _tl3389634052_
                                                            '0)))
                                                      (let ((_tl3391533967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4191241913_ '1)))
                    (_target3391333964_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4191241913_ '0))))
                (if (gx#stx-null? _tl3391533967_)
                    (___match4196041961_
                     _e3389134035_
                     _hd3389234039_
                     _tl3389334042_
                     _e3389434045_
                     _hd3389534049_
                     _tl3389634052_
                     _e3391033954_
                     _hd3391133958_
                     _tl3391233961_
                     ___splice4191241913_
                     _target3391333964_
                     _tl3391533967_)
                    (_g3388733927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3388733927_))))
                                            (_g3388733927_)))))
                                (if (gx#stx-pair? _hd3389534049_)
                                    (let ((_e3391033954_
                                           (gx#syntax-e _hd3389534049_)))
                                      (let ((_tl3391233961_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3391033954_)))
                                            (_hd3391133958_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3391033954_))))
                                        (if (gx#stx-pair/null? _tl3389634052_)
                                            (let ((___splice4191241913_
                                                   (gx#syntax-split-splice
                                                    _tl3389634052_
                                                    '0)))
                                              (let ((_tl3391533967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4191241913_
                                                        '1)))
                                                    (_target3391333964_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4191241913_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3391533967_)
                                                    (___match4196041961_
                                                     _e3389134035_
                                                     _hd3389234039_
                                                     _tl3389334042_
                                                     _e3389434045_
                                                     _hd3389534049_
                                                     _tl3389634052_
                                                     _e3391033954_
                                                     _hd3391133958_
                                                     _tl3391233961_
                                                     ___splice4191241913_
                                                     _target3391333964_
                                                     _tl3391533967_)
                                                    (_g3388733927_))))
                                            (_g3388733927_))))
                                    (_g3388733927_)))))
                        (_g3388733927_))))
                (_g3388733927_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34087_)
      (let* ((___stx4196341964_ _$stx34087_)
             (_g3409234132_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4196341964_))))
        (let ((___kont4196641967_
               (lambda (_L34270_ _L34272_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34272_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L34270_ '()))
                                   '())))))
              (___kont4196841969_
               (lambda (_L34199_ _L34201_ _L34202_ _L34203_)
                 (cons _L34203_
                       (cons _L34202_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34201_
                                               (foldr (lambda (_g3422434227_
                                                               _g3422534230_)
                                                        (cons _g3422434227_
                                                              _g3422534230_))
                                                      '()
                                                      _L34199_)))
                                   '()))))))
          (let* ((___match4201842019_
                  (lambda (_e3410934139_
                           _hd3411034143_
                           _tl3411134146_
                           _e3411234149_
                           _hd3411334153_
                           _tl3411434156_
                           _e3411534159_
                           _hd3411634163_
                           _tl3411734166_
                           ___splice4197041971_
                           _target3411834169_
                           _tl3412034172_)
                    (letrec ((_loop3412134175_
                              (lambda (_hd3411934179_ _body3412534182_)
                                (if (gx#stx-pair? _hd3411934179_)
                                    (let ((_e3412234185_
                                           (gx#syntax-e _hd3411934179_)))
                                      (let ((_lp-tl3412434192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3412234185_)))
                                            (_lp-hd3412334189_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3412234185_))))
                                        (_loop3412134175_
                                         _lp-tl3412434192_
                                         (cons _lp-hd3412334189_
                                               _body3412534182_))))
                                    (let ((_body3412634195_
                                           (reverse _body3412534182_)))
                                      (let ((_L34199_ _body3412634195_)
                                            (_L34201_ _tl3411734166_)
                                            (_L34202_ _hd3411634163_)
                                            (_L34203_ _hd3411034143_))
                                        (if (gx#identifier? _L34202_)
                                            (___kont4196841969_
                                             _L34199_
                                             _L34201_
                                             _L34202_
                                             _L34203_)
                                            (_g3409234132_))))))))
                      (_loop3412134175_ _target3411834169_ '()))))
                 (___match4199241993_
                  (lambda (_e3409634240_
                           _hd3409734244_
                           _tl3409834247_
                           _e3409934250_
                           _hd3410034254_
                           _tl3410134257_
                           _e3410234260_
                           _hd3410334264_
                           _tl3410434267_)
                    (let ((_L34270_ _hd3410334264_) (_L34272_ _hd3410034254_))
                      (if (gx#identifier? _L34272_)
                          (___kont4196641967_ _L34270_ _L34272_)
                          (if (gx#stx-pair? _hd3410034254_)
                              (let ((_e3411534159_
                                     (gx#syntax-e _hd3410034254_)))
                                (let ((_tl3411734166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3411534159_)))
                                      (_hd3411634163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3411534159_))))
                                  (if (gx#stx-pair/null? _tl3410134257_)
                                      (let ((___splice4197041971_
                                             (gx#syntax-split-splice
                                              _tl3410134257_
                                              '0)))
                                        (let ((_tl3412034172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4197041971_
                                                  '1)))
                                              (_target3411834169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4197041971_
                                                  '0))))
                                          (if (gx#stx-null? _tl3412034172_)
                                              (___match4201842019_
                                               _e3409634240_
                                               _hd3409734244_
                                               _tl3409834247_
                                               _e3409934250_
                                               _hd3410034254_
                                               _tl3410134257_
                                               _e3411534159_
                                               _hd3411634163_
                                               _tl3411734166_
                                               ___splice4197041971_
                                               _target3411834169_
                                               _tl3412034172_)
                                              (_g3409234132_))))
                                      (_g3409234132_))))
                              (_g3409234132_)))))))
            (if (gx#stx-pair? ___stx4196341964_)
                (let ((_e3409634240_ (gx#syntax-e ___stx4196341964_)))
                  (let ((_tl3409834247_
                         (let () (declare (not safe)) (##cdr _e3409634240_)))
                        (_hd3409734244_
                         (let () (declare (not safe)) (##car _e3409634240_))))
                    (if (gx#stx-pair? _tl3409834247_)
                        (let ((_e3409934250_ (gx#syntax-e _tl3409834247_)))
                          (let ((_tl3410134257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3409934250_)))
                                (_hd3410034254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3409934250_))))
                            (if (gx#stx-pair? _tl3410134257_)
                                (let ((_e3410234260_
                                       (gx#syntax-e _tl3410134257_)))
                                  (let ((_tl3410434267_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3410234260_)))
                                        (_hd3410334264_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3410234260_))))
                                    (if (gx#stx-null? _tl3410434267_)
                                        (___match4199241993_
                                         _e3409634240_
                                         _hd3409734244_
                                         _tl3409834247_
                                         _e3409934250_
                                         _hd3410034254_
                                         _tl3410134257_
                                         _e3410234260_
                                         _hd3410334264_
                                         _tl3410434267_)
                                        (if (gx#stx-pair? _hd3410034254_)
                                            (let ((_e3411534159_
                                                   (gx#syntax-e
                                                    _hd3410034254_)))
                                              (let ((_tl3411734166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3411534159_)))
                                                    (_hd3411634163_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3411534159_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3410134257_)
                                                    (let ((___splice4197041971_
                                                           (gx#syntax-split-splice
                                                            _tl3410134257_
                                                            '0)))
                                                      (let ((_tl3412034172_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4197041971_ '1)))
                    (_target3411834169_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4197041971_ '0))))
                (if (gx#stx-null? _tl3412034172_)
                    (___match4201842019_
                     _e3409634240_
                     _hd3409734244_
                     _tl3409834247_
                     _e3409934250_
                     _hd3410034254_
                     _tl3410134257_
                     _e3411534159_
                     _hd3411634163_
                     _tl3411734166_
                     ___splice4197041971_
                     _target3411834169_
                     _tl3412034172_)
                    (_g3409234132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3409234132_))))
                                            (_g3409234132_)))))
                                (if (gx#stx-pair? _hd3410034254_)
                                    (let ((_e3411534159_
                                           (gx#syntax-e _hd3410034254_)))
                                      (let ((_tl3411734166_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3411534159_)))
                                            (_hd3411634163_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3411534159_))))
                                        (if (gx#stx-pair/null? _tl3410134257_)
                                            (let ((___splice4197041971_
                                                   (gx#syntax-split-splice
                                                    _tl3410134257_
                                                    '0)))
                                              (let ((_tl3412034172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4197041971_
                                                        '1)))
                                                    (_target3411834169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4197041971_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3412034172_)
                                                    (___match4201842019_
                                                     _e3409634240_
                                                     _hd3409734244_
                                                     _tl3409834247_
                                                     _e3409934250_
                                                     _hd3410034254_
                                                     _tl3410134257_
                                                     _e3411534159_
                                                     _hd3411634163_
                                                     _tl3411734166_
                                                     ___splice4197041971_
                                                     _target3411834169_
                                                     _tl3412034172_)
                                                    (_g3409234132_))))
                                            (_g3409234132_))))
                                    (_g3409234132_)))))
                        (_g3409234132_))))
                (_g3409234132_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34292_)
      (let* ((___stx4202142022_ _$stx34292_)
             (_g3429734337_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4202142022_))))
        (let ((___kont4202442025_
               (lambda (_L34475_ _L34477_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34477_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L34475_ '()))
                                   '())))))
              (___kont4202642027_
               (lambda (_L34404_ _L34406_ _L34407_ _L34408_)
                 (cons _L34408_
                       (cons _L34407_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34406_
                                               (foldr (lambda (_g3442934432_
                                                               _g3443034435_)
                                                        (cons _g3442934432_
                                                              _g3443034435_))
                                                      '()
                                                      _L34404_)))
                                   '()))))))
          (let* ((___match4207642077_
                  (lambda (_e3431434344_
                           _hd3431534348_
                           _tl3431634351_
                           _e3431734354_
                           _hd3431834358_
                           _tl3431934361_
                           _e3432034364_
                           _hd3432134368_
                           _tl3432234371_
                           ___splice4202842029_
                           _target3432334374_
                           _tl3432534377_)
                    (letrec ((_loop3432634380_
                              (lambda (_hd3432434384_ _body3433034387_)
                                (if (gx#stx-pair? _hd3432434384_)
                                    (let ((_e3432734390_
                                           (gx#syntax-e _hd3432434384_)))
                                      (let ((_lp-tl3432934397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3432734390_)))
                                            (_lp-hd3432834394_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3432734390_))))
                                        (_loop3432634380_
                                         _lp-tl3432934397_
                                         (cons _lp-hd3432834394_
                                               _body3433034387_))))
                                    (let ((_body3433134400_
                                           (reverse _body3433034387_)))
                                      (let ((_L34404_ _body3433134400_)
                                            (_L34406_ _tl3432234371_)
                                            (_L34407_ _hd3432134368_)
                                            (_L34408_ _hd3431534348_))
                                        (if (gx#identifier? _L34407_)
                                            (___kont4202642027_
                                             _L34404_
                                             _L34406_
                                             _L34407_
                                             _L34408_)
                                            (_g3429734337_))))))))
                      (_loop3432634380_ _target3432334374_ '()))))
                 (___match4205042051_
                  (lambda (_e3430134445_
                           _hd3430234449_
                           _tl3430334452_
                           _e3430434455_
                           _hd3430534459_
                           _tl3430634462_
                           _e3430734465_
                           _hd3430834469_
                           _tl3430934472_)
                    (let ((_L34475_ _hd3430834469_) (_L34477_ _hd3430534459_))
                      (if (gx#identifier? _L34477_)
                          (___kont4202442025_ _L34475_ _L34477_)
                          (if (gx#stx-pair? _hd3430534459_)
                              (let ((_e3432034364_
                                     (gx#syntax-e _hd3430534459_)))
                                (let ((_tl3432234371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3432034364_)))
                                      (_hd3432134368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3432034364_))))
                                  (if (gx#stx-pair/null? _tl3430634462_)
                                      (let ((___splice4202842029_
                                             (gx#syntax-split-splice
                                              _tl3430634462_
                                              '0)))
                                        (let ((_tl3432534377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4202842029_
                                                  '1)))
                                              (_target3432334374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4202842029_
                                                  '0))))
                                          (if (gx#stx-null? _tl3432534377_)
                                              (___match4207642077_
                                               _e3430134445_
                                               _hd3430234449_
                                               _tl3430334452_
                                               _e3430434455_
                                               _hd3430534459_
                                               _tl3430634462_
                                               _e3432034364_
                                               _hd3432134368_
                                               _tl3432234371_
                                               ___splice4202842029_
                                               _target3432334374_
                                               _tl3432534377_)
                                              (_g3429734337_))))
                                      (_g3429734337_))))
                              (_g3429734337_)))))))
            (if (gx#stx-pair? ___stx4202142022_)
                (let ((_e3430134445_ (gx#syntax-e ___stx4202142022_)))
                  (let ((_tl3430334452_
                         (let () (declare (not safe)) (##cdr _e3430134445_)))
                        (_hd3430234449_
                         (let () (declare (not safe)) (##car _e3430134445_))))
                    (if (gx#stx-pair? _tl3430334452_)
                        (let ((_e3430434455_ (gx#syntax-e _tl3430334452_)))
                          (let ((_tl3430634462_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3430434455_)))
                                (_hd3430534459_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3430434455_))))
                            (if (gx#stx-pair? _tl3430634462_)
                                (let ((_e3430734465_
                                       (gx#syntax-e _tl3430634462_)))
                                  (let ((_tl3430934472_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3430734465_)))
                                        (_hd3430834469_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3430734465_))))
                                    (if (gx#stx-null? _tl3430934472_)
                                        (___match4205042051_
                                         _e3430134445_
                                         _hd3430234449_
                                         _tl3430334452_
                                         _e3430434455_
                                         _hd3430534459_
                                         _tl3430634462_
                                         _e3430734465_
                                         _hd3430834469_
                                         _tl3430934472_)
                                        (if (gx#stx-pair? _hd3430534459_)
                                            (let ((_e3432034364_
                                                   (gx#syntax-e
                                                    _hd3430534459_)))
                                              (let ((_tl3432234371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3432034364_)))
                                                    (_hd3432134368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3432034364_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3430634462_)
                                                    (let ((___splice4202842029_
                                                           (gx#syntax-split-splice
                                                            _tl3430634462_
                                                            '0)))
                                                      (let ((_tl3432534377_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4202842029_ '1)))
                    (_target3432334374_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4202842029_ '0))))
                (if (gx#stx-null? _tl3432534377_)
                    (___match4207642077_
                     _e3430134445_
                     _hd3430234449_
                     _tl3430334452_
                     _e3430434455_
                     _hd3430534459_
                     _tl3430634462_
                     _e3432034364_
                     _hd3432134368_
                     _tl3432234371_
                     ___splice4202842029_
                     _target3432334374_
                     _tl3432534377_)
                    (_g3429734337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3429734337_))))
                                            (_g3429734337_)))))
                                (if (gx#stx-pair? _hd3430534459_)
                                    (let ((_e3432034364_
                                           (gx#syntax-e _hd3430534459_)))
                                      (let ((_tl3432234371_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3432034364_)))
                                            (_hd3432134368_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3432034364_))))
                                        (if (gx#stx-pair/null? _tl3430634462_)
                                            (let ((___splice4202842029_
                                                   (gx#syntax-split-splice
                                                    _tl3430634462_
                                                    '0)))
                                              (let ((_tl3432534377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4202842029_
                                                        '1)))
                                                    (_target3432334374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4202842029_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3432534377_)
                                                    (___match4207642077_
                                                     _e3430134445_
                                                     _hd3430234449_
                                                     _tl3430334452_
                                                     _e3430434455_
                                                     _hd3430534459_
                                                     _tl3430634462_
                                                     _e3432034364_
                                                     _hd3432134368_
                                                     _tl3432234371_
                                                     ___splice4202842029_
                                                     _target3432334374_
                                                     _tl3432534377_)
                                                    (_g3429734337_))))
                                            (_g3429734337_))))
                                    (_g3429734337_)))))
                        (_g3429734337_))))
                (_g3429734337_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx34497_)
       (let* ((_g3450034520_
               (lambda (_g3450134516_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3450134516_)))
              (_g3449934591_
               (lambda (_g3450134524_)
                 (if (gx#stx-pair? _g3450134524_)
                     (let ((_e3450334527_ (gx#syntax-e _g3450134524_)))
                       (let ((_hd3450434531_
                              (let ()
                                (declare (not safe))
                                (##car _e3450334527_)))
                             (_tl3450534534_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3450334527_))))
                         (if (gx#stx-pair/null? _tl3450534534_)
                             (let ((_g42351_
                                    (gx#syntax-split-splice
                                     _tl3450534534_
                                     '0)))
                               (begin
                                 (let ((_g42352_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42351_)
                                              (##vector-length _g42351_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42352_ 2)))
                                       (error "Context expects 2 values"
                                              _g42352_)))
                                 (let ((_target3450634537_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42351_ 0)))
                                       (_tl3450834540_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42351_ 1))))
                                   (if (gx#stx-null? _tl3450834540_)
                                       (letrec ((_loop3450934543_
                                                 (lambda (_hd3450734547_
                                                          _body3451334550_)
                                                   (if (gx#stx-pair?
                                                        _hd3450734547_)
                                                       (let ((_e3451034553_
                                                              (gx#syntax-e
                                                               _hd3450734547_)))
                                                         (let ((_lp-hd3451134557_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3451034553_)))
                       (_lp-tl3451234560_
                        (let () (declare (not safe)) (##cdr _e3451034553_))))
                   (_loop3450934543_
                    _lp-tl3451234560_
                    (cons _lp-hd3451134557_ _body3451334550_))))
               (let ((_body3451434563_ (reverse _body3451334550_)))
                 ((lambda (_L34567_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_g3458234585_ _g3458334588_)
                                         (cons _g3458234585_ _g3458334588_))
                                       '()
                                       _L34567_))))
                  _body3451434563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3450934543_
                                          _target3450634537_
                                          '()))
                                       (_g3450034520_ _g3450134524_)))))
                             (_g3450034520_ _g3450134524_))))
                     (_g3450034520_ _g3450134524_)))))
         (_g3449934591_ _stx34497_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx34596_)
       (let* ((_g3459934619_
               (lambda (_g3460034615_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3460034615_)))
              (_g3459834690_
               (lambda (_g3460034623_)
                 (if (gx#stx-pair? _g3460034623_)
                     (let ((_e3460234626_ (gx#syntax-e _g3460034623_)))
                       (let ((_hd3460334630_
                              (let ()
                                (declare (not safe))
                                (##car _e3460234626_)))
                             (_tl3460434633_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3460234626_))))
                         (if (gx#stx-pair/null? _tl3460434633_)
                             (let ((_g42353_
                                    (gx#syntax-split-splice
                                     _tl3460434633_
                                     '0)))
                               (begin
                                 (let ((_g42354_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42353_)
                                              (##vector-length _g42353_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42354_ 2)))
                                       (error "Context expects 2 values"
                                              _g42354_)))
                                 (let ((_target3460534636_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42353_ 0)))
                                       (_tl3460734639_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42353_ 1))))
                                   (if (gx#stx-null? _tl3460734639_)
                                       (letrec ((_loop3460834642_
                                                 (lambda (_hd3460634646_
                                                          _body3461234649_)
                                                   (if (gx#stx-pair?
                                                        _hd3460634646_)
                                                       (let ((_e3460934652_
                                                              (gx#syntax-e
                                                               _hd3460634646_)))
                                                         (let ((_lp-hd3461034656_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3460934652_)))
                       (_lp-tl3461134659_
                        (let () (declare (not safe)) (##cdr _e3460934652_))))
                   (_loop3460834642_
                    _lp-tl3461134659_
                    (cons _lp-hd3461034656_ _body3461234649_))))
               (let ((_body3461334662_ (reverse _body3461234649_)))
                 ((lambda (_L34666_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_g3468134684_ _g3468234687_)
                                         (cons _g3468134684_ _g3468234687_))
                                       '()
                                       _L34666_))))
                  _body3461334662_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3460834642_
                                          _target3460534636_
                                          '()))
                                       (_g3459934619_ _g3460034623_)))))
                             (_g3459934619_ _g3460034623_))))
                     (_g3459934619_ _g3460034623_)))))
         (_g3459834690_ _stx34596_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx34695_)
       (let* ((_g3469834722_
               (lambda (_g3469934718_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3469934718_)))
              (_g3469734844_
               (lambda (_g3469934726_)
                 (if (gx#stx-pair? _g3469934726_)
                     (let ((_e3470234729_ (gx#syntax-e _g3469934726_)))
                       (let ((_hd3470334733_
                              (let ()
                                (declare (not safe))
                                (##car _e3470234729_)))
                             (_tl3470434736_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3470234729_))))
                         (if (gx#stx-pair? _tl3470434736_)
                             (let ((_e3470534739_
                                    (gx#syntax-e _tl3470434736_)))
                               (let ((_hd3470634743_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3470534739_)))
                                     (_tl3470734746_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3470534739_))))
                                 (if (gx#stx-pair/null? _tl3470734746_)
                                     (let ((_g42355_
                                            (gx#syntax-split-splice
                                             _tl3470734746_
                                             '0)))
                                       (begin
                                         (let ((_g42356_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42355_)
                                                      (##vector-length
                                                       _g42355_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42356_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42356_)))
                                         (let ((_target3470834749_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42355_ 0)))
                                               (_tl3471034752_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42355_ 1))))
                                           (if (gx#stx-null? _tl3471034752_)
                                               (letrec ((_loop3471134755_
                                                         (lambda (_hd3470934759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3471534762_)
                   (if (gx#stx-pair? _hd3470934759_)
                       (let ((_e3471234765_ (gx#syntax-e _hd3470934759_)))
                         (let ((_lp-hd3471334769_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3471234765_)))
                               (_lp-tl3471434772_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3471234765_))))
                           (_loop3471134755_
                            _lp-tl3471434772_
                            (cons _lp-hd3471334769_ _id3471534762_))))
                       (let ((_id3471634775_ (reverse _id3471534762_)))
                         ((lambda (_L34779_ _L34781_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3479834801_ _g3479934804_)
                                          (cons _g3479834801_ _g3479934804_))
                                        '()
                                        _L34779_))
                                (let* ((_keys34815_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3480634809_
                                                         _g3480734812_)
                                                  (cons _g3480634809_
                                                        _g3480734812_))
                                                '()
                                                _L34779_)))
                                       (_keytab34826_
                                        (let ((_ht34818_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3482034822_)
                                             (hash-put!
                                              _ht34818_
                                              _g3482034822_
                                              '#t))
                                           _keys34815_)
                                          _ht34818_))
                                       (_imports34829_
                                        (gx#core-expand-import-source
                                         _L34781_))
                                       (_fold-e34839_
                                        (letrec ((_fold-e34832_
                                                  (lambda (_in34835_ _r34837_)
                                                    (if (gx#module-import?
                                                         _in34835_)
                                                        (if (hash-get
                                                             _keytab34826_
                                                             (gx#module-import-name
                                                              _in34835_))
                                                            (cons _in34835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r34837_)
                    _r34837_)
                (if (gx#import-set? _in34835_)
                    (foldl _fold-e34832_
                           _r34837_
                           (gx#import-set-imports _in34835_))
                    _r34837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e34832_)))
                                  (cons 'begin:
                                        (foldl _fold-e34839_
                                               '()
                                               _imports34829_)))
                                (_g3469834722_ _g3469934726_)))
                          _id3471634775_
                          _hd3470634743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3471134755_
                                                  _target3470834749_
                                                  '()))
                                               (_g3469834722_
                                                _g3469934726_)))))
                                     (_g3469834722_ _g3469934726_))))
                             (_g3469834722_ _g3469934726_))))
                     (_g3469834722_ _g3469934726_)))))
         (_g3469734844_ _stx34695_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx34849_)
       (let* ((_g3485234876_
               (lambda (_g3485334872_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3485334872_)))
              (_g3485134998_
               (lambda (_g3485334880_)
                 (if (gx#stx-pair? _g3485334880_)
                     (let ((_e3485634883_ (gx#syntax-e _g3485334880_)))
                       (let ((_hd3485734887_
                              (let ()
                                (declare (not safe))
                                (##car _e3485634883_)))
                             (_tl3485834890_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3485634883_))))
                         (if (gx#stx-pair? _tl3485834890_)
                             (let ((_e3485934893_
                                    (gx#syntax-e _tl3485834890_)))
                               (let ((_hd3486034897_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3485934893_)))
                                     (_tl3486134900_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3485934893_))))
                                 (if (gx#stx-pair/null? _tl3486134900_)
                                     (let ((_g42357_
                                            (gx#syntax-split-splice
                                             _tl3486134900_
                                             '0)))
                                       (begin
                                         (let ((_g42358_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42357_)
                                                      (##vector-length
                                                       _g42357_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42358_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42358_)))
                                         (let ((_target3486234903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42357_ 0)))
                                               (_tl3486434906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42357_ 1))))
                                           (if (gx#stx-null? _tl3486434906_)
                                               (letrec ((_loop3486534909_
                                                         (lambda (_hd3486334913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3486934916_)
                   (if (gx#stx-pair? _hd3486334913_)
                       (let ((_e3486634919_ (gx#syntax-e _hd3486334913_)))
                         (let ((_lp-hd3486734923_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3486634919_)))
                               (_lp-tl3486834926_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3486634919_))))
                           (_loop3486534909_
                            _lp-tl3486834926_
                            (cons _lp-hd3486734923_ _id3486934916_))))
                       (let ((_id3487034929_ (reverse _id3486934916_)))
                         ((lambda (_L34933_ _L34935_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3495234955_ _g3495334958_)
                                          (cons _g3495234955_ _g3495334958_))
                                        '()
                                        _L34933_))
                                (let* ((_keys34969_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3496034963_
                                                         _g3496134966_)
                                                  (cons _g3496034963_
                                                        _g3496134966_))
                                                '()
                                                _L34933_)))
                                       (_keytab34980_
                                        (let ((_ht34972_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3497434976_)
                                             (hash-put!
                                              _ht34972_
                                              _g3497434976_
                                              '#t))
                                           _keys34969_)
                                          _ht34972_))
                                       (_imports34983_
                                        (gx#core-expand-import-source
                                         _L34935_))
                                       (_fold-e34993_
                                        (letrec ((_fold-e34986_
                                                  (lambda (_in34989_ _r34991_)
                                                    (if (gx#module-import?
                                                         _in34989_)
                                                        (if (hash-get
                                                             _keytab34980_
                                                             (gx#module-import-name
                                                              _in34989_))
                                                            _r34991_
                                                            (cons _in34989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r34991_))
                (if (gx#import-set? _in34989_)
                    (foldl _fold-e34986_
                           _r34991_
                           (gx#import-set-imports _in34989_))
                    (cons _in34989_ _r34991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e34986_)))
                                  (cons 'begin:
                                        (foldl _fold-e34993_
                                               '()
                                               _imports34983_)))
                                (_g3485234876_ _g3485334880_)))
                          _id3487034929_
                          _hd3486034897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3486534909_
                                                  _target3486234903_
                                                  '()))
                                               (_g3485234876_
                                                _g3485334880_)))))
                                     (_g3485234876_ _g3485334880_))))
                             (_g3485234876_ _g3485334880_))))
                     (_g3485234876_ _g3485334880_)))))
         (_g3485134998_ _stx34849_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35050_ _rename35052_)
      (gx#make-module-import
       (gx#module-import-source _in35050_)
       _rename35052_
       (gx#module-import-phi _in35050_)
       (gx#module-import-weak? _in35050_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35003_ _pre35005_)
      (let* ((_name3500635014_ _name35003_)
             (_else3500835026_
              (lambda () (make-symbol _pre35005_ _name35003_)))
             (_K3501035034_
              (lambda (_mark35030_ _id35032_)
                (cons (make-symbol _pre35005_ _id35032_) _mark35030_))))
        (if (let () (declare (not safe)) (##pair? _name3500635014_))
            (let ((_hd3501135038_
                   (let () (declare (not safe)) (##car _name3500635014_)))
                  (_tl3501235041_
                   (let () (declare (not safe)) (##cdr _name3500635014_))))
              (let* ((_id35044_ _hd3501135038_) (_mark35047_ _tl3501235041_))
                (_K3501035034_ _mark35047_ _id35044_)))
            (_else3500835026_)))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35054_)
       (let* ((_g3505735090_
               (lambda (_g3505835086_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3505835086_)))
              (_g3505635276_
               (lambda (_g3505835094_)
                 (if (gx#stx-pair? _g3505835094_)
                     (let ((_e3506235097_ (gx#syntax-e _g3505835094_)))
                       (let ((_hd3506335101_
                              (let ()
                                (declare (not safe))
                                (##car _e3506235097_)))
                             (_tl3506435104_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3506235097_))))
                         (if (gx#stx-pair? _tl3506435104_)
                             (let ((_e3506535107_
                                    (gx#syntax-e _tl3506435104_)))
                               (let ((_hd3506635111_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3506535107_)))
                                     (_tl3506735114_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3506535107_))))
                                 (if (gx#stx-pair/null? _tl3506735114_)
                                     (let ((_g42359_
                                            (gx#syntax-split-splice
                                             _tl3506735114_
                                             '0)))
                                       (begin
                                         (let ((_g42360_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42359_)
                                                      (##vector-length
                                                       _g42359_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42360_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42360_)))
                                         (let ((_target3506835117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42359_ 0)))
                                               (_tl3507035120_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42359_ 1))))
                                           (if (gx#stx-null? _tl3507035120_)
                                               (letrec ((_loop3507135123_
                                                         (lambda (_hd3506935127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3507535130_
                          _id3507635132_)
                   (if (gx#stx-pair? _hd3506935127_)
                       (let ((_e3507235135_ (gx#syntax-e _hd3506935127_)))
                         (let ((_lp-hd3507335139_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3507235135_)))
                               (_lp-tl3507435142_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3507235135_))))
                           (if (gx#stx-pair? _lp-hd3507335139_)
                               (let ((_e3507935145_
                                      (gx#syntax-e _lp-hd3507335139_)))
                                 (let ((_hd3508035149_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3507935145_)))
                                       (_tl3508135152_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3507935145_))))
                                   (if (gx#stx-pair? _tl3508135152_)
                                       (let ((_e3508235155_
                                              (gx#syntax-e _tl3508135152_)))
                                         (let ((_hd3508335159_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3508235155_)))
                                               (_tl3508435162_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3508235155_))))
                                           (if (gx#stx-null? _tl3508435162_)
                                               (_loop3507135123_
                                                _lp-tl3507435142_
                                                (cons _hd3508335159_
                                                      _new-id3507535130_)
                                                (cons _hd3508035149_
                                                      _id3507635132_))
                                               (_g3505735090_ _g3505835094_))))
                                       (_g3505735090_ _g3505835094_))))
                               (_g3505735090_ _g3505835094_))))
                       (let ((_new-id3507735165_ (reverse _new-id3507535130_))
                             (_id3507835168_ (reverse _id3507635132_)))
                         ((lambda (_L35171_ _L35173_ _L35174_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3519235195_
                                                      _g3519335198_)
                                               (cons _g3519235195_
                                                     _g3519335198_))
                                             '()
                                             _L35173_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3520035203_
                                                      _g3520135206_)
                                               (cons _g3520035203_
                                                     _g3520135206_))
                                             '()
                                             _L35171_)))
                                (let* ((_keytab35209_ (make-hash-table))
                                       (_found35212_ (make-hash-table))
                                       (_g42361_
                                        (for-each
                                         (lambda (_id35215_ _new-id35217_)
                                           (hash-put!
                                            _keytab35209_
                                            (gx#core-identifier-key _id35215_)
                                            (gx#core-identifier-key
                                             _new-id35217_)))
                                         (foldr (lambda (_g3521835221_
                                                         _g3521935224_)
                                                  (cons _g3521835221_
                                                        _g3521935224_))
                                                '()
                                                _L35173_)
                                         (foldr (lambda (_g3522635229_
                                                         _g3522735232_)
                                                  (cons _g3522635229_
                                                        _g3522735232_))
                                                '()
                                                _L35171_)))
                                       (_imports35237_
                                        (gx#core-expand-import-source
                                         _L35174_))
                                       (_fold-e35257_
                                        (letrec ((_fold-e35240_
                                                  (lambda (_in35243_ _r35245_)
                                                    (if (gx#module-import?
                                                         _in35243_)
                                                        (let* ((_name35247_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35243_))
                       (_$e35250_ (hash-get _keytab35209_ _name35247_)))
                  (if _$e35250_
                      ((lambda (_rename35254_)
                         (hash-put! _found35212_ _name35247_ '#t)
                         (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                _in35243_
                                _rename35254_)
                               _r35245_))
                       _$e35250_)
                      (cons _in35243_ _r35245_)))
                (if (gx#import-set? _in35243_)
                    (foldl _fold-e35240_
                           _r35245_
                           (gx#import-set-imports _in35243_))
                    (cons _in35243_ _r35245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35240_))
                                       (_new-imports35260_
                                        (foldl _fold-e35257_
                                               '()
                                               _imports35237_)))
                                  (for-each
                                   (lambda (_id35265_)
                                     (if (hash-get
                                          _found35212_
                                          (gx#core-identifier-key _id35265_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the import set"
                                          _stx35054_
                                          _id35265_)))
                                   (foldr (lambda (_g3526735270_ _g3526835273_)
                                            (cons _g3526735270_ _g3526835273_))
                                          '()
                                          _L35173_))
                                  (cons 'begin: _new-imports35260_))
                                (_g3505735090_ _g3505835094_)))
                          _new-id3507735165_
                          _id3507835168_
                          _hd3506635111_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3507135123_
                                                  _target3506835117_
                                                  '()
                                                  '()))
                                               (_g3505735090_
                                                _g3505835094_)))))
                                     (_g3505735090_ _g3505835094_))))
                             (_g3505735090_ _g3505835094_))))
                     (_g3505735090_ _g3505835094_)))))
         (_g3505635276_ _stx35054_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35282_)
       (let* ((_g3528535303_
               (lambda (_g3528635299_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3528635299_)))
              (_g3528435382_
               (lambda (_g3528635307_)
                 (if (gx#stx-pair? _g3528635307_)
                     (let ((_e3528935310_ (gx#syntax-e _g3528635307_)))
                       (let ((_hd3529035314_
                              (let ()
                                (declare (not safe))
                                (##car _e3528935310_)))
                             (_tl3529135317_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3528935310_))))
                         (if (gx#stx-pair? _tl3529135317_)
                             (let ((_e3529235320_
                                    (gx#syntax-e _tl3529135317_)))
                               (let ((_hd3529335324_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3529235320_)))
                                     (_tl3529435327_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3529235320_))))
                                 (if (gx#stx-pair? _tl3529435327_)
                                     (let ((_e3529535330_
                                            (gx#syntax-e _tl3529435327_)))
                                       (let ((_hd3529635334_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3529535330_)))
                                             (_tl3529735337_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3529535330_))))
                                         (if (gx#stx-null? _tl3529735337_)
                                             ((lambda (_L35340_ _L35342_)
                                                (if (gx#identifier? _L35340_)
                                                    (let* ((_pre35358_
                                                            (gx#stx-e
                                                             _L35340_))
                                                           (_imports35361_
                                                            (gx#core-expand-import-source
                                                             _L35342_))
                                                           (_rename-e35367_
                                                            (lambda (_name35364_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name35364_
                                                               _pre35358_)))
                                                           (_fold-e35377_
                                                            (letrec ((_fold-e35370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_in35373_ _r35375_)
                                (if (gx#module-import? _in35373_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                           _in35373_
                                           (_rename-e35367_
                                            (gx#module-import-name _in35373_)))
                                          _r35375_)
                                    (if (gx#import-set? _in35373_)
                                        (foldl _fold-e35370_
                                               _r35375_
                                               (gx#import-set-imports
                                                _in35373_))
                                        (cons _in35373_ _r35375_))))))
                      _fold-e35370_)))
              (cons 'begin: (foldl _fold-e35377_ '() _imports35361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3528535303_
                                                     _g3528635307_)))
                                              _hd3529635334_
                                              _hd3529335324_)
                                             (_g3528535303_ _g3528635307_))))
                                     (_g3528535303_ _g3528635307_))))
                             (_g3528535303_ _g3528635307_))))
                     (_g3528535303_ _g3528635307_)))))
         (_g3528435382_ _stx35282_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx35386_)
       (letrec ((_flatten35389_
                 (lambda (_list-of-lists35644_)
                   (foldr (lambda (_v35647_ _acc35649_)
                            (if (null? _v35647_)
                                _acc35649_
                                (if (pair? _v35647_)
                                    (append (_flatten35389_ _v35647_)
                                            _acc35649_)
                                    (cons _v35647_ _acc35649_))))
                          '()
                          _list-of-lists35644_)))
                (_expand-path35391_
                 (lambda (_top35512_ _mod35514_)
                   (let* ((___stx4207942080_ _mod35514_)
                          (_g3551735539_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4207942080_))))
                     (let ((___kont4208242083_
                            (lambda (_L35607_ _L35609_)
                              (map (lambda (_mod35624_)
                                     (gx#stx-identifier
                                      _top35512_
                                      _top35512_
                                      '"/"
                                      _mod35624_))
                                   (_flatten35389_
                                    (map (lambda (_g3562635628_)
                                           (_expand-path35391_
                                            _L35609_
                                            _g3562635628_))
                                         (foldr (lambda (_g3563135634_
                                                         _g3563235637_)
                                                  (cons _g3563135634_
                                                        _g3563235637_))
                                                '()
                                                _L35607_))))))
                           (___kont4208642087_
                            (lambda (_L35546_)
                              (gx#stx-identifier
                               _top35512_
                               _top35512_
                               '"/"
                               _L35546_))))
                       (let* ((_g3551635560_
                               (lambda ()
                                 (let ((_L35546_ ___stx4207942080_))
                                   (if (or (gx#identifier? _L35546_)
                                           (gx#stx-fixnum? _L35546_))
                                       (___kont4208642087_ _L35546_)
                                       (_g3551735539_)))))
                              (___match4210242103_
                               (lambda (_e3552135567_
                                        _hd3552235571_
                                        _tl3552335574_
                                        ___splice4208442085_
                                        _target3552435577_
                                        _tl3552635580_)
                                 (letrec ((_loop3552735583_
                                           (lambda (_hd3552535587_
                                                    _mod3553135590_)
                                             (if (gx#stx-pair? _hd3552535587_)
                                                 (let ((_e3552835593_
                                                        (gx#syntax-e
                                                         _hd3552535587_)))
                                                   (let ((_lp-tl3553035600_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3552835593_)))
                                                         (_lp-hd3552935597_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3552835593_))))
                                                     (_loop3552735583_
                                                      _lp-tl3553035600_
                                                      (cons _lp-hd3552935597_
                                                            _mod3553135590_))))
                                                 (let ((_mod3553235603_
                                                        (reverse _mod3553135590_)))
                                                   (___kont4208242083_
                                                    _mod3553235603_
                                                    _hd3552235571_))))))
                                   (_loop3552735583_
                                    _target3552435577_
                                    '())))))
                         (if (gx#stx-pair? ___stx4207942080_)
                             (let ((_e3552135567_
                                    (gx#syntax-e ___stx4207942080_)))
                               (let ((_tl3552335574_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3552135567_)))
                                     (_hd3552235571_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3552135567_))))
                                 (if (gx#stx-pair/null? _tl3552335574_)
                                     (let ((___splice4208442085_
                                            (gx#syntax-split-splice
                                             _tl3552335574_
                                             '0)))
                                       (let ((_tl3552635580_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4208442085_
                                                 '1)))
                                             (_target3552435577_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4208442085_
                                                 '0))))
                                         (if (gx#stx-null? _tl3552635580_)
                                             (___match4210242103_
                                              _e3552135567_
                                              _hd3552235571_
                                              _tl3552335574_
                                              ___splice4208442085_
                                              _target3552435577_
                                              _tl3552635580_)
                                             (_g3551635560_))))
                                     (_g3551635560_))))
                             (_g3551635560_))))))))
         (let* ((_g3539335417_
                 (lambda (_g3539435413_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3539435413_)))
                (_g3539235508_
                 (lambda (_g3539435421_)
                   (if (gx#stx-pair? _g3539435421_)
                       (let ((_e3539735424_ (gx#syntax-e _g3539435421_)))
                         (let ((_hd3539835428_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3539735424_)))
                               (_tl3539935431_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3539735424_))))
                           (if (gx#stx-pair? _tl3539935431_)
                               (let ((_e3540035434_
                                      (gx#syntax-e _tl3539935431_)))
                                 (let ((_hd3540135438_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3540035434_)))
                                       (_tl3540235441_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3540035434_))))
                                   (if (gx#stx-pair/null? _tl3540235441_)
                                       (let ((_g42362_
                                              (gx#syntax-split-splice
                                               _tl3540235441_
                                               '0)))
                                         (begin
                                           (let ((_g42363_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g42362_)
                                                        (##vector-length
                                                         _g42362_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g42363_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g42363_)))
                                           (let ((_target3540335444_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g42362_ 0)))
                                                 (_tl3540535447_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g42362_
                                                     1))))
                                             (if (gx#stx-null? _tl3540535447_)
                                                 (letrec ((_loop3540635450_
                                                           (lambda (_hd3540435454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3541035457_)
                     (if (gx#stx-pair? _hd3540435454_)
                         (let ((_e3540735460_ (gx#syntax-e _hd3540435454_)))
                           (let ((_lp-hd3540835464_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3540735460_)))
                                 (_lp-tl3540935467_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3540735460_))))
                             (_loop3540635450_
                              _lp-tl3540935467_
                              (cons _lp-hd3540835464_ _mod3541035457_))))
                         (let ((_mod3541135470_ (reverse _mod3541035457_)))
                           ((lambda (_L35474_ _L35476_)
                              (cons 'begin:
                                    (_flatten35389_
                                     (map (lambda (_g3549435496_)
                                            (_expand-path35391_
                                             _L35476_
                                             _g3549435496_))
                                          (foldr (lambda (_g3549935502_
                                                          _g3550035505_)
                                                   (cons _g3549935502_
                                                         _g3550035505_))
                                                 '()
                                                 _L35474_)))))
                            _mod3541135470_
                            _hd3540135438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3540635450_
                                                    _target3540335444_
                                                    '()))
                                                 (_g3539335417_
                                                  _g3539435421_)))))
                                       (_g3539335417_ _g3539435421_))))
                               (_g3539335417_ _g3539435421_))))
                       (_g3539335417_ _g3539435421_)))))
           (_g3539235508_ _stx35386_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx35653_)
       (let* ((_g3565635680_
               (lambda (_g3565735676_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3565735676_)))
              (_g3565535802_
               (lambda (_g3565735684_)
                 (if (gx#stx-pair? _g3565735684_)
                     (let ((_e3566035687_ (gx#syntax-e _g3565735684_)))
                       (let ((_hd3566135691_
                              (let ()
                                (declare (not safe))
                                (##car _e3566035687_)))
                             (_tl3566235694_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3566035687_))))
                         (if (gx#stx-pair? _tl3566235694_)
                             (let ((_e3566335697_
                                    (gx#syntax-e _tl3566235694_)))
                               (let ((_hd3566435701_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3566335697_)))
                                     (_tl3566535704_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3566335697_))))
                                 (if (gx#stx-pair/null? _tl3566535704_)
                                     (let ((_g42364_
                                            (gx#syntax-split-splice
                                             _tl3566535704_
                                             '0)))
                                       (begin
                                         (let ((_g42365_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42364_)
                                                      (##vector-length
                                                       _g42364_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42365_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42365_)))
                                         (let ((_target3566635707_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42364_ 0)))
                                               (_tl3566835710_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42364_ 1))))
                                           (if (gx#stx-null? _tl3566835710_)
                                               (letrec ((_loop3566935713_
                                                         (lambda (_hd3566735717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3567335720_)
                   (if (gx#stx-pair? _hd3566735717_)
                       (let ((_e3567035723_ (gx#syntax-e _hd3566735717_)))
                         (let ((_lp-hd3567135727_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3567035723_)))
                               (_lp-tl3567235730_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3567035723_))))
                           (_loop3566935713_
                            _lp-tl3567235730_
                            (cons _lp-hd3567135727_ _id3567335720_))))
                       (let ((_id3567435733_ (reverse _id3567335720_)))
                         ((lambda (_L35737_ _L35739_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3575635759_ _g3575735762_)
                                          (cons _g3575635759_ _g3575735762_))
                                        '()
                                        _L35737_))
                                (let* ((_keys35773_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3576435767_
                                                         _g3576535770_)
                                                  (cons _g3576435767_
                                                        _g3576535770_))
                                                '()
                                                _L35737_)))
                                       (_keytab35784_
                                        (let ((_ht35776_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3577835780_)
                                             (hash-put!
                                              _ht35776_
                                              _g3577835780_
                                              '#t))
                                           _keys35773_)
                                          _ht35776_))
                                       (_exports35787_
                                        (gx#core-expand-export-source
                                         _L35739_))
                                       (_fold-e35797_
                                        (letrec ((_fold-e35790_
                                                  (lambda (_out35793_ _r35795_)
                                                    (if (gx#module-export?
                                                         _out35793_)
                                                        (if (hash-get
                                                             _keytab35784_
                                                             (gx#module-export-name
                                                              _out35793_))
                                                            _r35795_
                                                            (cons _out35793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35795_))
                (if (gx#export-set? _out35793_)
                    (foldl _fold-e35790_
                           _r35795_
                           (gx#export-set-exports _out35793_))
                    _r35795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35790_)))
                                  (cons 'begin:
                                        (foldl _fold-e35797_
                                               '()
                                               _exports35787_)))
                                (_g3565635680_ _g3565735684_)))
                          _id3567435733_
                          _hd3566435701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3566935713_
                                                  _target3566635707_
                                                  '()))
                                               (_g3565635680_
                                                _g3565735684_)))))
                                     (_g3565635680_ _g3565735684_))))
                             (_g3565635680_ _g3565735684_))))
                     (_g3565635680_ _g3565735684_)))))
         (_g3565535802_ _stx35653_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out35807_ _rename35809_)
      (gx#make-module-export
       (gx#module-export-context _out35807_)
       (gx#module-export-key _out35807_)
       (gx#module-export-phi _out35807_)
       _rename35809_
       (gx#module-export-weak? _out35807_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx35811_)
       (let* ((_g3581435847_
               (lambda (_g3581535843_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3581535843_)))
              (_g3581336033_
               (lambda (_g3581535851_)
                 (if (gx#stx-pair? _g3581535851_)
                     (let ((_e3581935854_ (gx#syntax-e _g3581535851_)))
                       (let ((_hd3582035858_
                              (let ()
                                (declare (not safe))
                                (##car _e3581935854_)))
                             (_tl3582135861_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3581935854_))))
                         (if (gx#stx-pair? _tl3582135861_)
                             (let ((_e3582235864_
                                    (gx#syntax-e _tl3582135861_)))
                               (let ((_hd3582335868_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3582235864_)))
                                     (_tl3582435871_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3582235864_))))
                                 (if (gx#stx-pair/null? _tl3582435871_)
                                     (let ((_g42366_
                                            (gx#syntax-split-splice
                                             _tl3582435871_
                                             '0)))
                                       (begin
                                         (let ((_g42367_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42366_)
                                                      (##vector-length
                                                       _g42366_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42367_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42367_)))
                                         (let ((_target3582535874_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42366_ 0)))
                                               (_tl3582735877_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42366_ 1))))
                                           (if (gx#stx-null? _tl3582735877_)
                                               (letrec ((_loop3582835880_
                                                         (lambda (_hd3582635884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3583235887_
                          _id3583335889_)
                   (if (gx#stx-pair? _hd3582635884_)
                       (let ((_e3582935892_ (gx#syntax-e _hd3582635884_)))
                         (let ((_lp-hd3583035896_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3582935892_)))
                               (_lp-tl3583135899_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3582935892_))))
                           (if (gx#stx-pair? _lp-hd3583035896_)
                               (let ((_e3583635902_
                                      (gx#syntax-e _lp-hd3583035896_)))
                                 (let ((_hd3583735906_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3583635902_)))
                                       (_tl3583835909_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3583635902_))))
                                   (if (gx#stx-pair? _tl3583835909_)
                                       (let ((_e3583935912_
                                              (gx#syntax-e _tl3583835909_)))
                                         (let ((_hd3584035916_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3583935912_)))
                                               (_tl3584135919_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3583935912_))))
                                           (if (gx#stx-null? _tl3584135919_)
                                               (_loop3582835880_
                                                _lp-tl3583135899_
                                                (cons _hd3584035916_
                                                      _new-id3583235887_)
                                                (cons _hd3583735906_
                                                      _id3583335889_))
                                               (_g3581435847_ _g3581535851_))))
                                       (_g3581435847_ _g3581535851_))))
                               (_g3581435847_ _g3581535851_))))
                       (let ((_new-id3583435922_ (reverse _new-id3583235887_))
                             (_id3583535925_ (reverse _id3583335889_)))
                         ((lambda (_L35928_ _L35930_ _L35931_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3594935952_
                                                      _g3595035955_)
                                               (cons _g3594935952_
                                                     _g3595035955_))
                                             '()
                                             _L35930_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3595735960_
                                                      _g3595835963_)
                                               (cons _g3595735960_
                                                     _g3595835963_))
                                             '()
                                             _L35928_)))
                                (let* ((_keytab35966_ (make-hash-table))
                                       (_found35969_ (make-hash-table))
                                       (_g42368_
                                        (for-each
                                         (lambda (_id35972_ _new-id35974_)
                                           (hash-put!
                                            _keytab35966_
                                            (gx#core-identifier-key _id35972_)
                                            (gx#core-identifier-key
                                             _new-id35974_)))
                                         (foldr (lambda (_g3597535978_
                                                         _g3597635981_)
                                                  (cons _g3597535978_
                                                        _g3597635981_))
                                                '()
                                                _L35930_)
                                         (foldr (lambda (_g3598335986_
                                                         _g3598435989_)
                                                  (cons _g3598335986_
                                                        _g3598435989_))
                                                '()
                                                _L35928_)))
                                       (_exports35994_
                                        (gx#core-expand-export-source
                                         _L35931_))
                                       (_fold-e36014_
                                        (letrec ((_fold-e35997_
                                                  (lambda (_out36000_ _r36002_)
                                                    (if (gx#module-export?
                                                         _out36000_)
                                                        (let* ((_name36004_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36000_))
                       (_$e36007_ (hash-get _keytab35966_ _name36004_)))
                  (if _$e36007_
                      ((lambda (_rename36011_)
                         (hash-put! _found35969_ _name36004_ '#t)
                         (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                _out36000_
                                _rename36011_)
                               _r36002_))
                       _$e36007_)
                      (cons _out36000_ _r36002_)))
                (if (gx#export-set? _out36000_)
                    (foldl _fold-e35997_
                           _r36002_
                           (gx#export-set-exports _out36000_))
                    (cons _out36000_ _r36002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35997_))
                                       (_new-exports36017_
                                        (foldl _fold-e36014_
                                               '()
                                               _exports35994_)))
                                  (for-each
                                   (lambda (_id36022_)
                                     (if (hash-get
                                          _found35969_
                                          (gx#core-identifier-key _id36022_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the export set"
                                          _stx35811_
                                          _id36022_)))
                                   (foldr (lambda (_g3602436027_ _g3602536030_)
                                            (cons _g3602436027_ _g3602536030_))
                                          '()
                                          _L35930_))
                                  (cons 'begin: _new-exports36017_))
                                (_g3581435847_ _g3581535851_)))
                          _new-id3583435922_
                          _id3583535925_
                          _hd3582335868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3582835880_
                                                  _target3582535874_
                                                  '()
                                                  '()))
                                               (_g3581435847_
                                                _g3581535851_)))))
                                     (_g3581435847_ _g3581535851_))))
                             (_g3581435847_ _g3581535851_))))
                     (_g3581435847_ _g3581535851_)))))
         (_g3581336033_ _stx35811_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36039_)
       (let* ((_g3604236060_
               (lambda (_g3604336056_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3604336056_)))
              (_g3604136139_
               (lambda (_g3604336064_)
                 (if (gx#stx-pair? _g3604336064_)
                     (let ((_e3604636067_ (gx#syntax-e _g3604336064_)))
                       (let ((_hd3604736071_
                              (let ()
                                (declare (not safe))
                                (##car _e3604636067_)))
                             (_tl3604836074_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3604636067_))))
                         (if (gx#stx-pair? _tl3604836074_)
                             (let ((_e3604936077_
                                    (gx#syntax-e _tl3604836074_)))
                               (let ((_hd3605036081_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3604936077_)))
                                     (_tl3605136084_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3604936077_))))
                                 (if (gx#stx-pair? _tl3605136084_)
                                     (let ((_e3605236087_
                                            (gx#syntax-e _tl3605136084_)))
                                       (let ((_hd3605336091_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3605236087_)))
                                             (_tl3605436094_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3605236087_))))
                                         (if (gx#stx-null? _tl3605436094_)
                                             ((lambda (_L36097_ _L36099_)
                                                (if (gx#identifier? _L36097_)
                                                    (let* ((_pre36115_
                                                            (gx#stx-e
                                                             _L36097_))
                                                           (_exports36118_
                                                            (gx#core-expand-export-source
                                                             _L36099_))
                                                           (_rename-e36124_
                                                            (lambda (_name36121_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name36121_
                                                               _pre36115_)))
                                                           (_fold-e36134_
                                                            (letrec ((_fold-e36127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_out36130_ _r36132_)
                                (if (gx#module-export? _out36130_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                           _out36130_
                                           (_rename-e36124_
                                            (gx#module-export-name
                                             _out36130_)))
                                          _r36132_)
                                    (if (gx#export-set? _out36130_)
                                        (foldl _fold-e36127_
                                               _r36132_
                                               (gx#export-set-exports
                                                _out36130_))
                                        (cons _out36130_ _r36132_))))))
                      _fold-e36127_)))
              (cons 'begin: (foldl _fold-e36134_ '() _exports36118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3604236060_
                                                     _g3604336064_)))
                                              _hd3605336091_
                                              _hd3605036081_)
                                             (_g3604236060_ _g3604336064_))))
                                     (_g3604236060_ _g3604336064_))))
                             (_g3604236060_ _g3604336064_))))
                     (_g3604236060_ _g3604336064_)))))
         (_g3604136139_ _stx36039_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36143_)
       (let* ((_g3614636166_
               (lambda (_g3614736162_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3614736162_)))
              (_g3614536401_
               (lambda (_g3614736170_)
                 (if (gx#stx-pair? _g3614736170_)
                     (let ((_e3614936173_ (gx#syntax-e _g3614736170_)))
                       (let ((_hd3615036177_
                              (let ()
                                (declare (not safe))
                                (##car _e3614936173_)))
                             (_tl3615136180_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3614936173_))))
                         (if (gx#stx-pair/null? _tl3615136180_)
                             (let ((_g42369_
                                    (gx#syntax-split-splice
                                     _tl3615136180_
                                     '0)))
                               (begin
                                 (let ((_g42370_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42369_)
                                              (##vector-length _g42369_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42370_ 2)))
                                       (error "Context expects 2 values"
                                              _g42370_)))
                                 (let ((_target3615236183_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42369_ 0)))
                                       (_tl3615436186_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42369_ 1))))
                                   (if (gx#stx-null? _tl3615436186_)
                                       (letrec ((_loop3615536189_
                                                 (lambda (_hd3615336193_
                                                          _id3615936196_)
                                                   (if (gx#stx-pair?
                                                        _hd3615336193_)
                                                       (let ((_e3615636199_
                                                              (gx#syntax-e
                                                               _hd3615336193_)))
                                                         (let ((_lp-hd3615736203_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3615636199_)))
                       (_lp-tl3615836206_
                        (let () (declare (not safe)) (##cdr _e3615636199_))))
                   (_loop3615536189_
                    _lp-tl3615836206_
                    (cons _lp-hd3615736203_ _id3615936196_))))
               (let ((_id3616036209_ (reverse _id3615936196_)))
                 ((lambda (_L36213_)
                    (let _lp36229_ ((_rest36232_
                                     (foldr (lambda (_g3639236395_
                                                     _g3639336398_)
                                              (cons _g3639236395_
                                                    _g3639336398_))
                                            '()
                                            _L36213_))
                                    (_ids36234_ '()))
                      (let* ((___stx4210542106_ _rest36232_)
                             (_g3623736249_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4210542106_))))
                        (let ((___kont4210842109_
                               (lambda (_L36277_ _L36279_)
                                 (let ((_info36294_
                                        (gx#syntax-local-value
                                         _L36279_
                                         false)))
                                   (if (class-instance?
                                        |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                        _info36294_)
                                       (let* ((_g3629636313_
                                               (slot-ref
                                                _info36294_
                                                'expander-identifiers))
                                              (_E3629836319_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g3629636313_)))
                                              (_K3629936331_
                                               (lambda (_setf36323_
                                                        _getf36325_
                                                        _type?36326_
                                                        _make-type36327_
                                                        _type::t36328_
                                                        _super36329_)
                                                 (_lp36229_
                                                  _L36277_
                                                  (cons _L36279_
                                                        (cons _type::t36328_
                                                              (cons _make-type36327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _type?36326_
                                  (foldr cons
                                         (foldr cons _ids36234_ _setf36323_)
                                         _getf36325_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _g3629636313_))
                                             (let ((_hd3630036335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _g3629636313_)))
                                                   (_tl3630136338_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _g3629636313_))))
                                               (let ((_super36341_
                                                      _hd3630036335_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _tl3630136338_))
                                                     (let ((_hd3630236344_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _tl3630136338_)))
                                                           (_tl3630336347_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _tl3630136338_))))
                                                       (let ((_type::t36350_
                                                              _hd3630236344_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##pair? _tl3630336347_))
                     (let ((_hd3630436353_
                            (let ()
                              (declare (not safe))
                              (##car _tl3630336347_)))
                           (_tl3630536356_
                            (let ()
                              (declare (not safe))
                              (##cdr _tl3630336347_))))
                       (let ((_make-type36359_ _hd3630436353_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _tl3630536356_))
                             (let ((_hd3630636362_
                                    (let ()
                                      (declare (not safe))
                                      (##car _tl3630536356_)))
                                   (_tl3630736365_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl3630536356_))))
                               (let ((_type?36368_ _hd3630636362_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl3630736365_))
                                     (let ((_hd3630836371_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl3630736365_)))
                                           (_tl3630936374_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl3630736365_))))
                                       (let ((_getf36377_ _hd3630836371_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _tl3630936374_))
                                             (let ((_hd3631036380_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl3630936374_)))
                                                   (_tl3631136383_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _tl3630936374_))))
                                               (let ((_setf36386_
                                                      _hd3631036380_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _tl3631136383_))
                                                     (_K3629936331_
                                                      _setf36386_
                                                      _getf36377_
                                                      _type?36368_
                                                      _make-type36359_
                                                      _type::t36350_
                                                      _super36341_)
                                                     (_E3629836319_))))
                                             (_E3629836319_))))
                                     (_E3629836319_))))
                             (_E3629836319_))))
                     (_E3629836319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3629836319_))))
                                             (_E3629836319_)))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Incomplete type info"
                                        _stx36143_
                                        _L36279_)))))
                              (___kont4211042111_
                               (lambda () (cons 'begin: _ids36234_))))
                          (if (gx#stx-pair? ___stx4210542106_)
                              (let ((_e3624136267_
                                     (gx#syntax-e ___stx4210542106_)))
                                (let ((_tl3624336274_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3624136267_)))
                                      (_hd3624236271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3624136267_))))
                                  (___kont4210842109_
                                   _tl3624336274_
                                   _hd3624236271_)))
                              (___kont4211042111_))))))
                  _id3616036209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3615536189_
                                          _target3615236183_
                                          '()))
                                       (_g3614636166_ _g3614736170_)))))
                             (_g3614636166_ _g3614736170_))))
                     (_g3614636166_ _g3614736170_)))))
         (_g3614536401_ _stx36143_))))))
