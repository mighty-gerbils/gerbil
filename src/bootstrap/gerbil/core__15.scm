(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34320_)
      (let* ((___stx4246442465_ _$stx34320_)
             (_g3432534344_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4246442465_))))
        (let ((___kont4246742468_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4246942470_
               (lambda (_L34371_ _L34373_ _L34374_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L34373_
                                   (cons (cons _L34374_ _L34371_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L34373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4246442465_)
              (let ((_e3432934397_ (gx#syntax-e ___stx4246442465_)))
                (let ((_tl3432734404_
                       (let () (declare (not safe)) (##cdr _e3432934397_)))
                      (_hd3432834401_
                       (let () (declare (not safe)) (##car _e3432934397_))))
                  (if (gx#stx-null? _tl3432734404_)
                      (___kont4246742468_)
                      (if (gx#stx-pair? _tl3432734404_)
                          (let ((_e3433834361_ (gx#syntax-e _tl3432734404_)))
                            (let ((_tl3433634368_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3433834361_)))
                                  (_hd3433734365_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3433834361_))))
                              (___kont4246942470_
                               _tl3433634368_
                               _hd3433734365_
                               _hd3432834401_)))
                          (let () (declare (not safe)) (_g3432534344_))))))
              (let () (declare (not safe)) (_g3432534344_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34415_)
      (let* ((___stx4249442495_ _$stx34415_)
             (_g3442034460_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4249442495_))))
        (let ((___kont4249742498_
               (lambda (_L34598_ _L34600_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34600_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L34598_ '()))
                                   '())))))
              (___kont4249942500_
               (lambda (_L34527_ _L34529_ _L34530_ _L34531_)
                 (cons _L34531_
                       (cons _L34530_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34529_
                                               (foldr (lambda (_g3455234555_
                                                               _g3455334558_)
                                                        (cons _g3455234555_
                                                              _g3455334558_))
                                                      '()
                                                      _L34527_)))
                                   '()))))))
          (let* ((___match4254942550_
                  (lambda (_e3443934467_
                           _hd3443834471_
                           _tl3443734474_
                           _e3444234477_
                           _hd3444134481_
                           _tl3444034484_
                           _e3444534487_
                           _hd3444434491_
                           _tl3444334494_
                           ___splice4250142502_
                           _target3444634497_
                           _tl3444834500_)
                    (letrec ((_loop3444934503_
                              (lambda (_hd3444734507_ _body3445334510_)
                                (if (gx#stx-pair? _hd3444734507_)
                                    (let ((_e3445034513_
                                           (gx#syntax-e _hd3444734507_)))
                                      (let ((_lp-tl3445234520_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3445034513_)))
                                            (_lp-hd3445134517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3445034513_))))
                                        (_loop3444934503_
                                         _lp-tl3445234520_
                                         (cons _lp-hd3445134517_
                                               _body3445334510_))))
                                    (let ((_body3445434523_
                                           (reverse _body3445334510_)))
                                      (let ((_L34527_ _body3445434523_)
                                            (_L34529_ _tl3444334494_)
                                            (_L34530_ _hd3444434491_)
                                            (_L34531_ _hd3443834471_))
                                        (if (gx#identifier? _L34530_)
                                            (___kont4249942500_
                                             _L34527_
                                             _L34529_
                                             _L34530_
                                             _L34531_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3442034460_)))))))))
                      (_loop3444934503_ _target3444634497_ '()))))
                 (___match4252342524_
                  (lambda (_e3442634568_
                           _hd3442534572_
                           _tl3442434575_
                           _e3442934578_
                           _hd3442834582_
                           _tl3442734585_
                           _e3443234588_
                           _hd3443134592_
                           _tl3443034595_)
                    (let ((_L34598_ _hd3443134592_) (_L34600_ _hd3442834582_))
                      (if (gx#identifier? _L34600_)
                          (___kont4249742498_ _L34598_ _L34600_)
                          (if (gx#stx-pair? _hd3442834582_)
                              (let ((_e3444534487_
                                     (gx#syntax-e _hd3442834582_)))
                                (let ((_tl3444334494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3444534487_)))
                                      (_hd3444434491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3444534487_))))
                                  (if (gx#stx-pair/null? _tl3442734585_)
                                      (let ((___splice4250142502_
                                             (gx#syntax-split-splice
                                              _tl3442734585_
                                              '0)))
                                        (let ((_tl3444834500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4250142502_
                                                  '1)))
                                              (_target3444634497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4250142502_
                                                  '0))))
                                          (if (gx#stx-null? _tl3444834500_)
                                              (___match4254942550_
                                               _e3442634568_
                                               _hd3442534572_
                                               _tl3442434575_
                                               _e3442934578_
                                               _hd3442834582_
                                               _tl3442734585_
                                               _e3444534487_
                                               _hd3444434491_
                                               _tl3444334494_
                                               ___splice4250142502_
                                               _target3444634497_
                                               _tl3444834500_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3442034460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3442034460_)))))
                              (let ()
                                (declare (not safe))
                                (_g3442034460_))))))))
            (if (gx#stx-pair? ___stx4249442495_)
                (let ((_e3442634568_ (gx#syntax-e ___stx4249442495_)))
                  (let ((_tl3442434575_
                         (let () (declare (not safe)) (##cdr _e3442634568_)))
                        (_hd3442534572_
                         (let () (declare (not safe)) (##car _e3442634568_))))
                    (if (gx#stx-pair? _tl3442434575_)
                        (let ((_e3442934578_ (gx#syntax-e _tl3442434575_)))
                          (let ((_tl3442734585_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3442934578_)))
                                (_hd3442834582_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3442934578_))))
                            (if (gx#stx-pair? _tl3442734585_)
                                (let ((_e3443234588_
                                       (gx#syntax-e _tl3442734585_)))
                                  (let ((_tl3443034595_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3443234588_)))
                                        (_hd3443134592_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3443234588_))))
                                    (if (gx#stx-null? _tl3443034595_)
                                        (___match4252342524_
                                         _e3442634568_
                                         _hd3442534572_
                                         _tl3442434575_
                                         _e3442934578_
                                         _hd3442834582_
                                         _tl3442734585_
                                         _e3443234588_
                                         _hd3443134592_
                                         _tl3443034595_)
                                        (if (gx#stx-pair? _hd3442834582_)
                                            (let ((_e3444534487_
                                                   (gx#syntax-e
                                                    _hd3442834582_)))
                                              (let ((_tl3444334494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3444534487_)))
                                                    (_hd3444434491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3444534487_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3442734585_)
                                                    (let ((___splice4250142502_
                                                           (gx#syntax-split-splice
                                                            _tl3442734585_
                                                            '0)))
                                                      (let ((_tl3444834500_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4250142502_ '1)))
                    (_target3444634497_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4250142502_ '0))))
                (if (gx#stx-null? _tl3444834500_)
                    (___match4254942550_
                     _e3442634568_
                     _hd3442534572_
                     _tl3442434575_
                     _e3442934578_
                     _hd3442834582_
                     _tl3442734585_
                     _e3444534487_
                     _hd3444434491_
                     _tl3444334494_
                     ___splice4250142502_
                     _target3444634497_
                     _tl3444834500_)
                    (let () (declare (not safe)) (_g3442034460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3442034460_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3442034460_))))))
                                (if (gx#stx-pair? _hd3442834582_)
                                    (let ((_e3444534487_
                                           (gx#syntax-e _hd3442834582_)))
                                      (let ((_tl3444334494_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3444534487_)))
                                            (_hd3444434491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3444534487_))))
                                        (if (gx#stx-pair/null? _tl3442734585_)
                                            (let ((___splice4250142502_
                                                   (gx#syntax-split-splice
                                                    _tl3442734585_
                                                    '0)))
                                              (let ((_tl3444834500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4250142502_
                                                        '1)))
                                                    (_target3444634497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4250142502_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3444834500_)
                                                    (___match4254942550_
                                                     _e3442634568_
                                                     _hd3442534572_
                                                     _tl3442434575_
                                                     _e3442934578_
                                                     _hd3442834582_
                                                     _tl3442734585_
                                                     _e3444534487_
                                                     _hd3444434491_
                                                     _tl3444334494_
                                                     ___splice4250142502_
                                                     _target3444634497_
                                                     _tl3444834500_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3442034460_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3442034460_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3442034460_))))))
                        (let () (declare (not safe)) (_g3442034460_)))))
                (let () (declare (not safe)) (_g3442034460_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34620_)
      (let* ((___stx4255242553_ _$stx34620_)
             (_g3462534665_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4255242553_))))
        (let ((___kont4255542556_
               (lambda (_L34803_ _L34805_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34805_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L34803_ '()))
                                   '())))))
              (___kont4255742558_
               (lambda (_L34732_ _L34734_ _L34735_ _L34736_)
                 (cons _L34736_
                       (cons _L34735_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34734_
                                               (foldr (lambda (_g3475734760_
                                                               _g3475834763_)
                                                        (cons _g3475734760_
                                                              _g3475834763_))
                                                      '()
                                                      _L34732_)))
                                   '()))))))
          (let* ((___match4260742608_
                  (lambda (_e3464434672_
                           _hd3464334676_
                           _tl3464234679_
                           _e3464734682_
                           _hd3464634686_
                           _tl3464534689_
                           _e3465034692_
                           _hd3464934696_
                           _tl3464834699_
                           ___splice4255942560_
                           _target3465134702_
                           _tl3465334705_)
                    (letrec ((_loop3465434708_
                              (lambda (_hd3465234712_ _body3465834715_)
                                (if (gx#stx-pair? _hd3465234712_)
                                    (let ((_e3465534718_
                                           (gx#syntax-e _hd3465234712_)))
                                      (let ((_lp-tl3465734725_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3465534718_)))
                                            (_lp-hd3465634722_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3465534718_))))
                                        (_loop3465434708_
                                         _lp-tl3465734725_
                                         (cons _lp-hd3465634722_
                                               _body3465834715_))))
                                    (let ((_body3465934728_
                                           (reverse _body3465834715_)))
                                      (let ((_L34732_ _body3465934728_)
                                            (_L34734_ _tl3464834699_)
                                            (_L34735_ _hd3464934696_)
                                            (_L34736_ _hd3464334676_))
                                        (if (gx#identifier? _L34735_)
                                            (___kont4255742558_
                                             _L34732_
                                             _L34734_
                                             _L34735_
                                             _L34736_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3462534665_)))))))))
                      (_loop3465434708_ _target3465134702_ '()))))
                 (___match4258142582_
                  (lambda (_e3463134773_
                           _hd3463034777_
                           _tl3462934780_
                           _e3463434783_
                           _hd3463334787_
                           _tl3463234790_
                           _e3463734793_
                           _hd3463634797_
                           _tl3463534800_)
                    (let ((_L34803_ _hd3463634797_) (_L34805_ _hd3463334787_))
                      (if (gx#identifier? _L34805_)
                          (___kont4255542556_ _L34803_ _L34805_)
                          (if (gx#stx-pair? _hd3463334787_)
                              (let ((_e3465034692_
                                     (gx#syntax-e _hd3463334787_)))
                                (let ((_tl3464834699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3465034692_)))
                                      (_hd3464934696_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3465034692_))))
                                  (if (gx#stx-pair/null? _tl3463234790_)
                                      (let ((___splice4255942560_
                                             (gx#syntax-split-splice
                                              _tl3463234790_
                                              '0)))
                                        (let ((_tl3465334705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4255942560_
                                                  '1)))
                                              (_target3465134702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4255942560_
                                                  '0))))
                                          (if (gx#stx-null? _tl3465334705_)
                                              (___match4260742608_
                                               _e3463134773_
                                               _hd3463034777_
                                               _tl3462934780_
                                               _e3463434783_
                                               _hd3463334787_
                                               _tl3463234790_
                                               _e3465034692_
                                               _hd3464934696_
                                               _tl3464834699_
                                               ___splice4255942560_
                                               _target3465134702_
                                               _tl3465334705_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3462534665_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3462534665_)))))
                              (let ()
                                (declare (not safe))
                                (_g3462534665_))))))))
            (if (gx#stx-pair? ___stx4255242553_)
                (let ((_e3463134773_ (gx#syntax-e ___stx4255242553_)))
                  (let ((_tl3462934780_
                         (let () (declare (not safe)) (##cdr _e3463134773_)))
                        (_hd3463034777_
                         (let () (declare (not safe)) (##car _e3463134773_))))
                    (if (gx#stx-pair? _tl3462934780_)
                        (let ((_e3463434783_ (gx#syntax-e _tl3462934780_)))
                          (let ((_tl3463234790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3463434783_)))
                                (_hd3463334787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3463434783_))))
                            (if (gx#stx-pair? _tl3463234790_)
                                (let ((_e3463734793_
                                       (gx#syntax-e _tl3463234790_)))
                                  (let ((_tl3463534800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3463734793_)))
                                        (_hd3463634797_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3463734793_))))
                                    (if (gx#stx-null? _tl3463534800_)
                                        (___match4258142582_
                                         _e3463134773_
                                         _hd3463034777_
                                         _tl3462934780_
                                         _e3463434783_
                                         _hd3463334787_
                                         _tl3463234790_
                                         _e3463734793_
                                         _hd3463634797_
                                         _tl3463534800_)
                                        (if (gx#stx-pair? _hd3463334787_)
                                            (let ((_e3465034692_
                                                   (gx#syntax-e
                                                    _hd3463334787_)))
                                              (let ((_tl3464834699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3465034692_)))
                                                    (_hd3464934696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3465034692_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3463234790_)
                                                    (let ((___splice4255942560_
                                                           (gx#syntax-split-splice
                                                            _tl3463234790_
                                                            '0)))
                                                      (let ((_tl3465334705_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4255942560_ '1)))
                    (_target3465134702_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4255942560_ '0))))
                (if (gx#stx-null? _tl3465334705_)
                    (___match4260742608_
                     _e3463134773_
                     _hd3463034777_
                     _tl3462934780_
                     _e3463434783_
                     _hd3463334787_
                     _tl3463234790_
                     _e3465034692_
                     _hd3464934696_
                     _tl3464834699_
                     ___splice4255942560_
                     _target3465134702_
                     _tl3465334705_)
                    (let () (declare (not safe)) (_g3462534665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3462534665_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3462534665_))))))
                                (if (gx#stx-pair? _hd3463334787_)
                                    (let ((_e3465034692_
                                           (gx#syntax-e _hd3463334787_)))
                                      (let ((_tl3464834699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3465034692_)))
                                            (_hd3464934696_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3465034692_))))
                                        (if (gx#stx-pair/null? _tl3463234790_)
                                            (let ((___splice4255942560_
                                                   (gx#syntax-split-splice
                                                    _tl3463234790_
                                                    '0)))
                                              (let ((_tl3465334705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4255942560_
                                                        '1)))
                                                    (_target3465134702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4255942560_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3465334705_)
                                                    (___match4260742608_
                                                     _e3463134773_
                                                     _hd3463034777_
                                                     _tl3462934780_
                                                     _e3463434783_
                                                     _hd3463334787_
                                                     _tl3463234790_
                                                     _e3465034692_
                                                     _hd3464934696_
                                                     _tl3464834699_
                                                     ___splice4255942560_
                                                     _target3465134702_
                                                     _tl3465334705_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3462534665_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3462534665_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3462534665_))))))
                        (let () (declare (not safe)) (_g3462534665_)))))
                (let () (declare (not safe)) (_g3462534665_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34825_)
      (let* ((___stx4261042611_ _$stx34825_)
             (_g3483034870_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4261042611_))))
        (let ((___kont4261342614_
               (lambda (_L35008_ _L35010_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L35010_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L35008_ '()))
                                   '())))))
              (___kont4261542616_
               (lambda (_L34937_ _L34939_ _L34940_ _L34941_)
                 (cons _L34941_
                       (cons _L34940_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34939_
                                               (foldr (lambda (_g3496234965_
                                                               _g3496334968_)
                                                        (cons _g3496234965_
                                                              _g3496334968_))
                                                      '()
                                                      _L34937_)))
                                   '()))))))
          (let* ((___match4266542666_
                  (lambda (_e3484934877_
                           _hd3484834881_
                           _tl3484734884_
                           _e3485234887_
                           _hd3485134891_
                           _tl3485034894_
                           _e3485534897_
                           _hd3485434901_
                           _tl3485334904_
                           ___splice4261742618_
                           _target3485634907_
                           _tl3485834910_)
                    (letrec ((_loop3485934913_
                              (lambda (_hd3485734917_ _body3486334920_)
                                (if (gx#stx-pair? _hd3485734917_)
                                    (let ((_e3486034923_
                                           (gx#syntax-e _hd3485734917_)))
                                      (let ((_lp-tl3486234930_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3486034923_)))
                                            (_lp-hd3486134927_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3486034923_))))
                                        (_loop3485934913_
                                         _lp-tl3486234930_
                                         (cons _lp-hd3486134927_
                                               _body3486334920_))))
                                    (let ((_body3486434933_
                                           (reverse _body3486334920_)))
                                      (let ((_L34937_ _body3486434933_)
                                            (_L34939_ _tl3485334904_)
                                            (_L34940_ _hd3485434901_)
                                            (_L34941_ _hd3484834881_))
                                        (if (gx#identifier? _L34940_)
                                            (___kont4261542616_
                                             _L34937_
                                             _L34939_
                                             _L34940_
                                             _L34941_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3483034870_)))))))))
                      (_loop3485934913_ _target3485634907_ '()))))
                 (___match4263942640_
                  (lambda (_e3483634978_
                           _hd3483534982_
                           _tl3483434985_
                           _e3483934988_
                           _hd3483834992_
                           _tl3483734995_
                           _e3484234998_
                           _hd3484135002_
                           _tl3484035005_)
                    (let ((_L35008_ _hd3484135002_) (_L35010_ _hd3483834992_))
                      (if (gx#identifier? _L35010_)
                          (___kont4261342614_ _L35008_ _L35010_)
                          (if (gx#stx-pair? _hd3483834992_)
                              (let ((_e3485534897_
                                     (gx#syntax-e _hd3483834992_)))
                                (let ((_tl3485334904_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3485534897_)))
                                      (_hd3485434901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3485534897_))))
                                  (if (gx#stx-pair/null? _tl3483734995_)
                                      (let ((___splice4261742618_
                                             (gx#syntax-split-splice
                                              _tl3483734995_
                                              '0)))
                                        (let ((_tl3485834910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4261742618_
                                                  '1)))
                                              (_target3485634907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4261742618_
                                                  '0))))
                                          (if (gx#stx-null? _tl3485834910_)
                                              (___match4266542666_
                                               _e3483634978_
                                               _hd3483534982_
                                               _tl3483434985_
                                               _e3483934988_
                                               _hd3483834992_
                                               _tl3483734995_
                                               _e3485534897_
                                               _hd3485434901_
                                               _tl3485334904_
                                               ___splice4261742618_
                                               _target3485634907_
                                               _tl3485834910_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3483034870_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3483034870_)))))
                              (let ()
                                (declare (not safe))
                                (_g3483034870_))))))))
            (if (gx#stx-pair? ___stx4261042611_)
                (let ((_e3483634978_ (gx#syntax-e ___stx4261042611_)))
                  (let ((_tl3483434985_
                         (let () (declare (not safe)) (##cdr _e3483634978_)))
                        (_hd3483534982_
                         (let () (declare (not safe)) (##car _e3483634978_))))
                    (if (gx#stx-pair? _tl3483434985_)
                        (let ((_e3483934988_ (gx#syntax-e _tl3483434985_)))
                          (let ((_tl3483734995_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3483934988_)))
                                (_hd3483834992_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3483934988_))))
                            (if (gx#stx-pair? _tl3483734995_)
                                (let ((_e3484234998_
                                       (gx#syntax-e _tl3483734995_)))
                                  (let ((_tl3484035005_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3484234998_)))
                                        (_hd3484135002_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3484234998_))))
                                    (if (gx#stx-null? _tl3484035005_)
                                        (___match4263942640_
                                         _e3483634978_
                                         _hd3483534982_
                                         _tl3483434985_
                                         _e3483934988_
                                         _hd3483834992_
                                         _tl3483734995_
                                         _e3484234998_
                                         _hd3484135002_
                                         _tl3484035005_)
                                        (if (gx#stx-pair? _hd3483834992_)
                                            (let ((_e3485534897_
                                                   (gx#syntax-e
                                                    _hd3483834992_)))
                                              (let ((_tl3485334904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3485534897_)))
                                                    (_hd3485434901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3485534897_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3483734995_)
                                                    (let ((___splice4261742618_
                                                           (gx#syntax-split-splice
                                                            _tl3483734995_
                                                            '0)))
                                                      (let ((_tl3485834910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4261742618_ '1)))
                    (_target3485634907_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4261742618_ '0))))
                (if (gx#stx-null? _tl3485834910_)
                    (___match4266542666_
                     _e3483634978_
                     _hd3483534982_
                     _tl3483434985_
                     _e3483934988_
                     _hd3483834992_
                     _tl3483734995_
                     _e3485534897_
                     _hd3485434901_
                     _tl3485334904_
                     ___splice4261742618_
                     _target3485634907_
                     _tl3485834910_)
                    (let () (declare (not safe)) (_g3483034870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3483034870_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3483034870_))))))
                                (if (gx#stx-pair? _hd3483834992_)
                                    (let ((_e3485534897_
                                           (gx#syntax-e _hd3483834992_)))
                                      (let ((_tl3485334904_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3485534897_)))
                                            (_hd3485434901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3485534897_))))
                                        (if (gx#stx-pair/null? _tl3483734995_)
                                            (let ((___splice4261742618_
                                                   (gx#syntax-split-splice
                                                    _tl3483734995_
                                                    '0)))
                                              (let ((_tl3485834910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4261742618_
                                                        '1)))
                                                    (_target3485634907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4261742618_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3485834910_)
                                                    (___match4266542666_
                                                     _e3483634978_
                                                     _hd3483534982_
                                                     _tl3483434985_
                                                     _e3483934988_
                                                     _hd3483834992_
                                                     _tl3483734995_
                                                     _e3485534897_
                                                     _hd3485434901_
                                                     _tl3485334904_
                                                     ___splice4261742618_
                                                     _target3485634907_
                                                     _tl3485834910_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3483034870_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3483034870_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3483034870_))))))
                        (let () (declare (not safe)) (_g3483034870_)))))
                (let () (declare (not safe)) (_g3483034870_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35030_)
       (let* ((_g3503335053_
               (lambda (_g3503435049_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3503435049_)))
              (_g3503235124_
               (lambda (_g3503435057_)
                 (if (gx#stx-pair? _g3503435057_)
                     (let ((_e3503835060_ (gx#syntax-e _g3503435057_)))
                       (let ((_hd3503735064_
                              (let ()
                                (declare (not safe))
                                (##car _e3503835060_)))
                             (_tl3503635067_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3503835060_))))
                         (if (gx#stx-pair/null? _tl3503635067_)
                             (let ((_g43065_
                                    (gx#syntax-split-splice
                                     _tl3503635067_
                                     '0)))
                               (begin
                                 (let ((_g43066_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43065_)
                                              (##vector-length _g43065_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43066_ 2)))
                                       (error "Context expects 2 values"
                                              _g43066_)))
                                 (let ((_target3503935070_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43065_ 0)))
                                       (_tl3504135073_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43065_ 1))))
                                   (if (gx#stx-null? _tl3504135073_)
                                       (letrec ((_loop3504235076_
                                                 (lambda (_hd3504035080_
                                                          _body3504635083_)
                                                   (if (gx#stx-pair?
                                                        _hd3504035080_)
                                                       (let ((_e3504335086_
                                                              (gx#syntax-e
                                                               _hd3504035080_)))
                                                         (let ((_lp-hd3504435090_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3504335086_)))
                       (_lp-tl3504535093_
                        (let () (declare (not safe)) (##cdr _e3504335086_))))
                   (_loop3504235076_
                    _lp-tl3504535093_
                    (cons _lp-hd3504435090_ _body3504635083_))))
               (let ((_body3504735096_ (reverse _body3504635083_)))
                 ((lambda (_L35100_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_g3511535118_ _g3511635121_)
                                         (cons _g3511535118_ _g3511635121_))
                                       '()
                                       _L35100_))))
                  _body3504735096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3504235076_
                                          _target3503935070_
                                          '()))
                                       (_g3503335053_ _g3503435057_)))))
                             (_g3503335053_ _g3503435057_))))
                     (_g3503335053_ _g3503435057_)))))
         (_g3503235124_ _stx35030_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35129_)
       (let* ((_g3513235152_
               (lambda (_g3513335148_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3513335148_)))
              (_g3513135223_
               (lambda (_g3513335156_)
                 (if (gx#stx-pair? _g3513335156_)
                     (let ((_e3513735159_ (gx#syntax-e _g3513335156_)))
                       (let ((_hd3513635163_
                              (let ()
                                (declare (not safe))
                                (##car _e3513735159_)))
                             (_tl3513535166_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3513735159_))))
                         (if (gx#stx-pair/null? _tl3513535166_)
                             (let ((_g43067_
                                    (gx#syntax-split-splice
                                     _tl3513535166_
                                     '0)))
                               (begin
                                 (let ((_g43068_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43067_)
                                              (##vector-length _g43067_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43068_ 2)))
                                       (error "Context expects 2 values"
                                              _g43068_)))
                                 (let ((_target3513835169_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43067_ 0)))
                                       (_tl3514035172_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43067_ 1))))
                                   (if (gx#stx-null? _tl3514035172_)
                                       (letrec ((_loop3514135175_
                                                 (lambda (_hd3513935179_
                                                          _body3514535182_)
                                                   (if (gx#stx-pair?
                                                        _hd3513935179_)
                                                       (let ((_e3514235185_
                                                              (gx#syntax-e
                                                               _hd3513935179_)))
                                                         (let ((_lp-hd3514335189_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3514235185_)))
                       (_lp-tl3514435192_
                        (let () (declare (not safe)) (##cdr _e3514235185_))))
                   (_loop3514135175_
                    _lp-tl3514435192_
                    (cons _lp-hd3514335189_ _body3514535182_))))
               (let ((_body3514635195_ (reverse _body3514535182_)))
                 ((lambda (_L35199_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_g3521435217_ _g3521535220_)
                                         (cons _g3521435217_ _g3521535220_))
                                       '()
                                       _L35199_))))
                  _body3514635195_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3514135175_
                                          _target3513835169_
                                          '()))
                                       (_g3513235152_ _g3513335156_)))))
                             (_g3513235152_ _g3513335156_))))
                     (_g3513235152_ _g3513335156_)))))
         (_g3513135223_ _stx35129_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35228_)
       (let* ((_g3523135255_
               (lambda (_g3523235251_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3523235251_)))
              (_g3523035377_
               (lambda (_g3523235259_)
                 (if (gx#stx-pair? _g3523235259_)
                     (let ((_e3523735262_ (gx#syntax-e _g3523235259_)))
                       (let ((_hd3523635266_
                              (let ()
                                (declare (not safe))
                                (##car _e3523735262_)))
                             (_tl3523535269_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3523735262_))))
                         (if (gx#stx-pair? _tl3523535269_)
                             (let ((_e3524035272_
                                    (gx#syntax-e _tl3523535269_)))
                               (let ((_hd3523935276_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3524035272_)))
                                     (_tl3523835279_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3524035272_))))
                                 (if (gx#stx-pair/null? _tl3523835279_)
                                     (let ((_g43069_
                                            (gx#syntax-split-splice
                                             _tl3523835279_
                                             '0)))
                                       (begin
                                         (let ((_g43070_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43069_)
                                                      (##vector-length
                                                       _g43069_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43070_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43070_)))
                                         (let ((_target3524135282_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43069_ 0)))
                                               (_tl3524335285_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43069_ 1))))
                                           (if (gx#stx-null? _tl3524335285_)
                                               (letrec ((_loop3524435288_
                                                         (lambda (_hd3524235292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3524835295_)
                   (if (gx#stx-pair? _hd3524235292_)
                       (let ((_e3524535298_ (gx#syntax-e _hd3524235292_)))
                         (let ((_lp-hd3524635302_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3524535298_)))
                               (_lp-tl3524735305_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3524535298_))))
                           (_loop3524435288_
                            _lp-tl3524735305_
                            (cons _lp-hd3524635302_ _id3524835295_))))
                       (let ((_id3524935308_ (reverse _id3524835295_)))
                         ((lambda (_L35312_ _L35314_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3533135334_ _g3533235337_)
                                          (cons _g3533135334_ _g3533235337_))
                                        '()
                                        _L35312_))
                                (let* ((_keys35348_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3533935342_
                                                         _g3534035345_)
                                                  (cons _g3533935342_
                                                        _g3534035345_))
                                                '()
                                                _L35312_)))
                                       (_keytab35359_
                                        (let ((_ht35351_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3535335355_)
                                             (hash-put!
                                              _ht35351_
                                              _g3535335355_
                                              '#t))
                                           _keys35348_)
                                          _ht35351_))
                                       (_imports35362_
                                        (gx#core-expand-import-source
                                         _L35314_))
                                       (_fold-e35372_
                                        (letrec ((_fold-e35365_
                                                  (lambda (_in35368_ _r35370_)
                                                    (if (gx#module-import?
                                                         _in35368_)
                                                        (if (hash-get
                                                             _keytab35359_
                                                             (gx#module-import-name
                                                              _in35368_))
                                                            (cons _in35368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35370_)
                    _r35370_)
                (if (gx#import-set? _in35368_)
                    (foldl _fold-e35365_
                           _r35370_
                           (gx#import-set-imports _in35368_))
                    _r35370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35365_)))
                                  (cons 'begin:
                                        (foldl _fold-e35372_
                                               '()
                                               _imports35362_)))
                                (_g3523135255_ _g3523235259_)))
                          _id3524935308_
                          _hd3523935276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3524435288_
                                                  _target3524135282_
                                                  '()))
                                               (_g3523135255_
                                                _g3523235259_)))))
                                     (_g3523135255_ _g3523235259_))))
                             (_g3523135255_ _g3523235259_))))
                     (_g3523135255_ _g3523235259_)))))
         (_g3523035377_ _stx35228_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35382_)
       (let* ((_g3538535409_
               (lambda (_g3538635405_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3538635405_)))
              (_g3538435531_
               (lambda (_g3538635413_)
                 (if (gx#stx-pair? _g3538635413_)
                     (let ((_e3539135416_ (gx#syntax-e _g3538635413_)))
                       (let ((_hd3539035420_
                              (let ()
                                (declare (not safe))
                                (##car _e3539135416_)))
                             (_tl3538935423_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3539135416_))))
                         (if (gx#stx-pair? _tl3538935423_)
                             (let ((_e3539435426_
                                    (gx#syntax-e _tl3538935423_)))
                               (let ((_hd3539335430_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3539435426_)))
                                     (_tl3539235433_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3539435426_))))
                                 (if (gx#stx-pair/null? _tl3539235433_)
                                     (let ((_g43071_
                                            (gx#syntax-split-splice
                                             _tl3539235433_
                                             '0)))
                                       (begin
                                         (let ((_g43072_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43071_)
                                                      (##vector-length
                                                       _g43071_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43072_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43072_)))
                                         (let ((_target3539535436_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43071_ 0)))
                                               (_tl3539735439_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43071_ 1))))
                                           (if (gx#stx-null? _tl3539735439_)
                                               (letrec ((_loop3539835442_
                                                         (lambda (_hd3539635446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3540235449_)
                   (if (gx#stx-pair? _hd3539635446_)
                       (let ((_e3539935452_ (gx#syntax-e _hd3539635446_)))
                         (let ((_lp-hd3540035456_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3539935452_)))
                               (_lp-tl3540135459_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3539935452_))))
                           (_loop3539835442_
                            _lp-tl3540135459_
                            (cons _lp-hd3540035456_ _id3540235449_))))
                       (let ((_id3540335462_ (reverse _id3540235449_)))
                         ((lambda (_L35466_ _L35468_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3548535488_ _g3548635491_)
                                          (cons _g3548535488_ _g3548635491_))
                                        '()
                                        _L35466_))
                                (let* ((_keys35502_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3549335496_
                                                         _g3549435499_)
                                                  (cons _g3549335496_
                                                        _g3549435499_))
                                                '()
                                                _L35466_)))
                                       (_keytab35513_
                                        (let ((_ht35505_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3550735509_)
                                             (hash-put!
                                              _ht35505_
                                              _g3550735509_
                                              '#t))
                                           _keys35502_)
                                          _ht35505_))
                                       (_imports35516_
                                        (gx#core-expand-import-source
                                         _L35468_))
                                       (_fold-e35526_
                                        (letrec ((_fold-e35519_
                                                  (lambda (_in35522_ _r35524_)
                                                    (if (gx#module-import?
                                                         _in35522_)
                                                        (if (hash-get
                                                             _keytab35513_
                                                             (gx#module-import-name
                                                              _in35522_))
                                                            _r35524_
                                                            (cons _in35522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35524_))
                (if (gx#import-set? _in35522_)
                    (foldl _fold-e35519_
                           _r35524_
                           (gx#import-set-imports _in35522_))
                    (cons _in35522_ _r35524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35519_)))
                                  (cons 'begin:
                                        (foldl _fold-e35526_
                                               '()
                                               _imports35516_)))
                                (_g3538535409_ _g3538635413_)))
                          _id3540335462_
                          _hd3539335430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3539835442_
                                                  _target3539535436_
                                                  '()))
                                               (_g3538535409_
                                                _g3538635413_)))))
                                     (_g3538535409_ _g3538635413_))))
                             (_g3538535409_ _g3538635413_))))
                     (_g3538535409_ _g3538635413_)))))
         (_g3538435531_ _stx35382_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35583_ _rename35585_)
      (gx#make-module-import
       (gx#module-import-source _in35583_)
       _rename35585_
       (gx#module-import-phi _in35583_)
       (gx#module-import-weak? _in35583_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35536_ _pre35538_)
      (let* ((_name3553935547_ _name35536_)
             (_else3554135559_
              (lambda () (make-symbol _pre35538_ _name35536_)))
             (_K3554335567_
              (lambda (_mark35563_ _id35565_)
                (cons (make-symbol _pre35538_ _id35565_) _mark35563_))))
        (if (let () (declare (not safe)) (##pair? _name3553935547_))
            (let ((_hd3554435571_
                   (let () (declare (not safe)) (##car _name3553935547_)))
                  (_tl3554535574_
                   (let () (declare (not safe)) (##cdr _name3553935547_))))
              (let* ((_id35577_ _hd3554435571_) (_mark35580_ _tl3554535574_))
                (declare (not safe))
                (_K3554335567_ _mark35580_ _id35577_)))
            (let () (declare (not safe)) (_else3554135559_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35587_)
       (let* ((_g3559035623_
               (lambda (_g3559135619_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3559135619_)))
              (_g3558935809_
               (lambda (_g3559135627_)
                 (if (gx#stx-pair? _g3559135627_)
                     (let ((_e3559735630_ (gx#syntax-e _g3559135627_)))
                       (let ((_hd3559635634_
                              (let ()
                                (declare (not safe))
                                (##car _e3559735630_)))
                             (_tl3559535637_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3559735630_))))
                         (if (gx#stx-pair? _tl3559535637_)
                             (let ((_e3560035640_
                                    (gx#syntax-e _tl3559535637_)))
                               (let ((_hd3559935644_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3560035640_)))
                                     (_tl3559835647_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3560035640_))))
                                 (if (gx#stx-pair/null? _tl3559835647_)
                                     (let ((_g43073_
                                            (gx#syntax-split-splice
                                             _tl3559835647_
                                             '0)))
                                       (begin
                                         (let ((_g43074_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43073_)
                                                      (##vector-length
                                                       _g43073_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43074_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43074_)))
                                         (let ((_target3560135650_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43073_ 0)))
                                               (_tl3560335653_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43073_ 1))))
                                           (if (gx#stx-null? _tl3560335653_)
                                               (letrec ((_loop3560435656_
                                                         (lambda (_hd3560235660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3560835663_
                          _id3560935665_)
                   (if (gx#stx-pair? _hd3560235660_)
                       (let ((_e3560535668_ (gx#syntax-e _hd3560235660_)))
                         (let ((_lp-hd3560635672_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3560535668_)))
                               (_lp-tl3560735675_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3560535668_))))
                           (if (gx#stx-pair? _lp-hd3560635672_)
                               (let ((_e3561435678_
                                      (gx#syntax-e _lp-hd3560635672_)))
                                 (let ((_hd3561335682_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3561435678_)))
                                       (_tl3561235685_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3561435678_))))
                                   (if (gx#stx-pair? _tl3561235685_)
                                       (let ((_e3561735688_
                                              (gx#syntax-e _tl3561235685_)))
                                         (let ((_hd3561635692_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3561735688_)))
                                               (_tl3561535695_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3561735688_))))
                                           (if (gx#stx-null? _tl3561535695_)
                                               (_loop3560435656_
                                                _lp-tl3560735675_
                                                (cons _hd3561635692_
                                                      _new-id3560835663_)
                                                (cons _hd3561335682_
                                                      _id3560935665_))
                                               (_g3559035623_ _g3559135627_))))
                                       (_g3559035623_ _g3559135627_))))
                               (_g3559035623_ _g3559135627_))))
                       (let ((_new-id3561035698_ (reverse _new-id3560835663_))
                             (_id3561135701_ (reverse _id3560935665_)))
                         ((lambda (_L35704_ _L35706_ _L35707_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3572535728_
                                                      _g3572635731_)
                                               (cons _g3572535728_
                                                     _g3572635731_))
                                             '()
                                             _L35706_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3573335736_
                                                      _g3573435739_)
                                               (cons _g3573335736_
                                                     _g3573435739_))
                                             '()
                                             _L35704_)))
                                (let* ((_keytab35742_ (make-hash-table))
                                       (_found35745_ (make-hash-table))
                                       (_g43075_
                                        (for-each
                                         (lambda (_id35748_ _new-id35750_)
                                           (hash-put!
                                            _keytab35742_
                                            (gx#core-identifier-key _id35748_)
                                            (gx#core-identifier-key
                                             _new-id35750_)))
                                         (foldr (lambda (_g3575135754_
                                                         _g3575235757_)
                                                  (cons _g3575135754_
                                                        _g3575235757_))
                                                '()
                                                _L35706_)
                                         (foldr (lambda (_g3575935762_
                                                         _g3576035765_)
                                                  (cons _g3575935762_
                                                        _g3576035765_))
                                                '()
                                                _L35704_)))
                                       (_imports35770_
                                        (gx#core-expand-import-source
                                         _L35707_))
                                       (_fold-e35790_
                                        (letrec ((_fold-e35773_
                                                  (lambda (_in35776_ _r35778_)
                                                    (if (gx#module-import?
                                                         _in35776_)
                                                        (let* ((_name35780_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35776_))
                       (_$e35783_ (hash-get _keytab35742_ _name35780_)))
                  (if _$e35783_
                      ((lambda (_rename35787_)
                         (hash-put! _found35745_ _name35780_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                  _in35776_
                                  _rename35787_))
                               _r35778_))
                       _$e35783_)
                      (cons _in35776_ _r35778_)))
                (if (gx#import-set? _in35776_)
                    (foldl _fold-e35773_
                           _r35778_
                           (gx#import-set-imports _in35776_))
                    (cons _in35776_ _r35778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35773_))
                                       (_new-imports35793_
                                        (foldl _fold-e35790_
                                               '()
                                               _imports35770_)))
                                  (for-each
                                   (lambda (_id35798_)
                                     (if (hash-get
                                          _found35745_
                                          (gx#core-identifier-key _id35798_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the import set"
                                          _stx35587_
                                          _id35798_)))
                                   (foldr (lambda (_g3580035803_ _g3580135806_)
                                            (cons _g3580035803_ _g3580135806_))
                                          '()
                                          _L35706_))
                                  (cons 'begin: _new-imports35793_))
                                (_g3559035623_ _g3559135627_)))
                          _new-id3561035698_
                          _id3561135701_
                          _hd3559935644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3560435656_
                                                  _target3560135650_
                                                  '()
                                                  '()))
                                               (_g3559035623_
                                                _g3559135627_)))))
                                     (_g3559035623_ _g3559135627_))))
                             (_g3559035623_ _g3559135627_))))
                     (_g3559035623_ _g3559135627_)))))
         (_g3558935809_ _stx35587_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35815_)
       (let* ((_g3581835836_
               (lambda (_g3581935832_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3581935832_)))
              (_g3581735915_
               (lambda (_g3581935840_)
                 (if (gx#stx-pair? _g3581935840_)
                     (let ((_e3582435843_ (gx#syntax-e _g3581935840_)))
                       (let ((_hd3582335847_
                              (let ()
                                (declare (not safe))
                                (##car _e3582435843_)))
                             (_tl3582235850_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3582435843_))))
                         (if (gx#stx-pair? _tl3582235850_)
                             (let ((_e3582735853_
                                    (gx#syntax-e _tl3582235850_)))
                               (let ((_hd3582635857_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3582735853_)))
                                     (_tl3582535860_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3582735853_))))
                                 (if (gx#stx-pair? _tl3582535860_)
                                     (let ((_e3583035863_
                                            (gx#syntax-e _tl3582535860_)))
                                       (let ((_hd3582935867_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3583035863_)))
                                             (_tl3582835870_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3583035863_))))
                                         (if (gx#stx-null? _tl3582835870_)
                                             ((lambda (_L35873_ _L35875_)
                                                (if (gx#identifier? _L35873_)
                                                    (let* ((_pre35891_
                                                            (gx#stx-e
                                                             _L35873_))
                                                           (_imports35894_
                                                            (gx#core-expand-import-source
                                                             _L35875_))
                                                           (_rename-e35900_
                                                            (lambda (_name35897_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name35897_
                         _pre35891_))))
                   (_fold-e35910_
                    (letrec ((_fold-e35903_
                              (lambda (_in35906_ _r35908_)
                                (if (gx#module-import? _in35906_)
                                    (cons (let ((__tmp43076
                                                 (_rename-e35900_
                                                  (gx#module-import-name
                                                   _in35906_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                             _in35906_
                                             __tmp43076))
                                          _r35908_)
                                    (if (gx#import-set? _in35906_)
                                        (foldl _fold-e35903_
                                               _r35908_
                                               (gx#import-set-imports
                                                _in35906_))
                                        (cons _in35906_ _r35908_))))))
                      _fold-e35903_)))
              (cons 'begin: (foldl _fold-e35910_ '() _imports35894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3581835836_
                                                     _g3581935840_)))
                                              _hd3582935867_
                                              _hd3582635857_)
                                             (_g3581835836_ _g3581935840_))))
                                     (_g3581835836_ _g3581935840_))))
                             (_g3581835836_ _g3581935840_))))
                     (_g3581835836_ _g3581935840_)))))
         (_g3581735915_ _stx35815_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx35919_)
       (letrec ((_flatten35922_
                 (lambda (_list-of-lists36177_)
                   (foldr (lambda (_v36180_ _acc36182_)
                            (if (null? _v36180_)
                                _acc36182_
                                (if (pair? _v36180_)
                                    (append (_flatten35922_ _v36180_)
                                            _acc36182_)
                                    (cons _v36180_ _acc36182_))))
                          '()
                          _list-of-lists36177_)))
                (_expand-path35924_
                 (lambda (_top36045_ _mod36047_)
                   (let* ((___stx4266842669_ _mod36047_)
                          (_g3605036072_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4266842669_))))
                     (let ((___kont4267142672_
                            (lambda (_L36140_ _L36142_)
                              (map (lambda (_mod36157_)
                                     (gx#stx-identifier
                                      _top36045_
                                      _top36045_
                                      '"/"
                                      _mod36157_))
                                   (_flatten35922_
                                    (map (lambda (_g3615936161_)
                                           (_expand-path35924_
                                            _L36142_
                                            _g3615936161_))
                                         (foldr (lambda (_g3616436167_
                                                         _g3616536170_)
                                                  (cons _g3616436167_
                                                        _g3616536170_))
                                                '()
                                                _L36140_))))))
                           (___kont4267542676_
                            (lambda (_L36079_)
                              (gx#stx-identifier
                               _top36045_
                               _top36045_
                               '"/"
                               _L36079_))))
                       (let* ((_g3604936093_
                               (lambda ()
                                 (let ((_L36079_ ___stx4266842669_))
                                   (if (or (gx#identifier? _L36079_)
                                           (gx#stx-fixnum? _L36079_))
                                       (___kont4267542676_ _L36079_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3605036072_))))))
                              (___match4269142692_
                               (lambda (_e3605636100_
                                        _hd3605536104_
                                        _tl3605436107_
                                        ___splice4267342674_
                                        _target3605736110_
                                        _tl3605936113_)
                                 (letrec ((_loop3606036116_
                                           (lambda (_hd3605836120_
                                                    _mod3606436123_)
                                             (if (gx#stx-pair? _hd3605836120_)
                                                 (let ((_e3606136126_
                                                        (gx#syntax-e
                                                         _hd3605836120_)))
                                                   (let ((_lp-tl3606336133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3606136126_)))
                                                         (_lp-hd3606236130_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3606136126_))))
                                                     (_loop3606036116_
                                                      _lp-tl3606336133_
                                                      (cons _lp-hd3606236130_
                                                            _mod3606436123_))))
                                                 (let ((_mod3606536136_
                                                        (reverse _mod3606436123_)))
                                                   (___kont4267142672_
                                                    _mod3606536136_
                                                    _hd3605536104_))))))
                                   (_loop3606036116_
                                    _target3605736110_
                                    '())))))
                         (if (gx#stx-pair? ___stx4266842669_)
                             (let ((_e3605636100_
                                    (gx#syntax-e ___stx4266842669_)))
                               (let ((_tl3605436107_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3605636100_)))
                                     (_hd3605536104_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3605636100_))))
                                 (if (gx#stx-pair/null? _tl3605436107_)
                                     (let ((___splice4267342674_
                                            (gx#syntax-split-splice
                                             _tl3605436107_
                                             '0)))
                                       (let ((_tl3605936113_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4267342674_
                                                 '1)))
                                             (_target3605736110_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4267342674_
                                                 '0))))
                                         (if (gx#stx-null? _tl3605936113_)
                                             (___match4269142692_
                                              _e3605636100_
                                              _hd3605536104_
                                              _tl3605436107_
                                              ___splice4267342674_
                                              _target3605736110_
                                              _tl3605936113_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3604936093_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3604936093_)))))
                             (let ()
                               (declare (not safe))
                               (_g3604936093_)))))))))
         (let* ((_g3592635950_
                 (lambda (_g3592735946_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3592735946_)))
                (_g3592536041_
                 (lambda (_g3592735954_)
                   (if (gx#stx-pair? _g3592735954_)
                       (let ((_e3593235957_ (gx#syntax-e _g3592735954_)))
                         (let ((_hd3593135961_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3593235957_)))
                               (_tl3593035964_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3593235957_))))
                           (if (gx#stx-pair? _tl3593035964_)
                               (let ((_e3593535967_
                                      (gx#syntax-e _tl3593035964_)))
                                 (let ((_hd3593435971_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3593535967_)))
                                       (_tl3593335974_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3593535967_))))
                                   (if (gx#stx-pair/null? _tl3593335974_)
                                       (let ((_g43077_
                                              (gx#syntax-split-splice
                                               _tl3593335974_
                                               '0)))
                                         (begin
                                           (let ((_g43078_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g43077_)
                                                        (##vector-length
                                                         _g43077_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g43078_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g43078_)))
                                           (let ((_target3593635977_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g43077_ 0)))
                                                 (_tl3593835980_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g43077_
                                                     1))))
                                             (if (gx#stx-null? _tl3593835980_)
                                                 (letrec ((_loop3593935983_
                                                           (lambda (_hd3593735987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3594335990_)
                     (if (gx#stx-pair? _hd3593735987_)
                         (let ((_e3594035993_ (gx#syntax-e _hd3593735987_)))
                           (let ((_lp-hd3594135997_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3594035993_)))
                                 (_lp-tl3594236000_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3594035993_))))
                             (_loop3593935983_
                              _lp-tl3594236000_
                              (cons _lp-hd3594135997_ _mod3594335990_))))
                         (let ((_mod3594436003_ (reverse _mod3594335990_)))
                           ((lambda (_L36007_ _L36009_)
                              (cons 'begin:
                                    (_flatten35922_
                                     (map (lambda (_g3602736029_)
                                            (_expand-path35924_
                                             _L36009_
                                             _g3602736029_))
                                          (foldr (lambda (_g3603236035_
                                                          _g3603336038_)
                                                   (cons _g3603236035_
                                                         _g3603336038_))
                                                 '()
                                                 _L36007_)))))
                            _mod3594436003_
                            _hd3593435971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3593935983_
                                                    _target3593635977_
                                                    '()))
                                                 (_g3592635950_
                                                  _g3592735954_)))))
                                       (_g3592635950_ _g3592735954_))))
                               (_g3592635950_ _g3592735954_))))
                       (_g3592635950_ _g3592735954_)))))
           (_g3592536041_ _stx35919_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36186_)
       (let* ((_g3618936213_
               (lambda (_g3619036209_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3619036209_)))
              (_g3618836335_
               (lambda (_g3619036217_)
                 (if (gx#stx-pair? _g3619036217_)
                     (let ((_e3619536220_ (gx#syntax-e _g3619036217_)))
                       (let ((_hd3619436224_
                              (let ()
                                (declare (not safe))
                                (##car _e3619536220_)))
                             (_tl3619336227_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3619536220_))))
                         (if (gx#stx-pair? _tl3619336227_)
                             (let ((_e3619836230_
                                    (gx#syntax-e _tl3619336227_)))
                               (let ((_hd3619736234_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3619836230_)))
                                     (_tl3619636237_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3619836230_))))
                                 (if (gx#stx-pair/null? _tl3619636237_)
                                     (let ((_g43079_
                                            (gx#syntax-split-splice
                                             _tl3619636237_
                                             '0)))
                                       (begin
                                         (let ((_g43080_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43079_)
                                                      (##vector-length
                                                       _g43079_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43080_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43080_)))
                                         (let ((_target3619936240_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43079_ 0)))
                                               (_tl3620136243_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43079_ 1))))
                                           (if (gx#stx-null? _tl3620136243_)
                                               (letrec ((_loop3620236246_
                                                         (lambda (_hd3620036250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3620636253_)
                   (if (gx#stx-pair? _hd3620036250_)
                       (let ((_e3620336256_ (gx#syntax-e _hd3620036250_)))
                         (let ((_lp-hd3620436260_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3620336256_)))
                               (_lp-tl3620536263_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3620336256_))))
                           (_loop3620236246_
                            _lp-tl3620536263_
                            (cons _lp-hd3620436260_ _id3620636253_))))
                       (let ((_id3620736266_ (reverse _id3620636253_)))
                         ((lambda (_L36270_ _L36272_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3628936292_ _g3629036295_)
                                          (cons _g3628936292_ _g3629036295_))
                                        '()
                                        _L36270_))
                                (let* ((_keys36306_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3629736300_
                                                         _g3629836303_)
                                                  (cons _g3629736300_
                                                        _g3629836303_))
                                                '()
                                                _L36270_)))
                                       (_keytab36317_
                                        (let ((_ht36309_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3631136313_)
                                             (hash-put!
                                              _ht36309_
                                              _g3631136313_
                                              '#t))
                                           _keys36306_)
                                          _ht36309_))
                                       (_exports36320_
                                        (gx#core-expand-export-source
                                         _L36272_))
                                       (_fold-e36330_
                                        (letrec ((_fold-e36323_
                                                  (lambda (_out36326_ _r36328_)
                                                    (if (gx#module-export?
                                                         _out36326_)
                                                        (if (hash-get
                                                             _keytab36317_
                                                             (gx#module-export-name
                                                              _out36326_))
                                                            _r36328_
                                                            (cons _out36326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r36328_))
                (if (gx#export-set? _out36326_)
                    (foldl _fold-e36323_
                           _r36328_
                           (gx#export-set-exports _out36326_))
                    _r36328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36323_)))
                                  (cons 'begin:
                                        (foldl _fold-e36330_
                                               '()
                                               _exports36320_)))
                                (_g3618936213_ _g3619036217_)))
                          _id3620736266_
                          _hd3619736234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3620236246_
                                                  _target3619936240_
                                                  '()))
                                               (_g3618936213_
                                                _g3619036217_)))))
                                     (_g3618936213_ _g3619036217_))))
                             (_g3618936213_ _g3619036217_))))
                     (_g3618936213_ _g3619036217_)))))
         (_g3618836335_ _stx36186_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36340_ _rename36342_)
      (gx#make-module-export
       (gx#module-export-context _out36340_)
       (gx#module-export-key _out36340_)
       (gx#module-export-phi _out36340_)
       _rename36342_
       (gx#module-export-weak? _out36340_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36344_)
       (let* ((_g3634736380_
               (lambda (_g3634836376_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3634836376_)))
              (_g3634636566_
               (lambda (_g3634836384_)
                 (if (gx#stx-pair? _g3634836384_)
                     (let ((_e3635436387_ (gx#syntax-e _g3634836384_)))
                       (let ((_hd3635336391_
                              (let ()
                                (declare (not safe))
                                (##car _e3635436387_)))
                             (_tl3635236394_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3635436387_))))
                         (if (gx#stx-pair? _tl3635236394_)
                             (let ((_e3635736397_
                                    (gx#syntax-e _tl3635236394_)))
                               (let ((_hd3635636401_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3635736397_)))
                                     (_tl3635536404_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3635736397_))))
                                 (if (gx#stx-pair/null? _tl3635536404_)
                                     (let ((_g43081_
                                            (gx#syntax-split-splice
                                             _tl3635536404_
                                             '0)))
                                       (begin
                                         (let ((_g43082_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g43081_)
                                                      (##vector-length
                                                       _g43081_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g43082_ 2)))
                                               (error "Context expects 2 values"
                                                      _g43082_)))
                                         (let ((_target3635836407_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43081_ 0)))
                                               (_tl3636036410_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g43081_ 1))))
                                           (if (gx#stx-null? _tl3636036410_)
                                               (letrec ((_loop3636136413_
                                                         (lambda (_hd3635936417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3636536420_
                          _id3636636422_)
                   (if (gx#stx-pair? _hd3635936417_)
                       (let ((_e3636236425_ (gx#syntax-e _hd3635936417_)))
                         (let ((_lp-hd3636336429_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3636236425_)))
                               (_lp-tl3636436432_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3636236425_))))
                           (if (gx#stx-pair? _lp-hd3636336429_)
                               (let ((_e3637136435_
                                      (gx#syntax-e _lp-hd3636336429_)))
                                 (let ((_hd3637036439_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3637136435_)))
                                       (_tl3636936442_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3637136435_))))
                                   (if (gx#stx-pair? _tl3636936442_)
                                       (let ((_e3637436445_
                                              (gx#syntax-e _tl3636936442_)))
                                         (let ((_hd3637336449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3637436445_)))
                                               (_tl3637236452_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3637436445_))))
                                           (if (gx#stx-null? _tl3637236452_)
                                               (_loop3636136413_
                                                _lp-tl3636436432_
                                                (cons _hd3637336449_
                                                      _new-id3636536420_)
                                                (cons _hd3637036439_
                                                      _id3636636422_))
                                               (_g3634736380_ _g3634836384_))))
                                       (_g3634736380_ _g3634836384_))))
                               (_g3634736380_ _g3634836384_))))
                       (let ((_new-id3636736455_ (reverse _new-id3636536420_))
                             (_id3636836458_ (reverse _id3636636422_)))
                         ((lambda (_L36461_ _L36463_ _L36464_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3648236485_
                                                      _g3648336488_)
                                               (cons _g3648236485_
                                                     _g3648336488_))
                                             '()
                                             _L36463_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3649036493_
                                                      _g3649136496_)
                                               (cons _g3649036493_
                                                     _g3649136496_))
                                             '()
                                             _L36461_)))
                                (let* ((_keytab36499_ (make-hash-table))
                                       (_found36502_ (make-hash-table))
                                       (_g43083_
                                        (for-each
                                         (lambda (_id36505_ _new-id36507_)
                                           (hash-put!
                                            _keytab36499_
                                            (gx#core-identifier-key _id36505_)
                                            (gx#core-identifier-key
                                             _new-id36507_)))
                                         (foldr (lambda (_g3650836511_
                                                         _g3650936514_)
                                                  (cons _g3650836511_
                                                        _g3650936514_))
                                                '()
                                                _L36463_)
                                         (foldr (lambda (_g3651636519_
                                                         _g3651736522_)
                                                  (cons _g3651636519_
                                                        _g3651736522_))
                                                '()
                                                _L36461_)))
                                       (_exports36527_
                                        (gx#core-expand-export-source
                                         _L36464_))
                                       (_fold-e36547_
                                        (letrec ((_fold-e36530_
                                                  (lambda (_out36533_ _r36535_)
                                                    (if (gx#module-export?
                                                         _out36533_)
                                                        (let* ((_name36537_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36533_))
                       (_$e36540_ (hash-get _keytab36499_ _name36537_)))
                  (if _$e36540_
                      ((lambda (_rename36544_)
                         (hash-put! _found36502_ _name36537_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                  _out36533_
                                  _rename36544_))
                               _r36535_))
                       _$e36540_)
                      (cons _out36533_ _r36535_)))
                (if (gx#export-set? _out36533_)
                    (foldl _fold-e36530_
                           _r36535_
                           (gx#export-set-exports _out36533_))
                    (cons _out36533_ _r36535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36530_))
                                       (_new-exports36550_
                                        (foldl _fold-e36547_
                                               '()
                                               _exports36527_)))
                                  (for-each
                                   (lambda (_id36555_)
                                     (if (hash-get
                                          _found36502_
                                          (gx#core-identifier-key _id36555_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the export set"
                                          _stx36344_
                                          _id36555_)))
                                   (foldr (lambda (_g3655736560_ _g3655836563_)
                                            (cons _g3655736560_ _g3655836563_))
                                          '()
                                          _L36463_))
                                  (cons 'begin: _new-exports36550_))
                                (_g3634736380_ _g3634836384_)))
                          _new-id3636736455_
                          _id3636836458_
                          _hd3635636401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3636136413_
                                                  _target3635836407_
                                                  '()
                                                  '()))
                                               (_g3634736380_
                                                _g3634836384_)))))
                                     (_g3634736380_ _g3634836384_))))
                             (_g3634736380_ _g3634836384_))))
                     (_g3634736380_ _g3634836384_)))))
         (_g3634636566_ _stx36344_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36572_)
       (let* ((_g3657536593_
               (lambda (_g3657636589_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3657636589_)))
              (_g3657436672_
               (lambda (_g3657636597_)
                 (if (gx#stx-pair? _g3657636597_)
                     (let ((_e3658136600_ (gx#syntax-e _g3657636597_)))
                       (let ((_hd3658036604_
                              (let ()
                                (declare (not safe))
                                (##car _e3658136600_)))
                             (_tl3657936607_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3658136600_))))
                         (if (gx#stx-pair? _tl3657936607_)
                             (let ((_e3658436610_
                                    (gx#syntax-e _tl3657936607_)))
                               (let ((_hd3658336614_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3658436610_)))
                                     (_tl3658236617_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3658436610_))))
                                 (if (gx#stx-pair? _tl3658236617_)
                                     (let ((_e3658736620_
                                            (gx#syntax-e _tl3658236617_)))
                                       (let ((_hd3658636624_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3658736620_)))
                                             (_tl3658536627_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3658736620_))))
                                         (if (gx#stx-null? _tl3658536627_)
                                             ((lambda (_L36630_ _L36632_)
                                                (if (gx#identifier? _L36630_)
                                                    (let* ((_pre36648_
                                                            (gx#stx-e
                                                             _L36630_))
                                                           (_exports36651_
                                                            (gx#core-expand-export-source
                                                             _L36632_))
                                                           (_rename-e36657_
                                                            (lambda (_name36654_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36654_
                         _pre36648_))))
                   (_fold-e36667_
                    (letrec ((_fold-e36660_
                              (lambda (_out36663_ _r36665_)
                                (if (gx#module-export? _out36663_)
                                    (cons (let ((__tmp43084
                                                 (_rename-e36657_
                                                  (gx#module-export-name
                                                   _out36663_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                             _out36663_
                                             __tmp43084))
                                          _r36665_)
                                    (if (gx#export-set? _out36663_)
                                        (foldl _fold-e36660_
                                               _r36665_
                                               (gx#export-set-exports
                                                _out36663_))
                                        (cons _out36663_ _r36665_))))))
                      _fold-e36660_)))
              (cons 'begin: (foldl _fold-e36667_ '() _exports36651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3657536593_
                                                     _g3657636597_)))
                                              _hd3658636624_
                                              _hd3658336614_)
                                             (_g3657536593_ _g3657636597_))))
                                     (_g3657536593_ _g3657636597_))))
                             (_g3657536593_ _g3657636597_))))
                     (_g3657536593_ _g3657636597_)))))
         (_g3657436672_ _stx36572_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36676_)
       (let* ((_g3667936699_
               (lambda (_g3668036695_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3668036695_)))
              (_g3667836934_
               (lambda (_g3668036703_)
                 (if (gx#stx-pair? _g3668036703_)
                     (let ((_e3668436706_ (gx#syntax-e _g3668036703_)))
                       (let ((_hd3668336710_
                              (let ()
                                (declare (not safe))
                                (##car _e3668436706_)))
                             (_tl3668236713_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3668436706_))))
                         (if (gx#stx-pair/null? _tl3668236713_)
                             (let ((_g43085_
                                    (gx#syntax-split-splice
                                     _tl3668236713_
                                     '0)))
                               (begin
                                 (let ((_g43086_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g43085_)
                                              (##vector-length _g43085_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g43086_ 2)))
                                       (error "Context expects 2 values"
                                              _g43086_)))
                                 (let ((_target3668536716_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43085_ 0)))
                                       (_tl3668736719_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g43085_ 1))))
                                   (if (gx#stx-null? _tl3668736719_)
                                       (letrec ((_loop3668836722_
                                                 (lambda (_hd3668636726_
                                                          _id3669236729_)
                                                   (if (gx#stx-pair?
                                                        _hd3668636726_)
                                                       (let ((_e3668936732_
                                                              (gx#syntax-e
                                                               _hd3668636726_)))
                                                         (let ((_lp-hd3669036736_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3668936732_)))
                       (_lp-tl3669136739_
                        (let () (declare (not safe)) (##cdr _e3668936732_))))
                   (_loop3668836722_
                    _lp-tl3669136739_
                    (cons _lp-hd3669036736_ _id3669236729_))))
               (let ((_id3669336742_ (reverse _id3669236729_)))
                 ((lambda (_L36746_)
                    (let _lp36762_ ((_rest36765_
                                     (foldr (lambda (_g3692536928_
                                                     _g3692636931_)
                                              (cons _g3692536928_
                                                    _g3692636931_))
                                            '()
                                            _L36746_))
                                    (_ids36767_ '()))
                      (let* ((___stx4269442695_ _rest36765_)
                             (_g3677036782_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4269442695_))))
                        (let ((___kont4269742698_
                               (lambda (_L36810_ _L36812_)
                                 (let ((_info36827_
                                        (gx#syntax-local-value
                                         _L36812_
                                         false)))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                          _info36827_))
                                       (let* ((_g3682936846_
                                               (slot-ref
                                                _info36827_
                                                'expander-identifiers))
                                              (_E3683136852_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g3682936846_)))
                                              (_K3683236864_
                                               (lambda (_setf36856_
                                                        _getf36858_
                                                        _type?36859_
                                                        _make-type36860_
                                                        _type::t36861_
                                                        _super36862_)
                                                 (_lp36762_
                                                  _L36810_
                                                  (cons _L36812_
                                                        (cons _type::t36861_
                                                              (cons _make-type36860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _type?36859_
                                  (foldr cons
                                         (foldr cons _ids36767_ _setf36856_)
                                         _getf36858_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _g3682936846_))
                                             (let ((_hd3683336868_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _g3682936846_)))
                                                   (_tl3683436871_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _g3682936846_))))
                                               (let ((_super36874_
                                                      _hd3683336868_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _tl3683436871_))
                                                     (let ((_hd3683536877_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _tl3683436871_)))
                                                           (_tl3683636880_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _tl3683436871_))))
                                                       (let ((_type::t36883_
                                                              _hd3683536877_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##pair? _tl3683636880_))
                     (let ((_hd3683736886_
                            (let ()
                              (declare (not safe))
                              (##car _tl3683636880_)))
                           (_tl3683836889_
                            (let ()
                              (declare (not safe))
                              (##cdr _tl3683636880_))))
                       (let ((_make-type36892_ _hd3683736886_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _tl3683836889_))
                             (let ((_hd3683936895_
                                    (let ()
                                      (declare (not safe))
                                      (##car _tl3683836889_)))
                                   (_tl3684036898_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl3683836889_))))
                               (let ((_type?36901_ _hd3683936895_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl3684036898_))
                                     (let ((_hd3684136904_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl3684036898_)))
                                           (_tl3684236907_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl3684036898_))))
                                       (let ((_getf36910_ _hd3684136904_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _tl3684236907_))
                                             (let ((_hd3684336913_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl3684236907_)))
                                                   (_tl3684436916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _tl3684236907_))))
                                               (let ((_setf36919_
                                                      _hd3684336913_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _tl3684436916_))
                                                     (_K3683236864_
                                                      _setf36919_
                                                      _getf36910_
                                                      _type?36901_
                                                      _make-type36892_
                                                      _type::t36883_
                                                      _super36874_)
                                                     (_E3683136852_))))
                                             (_E3683136852_))))
                                     (_E3683136852_))))
                             (_E3683136852_))))
                     (_E3683136852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3683136852_))))
                                             (_E3683136852_)))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Incomplete type info"
                                        _stx36676_
                                        _L36812_)))))
                              (___kont4269942700_
                               (lambda () (cons 'begin: _ids36767_))))
                          (if (gx#stx-pair? ___stx4269442695_)
                              (let ((_e3677636800_
                                     (gx#syntax-e ___stx4269442695_)))
                                (let ((_tl3677436807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3677636800_)))
                                      (_hd3677536804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3677636800_))))
                                  (___kont4269742698_
                                   _tl3677436807_
                                   _hd3677536804_)))
                              (___kont4269942700_))))))
                  _id3669336742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3668836722_
                                          _target3668536716_
                                          '()))
                                       (_g3667936699_ _g3668036703_)))))
                             (_g3667936699_ _g3668036703_))))
                     (_g3667936699_ _g3668036703_)))))
         (_g3667836934_ _stx36676_))))))
